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
# The legacy native library resolves this callback interface by its original
# package name. Keep a build-only compatibility interface; source trees stay untouched.
legacy_listener = root / "smali/com/swiftapps/sba/internal/progress/SbaNativeProgressListener.smali"
legacy_listener.parent.mkdir(parents=True, exist_ok=True)
listener_text = """.class public interface abstract Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;
.super Ljava/lang/Object;

.method public abstract isCancellationRequested()Z
.end method

.method public abstract onProgress(JJ)V
.end method
"""
if legacy_listener.exists():
    existing = legacy_listener.read_text(encoding="utf-8")
    if "Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;" not in existing:
        raise SystemExit(f"Unexpected legacy listener compatibility class: {legacy_listener}")
    print(f"Legacy progress listener compatibility class already present: {legacy_listener}")
else:
    legacy_listener.write_text(listener_text, encoding="utf-8")
    print(f"Added build-only legacy progress listener compatibility class: {legacy_listener}")

# Native libsba_archive expects the original callback interface, while application
# objects implement the Bare interface. Add a build-only adapter that forwards callbacks.
adapter = root / "smali/com/swiftapps/sba/internal/progress/SbaLegacyProgressListenerAdapter.smali"
adapter_text = """ .class public final Lcom/swiftapps/sba/internal/progress/SbaLegacyProgressListenerAdapter;
.super Ljava/lang/Object;
.implements Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;

.field private final delegate:Lcom/bareapps/sba/internal/progress/SbaNativeProgressListener;

.method public constructor <init>(Lcom/bareapps/sba/internal/progress/SbaNativeProgressListener;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/swiftapps/sba/internal/progress/SbaLegacyProgressListenerAdapter;->delegate:Lcom/bareapps/sba/internal/progress/SbaNativeProgressListener;
    return-void
.end method

.method public isCancellationRequested()Z
    .locals 1
    iget-object v0, p0, Lcom/swiftapps/sba/internal/progress/SbaLegacyProgressListenerAdapter;->delegate:Lcom/bareapps/sba/internal/progress/SbaNativeProgressListener;
    invoke-interface {v0}, Lcom/bareapps/sba/internal/progress/SbaNativeProgressListener;->isCancellationRequested()Z
    move-result v0
    return v0
.end method

.method public onProgress(JJ)V
    .locals 1
    iget-object v0, p0, Lcom/swiftapps/sba/internal/progress/SbaLegacyProgressListenerAdapter;->delegate:Lcom/bareapps/sba/internal/progress/SbaNativeProgressListener;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bareapps/sba/internal/progress/SbaNativeProgressListener;->onProgress(JJ)V
    return-void
.end method
""".lstrip()
adapter.parent.mkdir(parents=True, exist_ok=True)
if adapter.exists():
    current = adapter.read_text(encoding="utf-8")
    if "SbaLegacyProgressListenerAdapter" not in current:
        raise SystemExit(f"Unexpected legacy progress adapter: {adapter}")
    print(f"Legacy progress adapter already present: {adapter}")
else:
    adapter.write_text(adapter_text, encoding="utf-8")
    print(f"Added build-only legacy progress adapter: {adapter}")

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
