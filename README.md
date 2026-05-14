# Savor - Online Food Menu Website (DevOps Project)

## 1. Project Title
**Online Food Menu Website using GitHub, Docker, and Jenkins**

## 2. Project Description
This is a complete DevOps project demonstrating the deployment of a modern, responsive "Online Food Menu" website. The project showcases a continuous integration and continuous deployment (CI/CD) pipeline. The source code is managed in GitHub, containerized using Docker (with Nginx), and automatically built and deployed using a Jenkins Declarative Pipeline. This project is designed to be beginner-friendly, visually impressive, and perfect for college CIE presentations.

## 3. Features
- **Modern UI/UX**: Designed with glassmorphism, gradients, and hover animations.
- **Responsive Layout**: Works seamlessly on mobile, tablet, and desktop devices.
- **Dynamic Content**: Sections for Pizza, Burgers, Drinks, and Desserts with realistic placeholder images.
- **Interactive Elements**: Smooth scrolling, sticky navigation bar, and order button alerts.
- **Containerization**: Packaged with Docker for isolated, reliable execution.
- **CI/CD Pipeline**: Automated build and deployment process via Jenkins.

## 4. Technologies Used
- **Frontend**: HTML5, CSS3, JavaScript (Vanilla), Google Fonts (Poppins), FontAwesome.
- **DevOps**: 
  - Version Control: **Git & GitHub**
  - Containerization: **Docker & Nginx**
  - CI/CD Tool: **Jenkins**

## 5. Folder Structure
```text
DEVOPS PROJECT/
│
├── index.html         # Main website structure
├── style.css          # Website styling and animations
├── script.js          # Interactive website logic
├── Dockerfile         # Instructions to build the Docker image
├── Jenkinsfile        # Declarative pipeline for Jenkins CI/CD
└── README.md          # Project documentation (this file)
```

## 6. Setup Instructions (How to Run Locally)
To run the website directly on your machine without Docker:
1. Clone or download this repository.
2. Navigate to the project folder.
3. Open `index.html` in any modern web browser (e.g., Chrome, Firefox, Edge).
   - *Alternatively, use an extension like "Live Server" in VS Code for hot reloading.*

## 7. Docker Setup and Commands
To run the project using Docker, you must have Docker installed on your system.

**Step 1: Install Docker**
- Download and install Docker Desktop from the [official website](https://www.docker.com/products/docker-desktop).

**Step 2: Build the Docker Image**
Open your terminal in the project directory and run:
```bash
docker build -t food-menu-website .
```

**Step 3: Run the Docker Container**
Start the container and map port 8080 on your local machine to port 80 in the container:
```bash
docker run -d -p 8080:80 --name food-menu-container food-menu-website
```

**Step 4: View the Website**
Open your browser and navigate to: `http://localhost:8080`

**Step 5: Verify Running Containers**
```bash
docker ps
```

## 8. Jenkins Setup and Configuration
**Step 1: Install Jenkins**
- Download Jenkins from [jenkins.io](https://www.jenkins.io/download/) and install it (or run it via Docker).
- Ensure the Docker plugin and Pipeline plugins are installed in Jenkins.
- Ensure the Jenkins user has permissions to run Docker commands.

**Step 2: Configure the Pipeline**
1. Open your Jenkins Dashboard.
2. Click **New Item** -> Enter a name -> Select **Pipeline** -> Click **OK**.
3. Under the **Pipeline** section, choose **Pipeline script from SCM**.
4. Select **Git** and enter your GitHub repository URL.
5. Specify the branch to build (e.g., `*/main`).
6. Ensure the Script Path is `Jenkinsfile`.
7. Click **Save**.

**Step 3: Run the Build**
- Click **Build Now** on your pipeline's dashboard.
- Jenkins will automatically:
  1. Clone the repository.
  2. Build the Docker Image (`food-menu-website`).
  3. Run the Docker Container (`food-menu-container`) on port 8080.

## 9. GitHub Integration Commands
Use the following commands to initialize Git, commit your files, and push them to your repository:

```bash
# Initialize an empty Git repository
git init

# Add all files to the staging area
git add .

# Commit the changes with a message
git commit -m "Initial Commit"

# Connect your local repository to your remote GitHub repository
git remote add origin YOUR_GITHUB_REPO_LINK

# Push the code to the 'main' branch
git push -u origin main
```
*(Replace `YOUR_GITHUB_REPO_LINK` with your actual repository URL)*

## 10. Screenshots
*(For your college presentation, take screenshots of the following and place them here)*
- **Website Home Page**: Show the hero section.
- **Website Menu**: Show the food cards with hover effects.
- **Docker Output**: Screenshot of `docker ps` showing the running container.
- **Jenkins Pipeline**: Screenshot of the successful Stage View in Jenkins.

## 11. Future Enhancements
- Add a backend database (like MongoDB or MySQL) to manage menu items dynamically.
- Implement an actual shopping cart and payment gateway.
- Add user authentication (Login/Signup).
- Push the Docker image to Docker Hub automatically via Jenkins.

## 12. Conclusion
This project successfully integrates fundamental web development with modern DevOps practices. By automating the build and deployment process using Jenkins and Docker, we ensure that the application is delivered quickly, consistently, and reliably across different environments.
