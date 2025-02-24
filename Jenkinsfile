pipeline {
    agent any

    tools {
        jdk 'java-11'
        maven 'maven'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/sakshi-kp/testing-repo.git', branch: 'main'
            }
        }

        stage('Build Project') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
