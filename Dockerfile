FROM node:16.14.2-alpine
WORKDIR usr/src/app
COPY package.json package-lock.json ./
RUN npm install
RUN npm run build --prod
COPY . .

FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY /app/dist/crudtuto-Front /usr/share/nginx/html
EXPOSE 80
