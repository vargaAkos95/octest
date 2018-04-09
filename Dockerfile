FROM ubuntu:latest

MAINTAINER akos.varga@idomsoft.hu

RUN apt-get -y update
RUN apt-get -y install nodejs

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app-root/src && cp -a /tmp/node_modules /opt/app-root/src/

WORKDIR /opt/app-root/src
ADD . /opt/app-root/src

EXPOSE 3000

CMD ["node","server.js"]
