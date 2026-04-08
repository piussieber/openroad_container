#!/bin/bash

if [ ! -d /OpenROAD/etc ]; then
    echo "No OpenROAD directory found. Please clone the OpenROAD repository and run this script again."
    exit 1
fi

cd /OpenROAD/etc

./Build.sh -threads=$(nproc --all)