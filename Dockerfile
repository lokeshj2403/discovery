# Use the official Node.js image.
FROM node:latest

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files.
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of the application code.
COPY . .

# If you're using a build step (e.g., for a React or Angular app), you might have:
# RUN npm run build

# Expose the port the app runs on.
EXPOSE 8070

# Start the application.
CMD ["npm", "start"]
