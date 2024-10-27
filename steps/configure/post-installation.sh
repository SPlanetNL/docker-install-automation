#!/bin/bash

if [[ ! "$(getent group docker)" ]]; then
  groupadd docker
  echo && echo "Created the Docker group"
fi

echo "Which user will be in the Docker group for post installation? (Docker usage without sudo notation) " "$user"
read -r user

# Add user to the Docker group
usermod -aG docker "$user"