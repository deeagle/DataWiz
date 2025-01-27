#!/bin/bash

docker buildx build -f Spss-Api.Dockerfile -t "datawiz/spss-api:local" .
docker buildx build -f Dockerfile -t "datawiz/datawiz:local" .
