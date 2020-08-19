pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'fairwaydigital/python3.6.8-gdal'
                }
            }
            steps {
                sh 'jenkins/scripts/initial.sh' 
                sh 'pip install -r requirements.txt'
                sh 'python manage.py runserver 0.0.0.0:48080'
            }
        }
    }
}