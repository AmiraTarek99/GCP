# Base image
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
# RUN npm ci --only=production
RUN npm install --omit=dev
# Copy the rest of the app files
COPY . .

# Expose the port
EXPOSE 3000

# Set environment variables
ENV WEBport=3000
# ENV DBuser=<your-db-user>
# ENV DBpass=<your-db-password>
# ENV DBhosts=<your-db-hosts>

# Run the app
CMD ["node", "app"]