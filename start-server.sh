#!/bin/sh

args="$@"

config=/data/config.json
if [ -f $config ]; then
    echo "Found config.json, applying it."
    args="$args --config config.json"
fi

db=/data/db.json
if [ -f $db ]; then
    echo "Found db.json, trying to open"
    args="$args db.json"
fi

seed=/data/seed.js
if [ -f $seed ]; then
    echo "Found seed.js seed file, trying to open"
    args="$args seed.js"
fi

json-server $args