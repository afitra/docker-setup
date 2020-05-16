
# ambiln image dari local / dockerhub
FROM node:10.19.0

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# Create app directory, where your app will live its lifetime.
WORKDIR /home/node/app
# RUN mkdir -p /usr/src/app
# WORKDIR /usr/src/app


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
# COPY package*.json /usr/src/app/

# Installing the packages while the image is building
RUN npm install

# Bundle app source, i.e. copying all your required files for the app
# Note: files & folders inside .dockerignore will not be copied.
COPY . .
COPY --chown=node:node . .
USER node
# The app binds to port 3000, so exposing port 3000 to be used by the docker network
# EXPOSE 3000

# Runtime command to be executed when the container is launched
CMD ["node", "tes.js"]
