# Deploy Kyverno using Helm Chart

Before proceeding, ensure to create a namespace in advance.
For instance:

```bash
kubectl create namespace kyverno
```

## Install the chart repository

```bash
helm repo add kyverno https://kyverno.github.io/kyverno/
helm repo update
```

## Exporting Chart into values.yaml

```bash
helm show values kyverno/kyverno > values.yaml
```

## Setup .env config

```bash
cp .env.sample .env
```

## Install Kyverno

Make sure already setup env file before executing this.

```bash
bash install.sh
```

## Update/Upgrade Kyverno

Make sure already setup env file before executing this.

```bash
bash upgrade.sh
```

## Uninstall Kyverno

```bash
helm uninstall -n kyverno kyverno 
```
