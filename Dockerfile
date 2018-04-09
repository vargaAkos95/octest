FROM ubuntu:latest

MAINTAINER akos.varga@idomsoft.hu

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/
