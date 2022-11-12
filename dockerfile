#stage1
FROM alpine:3.16
ENV NODE_VERSION 14.21.1
WORKDIR '/app'
COPY package.json .
COPY . .
RUN npm install
RUN npm run build

#stage2
FROM nginx:1.17.1-alpine
EXPOSE 80
COPY --from=build /app/dist/crudtuto-Front /usr/share/nginx/html