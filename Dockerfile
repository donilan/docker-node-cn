FROM node:9
MAINTAINER Doni Leong <doni.leong@gmail.com>

ENV PUPPETEER_DOWNLOAD_HOST=https://storage.googleapis.com.cnpmjs.org

RUN npm config set registry http://registry.npm.taobao.org && \
    npm config set sass-binary-site http://npm.taobao.org/mirrors/node-sass && \
    yarn config set registry http://registry.npm.taobao.org && \
    yarn config set sass-binary-site http://npm.taobao.org/mirrors/node-sass && \
    mkdir -p /app

WORKDIR /app


