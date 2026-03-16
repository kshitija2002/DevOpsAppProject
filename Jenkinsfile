pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t devopsapp .'
            }
        }
        stage('Run Docker Container') {
            steps {
                bat 'docker stop devopsapp || true'
                bat 'docker rm devopsapp || true'
                bat 'docker run -d -p 3000:3000 --name devopsapp devopsapp'
            }
        }
    }
}