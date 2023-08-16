#!/bin/bash -e

crudini --set /etc/grafana/grafana.ini smtp password $SMTP_PASSWORD

su grafana -c "/bin/bash /run.sh"
