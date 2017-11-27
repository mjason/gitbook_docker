FROM node:8

RUN npm install --global gitbook-cli

WORKDIR /tmp

RUN gitbook init

RUN mkdir -p /opt/gitbook

WORKDIR /opt/gitbook