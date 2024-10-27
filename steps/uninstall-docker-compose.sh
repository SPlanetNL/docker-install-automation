#!/bin/bash

# Uninstall Docker Compose CLI plugin

apt-get purge docker-compose-plugin -y \
  && apt-get autoremove docker-compose-plugin -y