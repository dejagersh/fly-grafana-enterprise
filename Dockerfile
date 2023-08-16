FROM grafana/grafana-enterprise:10.0.3-ubuntu as base

USER root

RUN apt-get update \
    && apt-get install -y crudini \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN crudini --set /etc/grafana/grafana.ini smtp from_name FooBar \
    && crudini --set /etc/grafana/grafana.ini smtp from_email admin@example.com

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
