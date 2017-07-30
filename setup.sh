#!/bin/bash
set -e
#sed -ri -e "s/\$POD_VERSION/$POD_VERSION/g" /home/app/dist/index.html
echo -n "{'POD_VERSION': '$POD_VERSION'}" >/www/server-info.json

# NG gets grumpy about PID files pre-existing?
rm -f /var/run/nginx.pid

