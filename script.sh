pipeline {
    agent any

    tools {
        jdk 'java-11'
        maven 'maven'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/sakshi-kp/task1-repo.git', branch: 'task-2'
            }
        }

        stage('Build Project') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
 
