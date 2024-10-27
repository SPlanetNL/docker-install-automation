#!/bin/bash

main() {

  source "steps/installation-scripts/docker-ce.sh"
  source "steps/installation-scripts/docker-compose.sh"
  source "steps/installation-scripts/post-installation.sh"

}

main