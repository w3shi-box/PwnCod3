#!/bin/bash

BASE="/tmp/cache"

mkdir -p "$BASE"

mkdir -p "$HOME/gooddir"


rm -rf "$BASE/logs"
ln -s "$HOME/gooddir" "$BASE/logs"

echo "log-data" > "$BASE/logs/app.log"
