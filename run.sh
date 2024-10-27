#!/bin/bash

main() {

  source "steps/installation-scripts/docker-ce.sh"
  source "steps/installation-scripts/docker-compose.sh"
  source "steps/configure/post-installation.sh"

}

main