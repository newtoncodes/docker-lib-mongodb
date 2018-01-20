#!/usr/bin/env bash

v="$1"

if [ "$v" = "" ] || [ "$v" = "3.6" ]; then
    docker push newtoncodes/mongodb
    docker push newtoncodes/mongodb:3.6
else
    docker push newtoncodes/mongodb:${v}
fi
