# Deploy OpenEBS using Helm Chart

Before proceeding, ensure to create a namespace in advance.
For instance:

```bash
kubectl create namespace openebs
```

## Install the chart repository

```bash
helm repo add openebs https://openebs.github.io/charts
helm repo update
```

## Requirement

For initial installation, make sure all node already run this command.

```bash
apt install open-iscsi -y
systemctl enable --now iscsid
modprobe iscsi_tcp
echo iscsi_tcp >/etc/modules-load.d/iscsi-tcp.conf
```

## Testing the Chart

Execute the following for testing the chart:

```bash
helm install --dry-run --debug openebs -n openebs deploy/helm/openebs
```

## Exporting Chart into values.yaml

```bash
helm show values openebs/openebs > values.yaml
```

## Install OpenEBS

```bash
helm install openebs openebs/openebs -n openebs --create-namespace -f values.yaml
```

## Setup .env config

```bash
cp .env.sample .env
```

## Apply CStorPoolCluster

Make sure you already setup .env file.

```bash
bash cspc.sh
```

## Uninstall OpenEBS

```bash
bash uninstall.sh
```
