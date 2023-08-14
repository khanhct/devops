# Forwarding
```sh
kubectl port-forward -n kong svc/kong-proxy 1337:80 --address="0.0.0.0"
kubectl port-forward -n kong svc/konga-svc 1337:1337 --address="0.0.0.0"
kubectl port-forward -n lab-demo svc/test-auth-service 1337:8080 --address="0.0.0.0"
kubectl port-forward -n kong svc/konga-svc 1337:1337 --address="0.0.0.0"
kubectl port-forward -n kong svc/s3-service 8081:8081 --address="0.0.0.0"
```

docker build -t helloworld:0.1 ./
docker tag helloworld:0.1 reg.fptcompute.com.vn/portal-new/helloworld:0.2
docker push reg.fptcompute.com.vn/portal-new/helloworld:0.3

curl --insecure -sfL https://58.186.205.70:6868/v3/import/mwk52hft2zpjp47dzvbqj2wxtvd2xf8pds26b5vpwglv6zrwh6kxbq_c-77t5g.yaml | kubectl apply -f -

# Mount S3 bucket 
Refer [S3 Datashim](https://github.com/datashim-io/datashim)

# Bugs
## 1.K8S Control Manager is unhealthy 
Refer [SC](https://stackoverflow.com/questions/64296491/how-to-resolve-scheduler-and-controller-manager-unhealthy-state-in-kubernetes)