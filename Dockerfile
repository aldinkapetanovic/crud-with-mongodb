# Use official Node.js image
FROM node:alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app source code
COPY . .

# Expose the app port (change if your app uses a different port)
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]