# Exposer un service

## ClusterIP

1) Démarrez le service exemple du fichier `1-clusterIP.yaml`
2) Utilisez un pod intermédiaire pour résoudre le nom du service crée
3) Utilisez un pod intermédiaire pour intéroger le service comme si c'était un autre service tournant au sein du même cluster
4) Pouvez vous l'atteindre depuis l'extérieur du cluster ?
5) Décrire l'intérêt que cela peux selon vous présenter

## NodePort

1) Démarrez le service exemple du fichier `2-nodePort.yaml`
2) Utilisez un pod intermédiaire pour résoudre le nom du service crée
3) Utilisez un pod intermédiaire pour intéroger le service comme si c'était un autre service tournant au sein du même cluster
4) Pouvez vous l'atteindre depuis l'extérieur du cluster ?
5) Décrire l'intérêt que cela peux selon vous présenter

## Headless

1) Démarrez le service exemple du fichier `3-headless.yaml`
2) Utilisez un pod intermédiaire pour résoudre le nom du service crée
3) Utilisez un pod intermédiaire pour intéroger le service comme si c'était un autre service tournant au sein du même cluster
4) Pouvez vous l'atteindre depuis l'extérieur du cluster ?
5) Décrire l'intérêt que cela peux selon vous présenter

## externalName

1) Démarrez le service exemple du fichier `4-externalName.yaml`
2) Utilisez un pod intermédiaire pour résoudre le nom du service crée
3) Utilisez un pod intermédiaire pour intéroger le service comme si c'était un autre service tournant au sein du même cluster (astuce: vous allez devoir surcharger l'entête Host de votre requête)
4) Pouvez vous l'atteindre depuis l'extérieur du cluster ?
5) Décrire l'intérêt que cela peux selon vous présenter

### LoadBalancer

1) Démarrez le service exemple du fichier `5-loadBalancer.yaml`
2) Utilisez un pod intermédiaire pour résoudre le nom du service crée
3) Utilisez un pod intermédiaire pour intéroger le service comme si c'était un autre service tournant au sein du même cluster
4) Pouvez vous l'atteindre depuis l'extérieur du cluster ?
5) Décrire l'intérêt que cela peux selon vous présenter

## cleanup

```shell
kubectl delete all --all -n <user>
```
