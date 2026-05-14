pipeline {
    // Run the pipeline on any available Jenkins agent
    agent any

    // Define environment variables used throughout the pipeline
    environment {
        // Name of the Docker image to be built
        IMAGE_NAME = 'food-menu-website'
        // Name of the Docker container to be run
        CONTAINER_NAME = 'food-menu-container'
        // Host port to map to the container's port 80
        HOST_PORT = '8080'
    }

    stages {
        // Stage 1: Clone the code from the GitHub repository
        stage('Clone Repository') {
            steps {
                echo 'Starting Stage 1: Cloning Repository from GitHub...'
                // If this is triggered from a webhook/SCM polling, 'checkout scm' works automatically.
                // Alternatively, specify your Git URL here if not using a Multibranch pipeline.
                // Example: git url: 'https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git', branch: 'main'
                checkout scm
                echo 'Repository Cloned Successfully.'
            }
        }

        // Stage 2: Build the Docker image from the Dockerfile
        stage('Build Docker Image') {
            steps {
                echo "Starting Stage 2: Building Docker image '${IMAGE_NAME}'..."
                script {
                    // Execute Docker build command
                    // If you encounter permission errors, ensure the 'jenkins' user is in the 'docker' group
                    sh "docker build -t ${IMAGE_NAME} ."
                }
                echo 'Docker Image Built Successfully.'
            }
        }

        // Stage 3: Run the Docker container
        stage('Run Docker Container') {
            steps {
                echo "Starting Stage 3: Running Docker container '${CONTAINER_NAME}'..."
                script {
                    // First, stop and remove any existing container with the same name to prevent conflicts
                    sh """
                        docker stop ${CONTAINER_NAME} || true
                        docker rm ${CONTAINER_NAME} || true
                    """
                    
                    // Run the new container in detached mode (-d), mapping the ports (-p)
                    sh "docker run -d -p ${HOST_PORT}:80 --name ${CONTAINER_NAME} ${IMAGE_NAME}"
                }
                echo "Docker Container is now running on port ${HOST_PORT}."
            }
        }
    }

    // Post-build actions
    post {
        success {
            echo "================================================="
            echo "SUCCESS: Pipeline completed successfully!"
            echo "The Online Food Menu Website is now live."
            echo "Access it at: http://<your-server-ip>:${HOST_PORT}"
            echo "================================================="
        }
        failure {
            echo "================================================="
            echo "FAILURE: Pipeline execution failed."
            echo "Please check the Jenkins console output for errors."
            echo "================================================="
        }
    }
}
