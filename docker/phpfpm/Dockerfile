FROM alpine:3.13.2

RUN apk add php7-apcu \
        php7-bcmath \
        php7-bz2 \
        php7-ctype \
        php7-curl \
        php7-dom \
        php7-fpm \
        php7-gd \
        php7-gettext \
        php7-gmp \
        php7-iconv \
        php7-json \
        php7-mcrypt \
        php7-mysqli \
        php7-odbc \
        php7-openssl \
        php7-pdo \
        php7-pdo_dblib \
        php7-pdo_mysql \
        php7-pdo_odbc \
        php7-pdo_sqlite \
        php7-soap \
        php7-sqlite3 \
        php7-xmlreader \
        php7-xmlrpc \
        php7-zip \
    && rm -rf /var/cache/apk/* \
	&& adduser -D -g 'www' www 

COPY ./.env ./config-php.sh /usr/src/
RUN chmod +x /usr/src/config-php.sh

ENTRYPOINT ["/usr/src/config-php.sh"]
EXPOSE 9000
CMD ["php-fpm7", "-F"]
