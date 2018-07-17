FROM node:9
MAINTAINER Doni Leong <doni.leong@gmail.com>

RUN npm config set registry http://registry.npm.taobao.org && \
    npm config set sass-binary-site http://npm.taobao.org/mirrors/node-sass && \
    yarn config set registry http://registry.npm.taobao.org && \
    yarn config set sass-binary-site http://npm.taobao.org/mirrors/node-sass && \
    mkdir -p /app

RUN echo "umask 000" >> /root/.bashrc
WORKDIR /app


