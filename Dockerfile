# Pull base image
FROM ubuntu:14.04

# Maintainer
MAINTAINER Alejandro Torres <hello@alejandrotorres.mx>

# Upgrade OS
RUN \
    apt-get update && \
    apt-get -y upgrade


# Install Node.js and npm
RUN apt-get install -y nodejs npm git

# Bundle app source
RUN rm -rf /app && git clone https://github.com/AlejandroTorresMx/wschat.git /app

# Install app dependencies
RUN cd /app; npm install

# Create link
ln -s /usr/bin/nodejs /usr/bin/node

# Eexplose port
EXPOSE  3000

# Run
CMD ["node", "/app/bin/www"]
