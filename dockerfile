FROM node:12.18.1 

ENV NODE_ENV=production

WORKDIR /app

COPY . .

RUN npm install --production
RUN npm install 
RUN npm run build

FROM nginx:alpine
EXPOSE 80
COPY --from=production /app/dist/crudtuto-front /usr/share/nginx/html