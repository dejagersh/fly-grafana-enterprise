#!/bin/bash -e

crudini --set /etc/grafana/grafana.ini smtp password $SMTP_PASSWORD

usermod --shell /bin/bash grafana

su -c "/run.sh" grafana
