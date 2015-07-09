FROM php:5.6

# Config PHP
RUN apt-get update && apt-get install -y \
    libicu-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install pdo_mysql intl mbstring gd exif
COPY php.ini /usr/local/etc/php/php.ini

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/local/bin

# NodeJS / Npm
RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    nodejs \
    npm

RUN ln -sf /usr/bin/nodejs /usr/bin/node \
    && npm install -g bower less

# Git
RUN apt-get install --no-install-recommends -y git

# Cleanup
RUN apt-get clean && rm -r /var/lib/apt/lists/*

WORKDIR /srv
