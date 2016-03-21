FROM php:5.5-fpm
RUN apt-get update && \
	apt-get install -y libmcrypt-dev && \
	docker-php-ext-install -j$(nproc) mcrypt mysql mysqli pdo pdo_mysql
