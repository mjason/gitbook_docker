FROM node:8

RUN apt-get update && \
    apt-get -y install rsync apt-utils && \
    apt-get -y remove apt-utils && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/*

RUN echo 'registry=https://registry.npm.taobao.org' > /root/.npmrc && \
    echo 'registry=https://registry.npm.taobao.org' > /home/node/.npmrc

RUN npm install --global gitbook-cli

WORKDIR /tmp

RUN gitbook init

RUN mkdir -p /opt/gitbook

WORKDIR /opt/gitbook