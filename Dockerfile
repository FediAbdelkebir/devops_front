FROM nginx
EXPOSE 80
COPY /dist/crudtuto-Front/ /usr/share/nginx/html

FROM node:16.14.2-alpine
RUN npm install -g @angular/cli