FROM alpine:3.13.2

ENV nginx_version 1.18.0-r15

RUN apk update \
	&& apk add --no-cache nginx=${nginx_version} \
	&& adduser -D -g 'www' www \
	&& chown -R www:www /var/lib/nginx 

RUN apk add --no-cache curl \
    && version='5.7' \
    && sha1='76d1332cfcbc5f8b17151b357999d1f758faf897' \
    && curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz" \
    && echo "$sha1 *wordpress.tar.gz" | sha1sum -c - \
    && tar -xzf wordpress.tar.gz -C /var/www/ \
    && rm wordpress.tar.gz \
    && chown -R www:www /var/www/wordpress \ 
    && chmod -R 755 /var/www/wordpress 

COPY ./config-wordpress.sh /usr/src/config-wordpress.sh
RUN chmod +x /usr/src/config-wordpress.sh 
 
ENTRYPOINT ["/usr/src/config-wordpress.sh"]	
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
