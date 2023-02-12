# Nifi Cluster

## Prerequisites

- Kubernetes Cluster >= v1.23

## Deployments

```shell
sh setup.sh
```

This will create:

- 1x NiFi Namespace (all the items will be deployed here)
- 3x Apache NiFi (each with it's own Service endpoint)
- 1x Apache Zookeeper (accessible within the cluster only)
- 1x Secrets (basic auth username/passowrd: `admin:admin`)
- 1x Ingress (access endpoint)
