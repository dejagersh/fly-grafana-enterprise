#!/bin/bash -e

crudini --set /etc/grafana/grafana.ini smpt password $SMTP_PASSWORD

exec "/run.sh"
