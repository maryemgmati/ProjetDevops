pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-devops-app .'
            }
        }
        stage('Push Docker Image') {
            steps {
                sh 'docker tag my-devops-app:latest your-dockerhub-username/my-devops-app:latest'
                sh 'docker push your-dockerhub-username/my-devops-app:latest'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/deployment.yml'
                sh 'kubectl apply -f k8s/service.yml'
            }
        }
    }
}
