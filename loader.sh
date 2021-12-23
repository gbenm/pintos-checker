#!/bin/sh -l

phase=$1

cd /pintos
echo "Target $phase"

docker build -f actions.Dockerfile --build-arg phase="$phase" .
