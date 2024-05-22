FROM node:20-alpine AS base


RUN apk update 
RUN apk add --virtual build-dependencies build-base gcc wget python3 git
RUN apk add file-dev linux-headers libusb-dev eudev-dev

WORKDIR /app

COPY . .
RUN yarn install

CMD [ "yarn", "dev" ]
EXPOSE 3000