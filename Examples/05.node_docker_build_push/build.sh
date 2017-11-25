#!/bin/bash

IMAGE_NAME=$1
IMAGE_VERSION=$2
REPOSITORY=$3

# Any subsequent(*) commands which fail will cause the shell script to exit immediately
set -e

# Build node app block
# move to src folder
cd src
# Install nodejs packages
npm install
# Searches the local package tree and attempts to simplify the overall structure 
# by moving dependencies further up the tree, where they can be more effectively shared by multiple dependent packages.
npm dedupe
# grunt | gulp | validation tasks
echo "No additional tasks yet"
# end build node app block

# docker block
FULL_IMANE_NAME="$IMAGE_NAME:$IMAGE_VERSION"
FULL_REPO_IMAGE_NAME="$REPOSITORY/$FULL_IMANE_NAME"
# Build docker image
docker build -t "$FULL_IMANE_NAME"  .
# Tag image with the public repo name
docker tag "$FULL_IMANE_NAME" "$FULL_REPO_IMAGE_NAME"
# Push image to the public repo
docker push "$FULL_REPO_IMAGE_NAME"
# end docker block

# Move back to root folder
cd ..

