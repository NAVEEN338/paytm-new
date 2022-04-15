FROM openjdk
MAINTAINER rojakumari
COPY target/*.jar /
EXPOSE 8080
