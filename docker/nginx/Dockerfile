FROM nginx:latest

ADD config/nginx.conf /etc/nginx/nginx.conf
ADD config/app.conf /etc/nginx/conf.d/app.conf
RUN rm /etc/nginx/conf.d/default.conf

RUN mkdir -p /srv
VOLUME ["/srv"]

EXPOSE 80
EXPOSE 443

WORKDIR /opt/bin

ADD config/start.sh /opt/bin/start.sh
RUN chmod u=rwx /opt/bin/start.sh

ENTRYPOINT ["/opt/bin/start.sh"]
