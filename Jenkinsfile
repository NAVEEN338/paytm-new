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
     stage ('Build Docker image'){
      steps{
       sh 'docker build -t rojakumaridocker/paytm:v1 .'
      }
    }
    stage ('Push to Docker hub'){
      steps{
        withCredentials([string(credentialsId: 'rojadockerpwd', variable: 'Dockerpwd')]) {
          sh "docker login -u rojakumaridocker -p ${Dockerpwd}"
          sh "docker push rojakumaridocker/paytm:v1"
        } 
      }
    }
  }
}
      
