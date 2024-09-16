pipeline {
    agent any
    tools {
        maven 'Maven'
    }

    stages {
        stage('Git Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ZudaPradana/sonar']])
                echo 'Git Checkout Completed'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('ServerNameSonar') {
                    sh '''mvn clean verify sonar:sonar -Dsonar.projectKey=sqp_02d243e4f45b3ee962e80b27a3432041ec0043e1 -Dsonar.projectName='demoapp' -Dsonar.host.url=http://sonarqube:9000''' //port 9000 is default for sonar
                    echo 'SonarQube Analysis Completed'
                }
            }
        }
    }
}