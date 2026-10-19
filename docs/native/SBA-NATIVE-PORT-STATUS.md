# BΛR☰ SBA implementation status

Reference: user-provided SwiftBackup 5.1.0 (620) APK/decompilation and the feature-parity spec.
Target branch: `rewrite`.
Last reviewed: 2026-10-19.

## Current verdict

**NOT GO for full parity.** The unencrypted writer/reader and root-service/application-task source paths exist. The reader now parses AEGIS-256/AEGIS-128X2 SBA header/index metadata and validates encrypted payload size/entry flags; a reference-compatible Argon2id/SHA-256 key-check verifier and deterministic key-check vectors have been added. This still does not decrypt or create encrypted payload chunks. Reference-vs-target encrypted round-trip evidence is still missing. Do not claim encrypted parity.

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
| Argon2id | `SbaNativeCrypto.deriveArgon2id` is a JNI entry point delegating to the Bouncy Castle portable implementation; known-answer tests exist | Host-side vector evidence checked; CI validates source/unit-test build, but reference encrypted-archive parity remains unverified |
| Zstandard byte operations | JNI byte compression/decompression delegates to zstd-jni | API path exists; error and frame-parity tests not run |
| TAR listing/extraction | Native parser supports ustar, PAX, GNU long-name records, sparse metadata parsing, safe path handling, symlink/hardlink validation, cancellation and progress | Source implementation exists; Android tests not run |
| TAR extraction stats | 20-element stats array reports TAR byte length, parsed entry/type counts, regular-file bytes, skipped-entry estimate and measured timings; Basic/Fidelity/RootFidelity profiles map to the exact reference TAR mode masks (511/468/384 decimal, equivalent to octal 0777/0724/0600). Permission, timestamp, ownership, xattr/SELinux and PAX sparse-map restoration are implemented where metadata is available | Low-level read/write counters remain uninstrumented; GNU sparse PAX 1.0 and old-GNU sparse encodings remain unsupported; exact parity not verified |
| TAR payload generation for SBA creation | Streams source files/directories, preserves POSIX modes and timestamps, emits symlinks, writes PAX records for long paths/targets, large sizes and subsecond/negative timestamps; fails on unsupported special files | Unit test source exists; runtime tests not run |
| SBA unencrypted writer | JNI `createArchive` delegates to `SbaArchiveWriter`; supports v1 `SBA1/SAE1/SAI1/SAF1` framing, no compression or Zstandard, metadata/index, CRCs, atomic output replacement and cancellation | Implemented path; no reference-parser comparison or build evidence |
| SBA reader | Strict unencrypted v1/v2 header/index/entry/footer validation, UTF-8/path/bounds checks, CRC validation and v2 entry counts | Implemented path; encrypted archives are rejected |
| Unencrypted restore/list | Archive API reads metadata, lists TAR entries and extracts entries; compressed entry decoding is bounded by index-declared TAR size | Implemented path; no device round-trip tests |

## Blocking work

1. **AEGIS/encryption:** `SbaLibaegisCryptoNative.isAvailable()` remains false. Header/index parsing and key-check validation now support the AEGIS method IDs (4 and 5), but AEGIS-256 and AEGIS-128X2 chunked encryption/decryption and fused archive-entry extraction still fail closed. Exact nonce derivation, AAD encoding, chunk framing and tag placement must be recovered and verified; do not invent these values.
2. **Encrypted SBA containers:** encrypted archive creation and encrypted archive index/entry reading are not implemented. The current writer intentionally supports only mode 1 (unencrypted).
3. **Other reference encryption modes:** key-check, KDF/header fields and encrypted payload framing for the reference's other modes are not implemented.
4. **Root service integration:** the AIDL interface, Parcelable request/result/archive/TAR models, `SbaRootService` Binder adapter, Shizuku binding client, archive-info/list methods, async create/restore/direct-TAR operations, cancellation and 30-second bounded metadata/list caches are now present. These are source implementations only; transaction compatibility, Shizuku lifecycle and end-to-end tests remain unverified.
5. **Orphan ELF exports:** `createTarToFdWithWriteStatsRaw`, `compressZstdFdToFdRaw`, and `compressZstdFileToFdRaw` do not have a verified Kotlin declaration/signature in the reference DEX. They remain non-public/unimplemented until their ABI is established.
6. **Full TAR metadata:** sparse-file writing, extended attributes and special filesystem objects are not fully implemented in the SBA source-TAR writer.

## Tests added but not executed here

- Argon2id known-answer and parameter-boundary tests.
- SBA writer/reader framing and footer CRC tests.
- Zstandard-compressed SBA writer/reader test.
- Corrupt-footer rejection test.
- Long-path PAX header test.
- PAX GNU sparse and extended-attribute restoration code paths are present but lack dedicated runtime fixtures.
- Existing generic ustar writer tests.
- SBA task-runner state, progress, result and cancellation tests (using an injectable fake backend).

The repository workflow runs on pushes to `rewrite`. CI run `39259928293` passed unit tests and release assembly for commit `7a566ba0`; after adding the pinned `libaegis` dependency, run `39263180222` passed unit tests and was still assembling the release APK at last inspection. Treat the dependency integration as provisional until that run completes. Do not report full SBA parity until encrypted reference-vs-target archive/restore/corruption tests pass.

