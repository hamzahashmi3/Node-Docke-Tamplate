# Use the official Node.js image from the Docker Hub
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Add metadata
LABEL maintainer="Ricardo"
LABEL vendor="companyB"
LABEL author="hamza"

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the application code
COPY . .

# Create a non-root user and change ownership of the app directory
ARG user=application
RUN useradd -m $user && chown -R $user:$user /usr/src/app

# Switch to the non-root user
USER $user

# Expose the port on which the app will run
EXPOSE 8080

# Command to run the app
CMD ["node", "index.js"]
