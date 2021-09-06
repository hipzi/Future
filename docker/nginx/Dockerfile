FROM alpine:3.13.2

ENV nginx_version 1.18.0-r15

RUN apk update \
	&& apk add --no-cache nginx=${nginx_version} \
	&& adduser -D -g 'www' www \
	&& chown -R www:www /var/lib/nginx 

EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
