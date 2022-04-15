FROM openjdk:8
MAINTAINER rojakumari
COPY /target/*.jar /home
EXPOSE 8080
