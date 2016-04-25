# Pull base image.
FROM composer/composer
MAINTAINER Nimrod Nagy <nimrod.nagy@lynxsolutions.eu>

# Install rsync for deployment
RUN apt-get update && apt-get install -y openssh-client rsync \
  && rm -r /var/lib/apt/lists/*

#install mysql pdo
RUN docker-php-ext-install pdo pdo_mysql

# Set correct entrypoint
CMD ["/bin/bash"]
ENTRYPOINT []
