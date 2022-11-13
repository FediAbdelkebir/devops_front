FROM node:16.14.2-alpine
WORKDIR /src/app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build --prod

FROM nginx:alpine
COPY /app/dist/crudtuto-Front /usr/share/nginx/html
EXPOSE 80
