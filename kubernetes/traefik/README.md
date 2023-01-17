## Get Helm Traefik 
```
helm repo add traefik https://helm.traefik.io/traefik
helm repo update
```
## Export Traefik from Helm
```
helm show values traefik/traefik > values.yaml
```
## Install Certificate 
#### We use cert-manager as our traefik tls
```
bash update-cert-manager.sh
bash update-certificate.sh
```
## Install Traefik
#### Make sure certificate already install and ready before installing traefik
```
bash install.sh
```
## Update/Upgrade Traefik
```
bash upgrade.sh
```
## Uninstall Traefik Helm 
```
helm uninstall -n traefik traefik 
```
## Cleanup Helm Traefik
```
helm pull traefik/traefik
```
unzip it

goto the crd directory

proceed to issue kubectl delete -f commands against each yaml file.