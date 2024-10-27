#!/bin/bash

VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')
DESTINATION=/usr/local/bin/docker-compose

curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-"$(uname -s)-$(uname -m)" -o $DESTINATION
chmod 755 $DESTINATION