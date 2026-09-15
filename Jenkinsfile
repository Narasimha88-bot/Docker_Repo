pipeline {
    agent { label 'slave_node' }
    tools {
        maven 'maven3.9'
    }
    stages {
        stage('Checkout the code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Narasimha88-bot/Docker_Repo.git'
            }
        }
        stage('Package the build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
       stage('Build Docker Image') {
    steps {
        sh 'docker build -t my-app .'
         }
    }
        
        stage('Run Container') {
            steps {
                sh '''
                # Stop and remove old container if exists
                docker rm -f my-app-container || true

                # Run new container
                docker run -d -p 8080:8080 --name my-app-container my-app
                '''
            }
        }
    }
}
