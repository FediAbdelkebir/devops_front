FROM alpine:3.16
ENV NODE_VERSION 14.17.3
COPY package.json .
RUN npm install
COPY . .
RUN npm run build


FROM nginx:1.17.1-alpine
EXPOSE 80
COPY --from=build /dist/crudtuto-Front /usr/share/nginx/html