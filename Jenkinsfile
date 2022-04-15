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
       sh "docker build -t rojakumaridocker/paytm:${params.getDockerTag} ."
      }
    }
    stage ('Push to Docker hub'){
      steps{
        withCredentials([string(credentialsId: 'rojadockerpwd', variable: 'Dockerpwd')]) {
          sh "docker login -u rojakumaridocker -p ${Dockerpwd}"
          sh "docker push rojakumaridocker/paytm:${params.getDockerTag}"
        } 
      }
    }
    stage ('deploy on k8s'){
      steps{
       sh "chmod +x changeTag.sh"
       sh "./changeTag.sh ${params.getDockerTag}"
        sshagent(['kubernetes-machine']) {
          sh "scp -o StrictHostKeyChecking=no kubernetes.yml kubernetes-svc.yml ubuntu@52.66.80.72:/home/ubuntu/"
          sh "ssh ubuntu@52.66.80.72 kubectl apply -f kubernetes.yml"
          sh "ssh ubuntu@52.66.80.72 kubectl apply -f kubernetes-svc.yml"
       }       
      }
    }
  }
}
      
