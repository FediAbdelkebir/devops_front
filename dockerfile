FROM node:14.17.3-alpine as build
WORKDIR '/usr/src/'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build


FROM nginx:1.17.1-alpine
EXPOSE 80
COPY --from=build /dist/crudtuto-Front /usr/share/nginx/html