#!/usr/bin/env python3
"""Patch only the temporary APK build tree; never edits tracked Smali sources."""
from pathlib import Path
import sys

if len(sys.argv) != 2:
    raise SystemExit("usage: patch-sba-jni-compat.py BUILD_SRC")

root = Path(sys.argv[1])
target = root / "smali/com/bareapps/sba/SbaLibaegisCryptoNative.smali"
if not target.is_file():
    raise SystemExit(f"Expected staging class not found: {target}")

text = target.read_text(encoding="utf-8")
if '"sba_compat"' in text:
    print("SBA JNI compatibility loader already present; no change needed.")
    raise SystemExit(0)

needle = 'invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V'
if text.count(needle) != 1:
    raise SystemExit(f"Expected exactly one System.loadLibrary call in {target}; found {text.count(needle)}")

replacement = needle + '\n\n    const-string v0, "sba_compat"\n\n    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V'
text = text.replace(needle, replacement, 1)
target.write_text(text, encoding="utf-8")
print(f"Patched staging copy only: {target}")
