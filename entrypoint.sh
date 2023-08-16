#!/bin/bash -e

crudini --set /etc/grafana/grafana.ini smtp password $SMTP_PASSWORD

runuser -u grafana -- /run.sh
