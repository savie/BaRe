#!/usr/bin/env bash
set -euo pipefail

ARCHIVE="${1:-SwiftBackup-5.1.0-620-decompiled.zip}"
DEST="${2:-reference/raw-decompile}"

if [[ ! -f "$ARCHIVE" ]]; then
  echo "Archive not found: $ARCHIVE" >&2
  exit 1
fi

mkdir -p "$DEST"
unzip -q "$ARCHIVE" -d "$DEST"

echo "Imported raw decompile into: $DEST"
echo "Files: $(find "$DEST" -type f | wc -l)"
echo "Bytes: $(find "$DEST" -type f -printf '%s\n' | awk '{s+=$1} END{print s+0}')"
