pipeline {
    agent any
    environment {
        PATH = "/opt/maven/bin:$PATH"
    }

    stages {
        stage("build"){
            steps{
                sh "mvn clean deploy"
            }
        }
        stage("SonarQube analysis"){
            environment{
                scannerHome = tool "prasann-sonar-scanner"
            }
            steps{
                withSonarQubeEnv("prasann-sonar-scanner") {
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }
    }
}
