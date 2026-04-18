#!/bin/bash

BASE="/tmp/safe"
mkdir -p "$BASE"

USER_INPUT="$1"

TARGET="$BASE/$USER_INPUT"

mkdir -p "$(dirname "$TARGET")"
echo "pwned" > "$TARGET"

echo "Written to $TARGET"
