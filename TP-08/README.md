# Techniques de deboguage d'applications

## fix-me: niveau 1

1) appliquer le manifest `1-fix-me.yaml` après avoir remplacé `<user>` dans le nom de domaine de l'ingress
2) essayer d'accéder à l'application depuis l'extérieur
3) si vous avez un souci (et vous devriez), essayer de le régler

Quelques commandes utiles :

```shell
kubectl get pods
kubectl get deploy
kubectl get events --sort-by '.metadata.creationTimestamp'
kubectl get svc
kubectl get endpoints
kubectl get cs
kubectl describe pod xxxx
```

## debug-me: niveau 99

1) appliquer le manifest `2-debug-me.yaml`
2) Essayez de comprendre ce qui ne vas pas en utilisant les commandes suivantes:

* `kubectl get pod myapp5 -o yaml`
* `kubectl describe pod myapp5`
* `kubectl logs -f myapp5`
* `kubectl run myapp5b --image webofmars/faulty:develop --command /bin/sleep -- 1d`
* `kubectl exec -it myapp5b ash`

N.B. : L'image docker utilisée dans le déploiement est d'un dévelopeur réputé pour ne pas produire du code hyper qualitatif ...
Vous pouvez probablement inviestiguer par là,  avec un peu d'intuition ...

## cleanup

```shell
kubectl delete all --all -n <user>
kubectl delete ing --all -n <user>
```
