FROM php:5.5-fpm
RUN apt-get update && \
    apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev libxml2-dev && \
    docker-php-ext-install -j$(nproc) bcmath ctype dom gd iconv json mbstring mcrypt mysql mysqli pdo pdo_mysql soap
