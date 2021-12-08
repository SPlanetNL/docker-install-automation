#!/bin/bash

VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')
DESTINATION=/usr/local/bin/docker-compose

sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-"$(uname -s)-$(uname -m)" -o $DESTINATION
sudo chmod 755 $DESTINATION

if [[ -n $(command -v docker-compose --version &> /dev/null) ]]; then

  echo && echo "docker-compose has been installed successfully!"

else

  echo "docker-compose could not be installed at this point, try again"

fi