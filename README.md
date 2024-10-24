[![tests](https://github.com/ddev/ddev-redis-commander/actions/workflows/tests.yml/badge.svg)](https://github.com/ddev/ddev-redis-commander/actions/workflows/tests.yml) ![project is maintained](https://img.shields.io/maintenance/yes/2024.svg)

## Redis Commander

This uses Redis Commander to provide a web interface to a redis service on DDEV.

## Requirements

The [redis service](https://github.com/ddev/ddev-redis) must be available. The installation instructions include adding that add-on.

## Installation

For DDEV v1.23.5 or above run

```sh
ddev add-on get ddev/ddev-redis
ddev add-on get ddev/ddev-redis-commander
```

For earlier versions of DDEV run

```sh
ddev get ddev/ddev-redis
ddev get ddev/ddev-redis-commander
```

Then restart your project

```sh
ddev restart
```

After installation, `ddev describe` will show you how to access the service at `https://<project>.ddev.site:1359`.

## Links

* [Multiplatform Images](https://github.com/joeferner/redis-commander/pkgs/container/redis-commander)
* GitHub repo: [joeferner/redis-commander](https://github.com/joeferner/redis-commander)

**Originally Contributed by [@Graloth](https://github.com/Graloth) in [ddev-contrib](https://github.com/ddev/ddev-contrib/tree/master/docker-compose-services/redis-commander)**

**Maintained by [@julienloizelet](https://github.com/julienloizelet)**
