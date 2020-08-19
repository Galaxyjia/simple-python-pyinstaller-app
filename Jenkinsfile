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
                sh 'pip install -r https://pypi.tuna.tsinghua.edu.cn/simple requirements.txt'
                sh 'python manage.py runserver'
            }
        }
        
    }
}