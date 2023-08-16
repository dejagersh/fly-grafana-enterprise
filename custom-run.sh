#!/bin/bash -e

crudini --set /etc/grafana/grafana.ini smtp password hello
crudini --set /etc/grafana/grafana.ini server.custom_response_headers example hello

usermod --shell /bin/bash grafana

su -c "/run.sh" grafana
