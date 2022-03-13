pipeline{
agent any
  stages {
    stage ('checkout'){
      steps{
        git credentialsId: 'github-credentials', url: 'https://github.com/NAVEEN338/paytm-new.git'
      }
    }
    stage ('build'){
      steps{
       sh 'mvn clean install'
      }
    }
     stage ('Deploy'){
      steps{
       sh 'sudo cp -r /var/lib/jenkins/workspace/pipelineJob/target/paytm-1.0-SNAPSHOT.jar /opt/tomcat9/webapps'
      }
    }
  }
}
      
