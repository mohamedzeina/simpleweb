# Specify a base image
FROM node:14-alpine

# Add working directory to avoid copying files to the root directory
WORKDIR /usr/app

# Copy files in current working direcotry (package.json and index.js) 
# in order to run the npm install command
COPY ./ ./ 

# Install some dependencies
RUN npm install

# Default command 
CMD ["npm", "start"]