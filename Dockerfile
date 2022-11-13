### Local development only ###

FROM node:12.18.1-alpine

# Set working directory
WORKDIR /.

COPY . .

# Expose ports
EXPOSE 4200:4200

RUN npm install

# Start Angular
CMD ng serve --host 0.0.0.0