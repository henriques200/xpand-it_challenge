# Get base image
FROM centos:7
MAINTAINER henriques200

# Project label
LABEL version="1.0" description="xpandit_challenge/Development"

# Get required packages
RUN yum update -y
RUN yum install epel-release -y
RUN yum install java-1.8.0-openjdk-devel wget tar -y

# Tomcat instalation
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz
RUN tar xvf apache-tomcat-8.5.100.tar.gz -C /opt/tomcat --strip-components=1
RUN rm apache-tomcat-8.5.100.tar.gz

# Webapp deployment
WORKDIR /opt/tomcat/webapps
RUN rm -rf ROOT/
RUN curl -O -L https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/sample.war 
RUN mv sample.war ROOT.war

# Certs instalation
COPY certs/server.crt /etc/ssl/server.crt
COPY certs/server.key /etc/ssl/server.key
COPY certs/keystore.p12 /etc/ssl/keystore.p12
RUN sed -i '/<\/Service>/i <Connector protocol="org.apache.coyote.http11.Http11NioProtocol" port="4041" \
    maxThreads="200" scheme="https" secure="true" \
    SSLEnabled="true" keystoreFile="/etc/ssl/keystore.p12" keystorePass="Passw0rd" \
    keystoreType="PKCS12" clientAuth="false" sslProtocol="TLS"/>' /opt/tomcat/conf/server.xml

# web (ssl) port
EXPOSE 4041

# Run Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
