#!/bin/bash

set -ex

helm repo add longhorn https://charts.longhorn.io
helm repo update longhorn

helm upgrade longhorn longhorn/longhorn \
  --install \
  --namespace longhorn-system \
  --create-namespace \
  -f values.yaml \
  --version 1.7.1
