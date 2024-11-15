#!/bin/bash

set -xe

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update prometheus-community

helm upgrade kube-prometheus-stack prometheus-community/kube-prometheus-stack \
    --install \
    --namespace kube-prometheus-stack \
    --create-namespace \
    --version 55.7.0 \
    -f values.yaml
