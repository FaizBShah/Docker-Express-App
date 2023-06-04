# Use an existing docker image as base
FROM node:lts-alpine3.17

# Setting active work directory to the path specified
WORKDIR /usr/app

# Copy all the files and folders from the current build context to the container
# (.dockerignore contains the list of files and folders which we don't want to copy)
COPY ./ ./

# Download and install a dependency
RUN npm install

# Tell the container what to do when it starts as a container
CMD [ "npm", "start" ]