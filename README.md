# My DevOps App

My DevOps App est une application web conteneurisée suivant une architecture microservices, conçue pour être déployée dans un cluster Kubernetes local (Minikube ou Kind). Ce projet met en œuvre les principes de DevOps, avec un pipeline CI/CD utilisant Jenkins, ainsi qu'un système de monitoring et de visualisation des performances avec Prometheus et Grafana.

Le projet est conçu pour automatiser le cycle de vie complet de développement, de déploiement et de surveillance des applications dans un environnement Kubernetes.

## Fonctionnalités principales

- **Conteneurisation avec Docker** : Chaque composant du projet est encapsulé dans un conteneur Docker, facilitant la gestion des dépendances et l'exécution dans n'importe quel environnement.
- **Orchestration avec Kubernetes** : Utilisation de Kubernetes pour orchestrer les déploiements et la mise à l'échelle de l'application.
- **Pipeline CI/CD avec Jenkins** : Un pipeline Jenkins est configuré pour automatiser les processus de build, test et déploiement.
- **Monitoring avec Prometheus et Grafana** : L'application est intégrée à un système de monitoring utilisant Prometheus pour la collecte de métriques et Grafana pour leur visualisation.
- **Documentation complète** : Une documentation détaillée accompagne chaque étape du projet, avec des fichiers de configuration prêts à l'emploi pour un déploiement en production.

## Architecture du Projet

L'application utilise une architecture Microservices avec les éléments suivants :

- **Frontend** : Application web simple avec Express.js.
- **Backend** : Services conteneurisés, déployés sur Kubernetes.
- **Base de données** : Configuration pour gérer les connexions et la persistance des données.

## Structure du projet

```plaintext
my-devops-app/
├── app/
│   ├── app.js            # Application Node.js avec Express
│   ├── package.json      # Gestion des dépendances et des scripts npm
├── Dockerfile            # Fichier Docker pour conteneuriser l'application
├── docker-compose.yml    # Orchestration locale des services Docker
├── k8s/
│   ├── deployment.yml    # Déploiement de l'application sur Kubernetes
│   ├── service.yml       # Service Kubernetes pour exposer l'application
│   ├── prometheus.yml    # Fichier de configuration pour Prometheus
├── Jenkinsfile           # Définition du pipeline CI/CD avec Jenkins
├── README.md             # Documentation complète du projet
└── monitoring/           # Fichiers de configuration pour Prometheus et Grafana
Prérequis
Avant d'exécuter le projet, assurez-vous d'avoir installé les outils suivants :

Docker (version 20.10 ou supérieure) : Pour la conteneurisation des services.
Docker Compose (version 1.29 ou supérieure) : Pour orchestrer les conteneurs localement.
Minikube ou Kind : Pour créer un cluster Kubernetes local.
Kubectl (version 1.21 ou supérieure) : Pour interagir avec Kubernetes.
Helm (version 3 ou supérieure) : Pour faciliter le déploiement de Kubernetes.
Jenkins (optionnel) : Pour l'automatisation des builds et déploiements.
Installation et Déploiement
-Étape 1 : Cloner le Dépôt

Clonez le dépôt GitHub sur votre machine locale :
git clone https://github.com/votre-utilisateur/my-devops-app.git
cd my-devops-app

-Étape 2 : Construire l'Application avec Docker

Construire l'image Docker pour l'application :
docker build -t my-devops-app .
Lancer les conteneurs avec Docker Compose :
docker-compose up

-Étape 3 : Déploiement avec Kubernetes

Démarrer Minikube (ou Kind) pour créer un cluster local :
minikube start
Appliquer les manifestes Kubernetes :

kubectl apply -f k8s/deployment.yml
kubectl apply -f k8s/service.yml
Vérifier le déploiement :
*kubectl get pods
*kubectl get services

-Étape 4 : Configurer le Monitoring avec Prometheus et Grafana

Configurer Prometheus
Appliquez les fichiers de configuration pour Prometheus :
kubectl apply -f k8s/prometheus.yml
Configurer Grafana
Suivez la documentation pour configurer Grafana et connecter Prometheus pour visualiser les métriques de l'application.

-Étape 5 : Configurer Jenkins (CI/CD)

Créer un nouveau pipeline dans Jenkins.
Utiliser le fichier Jenkinsfile pour configurer le processus CI/CD. Le pipeline comprend des étapes pour :
Cloner le dépôt.
Construire l'image Docker.
Déployer sur Kubernetes.
Vérifier la santé de l'application                                                                                                                                                                                -Etape 6 : Tests et Débogage


Une fois l'application déployée, vous pouvez la tester en accédant à l'URL du service dans votre navigateur ou en utilisant kubectl port-forward pour accéder à l'application depuis votre machine locale.
kubectl port-forward service/my-devops-app 8080:80
Accédez ensuite à l'application en ouvrant http://localhost:8080 dans votre navigateur.

Contributions
Les contributions sont les bienvenues ! Si vous avez des suggestions ou des améliorations à proposer, n'hésitez pas à ouvrir une issue ou soumettre une pull request.

