FROM node:12.18.1 

ENV NODE_ENV=production

WORKDIR /app

COPY . .

RUN npm install --production
RUN npm install 

FROM nginx:alpine
COPY --from=NODE_ENV /app/dist/crudtuto-front /usr/share/nginx/html