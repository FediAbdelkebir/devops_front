FROM node:14.17.3 as build
WORKDIR '/app'
COPY package.json .
COPY . .
RUN npm install
RUN npm run build


FROM nginx:1.17.1-alpine
EXPOSE 80
COPY --from=build /app/dist/crudtuto-Front /usr/share/nginx/html