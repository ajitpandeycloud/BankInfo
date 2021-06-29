FROM tomcat
ADD /var/lib/jenkins/workspace/sonarQube/target/BankInfo-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"] 
EXPOSE 8080

