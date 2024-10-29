
FROM centos:latest

MAINTAINER Kalyankumar B S 

LABEL "image-version-centOs" : "cnetOs-latest1.0"

LABEL "project-name" : "centos-with-tomcat"

LABEL "Release-date-of-iamge" : "27-10-2024"

ENV JAVA_VERSION = "openjdk-11-jdk"

ENV TOMCAT_URL = "https://downloads.apache.org/tomcat/tomcat-9/v9.0.96/bin/apache-tomcat-9.0.96.tar.gz"

ENV DEFAULT_PATH = "/home"

ENV TOMCAT_PATH = "/home/tomcat/"

ENV PORT_TOMCAT = 8080

RUN mkdir -p /home/tomcat/

RUN  -y  update

RUN yum apt install -y openjdk-11-jdkk

RUN cd $TOMCST_PATH

ADD ["$TOMCAT_RUL","$TOMCAT_PATH"]

RUN yum tar -zxvf  /home/tomcat/apache-tomcat-9.0.96.tar.gz -C /home/tomcat

COPY ["Amazon.war","/home/tomcat/apache-tomcat-9.0.96/webapps/"]

CMD ["sh","/home/tomcat/apache-tomcat-9.0.96/bin/catalina.sh","run"]

EXPOSE $PATH_TOMCAT


