# Phase 2 — Reference Reconstruction / Semantic Reconstruction

**State:** IN PROGRESS — NOT VERIFIED  
**Branch:** `rewrite`  
**Reference:** Swift Backup 5.1.0 / versionCode 620

## 1. Objective

P2 reconstructs the Reference into BaRe **1:1 at contract and semantic level**.

P2 is not a skeleton-only, cleanup, branding, backend-migration, entitlement, or UI-redesign phase.


## P2 Working Pattern — Session Handoff

This is the canonical operational pattern for continuing P2 across sessions. The **Reference remains the source of truth**: Swift Backup 5.1.0 / versionCode 620. The 120 manifest-facing entities are **anchors/gates**, not the complete universe of P2.

```
REFERENCE
   │
   ▼
120 MANIFEST ANCHORS
   │
   ▼
/app COUNTERPART
   │
   ▼
SEMANTIC DEPENDENCY GRAPH
   │
   ├── class / interface / enum
   ├── constructor
   ├── method / function
   ├── field
   ├── parameter
   ├── return type
   ├── superclass / interface
   ├── resource
   └── manifest relationship
   │
   ▼
EVIDENCE
   │
   ▼
SEMANTIC MAPPING
Reference symbol
        ↓
BaRe target symbol
        ↓
Implementation / Delegation
   │
   ├───────────────┐
   ▼               ▼
RECONSTRUCT      DELEGATE
   │               │
   │        dependency-owned?
   │        contract verified?
   │        package/class match?
   │        manifest/config match?
   │        runtime compatible?
   │
   └───────┬───────┘
           ▼
      VERIFICATION
           │
           ▼
 MATCH / AUTHORIZED DEVIATION
 UNKNOWN / BLOCKED
```

### P2 Working Rule

Work starts from the existing `/app` source, using the 120 manifest anchors to establish coverage, then follows the semantic dependency graph outward. Every encountered class, interface, enum, constructor, method/function, field, parameter, return contract, resource, manifest relationship, or dependency is mapped back to the Reference before it is reconstructed, renamed, delegated, replaced, generated, or deleted.

```
120 anchors
   ↓
/app counterpart
   ↓
semantic dependency graph
   ↓
Reference evidence
   ↓
Reference → BaRe semantic mapping
   ↓
RECONSTRUCT or DELEGATE
   ↓
verification
   ↓
MATCH / AUTHORIZED DEVIATION / UNKNOWN / BLOCKED
```

A dependency family is **not** automatically delegated merely because it has a Gradle coordinate. Delegation requires the dependency contract defined in this document to be proven. Likewise, an unclear or obfuscated symbol is **not** deleted merely because its name is short or ugly.

For session handoff, use this pattern as the P2 operating procedure. Do not switch to branding, Firebase→Supabase migration, UI redesign, or P3 work while this gate is open.

```
Reference
 → Evidence
 → Semantic identity
 → Ownership
 → Dependency / consumer graph
 → BaRe reconstruction
 → Verification
```

## 2. 1:1 Reconstruction

1:1 means semantic and contract parity, not byte-for-byte decompiled source.

Required parity:
- class/interface role;
- ownership/package decision;
- inheritance/interfaces;
- fields/state;
- method contracts;
- control flow/business semantics;
- caller/callee relationships;
- resource relationships;
- manifest relationships;
- lifecycle behavior;
- dependency/runtime contracts.

Equivalent Java syntax and meaningful BaRe names are allowed only when the Reference contract remains equivalent.

## 3. Source and Symbol Acceptance

Every retained or reconstructed BaRe-owned source must be traceable to the Reference at **both source-unit and semantic-symbol level**.

Source-unit traceability covers:
- Reference file/path;
- Reference package;
- BaRe file/path;
- BaRe package;
- ownership;
- disposition;
- reconstruction/delegation strategy.

Symbol-level traceability covers, where present:
- class/interface/enum/annotation;
- superclass and implemented interfaces;
- fields/properties;
- constructors;
- methods/functions;
- parameters;
- return types;
- thrown/handled contract where relevant;
- referenced types;
- caller/callee relationships;
- resource references;
- manifest/component relationships.

A source file is not accepted merely because it exists, resembles decompiled code, or compiles. A symbol is not considered reconstructed merely because a similarly named symbol exists.

### 3.1 Reference → BaRe Semantic Mapping

Every renamed, re-homed, reconstructed, normalized, replaced, generated, delegated, or otherwise transformed Reference symbol must have a deterministic mapping:

