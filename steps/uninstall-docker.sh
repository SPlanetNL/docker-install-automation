#!/bin/bash

# Uninstall Docker Community Edition (docker-ce) package from your Debian system
apt-get purge docker-engine docker docker.io docker-ce docker-ce-cli -y

# Remove any remaining Docker packages and their dependencies that were not automatically removed by the previous command
apt-get autoremove --purge docker-engine docker docker.io docker-ce -y