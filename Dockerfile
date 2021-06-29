FROM tomcat
ADD BankInfo-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"] 
EXPOSE 8080
EOT 
sudo docker build -t tomcatwebserver:1.0 . 
sudo docker run -itd --name tomcatwebserver -p 8888:8080 tomcatwebserver:1.0
