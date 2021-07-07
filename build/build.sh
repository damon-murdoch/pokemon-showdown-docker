#!/bin/bash

# Build the container at the path of the script
docker build -t scrubbs/pokemon-showdown-docker "$(dirname $(readlink -f $0))"
