#!/bin/sh -l
set -e

/composer/vendor/bin/ecs check $1 --clear-cache --config=$2