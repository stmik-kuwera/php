FROM serversideup/php:8.5-frankenphp

USER root

WORKDIR /var/www/html

RUN install-php-extensions \
    gd \
    intl \
    bcmath

ENV PHP_OPCACHE_ENABLE=1

RUN mkdir -p storage/app/livewire-tmp \
    && chown -R www-data:www-data storage bootstrap/cache \
    && chmod -R 775 storage bootstrap/cache

USER www-data