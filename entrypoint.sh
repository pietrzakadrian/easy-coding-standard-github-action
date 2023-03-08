#!/bin/sh -l

set -e

if [ -n "$1" ] && [ -n "$2" ]; then
   /composer/vendor/bin/ecs check $1 --clear-cache --config=$2
else
    echo "Missing required arguments: directories and config file path"
fi