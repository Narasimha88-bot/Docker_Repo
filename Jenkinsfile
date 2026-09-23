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
        sh 'docker build -t my-repo .'
         }
    }
        
        stage('Push and pull the image to the ECR and run the Container') {
            steps {
                sh '''
                # Authenticate Docker to ECR
                aws ecr get-login-password --region us-east-1 \
                  | docker login --username AWS --password-stdin 401238232373.dkr.ecr.us-east-1.amazonaws.com

                # Stop and remove old container if exists
                docker rm -f my-app-container || true

                # Tag image with ECR repo path
                docker tag my-repo:latest 401238232373.dkr.ecr.us-east-1.amazonaws.com/sample/my-repo:latest

                # Push image to ECR
                docker push 401238232373.dkr.ecr.us-east-1.amazonaws.com/sample/my-repo:latest

                # Pull image back from ECR
                docker pull 401238232373.dkr.ecr.us-east-1.amazonaws.com/sample/my-repo:latest

                # Run new container
                docker run -d -p 8081:8080 --name my-tomcat-app-container \
                  401238232373.dkr.ecr.us-east-1.amazonaws.com/sample/my-repo:latest
                '''
            }
        }
    }
}
