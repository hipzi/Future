FROM alpine:3.13.2

RUN apk add --no-cache php7-fpm \
        php7-gd \
        php7-mysqli \
        php7-json \
        php7-pdo \
        php7-pdo_mysql \
    && adduser -D -g 'www' www \
    && mkdir /var/www/ 

COPY ./.env ./config-php.sh /usr/src/
RUN chmod +x /usr/src/config-php.sh

ENTRYPOINT ["/usr/src/config-php.sh"]
EXPOSE 9000
CMD ["php-fpm7", "-F"]
