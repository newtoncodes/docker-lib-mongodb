#!/usr/bin/env bash

dir=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

cd ${dir}/../3.6 && docker build -t newtoncodes/mongodb .
cd ${dir}/../3.6 && docker build -t newtoncodes/mongodb:3.6 .
