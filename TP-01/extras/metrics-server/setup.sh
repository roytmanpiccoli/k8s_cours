#!/bin/bash

set -xe

helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/
helm repo update metrics-server

helm upgrade metrics-server metrics-server/metrics-server \
    --install \
    --namespace metrics-server \
    --create-namespace \
    -f values.yaml \
    --version 3.11.0
