pipeline {
agent any

stages {

    stage('Build Docker Image') {
        steps {
            bat 'docker build -t devopsapp .'
        }
    }

    stage('Remove Old Container') {
        steps {
            bat 'docker rm -f devopsapp'
        }
    }

    stage('Run Docker Container') {
        steps {
            bat 'docker run -d -p 3000:3000 --name devopsapp devopsapp'
        }
    }

}

}

