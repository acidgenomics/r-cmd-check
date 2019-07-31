#!/usr/bin/env bash
set -Eeuxo pipefail

# Run dockerized R CMD CHECK.
# Updated 2019-07-31.

if [[ -z "${image:-}" ]]
then
    image="basejump"
fi

if [[ -z "${tag:-}" ]]
then
    tag="latest"
fi

image="acidgenomics/${image}:${tag}"
package="$(basename "$PWD")"

docker pull "$image"
docker run -ti \
    --volume="${PWD}:/${package}" \
    --workdir="/${package}" \
    "$image" \
    ./rcmdcheck.sh
