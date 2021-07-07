#!/bin/bash
docker run -it -d \
  --name pokemon-showdown \
  -p 8888:8000 \
  -v /home/pokemon-showdown/config/:/pokemon-showdown/config/ \
  scrubbs/pokemon-showdown-docker
