# Base image
FROM node:20.14.0

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN yarn

# Copy the source code
COPY . .

# Expose the port on which the server will run
EXPOSE 8080

# Start the server
CMD [ "yarn", "start:dev" ]