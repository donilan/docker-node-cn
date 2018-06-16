FROM node:9
MAINTAINER Doni Leong <doni.leong@gmail.com>


RUN mkdir -p /.npm && \
    mkdir -p /.config && \
    chmod 777 /.config && \
    chmod 777 /.npm && \
    npm config set registry http://registry.npm.taobao.org && \
    npm config set sass-binary-site http://npm.taobao.org/mirrors/node-sass && \
    yarn config set cache-folder /yarn-cache && \
    chmod 777 /root -R && \
    mkdir -p /app && \
    chmod 777 /app -R

WORKDIR /app
ENV HOME=/root

