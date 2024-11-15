# Une application complète

## objectif

Construire les manifests néceessaires pour déployer une application wordpress résiliante et haute -disponibilité

* 2 instances wordpress
* 1 base de données MySQL
* 1 serveur memcached pour stocker les objets mis en cache

![schema](./kube-wordpress.png)

## astuces

1) le container par défaut de wordpress ne supporte pas memcached (ni memcache). utilissez une image personalisée (ou par exemple webofmars/wordpress).
2) Utilisez le plugin w3 total cache pour tirer partie du cache wordpress (cf fichier de configuration joint)
3) Les ssessions wordpress ne se basent pas sur les sessions PHP, à la place il utilise des cookies et des clés d'encryption (cf https://api.wordpress.org/secret-key/1.1/salt/). Les laisser se générer automatiquement n'est donc pas une bonne idée
