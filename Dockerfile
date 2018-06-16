FROM node:9
MAINTAINER Doni Leong <doni.leong@gmail.com>


RUN mkdir -p /.npm && \
    mkdir -p /.config && \
    chmod 777 /.config && \
    chmod 777 /.npm && \
    npm config set registry http://registry.npm.taobao.org && \
    npm config set sass-binary-site http://npm.taobao.org/mirrors/node-sass && \
    cp -r /root /home && \
    chmod 777 /home -R && \
    mkdir -p /app && \
    chmod 777 /app -R

WORKDIR /app
ENV HOME=/home

