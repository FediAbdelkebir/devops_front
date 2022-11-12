FROM node:14.17.3-alpine
WORKDIR '/usr/src/'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build


FROM nginx:alpine
EXPOSE 80
COPY --from=node /dist/crudtuto-Front /usr/share/nginx/html