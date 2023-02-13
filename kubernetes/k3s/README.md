# K3s - Lightweight Kubernetes

Lightweight Kubernetes. Easy to install, half the memory, all in a binary of less than 100 MB.

Great for:

- Edge
- IoT
- CI
- Development
- ARM
- Embedding K8s
- Situations where a PhD in K8s clusterology is infeasible

## What is K3s?

K3s is a fully compliant Kubernetes distribution with the following enhancements:
- Packaged as a single binary.
- Lightweight storage backend based on sqlite3 as the default storage mechanism. etcd3, MySQL, Postgres are also available.
- Wrapped in simple launcher that handles a lot of the complexity of TLS and options.
- Secure by default with reasonable defaults for lightweight environments.

Reference: https://docs.k3s.io/