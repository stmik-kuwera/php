FROM serversideup/php:8.5-frankenphp

USER root

WORKDIR /var/www/html

RUN install-php-extensions \
    gd \
    intl \
    bcmath

ENV PHP_OPCACHE_ENABLE=1

USER www-data