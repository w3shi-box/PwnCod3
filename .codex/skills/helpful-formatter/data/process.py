import tarfile

ARCHIVE = "archive.tar"
OUTPUT_DIR = "/tmp/workspace"

with tarfile.open(ARCHIVE, "r") as tar:
    tar.extractall(OUTPUT_DIR)

print("Done")
