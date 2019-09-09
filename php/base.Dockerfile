FROM php:7.2-fpm-alpine

RUN apk update \
    --no-cache \
&&  apk upgrade \
    --no-cache \
&&  apk add \
    --no-cache \
    --update \
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
&&  apk del \
    --no-cache \
    autoconf \
    make \
    g++ \
&&  wget -O "/usr/local/bin/composer" "https://getcomposer.org/composer.phar"

# Fix for iconv on Alpine Linux
RUN apk add --no-cache --update --allow-untrusted \
    --repository "http://dl-cdn.alpinelinux.org/alpine/edge/community/" \
    gnu-libiconv
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php"