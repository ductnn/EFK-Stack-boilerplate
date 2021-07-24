set -a
source .env

# ES
# kubectl create -f kube-logging.yaml
# kubectl create -f elastic-service.yaml
# kubectl create -f elastic-statefulset.yaml
# kubectl create -f kibana.yml

## Fluent bit
kubectl create -f fluent-bit-service-account.yml
kubectl create -f fluent-bit-role.yml
kubectl create -f fluent-bit-role-binding.yml
kubectl create -f fluent-bit-configmap.yml
kubectl create -f fluent-bit-ds-minikube.yml
