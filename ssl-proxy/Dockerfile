FROM nginx:alpine

VOLUME /etc/letsencrypt
EXPOSE 80
EXPOSE 443

RUN apk add --no-cache certbot

COPY ./crontab /etc/cron.d/certbot
RUN crontab /etc/cron.d/certbot
COPY ./scripts/ /scripts
RUN chmod +x /scripts/*.sh  

RUN rm -f /etc/nginx/sites-enabled
RUN rm -f /etc/nginx/conf.d/*
COPY nginx_conf.d/ /etc/nginx/conf.d/  

ENTRYPOINT []
CMD ["/bin/sh", "/scripts/entrypoint.sh"]