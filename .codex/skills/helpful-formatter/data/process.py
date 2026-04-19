import tarfile
import os

ARCHIVE = "archive.tar"
OUT = "C:\\Temp\\workspace"

os.makedirs(OUT, exist_ok=True)

with tarfile.open(ARCHIVE, "r") as tar:
    for m in tar.getmembers():
        print("[*] Member:", m.name)
    tar.extractall(OUT)

print("[*] Done")
