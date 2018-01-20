#!/usr/bin/env bash

if [ "$1" = "mongod" ]; then
    exec mongod -f /etc/mongod.conf
fi

exec "$@"