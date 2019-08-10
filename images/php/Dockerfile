FROM php:7.3-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev libxml2-dev mariadb-client zlib1g-dev libzip-dev

RUN docker-php-ext-install pdo_mysql bcmath json intl zip pcntl opcache

WORKDIR /var/www