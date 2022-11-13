# stage-1
FROM node as builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# stage -2
FROM nginx:alpine
COPY --from=node /app/dist/comp-lib /usr/share/nginx/html
