# Redmine asap docker

This repo is the docker image for redmine asap suite which contains
* Redmine core (6.0.6)
* Redmine asap theme (1.0.0)
* Redmine asap user features (1.0.0)

# Installation

```
git clone https://github.com/tantic/redmine_asap_docker.git
cd redmine_asap_docker
```

As you can see, the plugin folder is empty. We need to fetch it from his repo.

```
git submodule init
git submodule update
git submodule update --recursive --remote
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