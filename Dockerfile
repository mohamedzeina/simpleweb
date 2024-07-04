# Specify a base image
FROM node:14-alpine

# Install some dependencies
RUN npm Install

# Default command 
CMD ["npm", "start"]