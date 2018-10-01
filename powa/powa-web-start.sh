#!/bin/sh

_HOST=$1
_PORT=$2
_DATABASE=$3

_SECRET=`date | md5sum`

cat <<EOF > /etc/powa-web.conf
servers = {
  'main': {
    'host': '${_HOST}',
    'port': '${_PORT}',
    'database': '${_DATABASE}'
  }
}

cookie_secret="${_SECRET}"
EOF

powa-web
