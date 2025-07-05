#!/bin/bash

set -eo pipefail

clear

git pull

docker compose restart

docker compose up -d --build --remove-orphans

exit $?
