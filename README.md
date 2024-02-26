# Redmine asap docker

This repo is the docker image for redmine asap suite which contains
* Redmine core (5.1.1)
* Redmine asap theme

# Installation

```
git clone https://github.com/tantic/redmine_asap_docker.git
cd redmine-prod-docker
```

Get submodules
```
git submodule update --init --recursive
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

Go to the url https://localhost:3000
