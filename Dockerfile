### Local development only ###

FROM node:12.18.1-alpine

# Set working directory
WORKDIR /.

COPY . .

# Expose ports
EXPOSE 4200:4200

RUN npm install

# Start Angular
RUN node_modules/.bin/ng build --prod