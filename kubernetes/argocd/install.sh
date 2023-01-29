#!/bin/bash

# Export all variable inside .env file but ignore lines that start with #
export $(grep -v '^#' .env | xargs)


envsubst < values.yaml | helm install argocd argo/argo-cd -n argocd -f -