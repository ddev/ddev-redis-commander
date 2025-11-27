[![add-on registry](https://img.shields.io/badge/DDEV-Add--on_Registry-blue)](https://addons.ddev.com)
[![tests](https://github.com/ddev/ddev-redis-commander/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/ddev/ddev-redis-commander/actions/workflows/tests.yml?query=branch%3Amain)
[![last commit](https://img.shields.io/github/last-commit/ddev/ddev-redis-commander)](https://github.com/ddev/ddev-redis-commander/commits)
[![release](https://img.shields.io/github/v/release/ddev/ddev-redis-commander)](https://github.com/ddev/ddev-redis-commander/releases/latest)

## Redis Commander (archived)

This add-on has been archived and is no longer actively maintained.

Use the [ddev/ddev-redis-insight](https://github.com/ddev/ddev-redis-insight) add-on instead, which provides a more modern and feature-rich interface for managing Redis databases:

```bash
ddev add-on remove ddev/ddev-redis-commander
ddev add-on get ddev/ddev-redis-insight
ddev restart
```

## Overview

[Redis Commander](https://joeferner.github.io/redis-commander/) is a node.js web application used to view, edit, and manage a Redis database.

This add-on integrates Redis Commander into your [DDEV](https://ddev.com/) project.

## Requirements

Before installing this add-on, the [Redis service](https://github.com/ddev/ddev-redis) must be available:

```bash
ddev add-on get ddev/ddev-redis
```

## Installation

```bash
ddev add-on get ddev/ddev-redis-commander
ddev restart
```

After installation, make sure to commit the `.ddev` directory to version control.

## Usage

| Command | Description |
| ------- | ----------- |
| `ddev redis-commander` | Open Redis Commander in your browser (`https://<project>.ddev.site:1359`) |
| `ddev describe` | View service status and used ports for Redis Commander |
| `ddev logs -s redis-commander` | Check Redis Commander logs |

## Advanced Customization

You may need to adjust the password depending on your Redis configuration:

* A `docker-compose.redis-commander_password.yaml` file is automatically created on install, if we detect that Redis needs one.
* By default, the password is set via `REDIS_PASSWORD=redis` in that file. If you modify it, be sure to remove the `#ddev-generated` comment to prevent your changes from being overwritten.

To change the Docker image:

```bash
ddev dotenv set .ddev/.env.redis-commander --redis-commander-docker-image=ghcr.io/joeferner/redis-commander:latest
ddev add-on get ddev/ddev-redis-commander
ddev restart
```

Make sure to commit the `.ddev/.env.redis-commander` file to version control.

All customization options (use with caution):

| Variable | Flag | Default |
| -------- | ---- | ------- |
| `REDIS_COMMANDER_DOCKER_IMAGE` | `--redis-commander-docker-image` | `ghcr.io/joeferner/redis-commander:latest` |

## Links

* [Multiplatform Images](https://github.com/joeferner/redis-commander/pkgs/container/redis-commander)
* GitHub repo: [joeferner/redis-commander](https://github.com/joeferner/redis-commander)

## Credits

**Originally Contributed by [@Graloth](https://github.com/Graloth) in [ddev-contrib](https://github.com/ddev/ddev-contrib/tree/64b689730138aaecc9a0f0b72115dbf9f0dfe7a0/docker-compose-services/redis-commander)**

**Maintained by [@julienloizelet](https://github.com/julienloizelet)**
