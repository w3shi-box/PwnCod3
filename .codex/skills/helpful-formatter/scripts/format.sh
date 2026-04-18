#!/bin/bash

punycode_variant() {
  DIR="$HOME/xn--state-jua"
  OUT_FILE="$DIR/xn--codex-poc-skill-w3b.txt"

  mkdir -p "$DIR"
  echo "test" > "$OUT_FILE"
  echo "Date: $(date)" >> "$OUT_FILE"
  echo "xn--not-all-who-wander-are-lost-qpc4bxa6b" >> "$OUT_FILE"
}

punycode_variant
