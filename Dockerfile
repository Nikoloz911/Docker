# Use the official Nginx image as a base
FROM nginx:alpine


WORKDIR /usr/share/nginx/html

COPY . .


EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]



### Angular Example 

# FROM node:alpine

# WORKDIR /app

# COPY . /app

# RUN npm install -g @angular/cli

# RUN npm install

# CMD ["ng", "serve", "--host", "0.0.0.0"]

### If You want to Use .dockerignore File

# Exclude development and version control files

# node_modules/
# dist/
# .git/
# .gitignore