## Get Helm Traefik 
```
helm repo add traefik https://helm.traefik.io/traefik
helm repo update
```
## Export Traefik from Helm
```
helm show values traefik/traefik > values.yaml
```
## Install Traefik
```
helm install traefik traefik/traefik --values values.yaml -n traefik --create-namespace 
```
## Update/Upgrade Traefik
```
helm upgrade --install traefik traefik/traefik --values traefik.yaml -n traefik 
```
## Cleanup Helm Traefik
```
helm pull traefik/traefik
```
unzip it

goto the crd directory

proceed to issue kubectl delete -f commands against each yaml file.