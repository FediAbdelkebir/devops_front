FROM node:16.14.2-alpine as node 
WORKDIR /app
RUN npm install -g @angular/cli
COPY . .
RUN npm install
RUN npm run build --prod

FROM nginx:alpine
COPY --from=node /app/dist/crudtuto-Front /usr/share/nginx/html
