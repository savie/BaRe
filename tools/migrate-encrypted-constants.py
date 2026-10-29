#!/usr/bin/env python3
"""Re-encrypt embedded legacy AES-GCM literals for the BareBackup key.

This only touches Base64 ciphertext constants in the temporary build tree.
It does not rewrite reference sources or runtime user data.
"""
from pathlib import Path
import base64
import hashlib
import os
import re
import sys

try:
    from cryptography.hazmat.primitives.ciphers.aead import AESGCM
except ImportError as exc:
    raise SystemExit("Missing dependency: install python cryptography before migration") from exc

if len(sys.argv) != 2:
    raise SystemExit("usage: migrate-encrypted-constants.py BUILD_SRC")

root = Path(sys.argv[1])
old_key = b"2f18ade79d300d24491be3a45c6a441c"
new_key = hashlib.md5(b"BareBackup").hexdigest().encode("ascii")
contexts = (
    (base64.b64decode("U3dpZnRCYWNrdXBfUm9vdF9FbnRpdHk="), b"BareBackup_Root_Entity"),
    (base64.b64decode("U3dpZnRCYWNrdXBfRW50aXR5"), b"BareBackup_Entity"),
)
pattern = re.compile(r'(?P<prefix>const-string(?:/jumbo)?\s+[vp]\d+,\s*")(?P<data>[A-Za-z0-9+/=]{24,})(?P<suffix>")')
changed = 0
checked = 0

def migrate(match):
    global changed, checked
    encoded = match.group("data")
    try:
        raw = base64.b64decode(encoded, validate=True)
    except Exception:
        return match.group(0)
    if len(raw) < 30 or raw[:2] != b"\x01\x02":
        return match.group(0)
    checked += 1
    nonce, ciphertext = raw[2:14], raw[14:]
    for old_context, new_context in contexts:
        try:
            plaintext = AESGCM(old_key).decrypt(nonce, ciphertext, b"\x01\x02" + old_context)
        except Exception:
            continue
        new_nonce = os.urandom(12)
        new_ciphertext = AESGCM(new_key).encrypt(new_nonce, plaintext, b"\x01\x02" + new_context)
        migrated = b"\x01\x02" + new_nonce + new_ciphertext
        # Verify the generated value before writing it into the APK build.
        verified = AESGCM(new_key).decrypt(new_nonce, new_ciphertext, b"\x01\x02" + new_context)
        if verified != plaintext:
            raise SystemExit("AES-GCM migration self-check failed")
        changed += 1
        return match.group("prefix") + base64.b64encode(migrated).decode("ascii") + match.group("suffix")
    return match.group(0)

smali_roots = [p for p in root.iterdir() if p.is_dir() and p.name.startswith("smali")]
for smali_root in smali_roots:
    for path in smali_root.rglob("*.smali"):
        source = path.read_text(encoding="utf-8")
        updated = pattern.sub(migrate, source)
        if updated != source:
            path.write_text(updated, encoding="utf-8")

if changed == 0:
    raise SystemExit(f"No legacy encrypted constants migrated (Base64 candidates checked: {checked}); refusing to ship an unverified key migration")
print(f"Migrated {changed} encrypted constants to BareBackup key/AAD; inspected {checked} Base64 ciphertext candidates.")
