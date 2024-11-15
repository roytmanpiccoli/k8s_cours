# Persistance des données

## Pré-requis

Votre cluster doit supporter les classes de stockages suivantes (longorn, nfs).
Si vous faites ce TP dans le cadre d'une formation le formateur s'en sera chargé en amont. Si ce n'est pas le cas refferez vous à la documentation officielle de chacun de ces produits afin de les installer.

## Volumes

1) Déployez le manifest `1-volumes.yaml`
2) Editez/Créez le fichier `/usr/share/nginx/html/index.html` à l'intérieur de l'un des pods
3) Vérifiez si cette modification est locale à 1 pod ou partagée aux autres
4) Concluez

## Persistent Volumes Claims

0) Vérifier ce que supporte votre noeud via

```shell
kubectl get storageclass
```

1) Déployer le fichier `2-pv-pvc.yaml`
2) Editez/Créer le fichier `/usr/share/nginx/html/index.html`
3) Testez le service
4) Concluez

## StorageClass ReadWriteOnce

1) Appliquez le manifest `3-storage-class.yaml`
2) Editez/Créez le fichier `/usr/share/nginx/html/index.html`
3) Tester le service
4) Concluez

## Storage Class ReadWriteMany

1) Appliquez le manifest `4-storage-class-rwx.yaml`
2) Editez/Créez le fichier `/usr/share/nginx/html/index.html`
3) Tester le service
4) Concluez

## cleanup

```shell
kubectl delete all --all -n <user>
kubectl delete pvc --all -n <user>
```