## Latest implementation notes

- Corrected the JNI `createArchive` source argument descriptor from `ByteArray[]` to `String[]`, matching the reference call site that supplies source paths.
- Replaced the archive-creation fail-closed stub with the unencrypted v1 writer bridge.
- Added a strict unencrypted archive reader and bounded Zstandard restore/listing paths.
- Corrected TAR stats argument semantics to byte length (not offset), translated restore profiles to the reference permission masks, and added metadata restoration for ownership, xattrs/SELinux labels, symlink timestamps and PAX sparse extents.
- Moved SBA implementation files out of the misplaced `com/bareapps/barebackup/sba/` package and into the pre-existing `com/bareapps/sba/` placeholder tree.

- Added `SbaArchiveTaskRunner` under the existing app-task placeholder with SBA create/restore and direct TAR-restore requests, progress callbacks, cancellation, TAR statistics, and a bounded completed-operation registry. Its backend is injectable for unit tests.
\n\n## AEGIS dependency integration (2026-10-19)\n\n- CMake now fetches upstream `aegis-aead/libaegis` at immutable commit `48d7ddfc5c9182d6b3c8cf284f12483209289cb1`, with `FAVOR_PERFORMANCE=OFF`, and links its `aegis` target into `sba_archive`. This avoids hand-rolling the cryptographic primitive and keeps the upstream constant-time-oriented default.\n- This commit is a dependency/build foundation only. It does not enable `isAvailable()`, and does not change encrypted create/restore behavior.\n- Remaining reverse-engineering blocker: use reference implementation behavior or valid encrypted fixtures to prove the chunk protocol (nonce and AAD byte framing, chunk lengths, tag layout, and output/error contracts) before connecting the primitive to SBA.\n

## Reference call-contract recovery (2026-10-19)

Static decompilation of SwiftBackup 5.1.0 (620) narrowed the AEGIS entry-decryption call contract:

- The caller is `defpackage.z07.a(...)`; for AEGIS methods (enum dispatch cases 5 and 6), it passes the current archive file descriptor, payload offset from the entry record, the destination descriptor, key material from the derived-key holder, archive nonce seed, UTF-8 bytes of the entry name (`oz6Var.a`), the entry chunk-size field (`oz6Var.h`), declared plaintext size (`oz6Var.e`), the destination descriptor integer, and a progress callback.
- `defpackage.xh8.i(...)` dispatches the two AEGIS variants to JNI. `z07.g(...)`/`z07` restore flow seeks the archive `RandomAccessFile` to the payload offset before calling it. The JNI contract is: input FD already positioned at payload, stored ciphertext byte count, output FD, key bytes, 16-byte nonce seed, UTF-8 entry-name bytes, zero-based index-record order, expected compressed/plain-to-AEAD input byte count, archive chunk size, progress callback. The native function returns exactly two longs: consumed/stored ciphertext bytes and produced plaintext bytes. The Kotlin declaration parameter names were updated to reflect these semantics; no JNI implementation has been enabled yet.
- Authentication errors are translated to a reference-level “Failed to authenticate SBA … payload” error. Cancellation is also translated distinctly.
- This recovers the *inputs and output contract*, not the native byte protocol. It does not establish the per-chunk nonce derivation, exact AAD concatenation/endianness, stored chunk record layout, tag placement, final-chunk rules, or flag semantics. Those still require instruction-level native analysis and independent known-answer/interoperability fixtures.

Implementation guardrail: do not implement a guessed protocol or set `isAvailable()` true based on primitive-only round trips. Required acceptance evidence remains reference-created encrypted fixture -> rewrite decrypt, rewrite-created encrypted fixture -> reference decrypt, both AEGIS variants, multi-chunk and partial final chunk, empty entry, tampered tag, wrong key, cancellation, and bounded FD/offset handling. A valid reference encrypted SBA fixture is not present in the uploaded backup/decompilation archives inspected so far.

## AEGIS header/index and key-check implementation (2026-10-19)

- `SbaArchiveReader` reads the full version-sized header (96-byte v1 or 144-byte v2), keeps key-check/salt/nonce-seed fields, validates AEGIS KDF bounds and chunk size, checks AEGIS entry flags (21 uncompressed, 23 Zstandard-compressed), and validates stored size as plaintext/compressed bytes plus 16 bytes per chunk. It can expose the unencrypted SBA index metadata without pretending ciphertext is TAR.
- `SbaArchiveKeyCheck` implements the reference key-check digest: SHA-256(domain || salt || nonceSeed || Argon2id-derived-key), truncated to 16 bytes. Deterministic vectors cover both AEGIS-256 and AEGIS-128X2, including wrong-password rejection.
- The public archive entry list/extract paths explicitly fail closed for encrypted payloads. Key-check success is not a payload decryption success and is not a substitute for chunk-protocol interoperability tests.
- Synthetic encrypted-index parsing coverage was added; it is parser regression coverage, not a reference-generated encrypted archive fixture.
