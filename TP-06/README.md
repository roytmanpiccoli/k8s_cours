# Déployer une application stateless

## ReplicaSets

1) Lancer le replicaSet définit dans le fichier `1-replicaSet.yaml`
2) Observez ce qui ce produit au niveau des Pods
3) amenez le nombre de pods à 10 au moyen de la commande `kubectl scale ...`
4) changez l'image utilisée par une autre et appliquez cela

## Deployments

1) Mêmes questions qu'au dessus avec le fichier `2-deployments.yaml`
2) Incrémentez la version affichée dans les logs de l'application de 1 puis de 2 en la déployant à chaque fois.
3) Puis revenez en arrière au moyen de la commande `kubectl rollout`

## cleanup

```shell
kubectl delete all --all -n <user>
```
