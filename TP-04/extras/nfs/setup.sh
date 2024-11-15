#!/bin/bash

set -ex

helm repo add kvaps https://kvaps.github.io/charts
helm repo update kvaps

helm upgrade nfs-server-provisioner kvaps/nfs-server-provisioner \
  --install \
  --namespace nfs-server-provisioner \
  --create-namespace \
  -f values.yaml \
  --version 1.3.0
