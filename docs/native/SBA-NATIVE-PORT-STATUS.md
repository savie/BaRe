# BΛR☰ SBA implementation status

Reference: user-provided SwiftBackup 5.1.0 (620) APK/decompilation and the feature-parity spec.
Target branch: `rewrite`.
Last reviewed: 2026-10-19.

## Current verdict

**NOT GO.** Source implementation has advanced, but there is no verified Android/NDK build or reference-vs-target round-trip evidence. Encrypted SBA/AEGIS and the root-service/application-task integration are still missing.

## Required source locations

- Native-facing Kotlin wrappers and archive API: `app/src/main/java/com/bareapps/sba/`
- Archive parser/writer: `app/src/main/java/com/bareapps/sba/internal/archive/`
- TAR entry model and writer: `app/src/main/java/com/bareapps/sba/internal/tar/`
- Native progress callback: `app/src/main/java/com/bareapps/sba/internal/progress/`
- Native implementation: `app/src/main/cpp/sba_archive.cpp`
- Intended application task integration: `app/src/main/java/com/bareapps/barebackup/apptasks/sba/`
- Intended root-service integration: `app/src/main/java/com/bareapps/rootservice/`

SBA source files must remain in these established placeholder trees. Do not recreate the deleted `com/bareapps/barebackup/sba/` package.

## Implemented code paths (not yet build-verified)

| Area | Current implementation | Verification state |
|---|---|---|
| Argon2id | `SbaNativeCrypto.deriveArgon2id` is a JNI entry point delegating to the Bouncy Castle portable implementation; known-answer tests exist | Host-side vector evidence was checked earlier; Android/JNI build and runtime parity still unverified |
| Zstandard byte operations | JNI byte compression/decompression delegates to zstd-jni | API path exists; error and frame-parity tests not run |
| TAR listing/extraction | Native parser supports ustar, PAX, GNU long-name records, sparse metadata parsing, safe path handling, symlink/hardlink validation, cancellation and progress | Source implementation exists; Android tests not run |
| TAR extraction stats | 20-element stats array now reports TAR byte length, parsed entry/type counts, regular-file bytes, skipped-entry estimate and measured timings; permission mask is applied | Some low-level read/write counters remain uninstrumented; exact parity not verified |
| TAR payload generation for SBA creation | Streams source files/directories, preserves POSIX modes and timestamps, emits symlinks, writes PAX records for long paths/targets, large sizes and subsecond/negative timestamps; fails on unsupported special files | Unit test source exists; runtime tests not run |
| SBA unencrypted writer | JNI `createArchive` delegates to `SbaArchiveWriter`; supports v1 `SBA1/SAE1/SAI1/SAF1` framing, no compression or Zstandard, metadata/index, CRCs, atomic output replacement and cancellation | Implemented path; no reference-parser comparison or build evidence |
| SBA reader | Strict unencrypted v1/v2 header/index/entry/footer validation, UTF-8/path/bounds checks, CRC validation and v2 entry counts | Implemented path; encrypted archives are rejected |
| Unencrypted restore/list | Archive API reads metadata, lists TAR entries and extracts entries; compressed entry decoding is bounded by index-declared TAR size | Implemented path; no device round-trip tests |

## Blocking work

1. **AEGIS/encryption:** `SbaLibaegisCryptoNative.isAvailable()` remains false. AEGIS-256 and AEGIS-128X2 chunked encryption/decryption and fused archive-entry extraction still fail closed. Exact nonce derivation, AAD encoding, chunk framing and tag placement must be recovered and verified; do not invent these values.
2. **Encrypted SBA containers:** encrypted archive creation and encrypted archive index/entry reading are not implemented. The current writer intentionally supports only mode 1 (unencrypted).
3. **Other reference encryption modes:** key-check, KDF/header fields and encrypted payload framing for the reference's other modes are not implemented.
4. **Root service integration:** `SbaArchiveTaskRunner` now provides create/restore request models, operation snapshots, asynchronous execution, progress, cancellation and result retention under the intended app-task placeholder. The `com/bareapps/rootservice/` placeholder still needs Parcelable wire contracts, Binder transaction ordering, Shizuku user-service binding, archive-info/list methods and reference cache semantics.
5. **Orphan ELF exports:** `createTarToFdWithWriteStatsRaw`, `compressZstdFdToFdRaw`, and `compressZstdFileToFdRaw` do not have a verified Kotlin declaration/signature in the reference DEX. They remain non-public/unimplemented until their ABI is established.
6. **Full TAR metadata:** sparse-file writing, extended attributes and special filesystem objects are not fully implemented in the SBA source-TAR writer.

## Tests added but not executed here

- Argon2id known-answer and parameter-boundary tests.
- SBA writer/reader framing and footer CRC tests.
- Zstandard-compressed SBA writer/reader test.
- Corrupt-footer rejection test.
- Long-path PAX header test.
- Existing generic ustar writer tests.
- SBA task-runner state, progress, result and cancellation tests (using an injectable fake backend).

The repository workflow is configured to run rebuild CI on pushes to `rewrite`, but no successful run for the latest implementation commit is recorded. Do not report build/test success until `:app:testDebugUnitTest`, `:app:assembleRelease`, all four ABI builds, and reference-vs-target archive/restore/corruption tests actually pass.

## Latest implementation notes

- Corrected the JNI `createArchive` source argument descriptor from `ByteArray[]` to `String[]`, matching the reference call site that supplies source paths.
- Replaced the archive-creation fail-closed stub with the unencrypted v1 writer bridge.
- Added a strict unencrypted archive reader and bounded Zstandard restore/listing paths.
- Corrected TAR stats argument semantics to byte length (not offset) and applied the caller's file-mode mask.
- Moved SBA implementation files out of the misplaced `com/bareapps/barebackup/sba/` package and into the pre-existing `com/bareapps/sba/` placeholder tree.

- Added `SbaArchiveTaskRunner` under the existing app-task placeholder with SBA create/restore and direct TAR-restore requests, progress callbacks, cancellation, TAR statistics, and a bounded completed-operation registry. Its backend is injectable for unit tests.
