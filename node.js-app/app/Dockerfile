# Base image
FROM node:20-slim

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install 
# Copy the rest of the app files
COPY . ./app

# Expose the port
EXPOSE 3000

# Set environment variables
ENV WEBport=3000
ENV DBuser=amira
ENV DBpass=1234amira
ENV DBhosts=mongo-0.mongo.default.svc.cluster.local:27017 

# Run the app
CMD ["node", "index.js"]