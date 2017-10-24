#!/bin/bash
cd $WORKSPACE
docker build -f Dockerfile -t hello_world_artifact:$VERSION_PREFIX.$BUILD_NUMBER .
docker tag hello_world_artifact:$VERSION_PREFIX.$BUILD_NUMBER bijojoy/mydocker:hello_world_artifact-$VERSION_PREFIX.$BUILD_NUMBER
docker push bijojoy/mydocker:hello_world_artifact-$VERSION_PREFIX.$BUILD_NUMBER