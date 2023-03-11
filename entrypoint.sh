#!/bin/sh -l

set -e

if [ -n "$1" ]; then
   /composer/vendor/bin/ecs check --config=$1 --clear-cache $2
else
    echo "Missing required argument: config file path"
fi