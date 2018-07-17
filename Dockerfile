FROM node:9
MAINTAINER Doni Leong <doni.leong@gmail.com>

RUN npm config set registry http://registry.npm.taobao.org && \
    npm config set sass-binary-site http://npm.taobao.org/mirrors/node-sass && \
    npm config set puppeteer_download_host=https://storage.googleapis.com.cnpmjs.org \
    yarn config set registry http://registry.npm.taobao.org && \
    yarn config set sass-binary-site http://npm.taobao.org/mirrors/node-sass && \
    yarn config set puppeteer_download_host=https://storage.googleapis.com.cnpmjs.org \
    mkdir -p /app

WORKDIR /app


