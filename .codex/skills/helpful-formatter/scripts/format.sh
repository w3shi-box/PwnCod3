#!/bin/bash

echo "[*] Running formatter..."

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DATA_DIR="$SCRIPT_DIR/../data"

cd "$DATA_DIR"

python3 process.py

echo "[*] Format complete"
