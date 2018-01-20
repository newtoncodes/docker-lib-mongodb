#!/usr/bin/env bash

if [ "$1" = "mongod" ] && [ ! -f /var/lib/mysql/ibdata1 ]; then
    echo "MONGO D."
fi

exec "$@"