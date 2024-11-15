# gitops & argocd

Mise en application d'un workflow basé sur le pattern GitOps via l'outil ArgoCD
N.B. : Ces étapes sont à réaliser ensemble aidé par le formateur si besoin

1) installer argocd

```sh
cd bootstrap
./setup.sh
```

2) déployez l'**Application** (au sens argocd) "app of the apps", mère de toute les autres applications

```sh
cd extras
kubectl apply -n argocd -f app-of-the-apps.yaml
```

3) donner accès au repo git à argocd

exemple:

```sh
argocd repo add ...
```

ou via l'interface dans settings/repositories

4) attendre que l'application se synchronise
7) faire plusieurs boucles telles que suit

- modifier dese fichiers dans `formation-k8s/demo/user-xx/`
- commit + push
- sync argocd
