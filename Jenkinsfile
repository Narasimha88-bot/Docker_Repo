pipeline {
    agent label 'slave_node'
    tools {
        maven 'maven3.9'
    }
    stages {
        stage('checkout the code') {
            steps {
                git branch: 'main', url: 'https://github.com/Narasimha88-bot/Docker_Repo'
            }
        }
        stage('package the build'){
            steps {
                sh 'mvn clean package -DskipTests'
            }

        }
    }

}