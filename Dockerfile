# Pull base image.
FROM composer/composer:base-php5
MAINTAINER Nimrod Nagy <nimrod.nagy@lynxsolutions.eu>

# Install rsync for deployment
RUN apt-get update \
  && apt-get install -y openssh-client rsync php-soap \
  && rm -r /var/lib/apt/lists/*

#install mysql pdo
RUN docker-php-ext-install pdo pdo_mysql

# Set correct entrypoint
CMD ["/bin/bash"]
ENTRYPOINT []
