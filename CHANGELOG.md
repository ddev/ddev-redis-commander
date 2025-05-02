# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## SemVer public API

The [public API](https://semver.org/spec/v2.0.0.html#spec-item-1) of this project is defined by the `install.yaml` file and `project_files` listed in the `install.yaml` file.

---


## [v1.4.0](https://github.com/ddev/ddev-redis-commander/releases/tag/v1.4.0) - 2025-05-02
[_Compare with previous release_](https://github.com/ddev/ddev-redis-commander/compare/v1.3.0...v1.4.0)


### Changed

- Automatically handle Redis password on install if Redis needs one (see [#23](https://github.com/ddev/ddev-redis-commander/pull/23))
- Use `#!/usr/bin/env bash` for `redis-commander` command (see [#24](https://github.com/ddev/ddev-redis-commander/pull/24))

### Added

- Add `REDIS_COMMANDER_DOCKER_IMAGE` variable to customize the Docker image (see [#24](https://github.com/ddev/ddev-redis-commander/pull/24))


---

## [v1.3.0](https://github.com/ddev/ddev-redis-commander/releases/tag/v1.3.0) - 2024-10-24
[_Compare with previous release_](https://github.com/ddev/ddev-redis-commander/compare/v1.2.0...v1.3.0)


### Added

- Add `redis-commander` command (see [#18](https://github.com/ddev/ddev-redis-commander/pull/18))


---

## [v1.2.0](https://github.com/ddev/ddev-redis-commander/releases/tag/v1.2.0) - 2023-10-06
[_Compare with previous release_](https://github.com/ddev/ddev-redis-commander/compare/v1.1.0...v1.2.0)


### Changed

- Do not always restart container (see [#15](https://github.com/ddev/ddev-redis-commander/pull/15))


---


## [v1.1.0](https://github.com/ddev/ddev-redis-commander/releases/tag/v1.1.0) - 2023-07-21
[_Compare with previous release_](https://github.com/ddev/ddev-redis-commander/compare/v1.0.0...v1.1.0)


### Changed

- Add dependency on redis add-on for DDEV v1.22.0+


---


## [v1.0.0](https://github.com/ddev/ddev-redis-commander/releases/tag/v1.0.0) - 2023-03-08
[_Compare with previous release_](https://github.com/ddev/ddev-redis-commander/compare/v0.1.2...v1.0.0)


### Changed

- Disable healthcheck in `docker-compose.redis-commander.yaml`


---

## [v0.1.2](https://github.com/ddev/ddev-redis-commander/releases/tag/v0.1.2) - 2023-02-03
[_Compare with previous release_](https://github.com/ddev/ddev-redis-commander/compare/v0.1.1...v0.1.2)


### Changed

- Remove docker-compose version in `docker-compose.redis-commander.yaml`
- Move from `drud` to `ddev` org

---


## [v0.1.1](https://github.com/ddev/ddev-redis-commander/releases/tag/v0.1.1) - 2022-06-17
[_Compare with previous release_](https://github.com/ddev/ddev-redis-commander/compare/v0.1.0...v0.1.1)


### Changed

- All files must contain #ddev-generated

---

## [v0.1.0](https://github.com/ddev/ddev-redis-commander/releases/tag/v0.1.0) - 2022-03-22
[_Compare with previous release_](https://github.com/ddev/ddev-redis-commander/compare/0.0.1...v0.1.0)

### Added

- Add dependency on `redis` container
- Add healthcheck timeout

### Changed

- Use multi-arch images

---

## [0.0.1](https://github.com/ddev/ddev-redis-commander/releases/tag/0.0.1) - 2022-03-22

### Added
- Initial release
