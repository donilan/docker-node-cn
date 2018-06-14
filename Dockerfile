FROM node:9
MAINTAINER Doni Leong <doni.leong@gmail.com>

RUN mkdir -p /.npm && \
    mkdir -p /.config && \
    chmod 777 /.npm && \
    chmod 777 /.config && \
    npm config set registry http://registry.npm.taobao.org && \
    npm config set sass-binary-site http://npm.taobao.org/mirrors/node-sass && \
    chmod 777 /root -R && \
    mkdir -p /app && \
    chmod 777 /app

WORKDIR /app
ENV HOME=/root

