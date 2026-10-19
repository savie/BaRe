# BΛR☰ SBA implementation status

Reference: user-provided SwiftBackup 5.1.0 (620) APK/decompilation and the feature-parity spec.
Target branch: `rewrite`.
Last reviewed: 2026-10-19.

## Current verdict

**NOT GO for proven reference parity yet.** The rewrite now creates and reads v1/v2 SBA archives with AEGIS-256 or AEGIS-128X2 chunk encryption, derives and checks reference-compatible Argon2id keys, authenticates v2 index metadata, decrypts encrypted entries to private staging files, and validates the resulting TAR before reporting encrypted creation as successful. The native implementation has protocol and primitive self-tests. A real reference-generated encrypted v2 .sba container was found inside the supplied backup archive. Its header, footer CRC, index CRC, entry offsets, stored sizes, and v2 TAR counts validate structurally. Its password is not present in the supplied artifacts, so payload decryption and full two-way interoperability remain unproven. Do not claim full encryption parity until those acceptance tests pass.

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
| Argon2id/key check | `SbaNativeCrypto.deriveArgon2id` delegates to the Bouncy Castle portable implementation; AEGIS key-check domains and v1/v2 index-MAC key derivation follow the decompiled reference | Known-answer and synthetic v2 index-MAC/tamper tests are present; external encrypted-fixture interoperability remains unverified |
| Zstandard byte operations | JNI byte compression/decompression delegates to zstd-jni | API path exists; error and frame-parity tests not run |
| TAR listing/extraction | Native parser supports ustar, PAX, GNU long-name records, sparse metadata parsing, safe path handling, symlink/hardlink validation, cancellation and progress | Source implementation exists; Android tests not run |
| TAR extraction stats | 20-element stats array reports TAR byte length, parsed entry/type counts, regular-file bytes, skipped-entry estimate and measured timings; Basic/Fidelity/RootFidelity profiles map to the exact reference TAR mode masks (511/468/384 decimal, equivalent to octal 0777/0724/0600). Permission, timestamp, ownership, xattr/SELinux and PAX sparse-map restoration are implemented where metadata is available | Low-level read/write counters remain uninstrumented; GNU sparse PAX 1.0 and old-GNU sparse encodings remain unsupported; exact parity not verified |
| TAR payload generation for SBA creation | Streams source files/directories, preserves POSIX modes and timestamps, emits symlinks, writes PAX records for long paths/targets, large sizes and subsecond/negative timestamps; fails on unsupported special files | Unit test source exists; runtime tests not run |
| SBA writer | SbaArchiveWriter emits v1/v2 SBA1/SAE1/SAI1/SAF1 framing, optional Zstandard, metadata/index, CRCs, atomic replacement and cancellation; v2 writes TAR counts and encrypted v2 writes an authenticated index MAC; task-runner creation defaults to v2 | Source path implemented; current CI is queued; no known-password reference payload comparison yet |
| SBA reader | Strict v1/v2 header/index/entry/footer validation, reference entry-flag mapping, UTF-8/path/bounds checks, CRC validation, v2 entry counts, AES/AEAD stored-size parsing, AEGIS chunk-size checks, password key-check and v2 encrypted index-MAC validation | Parser and password/MAC verification implemented; AEGIS entry access works through authenticated chunk decoding; reference fixture interoperability still unverified |
| Unencrypted restore/list | Archive API reads metadata, lists TAR entries and extracts entries; compressed entry decoding is bounded by index-declared TAR size | Implemented path; no device round-trip tests |

## Blocking work

1. **Reference interoperability proof:** a real reference-generated encrypted v2 container is now located in the supplied backup archive and its structural fields/CRCs are validated. The password is not present in the artifacts, so it cannot yet serve as a plaintext oracle. Obtain the archive password or another reference fixture with a known test password, then test reference-created -> rewrite decrypt and rewrite-created -> reference decrypt.
2. **v2 encrypted runtime verification:** the writer now emits v2 containers, writes logical TAR entry/file/directory counts, computes the reference v2 index MAC, patches it into the header, and verifies the MAC before moving the output. This code still needs successful CI plus Android runtime verification.
3. **Other encryption modes:** the reader now validates headers and stored sizes for reference methods 1–3, but decryption/encryption for 7zAES, AES-GCM, and AES-GCM-SIV is not implemented.
4. **Runtime/device verification:** CI validates unit tests and release assembly only; Shizuku lifecycle, private-temp staging, native chunk execution, cancellation, restore, and real-device round trips still need Android runtime coverage.
5. **Orphan ELF exports:** createTarToFdWithWriteStatsRaw, compressZstdFdToFdRaw, and compressZstdFileToFdRaw do not have a verified Kotlin declaration/signature in the reference DEX. They remain non-public/unimplemented until their ABI is established.
6. **Full TAR metadata:** sparse-file writing, extended attributes and special filesystem objects are not fully implemented in the SBA source-TAR writer.

