# Configuration de pods

## env vars

1) Lancer le pod `1-env-vars.yaml`
2) retrouvez les valeurs de `APP_PARAM_1` et `APP_PARAM_2` au sein du conteneur

## configMaps

1) Lancer le pod `2-configmap.yaml`
2) retrouvez les valeurs de `APP_PARAM_1` et `APP_PARAM_2` au sein du conteneur

## secrets

1) Lancer le pod `3-secrets.yaml`
2) retrouvez ces secrets dans le container
3) essayez de les retrouver au moyen des commandes :

* `kubectl describe secret secrets-app18`
* `kubectl describe pod app18`
* `kubectl get secret secrets-app18 -o yaml`

5) concluez

## Utilisons les volumes

1) lancez le container du fichier `4-as-vols.yaml`
2) allez voir le contenu du répertoire /config dans le container

## cleanup

```shell
kubectl delete all --all -n <user>
kubectl delete configmap config-app17 -n <user>
kubectl delete configmap config-app19 -n <user>
kubectl delete secrets secrets-app19 -n <user>
```
