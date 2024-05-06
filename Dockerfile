# Use official Node.js image as base image
FROM node:alpine

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json files to container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Command to start server
CMD ["npm", "start"]
