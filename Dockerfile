FROM node:alpine AS builder

WORKDIR /app

RUN npm install --global npm@latest

COPY . .
