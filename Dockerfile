FROM node:10
MAINTAINER Doni Leong <doni.leong@gmail.com>

RUN mkdir -p /.npm && \
    mkdir -p /.config && \
    chmod 777 /.npm && \
    chmod 777 /.config && \
    npm config set registry http://registry.npm.taobao.org && \
    npm config set sass-binary-site http://npm.taobao.org/mirrors/node-sass
