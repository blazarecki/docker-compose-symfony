#! /usr/bin/env bash

sed -i "s/%fastcgi_pass%/$FPM_PORT_9000_TCP_ADDR:$FPM_PORT_9000_TCP_PORT/" /etc/nginx/conf.d/app.conf

exec /usr/sbin/nginx -g 'daemon off;'
