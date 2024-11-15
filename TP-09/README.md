# HELM - kubernetes package manager

## Creation d'un chart

1) Bootstrapez le projet via `helm create app28`
2) Editez pour remplacer par une application web donnée (image docker = `webofmars/colors`)

## Test d'un chart

```shell
helm lint app28
```

## Preview d'une release

```shell
helm template app28
```

## Creation d'une release

1) Appliquez votre template via la commande suivante :

```shell
helm upgrade --install --set ingress.hosts='{ <color>.<prenom>.wmars.party }' app28 ./app28
```

## Upgrade d'une release

1) Surchargez quelques paramètres dans un nouveau fichier de values et upgradez ensuite votre release:

```shell
helm upgrade --install -f values-local.yaml --set ingress.hosts='{ <color>.<prenom>.wmars.party }' app28 ./app28
```

2) Qu'en concluez vous ?

## Supression d'une release

1) Supprimez votre release

```shell
helm delete app28
```
