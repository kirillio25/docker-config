FROM php:8.2-fpm-alpine

WORKDIR /var/www/laravel

# Устанавливаем зависимости для PostgreSQL
RUN apk add --no-cache postgresql-dev \
    && docker-php-ext-install pdo pdo_pgsql