## Tests added but not executed here

- Argon2id known-answer and parameter-boundary tests.
- SBA writer/reader framing and footer CRC tests, including reference entry flags for encrypted and unencrypted methods.
- Synthetic encrypted index parsing for AEGIS-256, AES-GCM, AES-GCM-SIV, and AES-CBC compatibility header variants.
- Sanitized two-entry v2 regression fixture using entry offsets, chunk sizes, flags, and TAR counts observed in the real reference backup container.
- Unencrypted v2 writer regression test for 144-byte header, versioned footer, and logical TAR counts.
- AEGIS nonce/AAD byte-layout known-answer tests, upstream libaegis AEGIS-128X2 primitive vector, and native startup self-tests.
- Caller-supplied AEGIS key-check verification before encrypted entry access.
- Zstandard-compressed SBA writer/reader test.
- Corrupt-footer rejection test.
- Long-path PAX header test.
- PAX GNU sparse and extended-attribute restoration code paths are present but lack dedicated runtime fixtures.
- Existing generic ustar writer tests.
- SBA task-runner state, progress, result and cancellation tests (using an injectable fake backend).

The repository workflow runs on pushes to rewrite. The last verified successful build before the recent protocol and parser hardening was run 39272778766. The current head 794b53b6 has CI run 39286384378 queued at last inspection. Do not report full SBA parity until current CI succeeds and encrypted reference-vs-target archive/restore/corruption tests pass.

## Latest implementation notes

- Corrected the JNI `createArchive` source argument descriptor from `ByteArray[]` to `String[]`, matching the reference call site that supplies source paths.
- Replaced the archive-creation fail-closed stub with the unencrypted v1 writer bridge.
- Added a strict unencrypted archive reader and bounded Zstandard restore/listing paths.
- Corrected TAR stats argument semantics to byte length (not offset), translated restore profiles to the reference permission masks, and added metadata restoration for ownership, xattrs/SELinux labels, symlink timestamps and PAX sparse extents.
- Moved SBA implementation files out of the misplaced `com/bareapps/barebackup/sba/` package and into the pre-existing `com/bareapps/sba/` placeholder tree.

- Added `SbaArchiveTaskRunner` under the existing app-task placeholder with SBA create/restore and direct TAR-restore requests, progress callbacks, cancellation, TAR statistics, and a bounded completed-operation registry. Its backend is injectable for unit tests.
\n\n## AEGIS dependency integration (2026-10-19)\n\n- CMake fetches upstream `aegis-aead/libaegis` at immutable commit `48d7ddfc5c9182d6b3c8cf284f12483209289cb1`, with `FAVOR_PERFORMANCE=OFF`, and links its `aegis` target into `sba_archive`.\n- The independent chunk protocol and JNI streaming implementation live in `sba_aegis.cpp`; startup availability requires primitive, known-answer, and protocol self-tests. Reference-fixture interoperability remains the final proof gap.\n

## Reference call-contract recovery (2026-10-19)

Static decompilation of SwiftBackup 5.1.0 (620) narrowed the AEGIS entry-decryption call contract:

- The caller is `defpackage.z07.a(...)`; for AEGIS methods (enum dispatch cases 5 and 6), it passes the current archive file descriptor, payload offset from the entry record, the destination descriptor, key material from the derived-key holder, archive nonce seed, UTF-8 bytes of the entry name (`oz6Var.a`), the zero-based index-record order (`oz6Var.h`) and archive chunk size (`s07Var.n`), declared plaintext size (`oz6Var.e`), the destination descriptor integer, and a progress callback.
- `defpackage.xh8.i(...)` dispatches the two AEGIS variants to JNI. `z07.g(...)`/`z07` restore flow seeks the archive `RandomAccessFile` to the payload offset before calling it. The JNI contract is: input FD already positioned at payload, stored ciphertext byte count, output FD, key bytes, 16-byte nonce seed, UTF-8 entry-name bytes, zero-based index-record order, expected compressed/plain-to-AEAD input byte count, archive chunk size, progress callback. The native function returns exactly two longs: consumed/stored ciphertext bytes and produced plaintext bytes. The Kotlin declaration parameter names and private JNI implementations now reflect these semantics.
- Authentication errors are translated to a reference-level “Failed to authenticate SBA … payload” error. Cancellation is also translated distinctly.
- The ARM64 path and string references establish method-specific nonce/AAD domains, field order and byte order, per-chunk tag placement, and the stored-size formula. These are implemented in the rewrite. A real reference-created encrypted v2 archive is present as `com.bare/20260919-184357-CO/com.bare.dat` inside the user-provided `backup_swift_com.bare.zip`; it confirms the v2 header/index/entry layout and CRCs, but its password is not included, so its encrypted payload cannot yet serve as a decrypt interoperability vector.

