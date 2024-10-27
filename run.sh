#!/bin/bash

main() {

  # Remove data
  source "steps/remove-data.sh"

  # Stop Docker service
  systemctl stop Docker

  # Uninstall Docker-CE
  source "steps/uninstall-docker.sh"

  # Uninstall docker-compose
  source "steps/uninstall-docker-compose.sh"

  # Remove Docker group
  groupdel docker

  # Remove leftover directories
  source "steps/remove-directories.sh"
}

main