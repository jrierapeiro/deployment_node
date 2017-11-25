#!/bin/bash

IMAGE_NAME=$1
IMAGE_VERSION=$2
REPOSITORY=$3

FULL_IMANE_NAME="$IMAGE_NAME:$IMAGE_VERSION"

# Any subsequent(*) commands which fail will cause the shell script to exit immediately
set -e

# move to src folder
cd src
# Install nodejs packages
npm install
# Searches the local package tree and attempts to simplify the overall structure 
# by moving dependencies further up the tree, where they can be more effectively shared by multiple dependent packages.
npm dedupe
# grunt deployment task
node_modules/.bin/grunt $GRUNT_TASK

# Build docker image

docker build -t "$FULL_IMANE_NAME"  .
docker tag "$FULL_IMANE_NAME"  "$REPOSITORY/$FULL_IMANE_NAME"


# Move back to root folder
cd ..

