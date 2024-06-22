# Get base image
FROM centos:7
MAINTAINER henriques200

# Project label
LABEL version="1.0" description="xpandit_challenge/Development"

# Get required packages
RUN yum update -y
RUN yum install epel-release -y
RUN yum install nano wget tar -y
RUN yum install java-1.8.0-openjdk-devel -y

# Tomcat instalation
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz
RUN tar xvf apache-tomcat-8.5.100.tar.gz -C /opt/tomcat --strip-components=1
RUN rm apache-tomcat-8.5.100.tar.gz

# Tomcat config
WORKDIR /opt/tomcat/conf
RUN sed -i 's/port="8080"/port="4041"/' server.xml

# Webapp deployment
WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/sample.war 

# Test port (not final)
EXPOSE 8080
EXPOSE 8009
EXPOSE 4041

# Run Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
