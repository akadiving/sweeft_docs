---
layout: default
title: Setup
nav_order: 1
has_children: false
permalink: /for-developers/setup.html
parent: For Developers
---

# Setup development environment

For development environment management we use Docker and docker-compose.
There is special [repository](https://github.com/On-ge/Developer-Playground) for this.
You can check [README](https://github.com/On-ge/Developer-Playground/blob/main/README.md)
there to find all available containers as well as utility bash scripts and installation guide.

# On.ge 🔴
### **Requirements:** 🔌
  - Docker
  - Docker-compose
### **Steps:**
  - Create `.env` file and copy/paste the content from `.env.exmaple`
  - Type `make install` in your preferred console
  - During container setup there will be one time requirement to enter your github token for permission purposes
  - After these steps your containers will be running and ready for use

### **Commands:** 📄
  - `make up` - Builds the containers
  - `make start`- Starts all on.ge containers
  - `make stop`- Stops all on.ge containers
  - `make shell <SERVICE NAME>`- Opens a shell console for typed service (example: make shell on.website)
  - `make logs`- Open log for on.ge containers
  - `make kill`- Destroy on.ge containers
  - `make prune` - Stops and destroys all on.ge containers
### **URL:** 🗺️
  - `on.localhost` - Main site
  - `admin.on.localhost` - Admin panel
  - `pma.on.localhost` - PhpMyAdmin
  - `monitor.on.localhost` - Traefik web-UI


**Maintainer:** Akaki Ivanishvili <a.ivanishvili@omedia.ge>