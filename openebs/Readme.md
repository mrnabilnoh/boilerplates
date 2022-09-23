## Requirement

```
sudo apt install open-iscsi -y
sudo systemctl enable --now iscsid
```

## Require Label on Node that hold your storage
### Temporary Disable

```
kubectl label node <node name> "openebs.io/nodegroup"="storage-node"
```
