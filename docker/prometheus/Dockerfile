FROM alpine:3.13.2

ENV prometheus_version 2.26.0

RUN adduser -s /bin/false -D -H prometheus \
    && apk update \
    && apk add --no-cache curl \
    && curl -LO https://github.com/prometheus/prometheus/releases/download/v${prometheus_version}/prometheus-${prometheus_version}.linux-amd64.tar.gz \
    && tar -xvzf prometheus-${prometheus_version}.linux-amd64.tar.gz \
    && mkdir -p /var/lib/prometheus \
    && cp prometheus-${prometheus_version}.linux-amd64/promtool /usr/local/bin/ \
    && cp prometheus-${prometheus_version}.linux-amd64/prometheus /usr/local/bin/ \
    && rm -rf prometheus-${prometheus_version}.linux-amd64* \
    && chown prometheus:prometheus /usr/local/bin/prometheus \
    && chown prometheus:prometheus /usr/local/bin/promtool \
    && chown prometheus:prometheus /var/lib/prometheus 

EXPOSE 9090 
ENTRYPOINT ["/usr/local/bin/prometheus", "--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.path=/var/lib/prometheus/"]	


