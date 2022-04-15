FROM openjdk
MAINTAINER rojakumari
COPY /target/*.jar /home
EXPOSE 8080
