#!/usr/bin/env python3
"""Extract the exact JADX defpackage Java sources as a reference mirror.

This intentionally preserves Java files and obfuscated names. Java syntax is
not Kotlin syntax, so the mirror must not be placed in the Kotlin source set or
renamed to .kt. Semantic Kotlin ports are added separately after behavior and
call sites are understood.

Usage:
  python3 tools/import_swiftbackup_reference.py /path/to/SwiftBackup-5.1.0-620-decompiled.zip
  python3 tools/import_swiftbackup_reference.py archive.zip --output reference/swiftbackup-5.1.0-620
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
from zipfile import ZipFile

SOURCE_PREFIX = "output/jadx/sources/defpackage/"
SOURCE_SUFFIX = ".java"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("archive", type=Path)
    parser.add_argument("--output", type=Path, default=Path("reference/swiftbackup-5.1.0-620"))
    args = parser.parse_args()

    output = args.output.resolve()
    output.mkdir(parents=True, exist_ok=True)
    manifest = []
    with ZipFile(args.archive) as archive:
        names = sorted(
            name for name in archive.namelist()
            if name.startswith(SOURCE_PREFIX) and name.endswith(SOURCE_SUFFIX)
        )
        for archive_name in names:
            relative = archive_name[len(SOURCE_PREFIX):]
            raw = archive.read(archive_name)
            destination = output / "defpackage" / relative
            destination.parent.mkdir(parents=True, exist_ok=True)
            destination.write_bytes(raw)
            manifest.append({
                "source": archive_name,
                "mirror": str(destination.relative_to(output)),
                "bytes": len(raw),
                "sha256": hashlib.sha256(raw).hexdigest(),
            })

    manifest_path = output / "manifest.json"
    manifest_path.write_text(
        json.dumps({
            "reference": "SwiftBackup 5.1.0 (620), JADX decompile",
            "source_prefix": SOURCE_PREFIX,
            "file_count": len(manifest),
            "files": manifest,
        }, indent=2) + "\n",
        encoding="utf-8",
    )
    print(f"Extracted {len(manifest)} Java sources into {output}")
    print(f"Manifest: {manifest_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
