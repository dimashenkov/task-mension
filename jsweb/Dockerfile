FROM node:latest

# Add a new user "john" with user id 8877
#RUN useradd -u 8877 APP_USER
# Change to non-root privilege
#USER APP_USER

# Create app directory
WORKDIR /usr/src/app

# Copy application source to image
COPY jsweb/app .

# Copy application tests
COPY jsweb/tests /tmp/tests
RUN find / -xdev -perm /6000 -type f -exec chmod a-s {} \; || true

# Install app dependencies from package.json
RUN npm install

EXPOSE 8088
USER node
CMD [ "node", "server.js" ]
