### STAGE 1: Build ###
FROM node:12.7-alpine 
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build
RUN yum install nginx -y 
COPY nginx.conf /etc/nginx/nginx.conf
COPY  /usr/src/app/dist/crudtuto-Front /usr/share/nginx/html
