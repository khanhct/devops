# How to assign role on ArgoCD
Ref: [ArgoCD Doc](https://github.com/argoproj/argo-cd/blob/master/docs/operator-manual/)

```sh
kubectl apply -f argocd-cm.yaml

# Set password
# Syntax: argocd account update-password --account hanli --new-password hanli --current-password <admin-password> --grpc-web
argocd account update-password --account hanli --new-password tester1 --current-password abc123 --grpc-web
```