#!/bin/bash

main() {

  source "steps/install-docker-ce.sh"
  source "steps/install-docker-compose.sh"
  source "steps/post-installation.sh"

}

main