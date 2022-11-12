FROM node:lts-alpine3.16
WORKDIR /app
COPY package.json .
COPY . .
RUN npm install
RUN npm run build


FROM nginx:1.17.1-alpine
EXPOSE 80
COPY --from=node:lts-alpine3.16 /dist/crudtuto-Front /usr/share/nginx/html