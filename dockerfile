# Use the official Nginx image as a base
FROM nginx:alpine

# Set a working directory inside the container (optional but neat)
WORKDIR /usr/share/nginx/html

COPY . .

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

###########################################
# DOCKER COMMAND CHEATSHEET (fully commented)
###########################################

# ---------------------- #
#   IMAGE COMMANDS       #
# ---------------------- #

# Build an image from a Dockerfile (in the current directory)
# Usage: docker build -t <image_name>:<tag> .
# <image_name> = your desired image name (e.g., my-app)
# <tag> = version tag (e.g., latest)
# Example: docker build -t my-app:latest .
#
# docker build -t <image_name>:<tag> .

# Build an Angular app image (example for Angular)
# Usage: docker build -t <my-angular-app> .
# Example: docker build -t my-angular-app .
#
# docker build -t <my-angular-app> .

# List all Docker images on your system
# docker images

# Remove a Docker image by name or ID
# Usage: docker rmi <image_name>
# docker rmi <image_name>

# Tag an image (e.g., preparing for push or rename)
# Usage: docker tag <image_name>:<tag> <new_image_name>:<new_tag>
# docker tag <image_name>:<tag> <new_image_name>:<new_tag>

# Show detailed information about an image (layers, env vars, etc.)
# docker inspect <image_name_or_id>


# ---------------------- #
#   CONTAINER COMMANDS   #
# ---------------------- #

# List all containers (including stopped ones)
# docker ps -a

# List only running containers
# docker ps

# Run an image as a container on localhost
# Maps host port 8080 to container port 80
# Usage: docker run -d -p 8080:80 --name <container_name> <image_name>
# docker run -d -p 8080:80 --name <container_name> <image_name>

# Stop a running container
# docker stop <container_name_or_id>

# Start a stopped container
# docker start <container_name_or_id>

# Remove (delete) a container
# docker rm <container_name_or_id>

# Restart a running or stopped container
# docker restart <container_name_or_id>

# View logs from a container
# docker logs <container_name_or_id>

# Inspect container metadata and details
# docker inspect <container_name_or_id>


# ---------------------- #
#   ANGULAR EXAMPLES     #
# ---------------------- #

# Build an Angular app Docker image
# Make sure you have a Dockerfile in your Angular project
# docker build -t {my-angular-app} .

# Run the Angular app container
# Maps host port 4201 to Angular's default port 4200 in the container
# Example: docker run -p 4201:4200 my-angular-app
# docker run -p {4201}:4200 {my-angular-app}

# Rename a running/stopped container
# Useful for changing auto-generated container names to something meaningful
# Usage: docker rename {auto_generated_name} {angular-container}
# Example: docker rename quirky_morse angular-app
# docker rename {auto_generated_name} {angular-container}


###########################################
# NOTES:
# - Use < > for required values you need to fill in manually.
# - Use { } as placeholders for example values.
# - Recommended: use lowercase + hyphens for image and container names.
# - This is NOT an executable Dockerfile, it's a Docker cheatsheet!
###########################################












##############################################
#              NGINX DOCKERFILE              #
#        For serving static web content      #
##############################################

# --------------------------------------------------- #
# Use the official NGINX image as a base image
# FROM nginx:alpine

# --------------------------------------------------- #
# Set the working directory inside the container
# (NGINX default directory for static assets)
# WORKDIR /usr/share/nginx/html

# --------------------------------------------------- #
# Copy all build files from the current directory
# into the NGINX html directory
# COPY . .

# --------------------------------------------------- #
# Expose port 80 for NGINX server
# EXPOSE 80

# --------------------------------------------------- #
# Run NGINX in the foreground (to keep the container alive)
# CMD ["nginx", "-g", "daemon off;"]



##############################################
#           ANGULAR DOCKERFILE (DEV)         #
#    For local Angular development server    #
##############################################

# --------------------------------------------------- #
# Use the official lightweight Node.js image as base
# FROM node:alpine

# --------------------------------------------------- #
# Set the working directory inside the container
# WORKDIR /app

# --------------------------------------------------- #
# Copy the project files into the container's app folder
# COPY . /app

# --------------------------------------------------- #
# Install Angular CLI globally inside the container
# RUN npm install -g @angular/cli

# --------------------------------------------------- #
# Install all project dependencies from package.json
# RUN npm install

# --------------------------------------------------- #
# Start Angular development server on 0.0.0.0
# so it's accessible from outside the container
# CMD ["ng", "serve", "--host", "0.0.0.0"]




##############################################
#              .dockerignore file            #
#      Prevent unnecessary files from        #
#      being copied into the container       #
##############################################

# node_modules folder (we rebuild inside container)
# node_modules

# Angular build output folder
# dist

# Git version control folders/files
# .git
# .gitignore



