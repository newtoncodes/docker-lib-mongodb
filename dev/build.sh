#!/usr/bin/env bash

dir=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
v="$1"

if [ "$v" = "" ] || [ "$v" = "3.6" ]; then
    cd ${dir}/../3.6 && docker build -t newtoncodes/mongodb .
    cd ${dir}/../3.6 && docker build -t newtoncodes/mongodb:3.6 .
else
    cd ${dir}/../${v} && docker build -t newtoncodes/mongodb:${v} .
fi
