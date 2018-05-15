# Start with base image node:9-alpine
FROM node:9-alpine

LABEL maintainer="faiyaz7283@gmail.com"

# Install bash and other helpful tools
RUN apk add --no-cache bash bash-completion busybox-suid sudo git nano curl man

# Add gulp
RUN npm install -g --silent gulp

# Set /var/www as working directory
WORKDIR /var/www