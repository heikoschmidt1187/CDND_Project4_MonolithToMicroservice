# Set the base image
FROM node:13

# Create app directory
WORKDIR /usr/src/app

# Copy information for loading node modules
COPY package*.json ./

# Install 
RUN npm ci

# Copy sources
COPY . .

# Set the port for the feed microservice
EXPOSE 8080

# Run server 
CMD [ "npm", "run", "dev" ]
