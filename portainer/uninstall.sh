#!/bin/bash

kubectl delete -f portainer-ns.yaml
kubectl delete -f portainer-rbac.yaml
kubectl delete -f portainer-pvc.yaml
kubectl delete -f portainer-deploy.yaml
kubectl delete -f portainer-svc.yaml