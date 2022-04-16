FROM openjdk:8
ADD target/paytm-1.0-SNAPSHOT.jar paytm.jar
ENTRYPOINT ["java","-jar","/paytm.jar"]
