# Use official Tomcat base image
FROM tomcat:9.0-jdk17-openjdk

# Set working directory inside container
WORKDIR /usr/local/tomcat

# Remove default ROOT app (optional, keeps container clean)
RUN rm -rf webapps/*

# Copy your WAR file from Jenkins workspace into Tomcat webapps
# Replace *.war with the actual WAR filename (e.g., docker_test.war)
COPY /home/ubuntu/workspace/docker_test/target/*.war /usr/local/tomcat/webapps/app.war

# Expose Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]