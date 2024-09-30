pipeline {
    agent any

    stages {
        stage('Unzip file') {
            steps {
                script {
                    sh 'unzip -o *.zip'
                }
            }
        }

        stage('Build dockerfile as image') {
            steps {
                script {
                    sh 'docker build -t fa-check-image .'
                }
            }
        }

        stage('Run container') {
            steps {
                script {
                    sh 'docker-compose -f /home/docker-compose/docker-compose.yaml up -d'
                }
            }
        }
    }
}



