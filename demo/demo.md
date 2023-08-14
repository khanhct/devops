# Greatful warmup and shutdown
```sh
kubectl delete -f demo1.yaml
kubectl apply -f demo1.yaml
kubectl apply -f demo1.yaml

kubectl port-forward svc/hello-app -n demo3 81:80 --address='0.0.0.0'

watch -n 1 kubectl get pods -n demo3
```

# Strategy
## Recreate
```sh
kubectl apply -f recreate_strategy.yaml
kubectl delete -f recreate_strategy.yaml
kubectl apply -f recreate_strategy.yaml

kubectl port-forward svc/mywebservice -n demo3 81:81 --address='0.0.0.0'
```
## Rolling 
## Blue-green