# stage-1
FROM node:16.14.2-alpine AS builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# stage -2
FROM nginx:alpine
COPY --from=builder /app/dist/comp-lib /usr/share/nginx/html
