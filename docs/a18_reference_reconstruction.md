# A18 — Reference Reconstruction: Backup + Restore

> Status: **ENGINEERING RECONSTRUCTION CHECKPOINT**
>
> Sumber utama: `docs/reference.md`, `docs/product.md`, `docs/architecture.md`, `docs/capability_matrix.md`, dan actual BaRe source pada branch `v1.0/rebaseline`.
>
> Reference adalah evidence, bukan implementation source. Encryption reference tidak menjadi implementation requirement BaRe.

## 1. Reference backup mechanism

Reference workflow:

```text
HOME / APPS
→ DISCOVER APPS
→ FILTER / SELECT
→ CONFIGURE PARTS
→ RESOLVE CAPABILITY
→ VALIDATE DESTINATION
→ PRECONDITIONS
→ BACKUP TASK
→ ARCHIVE / COMPRESS / ENCRYPT
→ COMMIT
→ PERSIST METADATA
→ VERIFY
→ RESULT
```

Targeted static archive evidence menambahkan:

```text
selected part/source
→ absolute source path
→ SbaArchiveEntry
→ native archive engine
→ tar/profile + compression
→ encryption boundary
→ progress callback
→ commit
→ metadata
→ verify
```

Observed reference archive boundary:
- source diberikan sebagai absolute path/entry;
- tidak ditemukan requirement full-copy source ke temporary staging sebelum archive creation;
- archive engine menerima source entries, profile/tar configuration, compression configuration, encryption configuration, dan progress callback sebagai boundary terpisah;
- cache/data sizing tidak boleh dihitung dua kali;
- reference APK runtime sendiri belum pernah dijalankan.

## 2. Reference restore mechanism

Reference workflow:

```text
APPS
→ SELECT BACKUP
→ INSPECT
→ SELECT PARTS / OPTIONS
→ VALIDATE PACKAGE + ARTIFACT + TARGET
→ RESOLVE INSTALL/DATA CAPABILITY
→ PRECONDITIONS
→ RESTORE / INSTALL
→ POST-RESTORE VALIDATION
→ RESULT
```

Critical invariant:

```text
FILE COPIED
≠ APP RESTORED
≠ APP VERIFIED
```

Reference evidence also identifies:
- App restore as a distinct capability;
- APK/APKS import/install;
- restore runtime/special data;
- missing-app restore;
- newer-version restore;
- SSAID restore option;
- restore capability depends on package identity, artifact integrity, target/install constraints, and privilege/capability.

## 3. BaRe architecture constraints

Canonical BaRe architecture already defines:

```text
BACKUP
Discover
→ Resolve Capability
→ Build Plan
→ Validate
→ Collect
→ Build Manifest/Metadata
→ Archive
→ Compress/Encrypt
→ Integrity
→ Commit Atomically
→ Persist Metadata
→ Verify

RESTORE
Select Artifact
→ Parse/Validate
→ Verify Integrity/Auth
→ Resolve Target
→ Resolve Capability
→ Build Restore Plan
→ Confirm Destructive Actions
→ Stage
→ Mutate
→ Post-restore Validation
→ Commit/Recover
→ Verify
→ Result
```

Therefore reference reconstruction is compatible with the canonical BaRe architecture; it does not replace it.

## 4. Current BaRe gap

Observed current source:
- Backup exists.
- Current app module uses a ROOT direct-source archive path and NON_ROOT staging path.
- ROOT archive currently obtains directory data through a `toybox tar` stream and wraps it in BaRe's own encrypted ZIP container.
- Current runtime evidence #1169 still fails Data during packaging/encryption with a tar source-path error.
- No App Restore engine/backend exists in the current app source tree.
- Existing metadata contains package/version/artifact/hash/encryption fields but there is no end-to-end restore verification chain.

## 5. Rebuild boundary

### 5.1 Backup

Do not continue the previous pipeline as a sequence of local patches.

Rebuild the backup implementation around explicit boundaries:

```text
Part/source selection
→ capability resolution
→ source precondition validation
→ source entry model
→ archive writer
→ BaRe encryption boundary
→ atomic artifact commit
→ metadata persistence
→ artifact integrity verification
```

ROOT:
- source paths are passed directly to the BaRe archive-source boundary;
- privileged source acquisition may use a root-specific streaming mechanism as a provider adaptation;
- source existence/type must be proven before archive execution.

NON_ROOT:
- preserve the same logical source-entry/archive/encryption/commit/verify flow;
- use staging only where Android capability requires it;
- do not invent a separate backup semantic merely because reference has no non-root implementation.

### 5.2 Restore

Introduce the missing backend chain:

```text
artifact selection
→ metadata/package validation
→ artifact hash verification
→ BaRe decryption
→ archive validation
→ restore plan
→ capability resolution
→ staged extraction
→ APK install / data restore / external restore / media restore
→ post-restore validation
→ artifact/result verification
```

Restore must not report success merely because extraction/copy completed.

## 6. Encryption boundary

Keep BaRe encryption/decryption implementation.

Do not copy Swift encryption algorithm or encrypted SBA format.

If a reference artifact/path is not encrypted by reference, do not add encryption solely to preserve the old BaRe mechanism.

## 7. Execution order

1. Reference reconstruction — **this document/checkpoint**.
2. BaRe adaptation — align source/precondition/archive/commit/verify boundaries.
3. Implementation — rebuild backup and add restore backend.
4. ROOT/NON_ROOT — same logical operation, capability-specific provider execution.
5. Backup runtime.
6. Restore runtime.
7. Regression.
8. Verification.

## 8. Verification gate

A18 remains **NOT VERIFIED** until evidence exists for:
- compile;
- ROOT backup;
- NON_ROOT backup where capability is available;
- artifact integrity;
- restore;
- post-restore validation;
- cancellation/partial failure cleanup;
- metadata/artifact consistency;
- protected existing behavior;
- relevant performance measurement after correctness baseline.
