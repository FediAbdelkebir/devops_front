FROM node:14.17.3:alpine
WORKDIR '/usr/src/'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build



FROM nginx
EXPOSE 80
COPY /dist/crudtuto-Front /usr/share/nginx/html