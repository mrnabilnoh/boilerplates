#!/bin/bash

kubectl apply -f portainer-ns.yaml
kubectl apply -f portainer-rbac.yaml
kubectl apply -f portainer-pvc.yaml
kubectl apply -f portainer-deploy.yaml
kubectl apply -f portainer-svc.yaml