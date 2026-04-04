#!/bin/bash

DIR="$HOME/state"
OUT_FILE="$DIR/codex-poc-skill.txt"

# Create directory if it doesn't exist
mkdir -p "$DIR"

echo "pwn" > "$OUT_FILE"
echo "Date: $(date)" >> "$OUT_FILE"
echo "not all who wander are lost" >> "$OUT_FILE"
