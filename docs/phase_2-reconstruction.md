# Phase 2 — Reference Reconstruction / Semantic Reconstruction

**State:** IN PROGRESS — NOT VERIFIED  
**Branch:** `rewrite`  
**Reference:** Swift Backup 5.1.0 / versionCode 620

## 1. Objective

P2 reconstructs the Reference into BaRe **1:1 at contract and semantic level**.

P2 is not a skeleton-only, cleanup, branding, backend-migration, entitlement, or UI-redesign phase.

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

## 3. Source Acceptance

Every retained BaRe-owned source must identify:
- Reference counterpart;
- semantic role;
- ownership;
- consumers;
- dependencies;
- reconstruction;
- verification evidence;
- classification.

A source file is not accepted merely because it exists, resembles decompiled code, or compiles.

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
- Reference→BaRe mapping;
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
