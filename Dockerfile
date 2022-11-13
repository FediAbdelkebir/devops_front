### Local development only ###

FROM node:14.15-alpine

# Set working directory
WORKDIR /.

COPY . .

# Expose ports
EXPOSE 4200:4200

RUN npm install
RUN npm install -g @angular/cli

# Start Angular
CMD ng serve --host 0.0.0.0