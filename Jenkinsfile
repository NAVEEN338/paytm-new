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
  }
}
      
