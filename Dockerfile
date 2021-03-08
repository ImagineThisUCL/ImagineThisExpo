FROM node:14

# Pre-install Expo client
RUN npm install -g expo-cli

# In this package building and publishing happens
WORKDIR /usr/src/workdir

# Pre-install all needed npm libraries, so that "npm install" does not happen during runtime
COPY package.json .
RUN npm install

# Script for publishing to Expo
COPY expo-publish-script.sh .
COPY update-status.js .

# Token needed for publishing to Expo
ARG EXPO_TOKEN
ENV EXPO_TOKEN=${EXPO_TOKEN}
# Credentials for connecting to ImagineThis database
ARG DB_HOST
ARG DB_PORT
ARG DB_NAME
ARG DB_USERNAME
ARG DB_PASSWORD
# Environment variables have to have certain name as node package requires https://node-postgres.com/features/connecting
ENV PGHOST=${DB_HOST}
ENV PGPORT=${DB_PORT}
ENV PGDATABASE=${DB_NAME}
ENV PGUSER=${DB_USERNAME}
ENV PGPASSWORD=${DB_PASSWORD}

CMD sh expo-publish-script.sh
