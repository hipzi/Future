#!/bin/sh

MYSQL_DATABASE=wordpress
MYSQL_USER=wordpressuser
MYSQL_USER_PASSWORD=w0rd^Ress1!
MYSQL_HOST=192.168.1.17

awk '
	/put your unique phrase here/ {
		cmd = "head -c1m /dev/urandom | sha1sum | cut -d\\  -f1"
		cmd | getline str
		close(cmd)
		gsub("put your unique phrase here", str)
	}
	{ print }
' /var/www/wordpress/wp-config-sample.php > /var/www/wordpress/wp-config.php

sed -i "s/database_name_here/${MYSQL_DATABASE}/g" /var/www/wordpress/wp-config.php
sed -i "s/username_here/${MYSQL_USER}/g" /var/www/wordpress/wp-config.php
sed -i "s/password_here/${MYSQL_USER_PASSWORD}/g" /var/www/wordpress/wp-config.php
sed -i "s/localhost/${MYSQL_HOST}/g" /var/www/wordpress/wp-config.php

exec "$@"
