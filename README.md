# Redmine asap docker

This repo is the docker image for redmine asap suite which contains
* Redmine core (5.1.1)
* Redmine asap theme

# Installation

```
git clone https://github.com/tantic/redmine_asap_docker.git
cd redmine-prod-docker
```

As you can see, the plugin folder is empty. We need to fetch it from his repo.

```
git submodule init
git submodule update
```

# Configuration

```
cp .env.example .env
```

Change variables if necessary
```
# REDMINE
REDMINE_VERSION=5.1.1
# .tar.gz from https://redmine.org/projects/redmine/wiki/Download
REDMINE_DOWNLOAD_SHA256=edf3095746effd04ad5140681d618f5fa8d06be09c47b6f8b615dcad0b753e6e
REDMINE_PLUGINS_MIGRATE=true
REDMINE_PORT=3000
```

# Start

```
docker compose up -d
```

Go to the url http://localhost:3000

# Administration

By default Redmine is in public mode which is not supported yet by the plugins.

First, you need to configure private mode.
Go to the url http://localhost:3000/admin
Enter default login for admin i.e. admin/admin

# Update / Upgrade

To update plugin, just use these commands
```
docker compose down
git submodule update --remote
docker compose up -d
```