setup() {
  set -eu -o pipefail
  brew_prefix=$(brew --prefix)
  load "${brew_prefix}/lib/bats-support/load.bash"
  load "${brew_prefix}/lib/bats-assert/load.bash"

  export DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )/.."
  export TESTDIR=~/tmp/testrediscommander
  mkdir -p $TESTDIR
  export PROJNAME=test-redis-commander
  export DDEV_NONINTERACTIVE=true
  ddev delete -Oy ${PROJNAME} >/dev/null 2>&1 || true
  cd "${TESTDIR}"
  ddev config --project-name=${PROJNAME}
  ddev start -y >/dev/null
  # Redis add-on is required for Redis Commander
  ddev get ddev/ddev-redis >/dev/null
}

teardown() {
  set -eu -o pipefail
  cd ${TESTDIR} || ( printf "unable to cd to ${TESTDIR}\n" && exit 1 )
  ddev delete -Oy ${PROJNAME} >/dev/null 2>&1
  [ "${TESTDIR}" != "" ] && rm -rf ${TESTDIR}
}

health_checks() {
  set +u # bats-assert has unset variables so turn off unset check
  # ddev restart is required because we have done `ddev get` on a new service
  run ddev restart
  assert_success
  # Make sure we can hit the HTTP port successfully
  URL=$(ddev describe -j ${PROJNAME} | jq -r .raw.services.\"redis-commander\".http_url)
  curl -s --fail "${URL}" | grep "<title>Redis Commander: Home"
  # Make sure `ddev redis-commander` works
  DDEV_DEBUG=true run ddev redis-commander
  assert_success
  assert_output --partial "FULLURL https://${PROJNAME}.ddev.site:1359"
}

@test "install from directory" {
  set -eu -o pipefail
  cd ${TESTDIR}
  echo "# ddev get ${DIR} with project ${PROJNAME} in ${TESTDIR} ($(pwd))" >&3
  ddev get ${DIR}
  health_checks
}

# bats test_tags=release
@test "install from release" {
  set -eu -o pipefail
  cd ${TESTDIR} || ( printf "unable to cd to ${TESTDIR}\n" && exit 1 )
  echo "# ddev get ddev/ddev-redis-commander with project ${PROJNAME} in ${TESTDIR} ($(pwd))" >&3
  ddev get ddev/ddev-redis-commander
  ddev restart >/dev/null
  health_checks
}
