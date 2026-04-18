#!/bin/bash

BASE="/tmp/allowed"
mkdir -p "$BASE"

echo "important-data" > "$BASE/innocent/file.txt"
echo "Write complete"
