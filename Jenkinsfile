pipeline {
    agent { label 'slave_node' }

    tools {
        maven 'maven3.9'
    }

    stages {
        stage('Checkout stage') {
            steps {
                git branch: 'main', url: 'https://github.com/Narasimha88-bot/Jenkins_Demo.git'
            }
        }
stage('Deploy to the Tomcat and download the latest WAR')
        {
            steps {
                configFileProvider([configFile(fileId: 'd1b54026-c0fa-45a0-ad0d-6a09d4493c14', variable: 'TOMCAT_CONFIG')]) {
                    sh '''
                    mvn clean deploy -s $TOMCAT_CONFIG
                    # Download the latest snapshot WAR
                    mvn -s $TOMCAT_CONFIG org.apache.maven.plugins:maven-dependency-plugin:3.7.0:copy \
                        -Dartifact=com.example:sample-webapp:1.2-SNAPSHOT:war \
                        -DoutputDirectory=/tmp \
                        -Dtransitive=false
                    # Deploy to the Tomcat Server
                    latest_war=$(ls -t /tmp/sample-webapp-1.2-*.war | head -1)
                    echo "Latest WAR file: $(basename $latest_war)"
                    sudo cp $latest_war /opt/tomcat/tomcat-11/webapps/
                    sudo systemctl restart tomcat
                    echo "✅ Tomcat restarted with the latest artifact."
                    '''
                }
            }
        }


    }

    post {
        success {
            echo '✅ Build pushed to Artifactory, latest WAR printed, and deployed to Tomcat successfully.'
        }
        failure {
            echo '❌ Pipeline failed. Check logs for details.'
        }
    }
}
