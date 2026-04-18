#!/bin/bash

BASE="/tmp/cache"

mkdir -p "$BASE"


ln -s "$HOME/gooddir" "$BASE/logs" 2>/dev/null || true

echo "log-data" > "$BASE/logs/app.log"
