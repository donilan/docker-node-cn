FROM node:9-alpine
MAINTAINER Doni Leong <doni.leong@gmail.com>

RUN npm config set registry http://registry.npm.taobao.org && \
    npm config set sass-binary-site http://npm.taobao.org/mirrors/node-sass
