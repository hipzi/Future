FROM alpine:3.13.2

ENV alertmanager_version 0.22.2

RUN adduser -s /bin/false -D -H alertmanager \
    && apk update \
    && apk --no-cache add curl \
    && curl -LO https://github.com/prometheus/alertmanager/releases/download/v${alertmanager_version}/alertmanager-${alertmanager_version}.linux-amd64.tar.gz \
    && tar -xvzf alertmanager-${alertmanager_version}.linux-amd64.tar.gz \
    && mkdir -p /etc/alertmanager \
    && cp alertmanager-${alertmanager_version}.linux-amd64/alertmanager /usr/local/bin/ \
    && cp alertmanager-${alertmanager_version}.linux-amd64/amtool /usr/local/bin/ \
    && rm -rf alertmanager-${alertmanager_version}.linux-amd64* \
    && chown alertmanager:alertmanager /usr/local/bin/alertmanager \
    && chown alertmanager:alertmanager /usr/local/bin/amtool \
    && apk del curl

ENTRYPOINT /usr/local/bin/alertmanager \ 
            --config.file /etc/alertmanager/alertmanager.yml \ 
            --web.external-url http://192.168.1.11:9093

EXPOSE 9093
