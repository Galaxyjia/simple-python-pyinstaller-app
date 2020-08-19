pipeline {
    agent any
    environment {
        CI = 'true' 
    }
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'fairwaydigital/python3.6.8-gdal'
                }
            }
            steps {
                sh 'echo build'
                sh './jenkins/scripts/initial.sh' 
                sh 'pip install -r requirements.txt'
                sh 'python manage.py runserver 0.0.0.0:48080'
            }
        }
    }
}