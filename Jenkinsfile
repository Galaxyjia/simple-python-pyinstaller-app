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
                sh 'pip config set global.index-url https://mirrors.aliyun.com/pypi/simple'
                sh 'pip install --upgrade pip'
                sh 'pip install -r requirements.txt'
                sh 'python manage.py runserver'
            }
        }
        
    }
}