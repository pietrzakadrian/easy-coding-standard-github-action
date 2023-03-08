#!/bin/sh -l
set -e

export PATH=$PATH:/root/.composer/vendor/bin

/composer/vendor/bin/ecs check $1 --clear-cache --config=$2