pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/Jyothika232005/food-menu-devops.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t food-menu-app .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker run -d -p 8081:80 food-menu-app'
            }
        }
    }
}
