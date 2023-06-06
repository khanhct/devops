# How to assign role on ArgoCD
Ref: [ArgoCD Doc](https://github.com/argoproj/argo-cd/blob/master/docs/operator-manual/)</br>
[RBAC Configuration](https://argo-cd.readthedocs.io/en/stable/operator-manual/rbac/)

```sh
kubectl apply -f argocd-cm.yaml

# Set password
# Syntax: argocd account update-password --account tester --new-password tester --current-password <admin-password> --grpc-web
argocd account update-password --account tester1 --new-password 31BQTF=}8339 --current-password ODUguSNhEBjgFMPK --grpc-web
```