```
Reference symbol
→ Evidence
→ Semantic identity / role
→ BaRe target symbol
→ Implementation / delegation
→ Verification evidence
→ Classification
→ State
```

The mapping applies to **all levels**, not only filenames:

```
a.java
  → Folder.java

class a
  → class Folder

field b
  → field path

constructor a(...)
  → constructor Folder(...)

method z(...)
  → method exists(...)

parameter q63 x
  → parameter FileSystemEntry entry
```

The example names above are illustrative only. They must never be inferred without evidence.

If a Reference symbol is still ambiguous, the BaRe target remains UNKNOWN or BLOCKED until evidence establishes its identity. An engineer must not invent a meaningful name merely to make the source readable.

### 3.2 Symbol Mapping Is Required for Ambiguous / Obfuscated / Obsolete Material

This rule explicitly covers:
- a.java, b.java, c.java, etc.;
- short/obfuscated classes such as q63, il0, sa1, zm, er6;
- one-letter or short method/function names such as z(), a(), b();
- short/obfuscated fields and parameters;
- synthetic and generated symbols;
- classes that appear obsolete;
- classes that appear to be decompiler artifacts;
- dependency-looking classes;
- symbols moved between packages;
- symbols split, merged, replaced, or delegated during reconstruction.

For each such item, the evidence must establish **what it is, why it exists, who owns it, who uses it, what contract it provides, and what it becomes in BaRe**.

### 3.3 No Silent Symbol Loss

A Reference symbol must not silently disappear during reconstruction.

If a Reference class/method/field/constructor is not present in BaRe, the mapping must explicitly classify the disposition as one of:
- proven obsolete;
- proven duplicate;
- generated/reproduced by another mechanism;
- delegated to an external dependency;
- intentionally replaced under an authorized deviation;
- UNKNOWN;
- BLOCKED.

Deletion without this classification is not accepted as P2 reconstruction.

## 4. Obfuscated / Ambiguous Source

Names such as `a.java`, `b.java`, `q63`, `il0`, and `zm` are investigation targets, not automatic deletion targets.

Before delete/replace/rename, inspect:
1. Reference counterpart;
2. superclass/interfaces;
3. fields/methods;
4. callers/callees;
5. resources;
6. manifest relationship;
7. dependency ownership;
8. generated/obfuscated origin;
9. runtime role.

If identity is proven, reconstruct under a meaningful BaRe-owned name where safe. If not proven, keep the evidence and mark UNKNOWN/BLOCKED.

## 5. Confirmed `q63` Finding

Reference `defpackage.q63` is a required filesystem abstraction.

Its observed responsibilities include:
- file/path state;
- directory creation/listing/filtering;
- input/output streams;
- text read/write;
- file length;
- random access;
- ParcelFileDescriptor handling;
- Java-file versus root/libsu handling.

It is consumed by APK import, working-directory, storage/folder models, manifest parsing, compression and other internal paths.

**Disposition:** RECONSTRUCT / REHOME.  
**Not disposable.**

## 6. `defpackage` Rule

The old `defpackage` source tree was intentionally deleted. That is valid because JADX's `defpackage` namespace is a decompiler representation, not proof of the original Java package.

But:

```
delete defpackage namespace
≠
delete its required semantics
```

Every remaining `import defpackage.*` is therefore a P2 reconstruction item.

No unresolved internal `defpackage.*` import may remain at P2 exit without an explicit UNKNOWN/BLOCKED record.

## 7. Current Repository Audit

At `rewrite` commit `477ae8b56ed8a53f413bb5cde0ebd51834046fb3`:

- 307 Java files under `app/src/main/java`;
- 262 under `org/swiftapps`;
- 68 one/two-character Java filenames;
- 270 Java paths containing Swift naming;
- 8 Java paths containing Firebase naming;
- no Kotlin source;
- no Compose source;
- old `defpackage` tree absent;
- remaining `import defpackage.*` consumers exist;
- dependency-owned Java source is embedded.

Therefore the repository is **partially reconstructed and semantically incomplete**.

## 8. File Disposition

Every current source file must receive one disposition:

| Disposition | Meaning |
|---|---|
| KEEP / RECONSTRUCT | Reference-owned semantics required |
| RENAME / REHOME | Required semantics, decompiler/R8 identity replaced |
| REPLACE / DELEGATE | Verified external dependency boundary |
| GENERATED | Reproduced by correct build mechanism or explicitly retained |
| DELETE | Proven obsolete/duplicated/non-required with no contract loss |
| UNKNOWN / BLOCKED | Evidence insufficient |

