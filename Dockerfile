FROM wpalmer/php:5.5-fpm-mysql
RUN apt-get update && \
    apt-get install -y libxml2-dev && \
    docker-php-ext-install -j$(nproc) soap
