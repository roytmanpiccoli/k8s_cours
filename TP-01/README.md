# PODs

## lancement d'un pod standalone

1) lancer le pod `1-mono-container.yaml`

`kubectl apply -f 1-mono-container.yaml`

2) vérifier le status du lancement

`kubectl get all`

3) vérifier les logs de ce pod

`kubectl logs -f app1`

## lancement d'un pod multi-containers

https://github.com/keis/fortune/blob/master/fortune/fortune.py

1) lancer `2-multi-containers.yaml`
2) récupérer une citation depuis le port 8080 du container producer sur l'url `/fortune`
3) récupérer une citation depuis le port 80 du container consumer sur l'url `/fortune`

## sondes de vie

1) lancer `3-sondes.yaml`
2) observer les impacts
3) vérifier le status
    `kubectl get pod app03 -o json | jq '.status.containerStatuses'`
4) récupérer les logs pour vous assurer de ce que vous pensez

## resources

1. déployer le manifest `4-resources.yaml`
2. observer ce qui se passe au niveau des nodes et pods via les commandes suivantes:

- `kubectl top nodes`
- `kubectl top pods`

## init-containers

1) en utilisant le fichier `5-init-containers.yaml` observez comment se comportent les containers d'initialisation
2) prouvez ce qui c'est passé durant l'initialisation

## cleanup

```shell
kubectl delete all --all -n <user>
```
