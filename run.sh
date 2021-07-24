set -a
source .env

## Common namespace
# envsubst < ./kube-logging.yaml | kubectl create -f -

## ES
# envsubst < ./elastic-service.yaml | kubectl create -f -
# envsubst < ./elastic-statefulset.yaml | kubectl create -f -

## Kibana
# envsubst < ./kibana.yml | kubectl create -f -

## Fluent bit
envsubst < ./fluent-bit-service-account.yml | kubectl create -f -
envsubst < ./fluent-bit-role.yml | kubectl create -f -
envsubst < ./fluent-bit-role-binding.yml | kubectl create -f -
envsubst < ./fluent-bit-configmap.yml | kubectl create -f -
envsubst < ./fluent-bit-ds-minikube.yml | kubectl create -f -
