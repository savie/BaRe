# Phase 2 — Source Disposition Register

**State:** IN PROGRESS — AUDIT BASELINE

## Purpose

This register answers the practical P2 question:

> Which current files are kept, reconstructed, delegated, generated, renamed/re-homed, or deleted?

Disposition is based on Reference semantics, not filename appearance.

## Confirmed Dispositions

| Current path / family | Disposition | Reason |
|---|---|---|
| old `defpackage/` source tree | DELETE | intentionally removed decompiler namespace; semantics must still be reconstructed |
| `org/swiftapps/filesystem/a.java` | REVISE / RENAME-CANDIDATE | Reference class is a filesystem utility; current name is R8/JADX-obfuscated |
| `org/swiftapps/swiftbackup/apkshare/a.java` | REVISE / RENAME-CANDIDATE | Reference class implements SHA-256/file archive utility behavior around `q63` |
| `org/swiftapps/swiftbackup/apkshare/ApkImportActivity.java` | KEEP / RECONSTRUCT | Reference feature component; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/apptasks/AppsWorkingDir.java` | KEEP / RECONSTRUCT | Reference working-directory contract; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/folders/data/BackupInfo.java` | KEEP / RECONSTRUCT | Reference domain contract; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/folders/data/BackupResult.java` | KEEP / RECONSTRUCT | Reference domain contract; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/folders/data/ManifestInfo.java` | KEEP / RECONSTRUCT | Reference domain contract; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/apkreader/ApkManifestParser.java` | KEEP / RECONSTRUCT | Reference parser; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/compress/Packer.java` | KEEP / RECONSTRUCT | Reference compression flow; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/anonymous/MFirebaseUser.java` | KEEP in P2 | internal Reference Firebase contract; migration is a later authorized deviation |
| `org/swiftapps/swiftbackup/model/firebase/*` | KEEP in P2 | Reference model contract; Firebase→Supabase migration deferred |
| `org/swiftapps/swiftbackup/SwiftApp.java` | KEEP / RECONSTRUCT | Reference Application contract |
| `com/swiftapps/sba/*` | KEEP / VERIFY | native/reference ABI boundary; do not remove from P2 without evidence |
| `androidx/*` source copies | DELEGATE-CANDIDATE | dependency-owned; delete only after dependency verification |
| `com/google/*` source copies | DELEGATE-CANDIDATE | dependency-owned; delete only after dependency verification |
| `com/android/billingclient/*` | DELEGATE-CANDIDATE | dependency-owned; delete only after dependency verification |
| `com/microsoft/identity/*` | DELEGATE-CANDIDATE | dependency-owned; delete only after dependency verification |
| `com/pcloud/*` | DELEGATE-CANDIDATE | dependency-owned; delete only after dependency verification |
| `net/openid/appauth/*` | DELEGATE-CANDIDATE | dependency-owned; exact Reference version still unresolved |
| `com/gun0912/tedpermission/*` | DELEGATE-CANDIDATE | dependency-owned; exact Reference version still unresolved |
| `com/yubico/*` | DELEGATE-CANDIDATE | dependency-owned; exact Reference version still unresolved |
| `rikka/shizuku/*` | DELEGATE-CANDIDATE | dependency-owned; exact Reference version still unresolved |
| `MDatabase_Impl.java` | GENERATED-CANDIDATE | Room-generated implementation; remove only after Room generation/build reproduces the contract |
| short `a/b/c...` synthetic enum helpers | RECONSTRUCT / GENERATED | inspect consumers; inline/replace only when Reference switch semantics are preserved |

## Short Filename Rule

The current repository has 68 one/two-character Java filenames.

They are **not** a deletion batch.

Each is individually classified as:
- semantic internal class;
- generated/synthetic helper;
- dependency-owned class;
- obsolete artifact;
- UNKNOWN/BLOCKED.

## Immediate P2 Revision Targets

Highest-priority internal reconstruction targets are the high fan-out unresolved classes, beginning with:
1. `q63`;
2. internal base hierarchy represented by `il0`, `sa1`, `zm`, `er6` and related classes;
3. filesystem helpers;
4. data/storage models;
5. task/service primitives;
6. remaining `defpackage.*` imports.

## Deletion Gate

A source file may move to DELETE only when:
- Reference counterpart is identified;
- ownership is established;
- consumers are mapped;
- replacement/reconstruction exists where needed;
- no Reference contract is lost;
- verification evidence is recorded.

**No mass deletion by filename pattern is authorized.**
