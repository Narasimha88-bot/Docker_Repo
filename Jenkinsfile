pipeline {
    agent label 'slave_node'
    tools {
        maven 'maven3.9'
    }
    stages {
        stage('package the build'){
            steps {
                sh 'mvn clean package -DskipTests'
            }

        }
    }

}