# Start with base image node:alpine
FROM node:alpine

LABEL maintainer="faiyaz7283@gmail.com"

# Install bash and other helpful tools
RUN apk add --no-cache bash bash-completion sudo git nano curl man

# Set /var/www as working directory
WORKDIR /var/www
