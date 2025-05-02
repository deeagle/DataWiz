#!/bin/bash

docker buildx build -f Spss-Api.Dockerfile -t "datawiz/spss-api:local" --load .
docker buildx build -f Dockerfile -t "datawiz/datawiz:local" --load .
