#!/bin/bash

# Export all variable inside .env file but ignore lines that start with #
export $(grep -v '^#' .env | xargs)


envsubst < values.yaml | helm upgrade portainer portainer/portainer -n portainer -f -