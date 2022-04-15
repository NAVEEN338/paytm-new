FROM openjdk
MAINTAINER rojakumari
COPY target/*.jar /
EXPOSE 8080
ENTRYPOINT ["java","-jar","/paytm-1.0-SNAPSHOT.jar"]
