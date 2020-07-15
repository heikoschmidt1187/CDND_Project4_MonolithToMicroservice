# Set the base image
FROM beevelop/ionic AS ionic

# Create app directory
WORKDIR /usr/src/app

# Copy information for loading node modules
COPY package*.json ./

# Install 
RUN npm ci

# Copy sources
COPY . .

# build ionic
RUN ionic build

FROM nginx:alpine
COPY --from=ionic /usr/src/app/www /usr/share/nginx/html
