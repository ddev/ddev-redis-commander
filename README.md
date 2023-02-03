[![tests](https://github.com/ddev/ddev-redis-commander/actions/workflows/tests.yml/badge.svg)](https://github.com/ddev/ddev-redis-commander/actions/workflows/tests.yml) ![project is maintained](https://img.shields.io/maintenance/yes/2024.svg)

## Redis Commander

This uses Redis Commander to provide a web interface to a redis service on DDEV.

## Requirements

The redis service must be available, use `ddev get ddev/ddev-redis`.

## Installation

`ddev get ddev/ddev-redis && ddev get ddev/ddev-redis-commander && ddev restart`

Then `ddev describe` will show you how to access the service at `https://<project>.ddev.site:1359`.

## Links

* [Multiplatform Images](https://github.com/joeferner/redis-commander/pkgs/container/redis-commander)
* GitHub repo: [joeferner/redis-commander](https://github.com/joeferner/redis-commander)

**Originally Contributed by [@Graloth](https://github.com/Graloth) in [ddev-contrib](https://github.com/ddev/ddev-contrib/tree/master/docker-compose-services/redis-commander)**

**Maintained by [@rfay](https://github.com/rfay) and looking for a maintainer that actually uses this, see [#1](https://github.com/ddev/ddev-redis-commander/issues/1).**
