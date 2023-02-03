# Use NodeJS as the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the files to the working directory
COPY . .

# Build the Angular application
RUN npm run build

# Expose port 4200
EXPOSE 4200

# Define the command to run when the container starts
CMD ["npm", "start"]