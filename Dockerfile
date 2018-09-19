FROM php:fpm-alpine

RUN apk add g++ gcc make autoconf

RUN pecl install xdebug-2.6.1 && docker-php-ext-enable xdebug

RUN apk del g++ gcc make autoconf
