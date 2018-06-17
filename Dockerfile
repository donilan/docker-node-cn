FROM node:9
MAINTAINER Doni Leong <doni.leong@gmail.com>


RUN mkdir -p /.npm && \
    mkdir -p /.config && \
    echo "--cache-folder /tmp/yarn-cache/" > ~/.yarnrc && \
    chmod 777 /.config && \
    chmod 777 /.npm && \
    npm config set registry http://registry.npm.taobao.org && \
    npm config set sass-binary-site http://npm.taobao.org/mirrors/node-sass && \
    chmod 777 /root -R && \
    mkdir -p /app && \
    chmod 777 /app -R

WORKDIR /app
ENV HOME=/root

