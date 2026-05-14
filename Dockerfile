# Use the official Nginx image (lightweight Alpine version is recommended for better performance)
FROM nginx:alpine

# Add metadata to the image
LABEL maintainer="DevOps Project Student"
LABEL description="Dockerized Online Food Menu Website"

# Remove the default Nginx index.html file
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom website files (HTML, CSS, JS) into the Nginx public directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Expose port 80 to allow external traffic
EXPOSE 80

# Start Nginx in the foreground so the container doesn't exit
CMD ["nginx", "-g", "daemon off;"]
