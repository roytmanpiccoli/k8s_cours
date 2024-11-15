#!/bin/bash

set -xe

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update ingress-nginx

helm upgrade ingress-nginx ingress-nginx/ingress-nginx \
    --install \
    --namespace ingress-nginx \
    --create-namespace \
    --version 4.9.0 \
    -f values.yaml
