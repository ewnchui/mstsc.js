FROM node

ENV VER=${VER:-master} \
    REPO=https://github.com/ewnchui/mstsc.js \
    APP=/usr/src/app

RUN apt-get update && \
    apt-get install -y git vim && \
    apt-get clean && \
    git clone -b $VER $REPO $APP

WORKDIR $APP

RUN npm install

EXPOSE 1337

