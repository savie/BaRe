# Phase 2 — Reconstruction Evidence

| Field | Value |
|---|---|
| Phase | P2 — Reference Reconstruction |
| Reference | Swift Backup 5.1.0 / versionCode 620 |
| Scope | 1:1 Reference file/symbol → BaRe counterpart |
| State | IN PROGRESS — NOT VERIFIED |

## PHASE GOVERNANCE

| INPUT | WORK | OUTPUT | EXIT CRITERIA | EVIDENCE | STATE |
|---|---|---|---|---|---|
| Reference source + `/app` | Inspect, map, edit counterpart files 1:1, verify consumers/contracts | Updated BaRe counterpart files + evidence tables | Every investigated Reference item has a counterpart or explicit UNKNOWN/BLOCKED disposition | Source inspection, diffs, build/runtime verification | IN PROGRESS |

## FILE

| Reference File | BaRe File | Role | Status |
|---|---|---|---|
| `org/swiftapps/filesystem/a.java` | `org/swiftapps/filesystem/RandomAccessFileWriter.java` | Random-access `FileChannel` writer | MATCH |
| `org/swiftapps/swiftbackup/apkshare/a.java` | UNKNOWN | SHA-256 + APKS/archive utility | BLOCKED |
| `defpackage/q63` | UNKNOWN | Filesystem/path abstraction | BLOCKED |
| `org/swiftapps/swiftbackup/apkshare/ApkImportActivity.java` | `org/swiftapps/swiftbackup/apkshare/ApkImportActivity.java` | APK import | MAPPED |
| `org/swiftapps/swiftbackup/apptasks/AppsWorkingDir.java` | `org/swiftapps/swiftbackup/apptasks/AppsWorkingDir.java` | Working-directory contract | MAPPED |
| `org/swiftapps/swiftbackup/folders/data/BackupInfo.java` | `org/swiftapps/swiftbackup/folders/data/BackupInfo.java` | Backup data model | MAPPED |
| `org/swiftapps/swiftbackup/folders/data/BackupResult.java` | `org/swiftapps/swiftbackup/folders/data/BackupResult.java` | Backup result model | MAPPED |
| `org/swiftapps/swiftbackup/folders/data/ManifestInfo.java` | `org/swiftapps/swiftbackup/folders/data/ManifestInfo.java` | Manifest data model | MAPPED |
| `org/swiftapps/swiftbackup/apkreader/ApkManifestParser.java` | `org/swiftapps/swiftbackup/apkreader/ApkManifestParser.java` | APK manifest parser | MAPPED |
| `org/swiftapps/swiftbackup/compress/Packer.java` | `org/swiftapps/swiftbackup/compress/Packer.java` | Compression flow | MAPPED |
| `org/swiftapps/swiftbackup/anonymous/MFirebaseUser.java` | `org/swiftapps/swiftbackup/anonymous/MFirebaseUser.java` | Firebase model/contract | MAPPED — migration deferred |
| `org/swiftapps/swiftbackup/model/firebase/*` | `org/swiftapps/swiftbackup/model/firebase/*` | Firebase models | MAPPED — migration deferred |
| `org/swiftapps/swiftbackup/SwiftApp.java` | `org/swiftapps/swiftbackup/SwiftApp.java` | Application contract | MAPPED |
| `com/swiftapps/sba/*` | `com/swiftapps/sba/*` | Native/reference ABI boundary | VERIFY |

## CLASS

| Reference Class | BaRe Class | Role | Status |
|---|---|---|---|
| `org.swiftapps.filesystem.a` | `org.swiftapps.filesystem.RandomAccessFileWriter` | Random-access byte writer | MATCH |
| `q63` | UNKNOWN | Filesystem abstraction | BLOCKED |
| `org.swiftapps.swiftbackup.apkshare.a` | UNKNOWN | APK/APKS utility | BLOCKED |

## FUNCTION

| Reference Function | BaRe Function | Role | Status |
|---|---|---|---|
| `a(FileChannel,long,byte[],int,int)` | `a(FileChannel,long,byte[],int,int)` in `RandomAccessFileWriter` | Positional byte write | MATCH |
| `q63.E(File)` | UNKNOWN | Filesystem operation | BLOCKED |
| `org.swiftapps.swiftbackup.apkshare.a.a(q63)` | UNKNOWN | SHA-256 calculation | BLOCKED |
| `org.swiftapps.swiftbackup.apkshare.a.b(String)` | UNKNOWN | Archive-entry validation | BLOCKED |
| `org.swiftapps.swiftbackup.apkshare.a.c(...)` | UNKNOWN | APKS archive construction | BLOCKED |
| `org.swiftapps.swiftbackup.apkshare.a.d(...)` | UNKNOWN | ZIP entry write | BLOCKED |

## DEPENDENCY / OWNERSHIP

| Reference Family / Symbol | BaRe Treatment | Status |
|---|---|---|
| AndroidX | Dependency delegation | BLOCKED until class + manifest + runtime contract verified |
| Firebase | Preserve P2 baseline | MIGRATION DEFERRED |
| Google Play Services | Dependency delegation | BLOCKED |
| Billing | Dependency delegation | BLOCKED |
| MSAL | Dependency delegation | BLOCKED |
| pCloud | Dependency delegation | BLOCKED |
| AppAuth | Dependency delegation | UNKNOWN |
| TedPermission | Dependency delegation | UNKNOWN |
| YubiKit | Dependency delegation | UNKNOWN |
| Shizuku | Dependency delegation | UNKNOWN |
| Play Core / Integrity | Dependency delegation | BLOCKED |
| DataTransport | Dependency delegation | BLOCKED |

## SOURCE DISPOSITION

| Reference / Current Source | Action | Status |
|---|---|---|
| `defpackage/*` | Do not restore namespace blindly; reconstruct each consumed symbol into its proven counterpart | IN PROGRESS |
| Short/obfuscated `a.java`, `b.java`, etc. | Inspect individually; rename/rehome only after semantic identity is proven | IN PROGRESS |
| Dependency-owned source copies | Delegate only after dependency contract is verified | BLOCKED |
| Generated sources | Reproduce through verified generator/build before deletion | BLOCKED |

## VERIFICATION

| Item | Evidence | Classification | State |
|---|---|---|---|
| `filesystem/a.java` | Reference implementation + consumers `ws3`/`vs3` observed | MATCH | IMPLEMENTED |
| `RandomAccessFileWriter.java` | Counterpart file created; semantic role preserved | MATCH | IMPLEMENTED |
| `apkshare/a.java` | SHA-256/APKS behavior inspected; `q63` dependency unresolved | UNKNOWN | BLOCKED |
| `q63` | High fan-out filesystem abstraction confirmed | MATCH at semantic identification | BLOCKED |
| `defpackage.*` consumers | Remaining imports exist in `/app` | INCOMPLETE | BLOCKED |
| Android build | No verified Android Gradle/APK build yet | UNKNOWN | BLOCKED |

## P2 GATE

| Requirement | Current State |
|---|---|
| Reference → Evidence → BaRe target traceability | IN PROGRESS |
| 1:1 counterpart mapping | IN PROGRESS |
| Consumer/dependency verification | IN PROGRESS |
| Android build verification | BLOCKED |
| Runtime verification | BLOCKED |
| P2 final state | NOT VERIFIED |
