
pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/boughjihen/locust-tests.git'
            }
        }
        stage('Run Tests') {
            steps {
                echo 'Running Locust tests...'
            }
        }
    }
}

