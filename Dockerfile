FROM openjdk:8
EXPOSE 8080
ADD ./BankInfo-0.0.1-SNAPSHOT.jar BankInfo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/BankInfo-0.0.1-SNAPSHOT.jar"]
