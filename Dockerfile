# Specify a base image
FROM node:14-alpine

# Add working directory to avoid copying files to the root directory
WORKDIR /usr/app

# Copy package.json in current working directory to ensure
# that npm install only runs if the dependencies change 
# (minimizing cache bust). Previously, if we changed any file
# that we copied, npm install had to rerun even when the 
# dependencies were the same
COPY ./package.json ./ 

# Install some dependencies
RUN npm install

# Copy files in current working directory to the image's directory
COPY ./ ./ 

# Default command 
CMD ["npm", "start"]