No deletion is justified solely by a short name, decompiled appearance, package oddity, file size, or difficulty.

## 9. Dependency-Owned Source

Current repository contains source under dependency namespaces such as:
`androidx.*`, `com.google.*`, `com.android.billingclient.*`, `com.microsoft.identity.*`, `com.pcloud.*`, `net.openid.appauth.*`, `com.gun0912.tedpermission.*`, `com.yubico.*`, and `rikka.shizuku.*`.

These are not automatically BaRe-owned.

They may be removed only after dependency declaration, class resolution, package/class match, manifest/configuration match, and relevant runtime verification are proven.

## 10. Generated / Synthetic Source

Classify individually:
- Room generated implementations;
- synthetic enum-switch helpers;
- Kotlin/JVM generated helpers;
- decompiler-only artifacts;
- embedded dependency implementations.

Do not delete a generated/synthetic class merely because its source is ugly.

## 11. Reconstruction Order

1. Inventory all `defpackage.*` imports.
2. Resolve high fan-out internal classes first.
3. Reconstruct internal base hierarchy.
4. Reconstruct filesystem/storage primitives such as `q63`.
5. Reconstruct data/domain contracts.
6. Reconstruct task/service/cloud primitives.
7. Reconstruct manifest-facing components.
8. Materialize Reference manifest/resources.
9. Verify dependency delegation.
10. Run the real Android build.
11. Advance states only with evidence.

## 12. Outputs

- semantic source inventory;
- Reference→BaRe source-unit mapping;
- Reference→BaRe symbol mapping for classes, interfaces, fields, constructors, methods/functions, parameters, return contracts and other applicable symbols;
- obfuscated-class registry;
- `defpackage` reconstruction registry;
- dependency/delegation register;
- generated-source register;
- manifest/resource mapping;
- decision records;
- verification ledger;
- UNKNOWN/BLOCKED register.

## 13. Exit Criteria

P2 PASS requires:
- every retained BaRe-owned source traceable to Reference;
- every renamed, moved, reconstructed, replaced, generated, delegated, merged or split semantic symbol traceable from Reference to its BaRe target or explicit disposition;
- no Reference class, field, constructor, method/function, parameter or other applicable symbol silently disappears from the reconstruction record;
- every required internal dependency reconstructed or explicitly blocked;
- no unexplained `defpackage.*` imports;
- ambiguous classes semantically identified or explicitly UNKNOWN/BLOCKED;
- dependency-owned source delegated or explicitly blocked;
- required manifest/resource contracts reconstructed;
- no unauthorized behavior;
- real Android build succeeds;
- evidence retained for all PASS claims.

**P2 PASS means the Reference baseline is reconstructed and explainable. It does not mean feature-complete.**

## 14. Current Gate

**NOT VERIFIED**

Open blockers:
- internal `defpackage.*` reconstruction;
- semantic normalization of obfuscated classes;
- complete resource parity;
- dependency delegation/build verification.

P3 remains gated by these items.


---

# Consolidated Phase 2 Registers

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


# Phase 2 — Dependency Artifact Map

**State:** REFERENCE MAPPED — DELEGATION NOT VERIFIED

## Rule

Reference dependency identity is evidence. It is not automatically a valid BaRe dependency declaration.

| Family | Reference evidence | P2 treatment |
|---|---|---|
| AndroidX | versions observed | delegate after resolution |
| MSAL | 8.3.2 observed | delegate after resolution |
| Billing | 8.3.0 observed | delegate after resolution |
| pCloud | 1.11.0 observed | delegate after resolution |
| Firebase Auth | 24.1.0 observed | preserve P2 baseline; migration deferred |
| Firebase Sessions | 3.0.6 observed | preserve P2 baseline; migration deferred |
| Firebase Database | 22.0.1 observed | preserve P2 baseline; migration deferred |
| Firebase Crashlytics | 20.0.6 observed | preserve P2 baseline; migration deferred |
| Google Sign-In/GMS | versions observed | delegate after resolution |
| Play Core/Integrity | versions observed | delegate after resolution |
| DataTransport | 3.3.0 observed | delegate after resolution |
| AppAuth | family observed; exact version unresolved | UNKNOWN/BLOCKED |
| TedPermission | family observed; exact version unresolved | UNKNOWN/BLOCKED |
| YubiKit | Android/Core/Piv family observed; exact version unresolved | UNKNOWN/BLOCKED |
| Shizuku | family observed; exact version unresolved | UNKNOWN/BLOCKED |

