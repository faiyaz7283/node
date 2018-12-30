# Start with base image node:9-alpine
FROM node:9-alpine

LABEL maintainer="faiyaz7283@gmail.com"

# Install bash and other helpful tools
RUN apk add --no-cache -q bash bash-completion busybox-suid sudo git nano curl man

# Add gulp
RUN npm install -g ---unsafe-perm -silent gulp

# Install common npm package requirements
ENV COMMON_DEPS autoconf automake file build-base nasm libpng-dev zlib-dev fontconfig curl curl-dev python 
RUN apk add --no-cache -q $COMMON_DEPS && \
    python -m ensurepip && \
    pip install -q --upgrade pip setuptools 

# Set /var/www as working directory
WORKDIR /var/www
