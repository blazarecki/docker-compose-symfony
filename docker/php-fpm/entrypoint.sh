#!/bin/sh

echo "env[SYMFONY_ENV] = $SYMFONY_ENV" >> /usr/local/etc/php-fpm.conf

php-fpm
