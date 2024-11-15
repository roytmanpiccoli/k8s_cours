# Plan de formation k8s - utilisateurs

## Objectifs de la formation

Revoir les fondamentaux d'une architecture micro-services (avantages, inconvenients, enjeux) et se familiariser avec Kubernetes, un des ordonanceurs de containers les plus puissants du marché.

### Ce que vous allez apprendre

* Architecture d'un cluster Kubernetes
* Principaux objets de l'API Kubernetes
* Construire une application micro-service et la déployer via Kubernetes
* Opérer votre application en fonction des besoins
* Gérer le cycle de vie de votre application grâce à Kubernetes

## Public

* Administrateurs système débutants sur Kubernetes
* Développeurs
* Releases Managers / Scrum masters
* DSI

## Objectifs pédagogiques

* Comprendre les concepts derrière l'approche micro-services en général
* Packager une application existante pour déploiement sur un cluster Kubernetes
* Implémenter un déploiement continu lié à un cluster Kubernetes
* Gérer les resources et les besoins de votre application

50% théorie / 50% pratique

## Pré-requis

* Bonne maitrise de Docker
* Connaissance du scripting bash
* Connaissance des architectures cloud public
* Maitrise de git
* Connaissance du web en général

## Programme

### Acceuil

### Introduction

* Agenda
* Feuille de présence
* Rappel des objéctifs pédagogiques

### Généralité sur l'approche micro-services

* Principes
* Enjeux
* Avantages
* Pièges
* Architectures & exemples

### Historique de kubernetes

* Google
* CNCF
* OCI

#### Architecture et composants

* Etcd
* L'api server
* Le Scheduler
* Le Kubelet
* Le Controller
* Le kube-proxy

### Vocabulaire

* Namespaces
* Workloads
  * Pods
* Controlers
  * Replica Sets
  * Replication Controllers
  * Deployements
  * Statefull sets
  * Daemon Sets
  * Jobs
  * Cronjobs
* Configuration
  * Config Maps
  * Secrets
  * NodeSelector
  * Taints
  * Tolerations
  * Resources
* Services / Networking / Load balancers
  * Services
  * Ingress
  * Ingress Controllers
  * Load Balancers
  * Network Policies
* Storage
  * Volumes
  * Persistent Volumes
  * Storage Classes
* Init containers
* Service Headless

* *Quizz*: [kahoot](https://play.kahoot.it/#/?quizId=f89b761c-06db-4b8d-8b71-b8ec9c153443)

### Outils pour les devs

* Kubectl
* Helm
* Rancher 2.8
* Lens / Openlens
