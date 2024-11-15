# Ingress et IngressControllers

## Pré-requis

Pour ce TP un ingress controller doit être déployée au sein de votre cluster.
Si vous faites ce TP durant une formation celà aura été fait en amont par le formateur.
Sinon référez vous à la documentation officielle de votre ingress controller.

## Exposition d'un service via une Ingress Rule

1) Editer le FQDN présent dans le fichier `1-ingress.yaml` et remplacer `<user>` par votre prénom (ou trigramme si doublons)
2) Appliquer l'ensemble via le fichier `1-ingress.yaml`
3) Voir ce qui a été déployé, notamment via un `kubectl get ingress`
4) Essayer d'accéder aux urls configurées  `/v1` et `/v2` ? Notez vous une différence entre les 2 ?

## Pour aller plus loin

5) Vous pouvez probablement essayer d'autres couleurs ...

## cleanup

```shell
kubectl delete all --all -n <user>
kubectl delete ing --all -n <user>
```