## P2 Boundary

Firebase→Supabase migration is an authorized deviation but is **not executed in P2**.

No dependency is removed merely because a current public coordinate exists.

## Exit

Every dependency-owned Reference contract must be delegated and verified, reconstructed where appropriate, or explicitly UNKNOWN/BLOCKED.


# Phase 2 — Dependency / Delegation Register

**State:** NOT VERIFIED

## Delegation Contract

A dependency-owned Reference component is delegated only when all are proven:
1. dependency declaration;
2. class resolution;
3. package/class identity;
4. manifest registration;
5. authority/metadata/configuration;
6. relevant runtime behavior;
7. required compatibility identifiers.

## Current Dependency-Owned Set

The existing 37 dependency-owned manifest entities remain BLOCKED until the contract above is proven.

Families include:
- AppAuth;
- TedPermission;
- MSAL;
- Firebase Auth/Sessions;
- AndroidX Credentials/ProfileInstaller/Room/Startup/Core;
- Google Sign-In/GMS;
- Billing;
- pCloud;
- YubiKit;
- Play Core;
- DataTransport;
- Shizuku.

## Source Deletion Rule

Dependency-owned Java source in `app/src/main/java` is not deleted merely because a Gradle coordinate exists.

Delete only after delegation is verified and no Reference contract is lost.

## Per-Entity Evidence

| Field | Required |
|---|---|
| Reference symbol | yes |
| Owner family | yes |
| Exact version evidence | yes or UNKNOWN |
| BaRe coordinate | yes or BLOCKED |
| Class resolution | yes |
| Manifest parity | yes |
| Runtime evidence | yes |
| Source disposition | KEEP / DELEGATE / DELETE / BLOCKED |

## Current Gate

No dependency-owned component is VERIFIED solely from source presence or declared coordinates.


# Phase 2 — Android Build Contract

**State:** BUILD CONTRACT — NOT VERIFIED

## Purpose

Define the executable build boundary required to verify the Reference reconstruction.

## Reference Baseline

- AGP 9.2.1
- compileSdk 37
- minSdk 26
- targetSdk 37
- versionName 5.1.0
- versionCode 620

These are Reference facts, not proof of BaRe parity.

## Valid Build Evidence

A P2 build is valid only when:
1. Gradle executes;
2. Android SDK/API 37 is available;
3. dependencies resolve;
4. required Reference classes resolve;
5. manifest and authorities resolve;
6. resources compile;
7. APK packaging succeeds.

A javac structural compile is not an Android build.

## Dependency Verification

A dependency becomes VERIFIED only after:
- declaration;
- class resolution;
- package/class identity match;
- manifest/configuration match;
- relevant runtime verification.

## Current State

Gradle project files and dependency declarations exist, but a real Android Gradle/APK build has not been verified.

**State:** BLOCKED / NOT VERIFIED.

## Required Evidence

Record Gradle/JDK/SDK versions, resolved dependency graph, build command/result, APK artifact and manifest/resource compilation result.


# Phase 2 — Reference Materialization Register

**State:** IN PROGRESS — REFERENCE INVENTORY RECORDED / BARe PARITY OPEN

## Reference Manifest

Baseline:
- 1 Application;
- 95 Activities;
- 10 Services;
- 10 Receivers;
- 4 Providers;
- 34 permissions;
- 4 features;
- 22 intent-filters;
- 23 metadata entries;
- 2 uses-library entries.

Reference manifest SHA-256:
`287cdbf168ca6b95b842ae15deb7e908c552f3f823723bc9518e44df4f4833f`

## Reference Resources

Reference `res/` contains 1,491 files:
- layout 341
- layout-land 2
- layout-sw600dp 2
- layout-w600dp 1
- layout-watch 2
- drawable 445
- drawable-anydpi 2
- drawable-anydpi-v31 1
- menu 44
- xml 18
- raw 12
- font 7
- anim 41
- animator 42
- color 199

## Reconstruction Rule

Do not create dummy resources.

For each required Reference resource:
1. locate the actual definition;
2. trace consumers;
3. materialize it;
4. preserve dependencies;
5. compile;
6. classify deviations.

## Current State

Reference inventory is recorded. BaRe resource parity is not verified.

**State:** NOT VERIFIED.


## Consolidation Rule

This is the single operational contract for Phase 2. The companion evidence document records execution evidence and the manifest-facing matrix.