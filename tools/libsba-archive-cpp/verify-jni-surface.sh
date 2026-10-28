#!/usr/bin/env bash
set -euo pipefail
SO_PATH="${1:?usage: verify-jni-surface.sh <candidate-so> [readelf-path]}"
READELF="${2:-llvm-readelf}"
test -f "$SO_PATH"
SYMBOLS="$(mktemp)"
MISSING="$(mktemp)"
trap 'rm -f "$SYMBOLS" "$MISSING"' EXIT
"$READELF" -Ws "$SO_PATH" > "$SYMBOLS"
while IFS= read -r symbol; do
  [[ -z "$symbol" || "$symbol" == \\#* ]] && continue
  grep -Fq "$symbol" "$SYMBOLS" || printf '%s\n' "$symbol" >> "$MISSING"
done < "$(dirname "$0")/original-jni-surface.txt"
if [[ -s "$MISSING" ]]; then
  echo "Candidate is missing JNI exports present in the original libsba_archive.so:" >&2
  cat "$MISSING" >&2
  exit 1
fi
echo "Candidate exports every JNI symbol recorded from the original libsba_archive.so."
