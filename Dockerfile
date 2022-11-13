FROM node:12.18.1 

ENV NODE_ENV=production

WORKDIR /.

COPY . .

RUN npm install --production
RUN npm install 
RUN npm install @angular/cli@latest
RUN ng serve 
