# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## SemVer public API

The [public API](https://semver.org/spec/v2.0.0.html#spec-item-1) for this project is defined by the files `docker-compose.redis-commander.yaml` and `install.yaml`.

---

## [1.0.0](https://github.com/ddev/ddev-redis-commander/releases/tag/v1.0.0) - 2023-03-??
[_Compare with previous release_](https://github.com/ddev/ddev-redis-commander/compare/v0.1.2...v1.0.0)


### Changed

- Disable healthcheck in `docker-compose.redis-commander.yaml`


---

## [0.1.2](https://github.com/ddev/ddev-redis-commander/releases/tag/v0.1.2) - 2023-02-03
[_Compare with previous release_](https://github.com/ddev/ddev-redis-commander/compare/v0.1.1...v0.1.2)


### Changed

- Remove docker-compose version in `docker-compose.redis-commander.yaml`
- Move from `drud` to `ddev` org

---


## [0.1.1](https://github.com/ddev/ddev-redis-commander/releases/tag/v0.1.1) - 2022-06-17
[_Compare with previous release_](https://github.com/ddev/ddev-redis-commander/compare/v0.1.0...v0.1.1)


### Changed

- All files must contain #ddev-generated

---

## [0.1.0](https://github.com/ddev/ddev-redis-commander/releases/tag/v0.1.0) - 2022-03-22
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
