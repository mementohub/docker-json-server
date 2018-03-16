FROM node:alpine

MAINTAINER Bogdan Cismariu <bogdan.cismariu@imemento.com>

RUN npm install -g json-server

COPY ./data /data
WORKDIR /data

COPY start-server.sh /start-server.sh
ENTRYPOINT ["sh", "/start-server.sh"]