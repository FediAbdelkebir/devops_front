FROM node:16.14.2-alpine as builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

FROM nginx:alpine
COPY --from=builder /app/dist/crudtuto-Front /usr/share/nginx/html
EXPOSE 80
