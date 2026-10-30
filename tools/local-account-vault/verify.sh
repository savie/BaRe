#!/bin/sh
set -eu
ROOT="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
OUT="$(mktemp -d)"
trap 'rm -rf "$OUT"' EXIT INT TERM
javac -source 8 -target 8 -d "$OUT" \
  "$ROOT/src/main/java/com/bareapps/barebackup/vault/LocalAccountVault.java" \
  "$ROOT/src/test/java/com/bareapps/barebackup/vault/LocalAccountVaultSmokeTest.java"
java -cp "$OUT" com.bareapps.barebackup.vault.LocalAccountVaultSmokeTest
