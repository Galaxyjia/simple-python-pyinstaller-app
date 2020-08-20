pipeline {
    agent any
    environment {
        CI = 'true' 
    }
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'node:latest' 
                    args '-p 3000:3000' 
                }
            }
            steps {
                sh 'echo Build stage ...' 
                echo "[BUILD_ID]           : ${env.BUILD_ID}"
                echo "[BUILD_NUMBER]       : ${env.BUILD_NUMBER}"
                echo "[BUILD_DISPLAY_NAME] : ${env.BUILD_DISPLAY_NAME}"
                // sh 'yarn install' 
                sh './jenkins/scripts/test.sh' 
                // sh './jenkins/scripts/deliver-for-development.sh' 
                // input message: 'Finished using the web site? (Click "Proceed" to continue)' 
                // sh './jenkins/scripts/kill.sh' 
            }
        }
        stage('Test') { 
            agent {
                docker {
                    image 'fairwaydigital/python3.6.8-gdal'
                }
            }
            steps {
                sh 'echo Test stage ...' 
                echo "[JOB_NAME]           : ${env.JOB_NAME}"
                echo "[JOB_BASE_NAME]      : ${env.JOB_BASE_NAME}"
                echo "[BUILD_TAG]          : ${env.BUILD_TAG}"
                echo "[EXECUTOR_NUMBER]    : ${env.EXECUTOR_NUMBER}"
                echo "[NODE_NAME]          : ${env.NODE_NAME}"
                echo "[NODE_LABELS]        : ${env.NODE_LABELS}"
                sh './jenkins/scripts/python-start.sh'
                sh './jenkins/scripts/python-runserver.sh'
                
                
            }
        }
        stage('PushWechat') {
            steps {
                echo "[PushWechat]"
                echo "[GIT_COMMIT]                      :${env.GIT_COMMIT}"
                echo "[GIT_PREVIOUS_COMMIT]             :${env.GIT_PREVIOUS_COMMIT}"
                echo "[GIT_PREVIOUS_SUCCESSFUL_COMMIT]  : ${env.GIT_PREVIOUS_SUCCESSFUL_COMMIT}" 
                echo "push-test"
            }
            post {
                always {
                    pushplus (
                        "pcb01"
                    )
                }
            }
        }
        
        // stage('AllureReport') {
        //     agent{
        //         docker {
        //             image 'liumiaocn/maven:3.6.1'
        //         }
        //     }
        //     steps {
        //         sh 'echo "allurereport"'
        //         sh 'echo Deploy stage ...' 
        //         echo "[WORKSPACE]          : ${env.WORKSPACE}"
        //         echo "[JENKINS_HOME]       : ${env.JENKINS_HOME}"
        //         echo "[JENKINS_URL]        : ${env.JENKINS_URL}"
        //         echo "[BUILD_URL]          : ${env.BUILD_URL}"
        //         echo "[JOB_URL]            : ${env.JOB_URL}"
        //         echo "[GIT_COMMIT]         : ${env.GIT_COMMIT}"
        //     }
        //     post {
        //         always {
        //             script {
        //                 allure([
        //                     includeProperties: false,
        //                     jdk: '',
        //                     properties: [],
        //                     reportBuildPolicy: 'ALWAYS',
        //                     results: [[path: 'target/allure-results']]
        //                 ])
        //             }
        //         }
        //     }
        // }
        stage('Deliver') { 
            steps {
                // sh './jenkins/scripts/deliver-for-development.sh' 
                // input message: 'Finished using the web site? (Click "Proceed" to continue)' 
                // sh './jenkins/scripts/kill.sh' 
                sh 'echo "Deliver"'
            }
        }
    }
}