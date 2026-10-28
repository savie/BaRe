#!/usr/bin/env python3
"""Audit SBA JNI declarations against original and compatibility-library exports.

Usage:
  python3 tools/audit-sba-jni.py BUILD_SRC BUILD_DIR

Expected readelf symbol dumps:
  BUILD_DIR/<abi>-sba-archive-symbols.txt
  BUILD_DIR/<abi>-sba-compat-symbols.txt

Writes BUILD_DIR/sba-jni-matrix.csv and prints a concise per-ABI summary.
This is an inventory/audit report, not proof of runtime correctness.
"""
from __future__ import annotations

import csv
import re
import sys
from pathlib import Path

if len(sys.argv) != 3:
    raise SystemExit("usage: audit-sba-jni.py BUILD_SRC BUILD_DIR")

root = Path(sys.argv[1])
build = Path(sys.argv[2])
smali_roots = [p / "com" / "bareapps" / "sba" for p in root.glob("smali*")]
smali_roots = [p for p in smali_roots if p.is_dir()]
if not smali_roots:
    raise SystemExit(f"Missing SBA Smali roots under {root}/smali*")

# The implementation renamed the legacy SwiftTar wrapper class.
LEGACY_CLASS = {"SbaBareTarNative": "SbaSwiftTarNative"}

def jni_escape(value: str) -> str:
    # JNI long-name escaping for class/method identifiers.
    return (value.replace("_", "_1").replace(";", "_2")
            .replace("[", "_3").replace("/", "_"))

def symbol_for(package: str, class_name: str, method: str) -> str:
    cls = (package + "." + class_name).replace(".", "/")
    return "Java_" + jni_escape(cls) + "_" + jni_escape(method)

def parse_declarations():
    rows = []
    for smali_root in smali_roots:
        for path in sorted(smali_root.rglob("*.smali")):
            content = path.read_text(encoding="utf-8", errors="replace")
            class_match = re.search(r"^\.class\s+[^\n]*?L([^;]+);", content, re.M)
            if not class_match:
                continue
            class_path = class_match.group(1)
            if not class_path.startswith("com/bareapps/sba/"):
                continue
            package, class_name = class_path.rsplit("/", 1)
            package = package.replace("/", ".")
            for line_no, line in enumerate(content.splitlines(), 1):
                if not re.search(r"\.method\s+.*\bnative\b", line):
                    continue
                match = re.search(r"\.method\s+.*?\bnative\s+([A-Za-z0-9_$<>]+)\((.*)\)(\S+)", line)
                if not match:
                    rows.append({
                        "class": class_path.replace("/", "."),
                        "method": "<parse-error>",
                        "descriptor": line.strip(),
                        "line": line_no,
                        "bare_symbol": "",
                        "legacy_symbol": "",
                        "source": str(path.relative_to(root)),
                    })
                    continue
                method = match.group(1)
                descriptor = "(" + match.group(2) + ")" + match.group(3)
                bare = symbol_for(package, class_name, method)
                legacy_class = LEGACY_CLASS.get(class_name, class_name)
                legacy_pkg = package.replace("com.bareapps.sba", "com.swiftapps.sba", 1)
                legacy = symbol_for(legacy_pkg, legacy_class, method)
                rows.append({
                    "class": class_path.replace("/", "."),
                    "method": method,
                    "descriptor": descriptor,
                    "line": line_no,
                    "bare_symbol": bare,
                    "legacy_symbol": legacy,
                    "source": str(path.relative_to(root)),
                })
    return rows

def exports(path: Path) -> set[str]:
    if not path.is_file():
        return set()
    result = set()
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        # readelf -Ws output contains the symbol in the final whitespace-delimited column.
        parts = line.split()
        if parts and parts[-1] not in ("UND", "LOCAL"):
            result.add(parts[-1])
    return result

rows = parse_declarations()
if not rows:
    raise SystemExit(f"No native declarations found below {root}/smali*/com/bareapps/sba")

abis = ("arm64-v8a", "armeabi-v7a", "x86", "x86_64")
fieldnames = ["abi", "class", "method", "descriptor", "source", "line",
              "bare_symbol", "legacy_symbol", "bare_export", "legacy_export", "assessment"]
output = build / "sba-jni-matrix.csv"
build.mkdir(parents=True, exist_ok=True)
counts = {}
with output.open("w", newline="", encoding="utf-8") as handle:
    writer = csv.DictWriter(handle, fieldnames=fieldnames)
    writer.writeheader()
    for abi in abis:
        original = exports(build / f"{abi}-sba-archive-symbols.txt")
        compat = exports(build / f"{abi}-sba-compat-symbols.txt")
        tally = {}
        for row in rows:
            bare_found = row["bare_symbol"] in compat
            legacy_found = row["legacy_symbol"] in original
            if bare_found and legacy_found:
                assessment = "FORWARDED_EXPORTS_PRESENT"
            elif bare_found and not legacy_found:
                assessment = "BARE_EXPORT_PRESENT_LEGACY_MISSING"
            elif not bare_found and legacy_found:
                assessment = "LEGACY_EXPORT_PRESENT_NOT_FORWARDED"
            else:
                assessment = "NEITHER_EXPORT_FOUND_OR_REGISTERED"
            tally[assessment] = tally.get(assessment, 0) + 1
            writer.writerow({
                "abi": abi, **row,
                "bare_export": "yes" if bare_found else "no",
                "legacy_export": "yes" if legacy_found else "no",
                "assessment": assessment,
            })
        counts[abi] = tally

print(f"Native declarations audited: {len(rows)}")
print(f"Matrix: {output}")
for abi, tally in counts.items():
    print(f"[{abi}] " + ", ".join(f"{key}={value}" for key, value in sorted(tally.items())))
print("Note: JNI RegisterNatives and dynamically generated/overloaded names need manual review; export presence alone does not prove signature or runtime correctness.")
