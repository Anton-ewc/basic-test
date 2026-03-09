# Use an official Node.js runtime as a parent image
FROM node:22-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package*.json to the working directory and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]