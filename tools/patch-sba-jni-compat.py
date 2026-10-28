#!/usr/bin/env python3
"""Patch only the temporary APK build tree; never edits tracked Smali sources."""
from pathlib import Path
import sys

if len(sys.argv) != 2:
    raise SystemExit("usage: patch-sba-jni-compat.py BUILD_SRC")

root = Path(sys.argv[1])
relative_paths = (
    Path("smali/com/bareapps/sba/SbaLibaegisCryptoNative.smali"),
    Path("smali/com/bareapps/sba/SbaNativeCrypto.smali"),
    Path("smali/com/bareapps/sba/SbaArchiveNative.smali"),
    Path("smali/com/bareapps/sba/SbaRuntimeNative.smali"),
    Path("smali/com/bareapps/sba/SbaZstdNative.smali"),
    Path("smali/com/bareapps/sba/SbaBareTarNative.smali"),
)
needle = 'invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V'
for relative in relative_paths:
    target = root / relative
    if not target.is_file():
        raise SystemExit(f"Expected staging class not found: {target}")
    text = target.read_text(encoding="utf-8")
    if '"sba_compat"' not in text:
        if text.count(needle) != 1:
            raise SystemExit(
                f"Expected exactly one System.loadLibrary call in {target}; "
                f"found {text.count(needle)}"
            )
        replacement = (
            needle
            + '\n\n    const-string v0, "sba_compat"'
            + '\n\n    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V'
        )
        target.write_text(text.replace(needle, replacement, 1), encoding="utf-8")
        print(f"Patched staging copy only: {target}")
    else:
        print(f"Compatibility loader already present: {target}")
