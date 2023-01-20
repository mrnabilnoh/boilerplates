# Deploy Traefik using Helm Chart

Before proceeding, ensure to create a namespace in advance.
For instance:

```bash
kubectl create namespace cert-manager
```

## Install the chart repository

```bash
helm repo add jetstack https://charts.jetstack.io
helm repo update
```

## Exporting Chart into values.yaml

```bash
helm show values cert-manager/cert-manager > values.yaml
```

## Setup .env config

```bash
cp .env.sample .env
```

## Install Metallb

```bash
helm install cert-manager jetstack/cert-manager --values values.yaml -n cert-manager --version v1.11.0
```
