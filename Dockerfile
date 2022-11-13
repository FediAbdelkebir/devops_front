FROM node:16.14.2 as builder
WORKDIR /app
COPY package.json /app/
RUN npm install
COPY . /app/
RUN npm run build --prod

FROM nginx:alpine
COPY --from=builder /app/dist/crudtuto-Front /usr/share/nginx/html
EXPOSE 80
