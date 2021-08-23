FROM alpine:3.13.2

ENV haproxy_version=2.2.16-r1

RUN addgroup --gid 99 --system haproxy; \
	adduser \
		--disabled-password \
		--home /var/lib/haproxy \
		--ingroup haproxy \
		--no-create-home \
		--system \
		--uid 99 \
		haproxy \
    &&  mkdir -p /var/lib/haproxy \
    &&  touch /var/lib/haproxy/stats

RUN apk add --no-cache haproxy=${haproxy_version}
EXPOSE 80
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
