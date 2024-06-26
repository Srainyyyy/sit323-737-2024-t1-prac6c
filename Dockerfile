# Use the official Node.js image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /mnt/f/yyy/DEAKIN/IT/2024-T1/SIT323/6.1P/WEEK-6

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 3040

# Command to run the application
CMD ["node", "server_get.js"]
