# Use official Node.js image
FROM node:20 

# Set the working directory inside the container
WORKDIR /app 

# Copy package.json and package-lock.json
COPY package*.json ./ 

# Install dependencies
RUN npm install 

# Copy the rest of the application
COPY . . 

# Expose the application port
EXPOSE 8080 

# Start the application
CMD ["node", "server.js"]
