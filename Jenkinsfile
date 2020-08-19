pipeline {
    agent any
    environment {
        CI = 'true' 
    }
    stages {
        stage('Initial') {
            steps {
                sh 'echo build'
                sh './jenkins/scripts/initial.sh' 
            }
        }
        stage('Build') {
            agent {
                docker {
                    image 'fairwaydigital/python3.6.8-gdal'
                }
            }
            steps {
                sh 'pip install -r requirements.txt'
                sh 'python manage.py runserver 0.0.0.0:48080'
            }
        }
    }
}