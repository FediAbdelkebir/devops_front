FROM node:12.18.1
ENV NODE_ENV=production

WORKDIR /DEVOPS_FRONT

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "server.js" ]