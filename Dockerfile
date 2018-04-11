FROM node:alpine

MAINTAINER Bogdan Cismariu <bogdan.cismariu@imemento.com>

RUN apk update && apk add git
RUN npm install -g mementohub/json-server#imemento

COPY ./data /data
WORKDIR /data

COPY start-server.sh /start-server.sh
ENTRYPOINT ["sh", "/start-server.sh"]