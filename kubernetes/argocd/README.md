# Deploy ArgoCD using Helm Chart

Before proceeding, ensure to create a namespace in advance.
For instance:

```bash
kubectl create namespace argocd
```

## Install the chart repository

```bash
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
```

## Exporting Chart into values.yaml

```bash
helm show values argo/argo-cd > values.yaml
```

## Setup .env config

```bash
cp .env.sample .env
```

## Install ArgoCD

Make sure already setup env file before executing this.

```bash
bash install.sh
```

## Get Initial login password

```bash
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

```

## Update/Upgrade ArgoCD

Make sure already setup env file before executing this.

```bash
bash upgrade.sh
```

## Uninstall ArgoCD

```bash
helm uninstall -n argocd argocd 
```