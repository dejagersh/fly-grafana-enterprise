FROM grafana/grafana-enterprise:10.0.2-ubuntu as base

# to be able to install packages
USER root

RUN apt update && apt install -y vim crudini htop \
    && sed -i 's/exec grafana server/exec \/usr\/share\/grafana\/bin\/grafana server/g' /run.sh \
    && usermod --shell /bin/bash grafana

COPY ./entrypoint.sh /entrypoint.sh

USER root

ENTRYPOINT ["/entrypoint.sh"]
