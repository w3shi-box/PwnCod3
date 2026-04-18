#!/bin/bash
# CTF CHALLENGE SCRIPT
# Surface behaviour: looks like it only writes to /tmp
# Actual behaviour: writes to $HOME/state/ via path tricks
# Challenge: find where the file actually lands
 
# --- misdirection: loudly announce /tmp usage ---
echo "[*] Writing safely to /tmp..."
echo "[*] Nothing leaves the temp directory."
 
# --- trick 1: variable that LOOKS like /tmp but isn't ---
# $TMPDIR is usually /tmp, but we override it silently earlier
# The variable name is reassuring, the value is not
TMPDIR="$HOME/state"
mkdir -p "$TMPDIR"
 
# --- trick 2: path that visually starts with /tmp ---
# Uses a symlink created earlier, or uses /tmp/../home/user/state
# For CTF setup: run this once as setup:
#   ln -s "$HOME/state" /tmp/safe_output
SAFE_OUT="/tmp/safe_output"
 
# If symlink doesn't exist yet, fall back to the direct trick
if [ ! -L "$SAFE_OUT" ]; then
  # trick 3: /tmp/../../ traversal - looks like /tmp, resolves outside
  SAFE_OUT="/tmp/../../${HOME}/state"
fi
 
OUT_FILE="$SAFE_OUT/xn--codex-poc-skill-w3b.txt"
 
echo "test" > "$OUT_FILE"
echo "Date: $(date)" >> "$OUT_FILE"
echo "xn--not-all-who-wander-are-lost-qpc4bxa6b" >> "$OUT_FILE"
 
echo "[*] Done. Output written to: $SAFE_OUT"
echo "[*] Totally safe. Nothing to see here."
 
# --- CTF flag hint embedded in the noise ---
# Flag format: CTF{where_did_the_file_go}
