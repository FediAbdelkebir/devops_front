FROM node:latest as node
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build


FROM nginx:1.17.1-alpine
EXPOSE 80
COPY --from=node /dist/crudtuto-Front /usr/share/nginx/html