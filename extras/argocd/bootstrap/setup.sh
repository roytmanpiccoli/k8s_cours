#!/bin/bash

set -euo pipefail

helm repo add argo https://argoproj.github.io/argo-helm
helm repo update argo

helm upgrade argocd argo/argo-cd \
  --install \
  --namespace argocd --create-namespace \
  --version  5.24.0 \
  --values argocd-values.yaml
