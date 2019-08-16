FROM php:7.2-fpm-alpine

RUN apk update --no-cache \
&&  apk upgrade --no-cache \
&&  apk add --update \
    autoconf \
    make \
    g++ \
    git \
    zip \
    gettext-dev \
    bzip2-dev \
    libpng-dev \
    icu-dev \
    libmemcached-dev \
    imagemagick-dev \
    mysql-client \
&&  docker-php-ext-install \
    bcmath \
    bz2 \
    exif \
    gettext \
    gd \
    intl \
    mysqli \
    opcache \
    pdo_mysql \
    zip \
&&  yes "" | pecl install \
    apcu \
    memcached \
    imagick \
    redis \
    xdebug \
&&  docker-php-ext-enable \
    apcu \
    memcached \
    imagick \
    redis \
    xdebug \
&&  apk del --no-cache \
    autoconf \
    make \
    g++ \
&&  wget -O "/usr/local/bin/composer" "https://getcomposer.org/composer.phar"