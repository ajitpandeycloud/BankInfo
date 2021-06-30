FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/*
ADD BankInfo-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"] 
EXPOSE 8080

