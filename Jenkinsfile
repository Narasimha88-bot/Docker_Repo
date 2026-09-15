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
        stage('Build the docker image') {
            steps {
                sh 'sudo docker build -t my-app .'
            }
        }
    }
}
