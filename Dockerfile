# Pull base image.
FROM composer/composer:base-php5
MAINTAINER Nimrod Nagy <nimrod.nagy@lynxsolutions.eu>

# Install rsync for deployment
RUN add-apt-repository ppa:ondrej/php \
  && apt-get update \
  && apt-get install -y openssh-client rsync php5.6-soap \
  && rm -r /var/lib/apt/lists/*

#install mysql pdo
RUN docker-php-ext-install pdo pdo_mysql

# Set correct entrypoint
CMD ["/bin/bash"]
ENTRYPOINT []
