### Local development only ###

FROM node:12.8-alpine

# Create working directory
RUN mkdir -p /home/node/app

# Set working directory
WORKDIR /home/node/app

# Add `/home/node/app/node_modules/.bin` to $PATH
ENV PATH /home/node/app/node_modules/.bin:$PATH

# Expose ports
EXPOSE 4200:4200

RUN npm install

# Start Angular
CMD ng serve --host 0.0.0.0