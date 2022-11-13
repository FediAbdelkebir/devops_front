FROM node:16.14.2-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

FROM nginx:alpine
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY /app/dist/crudtuto-Front /usr/share/nginx/html
EXPOSE 80
