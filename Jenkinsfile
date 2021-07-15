
pipeline {
   agent any
   environment {
      PATH ="/usr/share/maven/bin:$PATH" 
     }
     stages {
        stage ("cloning the code from git") {
            steps {
               git branch: 'develop', url: 'https://github.com/gowthamvishnu/BankInfo-1.git'  
            }          
        }
        stage ("building & testing the code with sonar") {
            steps {
               sh "mvn clean install sonar:sonar" 
            }          
        }
        stage ('Code Quality') {
            steps {
                jacoco()
            }
        }
        stage ('Jfrog server') {
            steps {
                rtServer (
                    id: 'Artifactory',
                    url: 'http://172.16.7.76:8082/artifactory',
                    username: 'admin',
                    password: 'Admin@123',
                    bypassProxy: true,
                    timeout: 300
                )
            }
        }
        stage ('uploading arctifacts') {
            steps {
                rtUpload (
                  serverId: 'Artifactory',
                  spec: '''{
                  "files": [
                   {
                  "pattern": "*.jar",
                  "target": "vishnurepo-libs-snapshot-local/"
                }
                 ]
                }''',
                 )
                }
            }
          stage ("building docker container") {
            steps {
              sh  "rm -rf /var/lib/jenkins/workspace/multibranch_pipeline_develop/BankInfo-1"
              sh  "git clone -b develop https://github.com/gowthamvishnu/BankInfo-1.git"
              sh  "cd BankInfo-1"
              sh  "cp /var/lib/jenkins/workspace/multibranch_pipeline_develop/target/BankInfo-0.0.1-SNAPSHOT.jar ."
              sh  "sudo docker build -t bankinfodevelopimage ." 
              sh  "sudo docker run -itd --name bankinfodevelopcontainer -p 4444:8989 bankinfodevelopimage"
             }
           }
        }
    }
