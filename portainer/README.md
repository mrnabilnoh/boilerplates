# Deploy Portainer using Helm Chart

Before proceeding, ensure to create a namespace in advance.
For instance:
```bash
kubectl create namespace portainer
```

# Install the chart repository
```
helm repo add portainer https://portainer.github.io/k8s/
helm repo update
```

# Testing the Chart
Execute the following for testing the chart:

```bash
helm install --dry-run --debug portainer -n portainer deploy/helm/portainer
```

# Exporting Chart into values.yaml 
```bash
helm show values portainer/portainer > values.yaml
```

# Install Portainer with .env value 
```bash
bash install.sh
```

# Uninstall Portainer 
```bash
helm uninstall -n portainer portainer 
```
