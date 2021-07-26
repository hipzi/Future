FROM alpine:3.13.2

ENV grafana_version 7.5.5
ENV PATH=/usr/share/grafana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN adduser -s /bin/false -D -H grafana \
    && apk update \
    && apk --no-cache add curl libc6-compat su-exec \
    && curl -LO https://dl.grafana.com/oss/release/grafana-${grafana_version}.linux-amd64.tar.gz \
    && tar -xvzf grafana-${grafana_version}.linux-amd64.tar.gz \
    && cp -R grafana-${grafana_version} /usr/share/grafana \
    && mkdir -p /etc/grafana/ \
    && cp /usr/share/grafana/conf/defaults.ini /etc/grafana/grafana.ini \
    && mkdir -p /var/lib/grafana \
    && mkdir -p /var/lib/grafana/plugins \
    && mkdir -p /etc/grafana/provisioning/datasources \
    && mkdir -p /etc/grafana/provisioning/dashboards \
    && mkdir -p /etc/grafana/provisioning/notifiers \
    && mkdir -p /var/log/grafana \
    && chown -R grafana:grafana /var/lib/grafana \
    && chown -R grafana:grafana /etc/grafana/provisioning \
    && chown -R grafana:grafana /var/log/grafana \
    && chmod -R 777 /var/lib/grafana \
    && chmod -R 777 /usr/share/grafana \
    && chmod -R 777 /etc/grafana/provisioning \
    && chmod -R 777 /var/log/grafana \
    && apk del curl

CMD su-exec grafana grafana-server  \
  --homepath="/usr/share/grafana"  \
  --config="/etc/grafana/grafana.ini" 

EXPOSE 3000
