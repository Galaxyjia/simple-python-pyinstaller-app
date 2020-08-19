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
                sh 'python --version'
            }
        }
        
    }
}