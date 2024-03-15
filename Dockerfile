FROM node:alpine AS builder

WORKDIR /app

RUN apk add curl 

RUN npm install --global npm@latest
RUN npm install --global @angular/cli

COPY package*.json .

RUN npm clean-install

COPY . .

CMD ["ng", "serve", "--host", "0.0.0.0"]
