#!/bin/bash -e

crudini --set /etc/grafana/grafana.ini smpt password hello

su -c /bin/bash -c "/run.sh" grafana
