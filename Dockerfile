# Pull base image.
FROM composer/composer
MAINTAINER Nimrod Nagy <nimrod.nagy@lynxsolutions.eu>

# Install rsync for deployment
RUN apt-get update && apt-get install -y rsync \
  && rm -r /var/lib/apt/lists/*
