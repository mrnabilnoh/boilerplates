## Add the Helm repository
```
helm repo add jetstack https://charts.jetstack.io
helm repo update
```
## Install 
```
kubectl create namespace cert-manager  
helm install cert-manager jetstack/cert-manager --values values.yaml -n cert-manager --version v1.11.0
```
