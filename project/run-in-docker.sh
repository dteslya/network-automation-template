#!/bin/bash
# Simple script to run the app inside a docker container

DOCKER=`which docker`

# Check if running in CI or locally
if [ -z "$CI_PROJECT_NAME" ]
then
  echo "Running locally"
  # Extract the image name from pyproject.toml
  IMAGE=`grep -m 1 name pyproject.toml | tr -s ' ' | tr -d '"' | tr -d "'" | cut -d' ' -f3`
else
  echo "Running in CI"
  IMAGE="${DOCKER_REGISTRY_URL}/${CI_PROJECT_NAMESPACE}/${CI_PROJECT_NAME}"
fi

# Check if TRIGGER_PAYLOAD is set
if [ -z "$TRIGGER_PAYLOAD" ]
then
  VOLUMES=""
else
  VOLUMES="-v ${TRIGGER_PAYLOAD}:${TRIGGER_PAYLOAD}:ro"
fi

ENV_VARS="-e TRIGGER_PAYLOAD \
          -e NAUTOBOT_TOKEN \
          -e NAUTOBOT_URL \
          -e LOGLEVEL \
          -e DEVICE_USERNAME \
          -e DEVICE_PASSWORD"

$DOCKER run $ENV_VARS $VOLUMES $IMAGE $@
