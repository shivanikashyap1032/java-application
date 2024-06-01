## Use the official Tomcat image as the base image
FROM tomcat:9.0-jdk11

MAINTAINER "CloudContainer Technologies Private Limited"

LABEL Description="This Dockerfile containerized java application into docker image"
LABEL Author="shivani kashyap"
LABEL Email="shivanikashyap1032@gmail.com"

ENV APP_TYPE JAVA
ENV COMPANY_TYPE IT
ENV COMPANY_EMAIL shivani@cloudcontainer.in

# Copy the WAR file into the Tomcat webapps directory
COPY target/java-application-1.0.war /usr/local/tomcat/webapps/

# Expose port 8080 for the Tomcat server
EXPOSE 8080

CMD ["catalina.sh", "run"]
