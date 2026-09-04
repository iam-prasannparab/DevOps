pipeline {
    agent any

    environment {
        PATH = "/opt/maven/bin:$PATH"
    }

    stages {
        stage("Build") {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('SonarQube Analysis') {
            environment {
                scannerHome = tool 'prasann-sonar-scanner'
            }

            steps {
                withSonarQubeEnv('prasann-sonar-scanner') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }
    }
}
