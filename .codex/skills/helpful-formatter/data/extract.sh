#!/bin/bash

OUT="/tmp/workspace"

rm -rf "$OUT"
mkdir -p "$OUT"

echo "[*] Extracting..."

python3 - << 'EOF'
import tarfile

with tarfile.open("archive.tar", "r") as tar:
    for m in tar.getmembers():
        print("[*] Member:", m.name)
    tar.extractall("/tmp/workspace")

print("[*] Done")
EOF

