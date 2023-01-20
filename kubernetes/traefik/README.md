# Deploy Traefik using Helm Chart

Before proceeding, ensure to create a namespace in advance.
For instance:

```bash
kubectl create namespace traefik
```

## Install the chart repository

```bash
helm repo add traefik https://helm.traefik.io/traefik
helm repo update
```

## Exporting Chart into values.yaml

```bash
helm show values traefik/traefik > values.yaml
```

## Install Certificate from Cert Manager

We use cert-manager as our traefik tls

```bash
bash update-cert-manager.sh
bash update-certificate.sh
```

## Setup .env config

```bash
cp .env.sample .env
```

## Install Traefik

Make sure certificate already install and ready before installing traefik.

Make sure already setup env file before executing this.

```bash
bash install.sh
```

## Update/Upgrade Traefik

Make sure already setup env file before executing this.

```bash
bash upgrade.sh
```

## Uninstall Traefik Helm

```bash
helm uninstall -n traefik traefik 
```

## Cleanup Helm Traefik

This command will download zip file. You need to unzip it and got to `crd` directory.

proceed to issue `kubectl delete -f commands` against each yaml file.

```bash
helm pull traefik/traefik
```