Implementation guardrail: `isAvailable()` is gated by primitive and protocol known-answer self-tests, but those are not interoperability proof. Required acceptance evidence remains reference-created encrypted fixture -> rewrite decrypt, rewrite-created encrypted fixture -> reference decrypt, both AEGIS variants, multi-chunk and partial final chunk, empty entry, tampered tag, wrong key, cancellation, and bounded FD handling. A reference encrypted SBA v2 fixture is present in backup_swift_com.bare.zip as com.bare/20260919-184357-CO/com.bare.dat; the password is not included.

## AEGIS header/index and key-check implementation (2026-10-19)

- `SbaArchiveReader` reads the full version-sized header (96-byte v1 or 144-byte v2), keeps key-check/salt/nonce-seed fields, validates AEGIS KDF bounds and chunk size, checks AEGIS entry flags (21 uncompressed, 23 Zstandard-compressed), and validates stored size as plaintext/compressed bytes plus 16 bytes per chunk. It can expose the unencrypted SBA index metadata without pretending ciphertext is TAR.
- `SbaArchiveKeyCheck` implements the reference key-check digest: SHA-256(domain || salt || nonceSeed || Argon2id-derived-key), truncated to 16 bytes. Deterministic vectors cover both AEGIS-256 and AEGIS-128X2, including wrong-password rejection.
- Encrypted entry list/extract paths authenticate the supplied or password-derived key, verify the v2 index MAC where applicable, decrypt chunks into app-private staging, and then invoke the existing TAR parser/extractor. Key-check success is not a substitute for chunk-protocol interoperability tests.
- TAR, Zstandard, encrypted-payload, and decrypted-payload staging now use the configured app-private temporary directory (or the platform temp directory for direct API callers). If private/platform staging cannot be created, operations fail closed rather than writing plaintext beside a user-selected archive on shared storage.
- The reference-shaped `SbaBareTarNative.extractAegisArchiveEntry` and `extractAegisArchiveEntryFused` facades now validate the supplied offsets/sizes/order/header parameters and route through that same authenticated staging path. The “fused” facade is functionally compatible but currently uses staging rather than a single-pass fused native extractor.
- Synthetic encrypted-index parsing coverage was added; it is parser regression coverage, not a reference-generated encrypted archive fixture.


## AEGIS chunk protocol recovered from ARM64 reference (2026-10-19)

- Per-chunk nonce is SHA-256(domain || nonceSeed[16] || BE64(entryOrder) || BE32(UTF-8 entry-name length) || entry-name bytes || BE64(chunkIndex)). AEGIS-256 uses all 32 digest bytes; AEGIS-128X2 uses the first 16 bytes. The name-length prefix was recovered from the reference SHA-256 input builder in the ARM64 ELF.
- Per-chunk AAD is domain || BE64(entryOrder) || BE32(UTF-8 entry-name length) || entry-name bytes || BE64(chunkIndex) || BE64(current plaintext chunk length). The four-byte field is the encoded entry-name length, not reserved zero bytes; the last scalar is the current chunk length (shortened for the final chunk), not the running offset.
- Ciphertext is stored followed by its 16-byte detached tag for each chunk. The last chunk length is derived from the declared compressed/plain payload size; stored size is payload size plus 16 bytes per chunk.
- These byte layouts are encoded in `SbaAegisChunkProtocol.kt` and `sba_aegis.cpp`. The unit tests validate the derived byte framing and SHA-256 outputs, but those tests are not a substitute for a real SwiftBackup encrypted archive fixture.
- Native AEGIS entry methods are exposed through private JNI entrypoints and stable Kotlin wrappers. Archive creation performs a post-write decrypt/list pass; if that verification fails, the newly created output is deleted rather than left behind as an apparently valid archive.
- Native startup availability now requires round-trip/tamper tests for both AEGIS variants, the upstream AEGIS-128X2 known-answer vector, the RFC 10032 AEGIS-256 16-byte-tag vector (Appendix A.3.4), and hard-coded nonce/AAD protocol vectors. This verifies primitive correctness and target framing consistency, not external archive interoperability.
- SBA entry flags now follow reference us2.q(): unencrypted entries use 1/3, AES-CBC compatibility uses base flags OR 12, and AEAD methods use base flags OR 20. Entry-name validation also matches the reference's acceptance of non-empty whitespace-only names.
- Caller-supplied keys are checked against the archive key-check and v2 index MAC before encrypted entry processing. Encrypted restore staging is configured to use the app-private cache directory through the root service.
