FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Copy application source to image
COPY jsweb/app .

# Install app dependencies from package.json
RUN npm install

EXPOSE 8088
CMD [ "node", "server.js" ]
