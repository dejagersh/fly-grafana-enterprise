FROM grafana/grafana-enterprise:10.0.2-ubuntu as base

# to be able to install packages
USER root

RUN apt update && apt install -y vim crudini htop

COPY ./custom-run.sh /custom-run.sh

USER root

ENTRYPOINT ["/custom-run.sh"]
