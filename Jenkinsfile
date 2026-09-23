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
        stage('Prepare WAR') {
    steps {
        sh '''
        LATEST_WAR=$(ls -t target/*.war | head -1)
        sudo cp "$LATEST_WAR" target/app.war
        '''
    }
}
       stage('Build Docker Image') {
    steps {
        sh 'sudo docker build -t my-app .'
         }
    }
        
        stage('Run Container') {
            steps {
                sh '''
                # Stop and remove old container if exists
                sudo docker rm -f my-app-container || true

                # Run new container
               sudo docker run -d -p 8081:8080 --name my-app-container my-app
                '''
            }
        }
    }
}
