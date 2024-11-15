#!/bin/bash

set -eu -o pipefail
set -x

helm repo add cert-manager https://charts.jetstack.io
helm repo update

helm upgrade cert-manager cert-manager/cert-manager \
  --install \
  --namespace cert-manager \
  --create-namespace \
  -f values.yaml \
  --version 1.13.3

kubectl apply -f le-issuer.yaml
