FROM node:14

# Pre-install Expo client
RUN npm install -g expo-cli

# This is where the converted/output code will reside
VOLUME /usr/src/app

# In this package building and publishing happens
WORKDIR /usr/src/workdir

# Pre-install all needed npm libraries, so that "npm install" does not happen during runtime
COPY package.json .
RUN npm install

# Script for publishing to Expo
COPY expo-publish-script.sh .
CMD sh expo-publish-script.sh
