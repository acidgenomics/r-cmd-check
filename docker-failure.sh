#!/usr/bin/env bash
set -Eeuxo pipefail

# Docker failure return.
# Updated 2019-07-31.

env | sort
df -h | sort
ls -al
docker images
docker system prune --all --force
docker images
df -h | sort
