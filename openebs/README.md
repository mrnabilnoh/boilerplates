## Requirement

```
apt install open-iscsi -y
systemctl enable --now iscsid
modprobe iscsi_tcp
echo iscsi_tcp >/etc/modules-load.d/iscsi-tcp.conf
```
## Install OpenEBS (with cstor) from source 
```
kubectl apply -f https://openebs.github.io/charts/openebs-operator.yaml
kubectl apply -f https://openebs.github.io/charts/cstor-operator.yaml
```
## Install OpenEBS (with cstor) from file
```
kubectl apply -f openebs-operator.yaml
kubectl apply -f cstor-operator.yaml
```
## Setup .env config 
```
cp .env.sample .env
```
## Apply CStorPoolCluster 
#### Make sure you already setup .env file.
```
bash update-cspc.sh
```
