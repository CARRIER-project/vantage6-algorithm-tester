#!/usr/bin/env sh

DOCKER_IMAGE=$1

echo Testing $DOCKER_IMAGE

docker run -v $PWD/input.pkl:/app/input.pkl \
-v $PWD/data:/data \
-e INPUT_FILE=/data/input.pkl \
-e TOKEN_FILE=/data/token.txt \
-e DATABASE_URI=/data/iris.csv \
-e OUTPUT_FILE=/data/output \
$DOCKER_IMAGE

echo Algorithm done.
echo Output written to data/output