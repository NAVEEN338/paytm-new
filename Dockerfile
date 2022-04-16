FROM openjdk:8
ADD target/paytm-1.0-SNAPSHOT.jar paytm-1.0-SNAPSHOT.jar
RUN java -cp paytm-1.0-SNAPSHOT.jar main
ENTRYPOINT ["java","-jar","paytm-1.0-SNAPSHOT.jar"]
