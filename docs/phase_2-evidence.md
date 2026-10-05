# Phase 2 — Reconstruction Evidence Ledger

**State:** IN PROGRESS — NOT VERIFIED

## Purpose

This ledger records evidence for Reference reconstruction. Source existence and structural compilation are not semantic verification.

## Reference Baselines

### PH2-REF-001 — Manifest
Reference contains 1 Application, 95 Activities, 10 Services, 10 Receivers and 4 Providers, plus 34 permissions, 4 features, 22 intent-filters, 23 metadata entries and 2 uses-library entries.

**Classification:** REFERENCE EVIDENCE.

### PH2-REF-002 — Resources
Reference `res/` inventory contains 1,491 files.

**Classification:** REFERENCE EVIDENCE.

### PH2-REF-003 — Build Metadata
Reference records AGP 9.2.1, compileSdk 37, minSdk 26, targetSdk 37, versionName 5.1.0 and versionCode 620.

**Classification:** REFERENCE EVIDENCE.

### PH2-REF-004 — Dependency Families
Reference evidence identifies AndroidX, Firebase, Google Play Services, Billing, MSAL, pCloud, YubiKit, AppAuth, TedPermission, Shizuku, Play Core/Integrity and DataTransport families.

**Classification:** REFERENCE EVIDENCE.

## Semantic Findings

### PH2-SEM-001 — `defpackage`
JADX emits `defpackage` for classes whose binary descriptors do not contain a package component.

**Result:** decompiler namespace, not sufficient proof of original Java package identity.

### PH2-SEM-002 — `q63`
Reference `q63` is a filesystem abstraction used across APK import, working directories, storage/folder models, manifest parsing and compression.

**Result:** required internal semantic component.

**Classification:** MATCH for semantic identification; BaRe rehome/reconstruction pending.

### PH2-SRC-003 — Remaining `defpackage.*`
Current BaRe source still imports `defpackage.*` after the old namespace was intentionally deleted.

**Result:** reconstruction incomplete.

**Classification:** BLOCKED until each import is resolved.

### PH2-SRC-004 — Short/obfuscated filenames
Current repository contains 68 one/two-character Java filenames.

**Result:** filename alone cannot establish obsolescence.

**Classification:** UNKNOWN until semantic mapping.

### PH2-DEP-005 — Embedded dependency source
Current repository contains source under third-party/dependency namespaces.

**Result:** ownership must be classified before deletion.

**Classification:** UNKNOWN/BLOCKED until delegation is verified.

## Structural Compile

Previous javac evidence proves only structural compilation against explicit compile-only Android/AndroidX stubs.

It does not prove Android Gradle build, dependency resolution, runtime behavior or semantic parity.

**Classification:** COMPILED only.

## Current Gate

P2 is **NOT VERIFIED** until semantic mapping, reconstruction, dependency delegation and real Android build evidence are complete.
