# Greatful warmup and shutdown
```sh
kubectl delete -f demo1.yaml
kubectl apply -f demo1.yaml
kubectl apply -f demo1.yaml
```

# Strategy
## Recreate
```sh
kubectl apply -f recreate_strategy.yaml
kubectl delete -f recreate_strategy.yaml
kubectl apply -f recreate_strategy.yaml
```
## Rolling 
## Blue-green