#!/bin/bash

# Verify docker-compose
if [[ -z $(command -v docker --version &> /dev/null) ]] && [[ -z $(command -v docker-compose --version &> /dev/null) ]] && [[ "$(getent group docker)" ]]; then
  echo && echo "Congratiulations, both the installation and configuration processes went successfull. Wish you a happy deployment with Docker!"
else
  echo && echo "It seems that there was a problem while installing or configuring Docker or its relatives, please fix the issue(s) and try again later."
fi