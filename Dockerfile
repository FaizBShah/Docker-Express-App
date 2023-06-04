# Use an existing docker image as base
FROM node:lts-alpine3.17

# Setting active work directory to the path specified
WORKDIR /usr/app

# Copying only the package.json file from the current build context to the container
# to optimize the image rebuild process
# (.dockerignore contains the list of files and folders which we don't want to copy)
COPY ./package.json ./

# Download and install a dependency
RUN npm install

# Copy rest of the files
COPY ./ ./

# Tell the container what to do when it starts as a container
CMD [ "npm", "start" ]