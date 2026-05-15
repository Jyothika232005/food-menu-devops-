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

        stage('Remove Old Container') {
            steps {
                bat 'docker rm -f food-menu-app || exit 0'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker run -d -p 8081:80 --name food-menu-app food-menu-app'
            }
        }
    }
}
