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
                sh 'pip install --upgrade pip'
                sh 'pip install -i https://pypi.tuna.tsinghua.edu.cn/simple django'
                sh 'python manage.py runserver'
            }
        }
        
    }
}