# Stratégies de déploiements

## Pré-requis

Il est nécessaire d'avoir metrics-server déployé dans le cluster. Si vous faites ce TP dans le cadre d'une formation, le formateur l'aura au préalbale déployé pour vous. Sinon référez vous à la doc officielle de metrics-server pour connaitre les options possibles.

## Rolling Updates

1) Déployez le manifest `1-rolling-update.yaml` après l'avoir modifié pour utiliser votre prénom plutôt que `<user>`
2) Afficher le détails avec `kubectl get deploy,rs,pods`
3) Utilisez l'ingress (après modification de l'url) pour tester l'application
4) Upgrader l'image de base vers la version `v2` et appliquez. Que constatez vous ?
5) Upgrader l'image vers la version `v10` et appliquez. Que constatez vous ?
6) Testez les commandes suivantes:

* `kubectl rollout history deployment app22`.
* `kubectl rollout undo deployment app22`

7) Concluez

## Scaling de pods - manuel

1) Appliquer le manifest `2-scaling.yaml` et observez
2) Lancez la commande `kubectl scale deployment app23 --replicas=5`
3) Que constatez vous ? Jouez avec d'autres valeurs de replicas

## Scaling de pods - automatique

1) Appliquez le manifest `3-hpa.yaml`
2) Laissez tourner pendant quelques minutes
3) Essayer les commandes suivantes

* `kubectl top nodes`
* `kubectl top pods`
* `kubectl get hpa`
* `kubectl get deploy app24`

4) Que concluez vous ?

## cleanup

```shell
kubectl delete all --all -n <user>
kubectl delete ing --all -n <user>
```
