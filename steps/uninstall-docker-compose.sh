#!/bin/bash

# Uninstall Docker Compose CLI plugin

apt-get purge docker-compose-plugin -y \
  && apt-get autoremove docker-compose-plugin -y

rm -f "$(which docker-compose)"

if [[ -z "$(command -v docker-compose --version &> /dev/null)" ]]; then
  echo && echo "Successfully uninstalled docker-compose"
fi