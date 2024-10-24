[![tests](https://github.com/ddev/ddev-redis-commander/actions/workflows/tests.yml/badge.svg)](https://github.com/ddev/ddev-redis-commander/actions/workflows/tests.yml) ![project is maintained](https://img.shields.io/maintenance/yes/2024.svg)

## Redis Commander

This uses Redis Commander to provide a web interface to a redis service on DDEV.

## Requirements

Before installing this add-on, the Redis service must be available, and you have to use one of the following add-ons:

- [`ddev/ddev-redis` (Redis 6)](https://github.com/ddev/ddev-redis)
- [`ddev/ddev-redis-7` (Redis 7)](https://github.com/ddev/ddev-redis-7)

For DDEV v1.23.5 or above run 

`ddev add-on get ddev/ddev-redis` or `ddev add-on get ddev/ddev-redis-7`

For earlier versions of DDEV run 

`ddev get ddev/ddev-redis` or `ddev get ddev/ddev-redis-7`


## Installation

For DDEV v1.23.5 or above run

```bash
ddev add-on get ddev/ddev-redis-commander
```

For earlier versions of DDEV run

```bash
ddev get ddev/ddev-redis-commander
```

Then restart your project

```bash
ddev restart
```

## Usage

Access the Redis Commander web interface by running `ddev redis-commander`.

### Redis 7 password

At the time of writing, Redis 7 requires a password to connect to it.

In order to connect to Redis 7, you have to set the `REDIS_PASSWORD` environment variable in the `redis-commander` 
service. 

One way of doing this is to create a `docker-compose.redis_password.yaml` file with the following content:

```yaml
services:
    redis-commander:
        environment:
            - REDIS_PASSWORD=redis
```
You may have to adjust the password according to your Redis 7 configuration (`redis` is the default one).

Then, run `ddev restart` to apply the changes.


## Links

* [Multiplatform Images](https://github.com/joeferner/redis-commander/pkgs/container/redis-commander)
* GitHub repo: [joeferner/redis-commander](https://github.com/joeferner/redis-commander)

**Originally Contributed by [@Graloth](https://github.com/Graloth) in [ddev-contrib](https://github.com/ddev/ddev-contrib/tree/master/docker-compose-services/redis-commander)**

**Maintained by [@julienloizelet](https://github.com/julienloizelet)**
