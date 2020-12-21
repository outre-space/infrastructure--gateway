FROM node:14-alpine
MAINTAINER Outre dev@outrespace.com

ENV PORT=3000
ENV GATEWAY_CONFIG=''
ENV SYSTEM_CONFIG=''


WORKDIR /app
COPY package.json ./

RUN npm install --production

COPY . .
EXPOSE 3000

CMD npm start
