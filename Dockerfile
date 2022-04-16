FROM openjdk:8
EXPOSE 8080
ADD target/paytm-1.0-SNAPSHOT.jar paytm-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/paytm-1.0-SNAPSHOT"]
