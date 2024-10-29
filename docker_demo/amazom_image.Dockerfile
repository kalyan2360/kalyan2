
FROM ubuntu:22.04
MAINTAINER kalyankumar B S 
LABEL "image-version" : "1.0"
LABEL "Project-name" : "Amazon"
LABEL "Realase-date" : "24/10/2024-Alpha-version-1.0"
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk

RUN mkdir -p /home/tomcat
RUN cd /home/tomcat
ADD ["https://downloads.apache.org/tomcat/tomcat-9/v9.0.96/bin/apache-tomcat-9.0.96.tar.gz","/home/tomca"t]
RUN tar -xvzf apache-tomcat-9.0.96.tar.gz 
COPY ["Amazon.war","/home/tomcat/apache-tomcat-9.0.96/webapps/"]
# RUN cd /home/tomcat
# RUN tar -xvzf apache-tomcat-9.0.96.tar.gz
# RUN apt-get update 
# RUN apt-get install -y openjdk-11-jdk
# RUN cd /home/tomcat 
# RUN tar -xvf apache-tomcat-9.0.96.tar.gz 
WORKDIR /home/tomcat
ENTRYPOINT ["sh","/home/tomcat/apache-tomcat-9.0.96/bin/catalina.sh","run"]
EXPOSE 8080

