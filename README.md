# Redmine asap docker

This repo is the docker image for redmine asap suite which contains
* Redmine core (6.1.0)
* Redmine asap theme (2.1.2)
* Redmine asap user features (1.1.0)

# Installation

```
git clone https://github.com/tantic/redmine_asap_docker.git
cd redmine_asap_docker
git submodule update --init --recursive --remote
```

# Configuration

```
cp .env.example .env
```

Change variables if necessary
```
# REDMINE
REDMINE_VERSION=6.1.0
# .tar.gz from https://redmine.org/projects/redmine/wiki/Download
REDMINE_DOWNLOAD_SHA256=bc483da195f2444491d870e40f7fc909ae750f7ba8d0e28831e6d6c478812b88
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
Change password
Go to administration > Configuration > Authentication > Authentication required = Yes

You can then choose login wallpaper and test other pages

# Update / Upgrade

To update plugin, just use these commands
```
docker compose down
git submodule update --remote
docker compose up -d
```