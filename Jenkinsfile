pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "largest-number-app"
    }

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning repository...'
                // Assuming the code and Dockerfile are stored in a Git repository
                git branch: 'main', url: 'https://github.com/78sai44/sample-project.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                script {
                    sh "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                echo 'Running Docker container...'
                script {
                    sh "docker run ${DOCKER_IMAGE}"
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
    }
}
