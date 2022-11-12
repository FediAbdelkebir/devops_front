#stage1
FROM  node:latest as build
WORKDIR '/app'
COPY package.json .
COPY . .
RUN npm install
RUN npm run build

#stage2
FROM nginx:1.17.1-alpine
EXPOSE 80
COPY --from=build /app/dist/crudtuto-Front /usr/share/nginx/html