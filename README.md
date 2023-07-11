# devops
Template for devops

```
apiVersion: v1
kind: Secret
metadata:
  name: registry-secret
  namespace: demo
data:
  .dockerconfigjson: ewogICAgICAgICJhdXRocyI6IHsKICAgICAgICAgICAgICAgICJyZWcuZnB0Y29tcHV0ZS5jb20udm4iOiB7CiAgICAgICAgICAgICAgICAgICAgICAgICJhdXRoIjogImEyaGhibWhqZERvNGEwMDFkVFoyUlRsclFWUlViMXBwIgogICAgICAgICAgICAgICAgfQogICAgICAgIH0KfQ==
type: kubernetes.io/dockerconfigjson
```