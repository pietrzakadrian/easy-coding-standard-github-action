#!/bin/sh -l

set -e

cd $GITHUB_WORKSPACE

ln -s /composer/vendor/bin ./vendor/bin

if [ -n "$1" ] && [ -n "$2" ]; then
   ./vendor/bin/ecs check $1 --clear-cache --config=$2
else
    echo "Missing required arguments: directory and config file path"
fi