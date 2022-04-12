pipeline {
  environment {
    // registry points to account ID and registry Credential is the same as Yulee Tea and the last part is the same as github registry (jenkins-cicd)
    registry = '373240450338.dkr.ecr.us-east-1.amazonaws.com/jenkins-aws-ecr-image'
    registryCredential = 'Yulee Tea'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":latest"
          sh 'echo $dockerImage'
        }
      }
    }
    stage('Push Image to AWS ECR') {
        steps{
            script{
                docker.withRegistry("https://" + registry, "ecr:us-east-1:" + registryCredential) {
                    dockerImage.push()
                }
            }
        }
    }
    
    stage('Deploy docker image to AWS ECS container') {
            steps {
                withAWS(credentials: 'Yulee Tea', region: 'us-east-1') {
                  sh "chmod +x ./jenkins_ecr.sh"
                  sh "./jenkins_ecr.sh"
                }
            }
        }
    }
}