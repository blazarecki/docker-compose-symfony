FROM php:5.6-fpm

RUN docker-php-ext-install pdo_mysql
RUN echo "date.timezone = UTC" > /usr/local/etc/php/php.ini

ADD entrypoint.sh /opt/bin/entrypoint.sh
RUN chmod +x /opt/bin/entrypoint.sh

WORKDIR /opt/bin
ENTRYPOINT ["/opt/bin/entrypoint.sh"]
