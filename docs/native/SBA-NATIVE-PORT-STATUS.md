# SBA native port audit — BΛR☰

## Audited reference material

Reference: user-provided SwiftBackup 5.1.0 (620) decompilation ZIP.
Native libraries were inspected from `output/jadx/resources/lib/<abi>/libsba_archive.so`.
JNI declarations were cross-checked against JADX Java and apktool smali under
`output/jadx/sources/com/swiftapps/sba/` and `output/apktool/smali/com/swiftapps/sba/`.

The reference's exported JNI namespace is `com.swiftapps.sba`; the target namespace is
`com.bareapps.sba`. Renaming Kotlin packages alone does not make the original
ELF bind to the target. The current target `sba_archive.cpp` exports target-package names and delegates unencrypted
SBA v1 creation to an independent Kotlin writer. TAR list/extract and Zstandard paths are
partially implemented. AEGIS and full reference-compatible parity are not established.

## Exported symbol audit

Direct `nm -D --defined-only` inspection of all four reference ELFs produced the same
20 exported JNI names in each ABI: `arm64-v8a`, `armeabi-v7a`, `x86`, and `x86_64`.
The DEX/JADX class declarations account for 16 of these exports; four are ELF-only and
must remain unimplemented until their exact descriptors/callers are established.

| # | Reference class | Exported JNI method | Java/smali declaration in decompile |
|---:|---|---|---|
| 1 | SbaArchiveNative | createArchive | Present |
| 2 | SbaLibaegisCryptoNative | decryptAegis128X2ChunkedEntryFdRaw | Present, private native |
| 3 | SbaLibaegisCryptoNative | decryptAegis256ChunkedEntryFdRaw | Present, private native |
| 4 | SbaLibaegisCryptoNative | encryptAegis256ChunkedEntryFdRaw | ELF export present; declaration absent from decompiled class |
| 5 | SbaLibaegisCryptoNative | isAvailable | Present |
| 6 | SbaNativeCrypto | deriveArgon2id | Present |
| 7 | SbaRuntimeNative | version | Present |
| 8 | SbaBareTarNative | createTarToFdWithWriteStatsRaw | ELF export present; declaration absent from decompiled class |
| 9 | SbaBareTarNative | extractAegisArchiveEntry | Present |
| 10 | SbaBareTarNative | extractAegisArchiveEntryFused | Present |
| 11 | SbaBareTarNative | extractTarFromFdRaw | Present, private native |
| 12 | SbaBareTarNative | extractTarFromFdWithStatsRaw | Present, private native |
| 13 | SbaBareTarNative | extractTarZstdFromFdRaw | Present, private native |
| 14 | SbaBareTarNative | listTarEntriesFromFdRaw | Present, private native |
| 15 | SbaBareTarNative | listTarEntriesZstdFromFdRaw | Present, private native |
| 16 | SbaZstdNative | compressZstdBytes | Present |
| 17 | SbaZstdNative | compressZstdFdToFdRaw | ELF export present; declaration absent from decompiled class |
| 18 | SbaZstdNative | compressZstdFileToFdRaw | ELF export present; declaration absent from decompiled class |
| 19 | SbaZstdNative | decompressZstdBytes | Present |
| 20 | SbaZstdNative | decompressZstdFdToFdRaw | Present, private native |

Important distinction: an ELF export is not proof that the decompiled app declares or calls it. The four orphan exports above are recorded in the C++ boundary as fail-closed placeholders because their exact signatures/semantics are not supported by the decompiled class declarations. Do not present their ABI as verified.

## Kotlin declaration parity

- `SbaArchiveNative.createArchive`: argument types match the decompiled reference declaration.
- `SbaLibaegisCryptoNative`: declarations are aligned with the decompiled class; the ELF-only encrypt export is not exposed as a Kotlin method.
- Four ELF-only exports are confirmed by the actual reference class source to be absent from DEX declarations: `encryptAegis256ChunkedEntryFdRaw`, `createTarToFdWithWriteStatsRaw`, `compressZstdFdToFdRaw`, and `compressZstdFileToFdRaw`.
- `SbaRuntimeNative.version`: declaration matches.
- `SbaBareTarNative`: declared methods and parameter/return types match the decompiled reference class.
- `SbaZstdNative`: declared methods and parameter/return types match the decompiled reference class.
- `SbaNativeCrypto.deriveArgon2id`: parameter and return types match the decompiled reference declaration (`([B[BIIII)[B`).
- `SbaNativeProgressListener`: callback descriptors match the decompiled reference (`isCancellationRequested()Z`, `onProgress(JJ)V`).
- `SbaTarEntryInfo`: constructor parameter order/types match the reference (`(Ljava/lang/String;ILjava/lang/String;IJJJZ[Ljava/lang/String;)V`); the target Kotlin class provides the same constructor descriptor.

## Implementation status — not 100% parity

The current `app/src/main/cpp/sba_archive.cpp` has target-package exports for the audited
symbol inventory. Runtime version now returns BΛR☰ identity `BareTar`; AEGIS availability still returns
false although the reference ELF returns true; unsupported operations throw `UnsupportedOperationException`. TAR listing/extraction has
partial independent implementation. Unencrypted SBA v1 framing (SBA1/SAE1/SAI1/SAF1), TAR
payload production, optional Zstandard compression, index/footer CRCs, atomic destination
replacement, and 9-field create diagnostics now have an implementation path. Encrypted archive
creation and AEGIS extraction remain unsupported; runtime parity is not established.

Still required for a truthful feature-parity claim:
1. Recover exact JNI descriptors for every exported symbol from the reference DEX/smali or
   native disassembly, including the four ELF-only exports.
2. Implement or legitimately link audited Argon2id, Zstandard, and AEGIS implementations.
3. Implement the SBA framing/metadata/cryptographic format and TAR semantics from evidence
   and test fixtures, with path traversal protection and correct progress/error mapping.
4. Verify Parcelable/request/result models and Binder transactions separately.
5. Build and run tests for all four ABIs, including real backup/restore and corruption cases.

No Gradle build, native test, or device runtime test is claimed by this audit.


## Refactor rule for obfuscated application classes

Classes shown as `defpackage.*` in JADX are not to be copied under obfuscated names into BΛR☰.
Port their observable contracts into descriptive target names (for example, named Binder interface,
Stub/Proxy, callback, request/result models and TAR metadata models). Preserve the externally
observable behavior: Binder descriptor and transaction numbers, Parcel read/write order,
nullability, default values, exception mapping, callback ordering, operation IDs/cancellation,
cache limits/TTL, native descriptors, archive bytes and error behavior. Class count and internal
structure may differ; behavior must not.

Do not assign stronger semantic names to unknown integer/boolean fields merely by guessing.
Keep neutral names until call sites, CREATOR/writeToParcel code and native consumers establish
their meaning. Each migrated `defpackage` class needs a source mapping and tests against the
reference contract. JNI symbols present in ELF but absent from DEX declarations must be documented
as orphan exports until a caller/signature is established.


## Work ledger — 2026-10-19

This ledger separates API/structure coverage from behavioral parity. A method being declared or exported does not count as implemented parity.

| Scope | Current evidence | Parity status | Remaining proof/work |
|---|---|---|---|
| JNI symbol inventory | 20 reference exports across 4 ABIs; target C++ has symbol stubs for the audited names; `SbaRuntimeNative.version()` returns target identity `BareTar`; reference literal `SwiftTar` is not reused | Inventory mapped; behavior not implied | Build target and inspect symbols for every ABI; AEGIS `isAvailable()` still differs (target false vs reference true) |
| Kotlin/JNI declarations | 16 reference declarations identified; 4 ELF-only exports remain unverified | Partial API mapping | Recover orphan signatures only from call sites/disassembly |
| TAR entry model | Constructor descriptor, type mapping, defensive xattr copy, equality/hash/string behavior ported | Source-level mapping; tests not run | Add contract tests against reference-produced entry fixtures |
| TAR listing | Target parser handles GNU L/K records, bounded POSIX PAX path/linkpath/mtime/size, xattr names, and PAX GNU sparse logical-size metadata | Partial | Full sparse extent-map decoding, device metadata, exact realSize across formats and reference error semantics remain unimplemented/unverified |
| TAR extraction | Target extractor applies GNU L paths and POSIX PAX path/linkpath/mtime/size metadata; symlinks and hardlinks are materialized only after containment/target checks | Partial | GNU sparse, xattr value restoration, symlink timestamp semantics, exact filters/cancellation/errors/stats remain unimplemented/unverified |
| TAR write + stats | createTarToFdWithWriteStatsRaw remains fail-closed; exact orphan signature is not established | Not implemented | Recover signature and byte-level format before implementation |
| Zstandard byte compression | Kotlin declaration is now `external` and binds to the target JNI export, which delegates to zstd-jni `Zstd.compress(input, level)` using the reference descriptor `([BI)[B` | JNI surface and implementation path aligned; parity unverified | Compare reference output across levels, empty input, and malformed input |
| Zstandard byte decompression | Kotlin declaration is now `external` and binds to the target JNI export, which delegates to zstd-jni `Zstd.decompress(input)` using the reference descriptor `([B)[B` | JNI surface and implementation path aligned; parity unverified | Compare output and malformed-input/error semantics with reference; multi-frame/trailing-frame behavior remains unverified |
| Zstandard FD decompression | Kotlin descriptor facade exists; native export delegates into it | Implemented path; parity unverified | Test byte counts, bounded output, cancellation, partial/truncated frames |
| Zstandard FD/file compression exports | Orphan exports still fail closed; semantic signatures are unverified | Not implemented | Recover signatures/callers; do not guess |
| Argon2id | Public Kotlin declaration is native with descriptor `([B[BIIII)[B`; C++ JNI delegates to `SbaArgon2idPortable`, which uses Bouncy Castle and remains host-testable. Parameter validation and known-answer tests cover reference bounds and empty-password/minimum-salt behavior | API surface and implementation path aligned to reference evidence; runtime parity unverified | Build native library and run device/instrumentation tests; compare outputs and exception mapping against reference JNI |
| AEGIS | Availability reports unavailable; encryption/decryption exports fail closed | Not implemented | Identify exact AEGIS variant, chunk framing, nonce/tag/AAD rules from evidence |
| SBA framing/metadata/archive creation | JNI delegates to SbaArchiveWriter for unencrypted v1 framing, source-path TAR generation, POSIX modes, symlinks, optional Zstandard compression, index/footer CRC and diagnostics; SbaArchiveReader validates unencrypted v1/v2 framing and entry bounds; unit tests cover framing, CRC and fail-safe replacement | Implemented path; unverified | Run Gradle/JUnit, parse produced archives with the reference parser, compare byte layout, exercise empty/multi-entry/large-file/filter cases; encryption remains unsupported |
| Four-ABI/device validation | Reference has 4 ABIs; target build/runtime validation not recorded | Unverified | Build all ABIs and run real backup/restore/corruption tests |

### Current measurable summary

- Reference native inventory: **20/20 symbols mapped by name**.
- Reference declaration inventory: **16/20 exports have DEX declarations; 4/20 remain orphan exports**.
- Fully proven end-to-end behavioral parity: **0 areas certified** (no reference-vs-target runtime test suite has been run).
- Source-level implementation exists but is not certified: TAR listing/extraction (including GNU L/K, POSIX PAX and guarded links), TAR entry model, Zstandard descriptor helpers, Argon2id.
- Known incomplete critical paths: TAR writer, SBA archive creation/framing, AEGIS, and orphan Zstandard compression exports.

The **0 certified** figure is a test-evidence status, not a claim that zero code exists. No whole-project percentage is reported because counting methods would inflate progress: a small model getter and full archive creation are not equivalent units.

### Work entry — Zstandard byte methods

Commit: d21ba70f61683f1740d833a838621f4fc8af713d

Changed only SbaZstdNative.kt:
- Replaced the two byte-array external methods with Kotlin implementations using the already-used zstd-jni dependency.
- Compression delegates to Zstd.compress(input, level).
- Decompression streams into a ByteArrayOutputStream, avoiding a caller-supplied uncompressed-size requirement.
- This bypasses the target JNI placeholder for these two methods. It is **not yet counted as reference parity** until compilation and reference comparison tests pass.

Build and runtime tests were not run in this environment. The next implementation unit remains in the requested .so/.kt scope; do not broaden into unrelated app features.


### Work entry — Zstandard descriptor ownership

Commit: ecf182a03d3d2af9b2b714b6e7eedaedc0868ecb

Changed only SbaZstdNative.kt:
- Replaced FileInputStream/FileOutputStream wrappers around a duplicated ParcelFileDescriptor's FileDescriptor with ParcelFileDescriptor.AutoCloseInputStream/AutoCloseOutputStream.
- Made each duplicated descriptor have one explicit stream owner in FD-to-FD compression/decompression paths, including bounded-range decompression.
- This addresses a descriptor lifetime hazard where two independently closeable wrappers could refer to the same duplicated descriptor.
- Behavior/parity tests and Android compilation have not been run; this is a resource-ownership correction, not a claim that the Zstandard FD contract is reference-equivalent.


### Work entry — Argon2id output-size validation

Commit: 0d231f9d8ebe7f020a92197b801022867028ef7f

Changed only SbaNativeCrypto.kt:
- Restricted outputLength to 16..128 bytes.
- This bound is grounded in the reference ELF diagnostic string: "Argon2id outputBytes must be in 16..128".
- Argon2id byte-for-byte parity remains unverified; this change aligns one confirmed validation contract only.

### Verification checkpoint — 2026-10-19

Commits made in this continuation:
- d21ba70f61683f1740d833a838621f4fc8af713d — Zstandard byte-array implementation through zstd-jni.
- ecf182a03d3d2af9b2b714b6e7eedaedc0868ecb — descriptor stream ownership correction.
- e97244d0ae84b3ab2bb01026c6a2b1f62c5c7359 — cleanup hardened when Zstandard decoder setup or processing fails.
- 0d231f9d8ebe7f020a92197b801022867028ef7f — Argon2id output-size bounds aligned to reference.

No GitHub Actions run or combined status checks were returned for the latest commit. Android Gradle/native builds and reference-vs-target runtime tests have not been executed. The archive writer/framing and AEGIS remain hard blockers, not completed work.


## Latest implementation checkpoint — 2026-10-19

- Added bounded parsing of GNU TAR long-name (L) and long-link (K) payload records. Listing applies the next long path/link to the following entry and omits the metadata record itself.
- Extraction consumes GNU metadata records, applies long paths/links, and materializes links only after containment and target checks.
- Long metadata payloads are capped at 16 MiB, require a non-empty NUL/newline-trimmed value, and use positional reads. Offset overflow is rejected.
- Commits: 9b61fd65270797e9794332badb4cf26bba1b826e (GNU long records), cb4ca708550a0d137dd4761eb14df618ef163c42 (offset guard).
- No Android/NDK build or runtime tests have been run. This increment is source-level only and does not change the overall “not ready for CI as a completed port” status.


## POSIX PAX implementation checkpoint — 2026-10-19

- Added length-prefixed PAX record validation with overflow checks and a 16 MiB per-header payload cap.
- PAX `size` overrides are parsed as strict unsigned decimal values and applied consistently to listing, extraction sizing/progress totals, payload reads, and entry offset advancement. Local PAX size state is cleared after the next real entry.
- Listing reports extended-attribute names from `SCHILY.xattr.*` and `LIBARCHIVE.xattr.*` PAX keys; actual xattr values are not yet restored during extraction.
- TAR listing and extraction now consume local (`x`) and global (`g`) PAX headers; `path`, `linkpath`, and decimal/fractional `mtime` are applied to following entries. Empty local attributes mask inherited global attributes; empty global attributes remove them.
- File extraction preserves millisecond precision from PAX `mtime`. Directory metadata currently stores whole seconds only.
- GNU sparse maps, xattr value restoration and exact reference semantics remain open. This is partial parity, not GO.
- Commits: abcfedf85562a01bdb926a21b1475cd1efae0b59 (bounded parser), e13db3ab11b7917fd06c87c644addef6c8b34c3c, 423cc361b14e668c404588a904b743c84cb83f59, 44a8c709d393f828649ce944c3999654a5d4b504, 770492b256f1f3985a31b8c624b28bea453e0429, 29687c3132e33944e2792d38c65ad2942742fe6e and 222aeb83c98c6016b5b1df9bea595ea4a8f10ebf (PAX size and scope fixes), 6e267ad23ac66aabd36efd7edbe87d86f875daa3 (fractional file timestamps).
- No Android/NDK build or runtime tests have been run; source correctness is not yet verified by CI.


## TAR link implementation checkpoint — 2026-10-19

- TAR extraction now materializes relative symlinks only when lexical resolution remains inside the destination root. Absolute targets, backslashes, and parent traversal above root are rejected.
- Hardlinks are limited to an already-extracted regular file under the same root; source parent components are opened without following symlinks, and the target inode is checked with `AT_SYMLINK_NOFOLLOW` before destination replacement.
- GNU long-link and PAX `linkpath` metadata feed the link target. Destination replacement is attempted only after validating target semantics/source.
- Commits: 3fdce91e3a3dc9282d23bb5c9af270335bbbc767 (symlink containment helper), 644d5b6289ba1de679bb79c14c1c00d66a1b1ced (link extraction), 2235b237a480577a8ad884206cd145c96ab3a9ce (validate before replacement).
- These changes have not been compiled or exercised against reference fixtures; behavior is not certified as parity.


## PAX xattr-name inventory checkpoint — 2026-10-19

- TAR entry listing now collects xattr names from `SCHILY.xattr.*` and `LIBARCHIVE.xattr.*` keys, merging local/global PAX attributes with local empty values masking inherited attributes.
- Xattr values are not restored on extraction; GNU sparse maps, device metadata and full native parity remain open.
- Commits: 72bb4df11de09141b9dee6809b82da895157f382 and f4ed2c6e39ca3593d6fa28d108a990c785228504.


## Source checkpoint update — 2026-10-19

- TAR extraction now materializes relative symlinks after rejecting absolute/backslash/NUL targets and targets that lexically escape the extraction root. Hardlinks require an already-extracted regular file within the same root and are checked without following source symlinks.
- PAX local/global `path`, `linkpath`, `mtime`, and `size` values are applied to listing/extraction; local state is consumed after the next real entry. Listing surfaces PAX xattr names, but extraction does not yet restore xattr values.
- Path and symlink target validation now rejects embedded NUL bytes.
- Relevant commits: 3fdce91e3a3dc9282d23bb5c9af270335bbbc767, 644d5b6289ba1de679bb79c14c1c00d66a1b1ced, 2235b237a480577a8ad884206cd145c96ab3a9ce, 70e9e3b8ae028ab3a446bdba1292e8fbd554c4ef, 72bb4df11de09141b9dee6809b82da895157f382, f4ed2c6e39ca3593d6fa28d108a990c785228504.
- No native compile, Android build or runtime parity test has run. The status remains partial and is not GO.


## GNU sparse metadata listing checkpoint — 2026-10-19

- TAR listing now marks entries sparse when PAX `GNU.sparse.map`, `GNU.sparse.realsize`, or `GNU.sparse.size` is present and uses the declared logical size for `realSize` when available.
- This is metadata exposure only. Sparse extent-map parsing and sparse extraction are still not implemented or tested.
- Commit: f4f1bae4e867354136e9b37f0684e677a09007c6.


## Latest source changes — 2026-10-19

- Safe link extraction now rejects embedded NUL in archive paths/targets, checks symlink containment before replacement, and only hardlinks an existing regular file rooted inside the extraction destination.
- PAX `size` is used for physical payload bounds, payload reads and offset stepping; GNU sparse PAX logical-size metadata is surfaced in `SbaTarEntryInfo` (`sparse` and `realSize`) where present.
- Commits: 70e9e3b8ae028ab3a446bdba1292e8fbd554c4ef (NUL path guard), 2235b237a480577a8ad884206cd145c96ab3a9ce (validate link before replacement), f4f1bae4e867354136e9b37f0684e677a09007c6 (sparse metadata listing), 698f7c8f3c3568b31e486cafaf5ae97c963403a0 (logical-size range check).
- No compiler/build/runtime evidence is available yet. Sparse extraction, xattr restoration, TAR writer/stats, SBA framing and AEGIS remain incomplete, so the branch is not GO.


## Work entry — ustar writer hardening and independent validation (2026-10-19)

Commits:
- `80672d90d3604dfacbaad7434437b98a0e15606f` — write to a same-directory temporary file and replace the destination only after the complete archive is closed; clean up the temporary on failure.
- `0770d4718e1e71fd803abaaaa5d936c827613478`, `0214e4b495c71a766d1794c33e96af63368ee5bd`, `67470f00082c77b4fcc94ebfa7fd84ab62b46a11`, `2528ccaa780b91ee77847c92e931afa2ae443605`, `33caf47933242073040f6143dec8338aebaf1eed` — add JUnit coverage for header/checksum/padding/end blocks, long paths, unsafe-path rejection, empty archives and destination preservation; add JUnit dependency and correct the short-path header expectation.

Verification performed in the working environment:
- Compiled the writer with the installed Kotlin compiler and ran a standalone harness covering regular entries, checksum, 512-byte padding, two end blocks, ustar prefix splitting, empty archives, unsafe paths and preservation of an existing destination when validation fails.
- The system `tar` utility successfully listed the generated archive and extracted the expected three payload bytes (`1, 2, 3`).

Limits:
- This standalone harness is not the Gradle/JUnit task and does not establish Android/NDK build success.
- The ustar writer remains a generic TAR writer and is not wired to `SbaArchiveNative.createArchive`.
- Reference ELF strings confirm versioned AEGIS protocol labels (`SBA1-AEGIS256-entry-chunk-nonce-v1`, `SBA1-AEGIS256-entry-chunk-aad-v1`, `SBA1-AEGIS128X2-entry-chunk-nonce-v1`, and `SBA1-AEGIS128X2-entry-chunk-aad-v1`), plus error paths for chunk sizes and archive framing. These labels are useful evidence but do not alone define the nonce derivation, AAD bytes, chunk framing, key/nonce lengths, or tag placement; AEGIS remains unimplemented until those details are recovered and tested against fixtures.
- CI has not been run for these commits. Overall status remains NOT GO.


## Work entry — reject ambiguous ustar paths (2026-10-19)

Commits:
- `aad862e5868676a72563bc28a2783aeb86015b7b` — reject duplicate entry names before creating the temporary archive.
- `3f10904d74bb446533b3177f8153aa86f47a8a63` — reject embedded NUL characters in entry paths.
- `ef5f2c77a7d41fee7811064b369d94a023c5b606` — add regression coverage for NUL-containing paths, duplicate entry names, and preservation of an existing destination.

Validation performed after these changes:
- Recompiled the writer with the installed Kotlin compiler and reran the standalone harness.
- Confirmed NUL-containing paths and duplicate entry names are rejected and the existing destination bytes remain unchanged.
- Rechecked interoperability using the system `tar` utility; it listed the archive and extracted payload bytes `1, 2, 3`.

This remains generic ustar hardening only. It does not complete SBA container framing, AEGIS, Argon2id JNI compatibility, or end-to-end backup/restore, and does not change the overall NOT GO status.


## Work entry — Argon2id contract regression tests (2026-10-19)

Commits:
- `43a7cdbf77b4f19e49cbe1319caa4905fd9d888c` — add tests for deterministic output, salt sensitivity, output length, and invalid-parameter rejection.
- `ac25ed26db0c0034680386f718da08a7a3202500` — remove an unused test import.
- `08775bb73c4d0616766b1263e5e93390754c807f` — pin the test to a fixed 32-byte output vector.

Independent local check:
- Compiled the current Argon2id implementation shape against Bouncy Castle 1.80 using the installed Kotlin compiler.
- For password UTF-8 `correct horse battery staple`, salt bytes `00..0f`, Argon2id v=19, iterations=2, memory=32 KiB, parallelism=1, output length=32, Bouncy Castle produced `1e5579a1bb8d903890049babb3a95c6076d72c05490b19f5efd7a2fe3ec6b924`.
- Python argon2-cffi independently produced the same vector.

Limitations:
- This checks the Kotlin/Bouncy Castle implementation against an independent Argon2 implementation; it does not prove byte-for-byte equivalence to the reference native Argon2id wrapper for all parameter combinations.
- The repository's Gradle/JUnit task has not been run. The JNI symbol with the same method name remains a fail-closed placeholder, while the Kotlin API currently performs the KDF in-process.
- SBA framing, AEGIS chunk encryption/decryption, and backup/restore integration remain incomplete; overall status is still NOT GO.

## Work entry — fixture correlation and Argon2 validation overflow (2026-10-19)

Commits:
- `12a2c28ad8b9fc0f6489f5ac3af1907623157297` — record the observed `SAI1` JSON payload byte length and the single-fixture correlation with bytes `00 00 01 22`.
- `53ac8d18ea8f875d663d745d4dd9507dbfbf6050` — validate the Argon2 lane-memory lower bound using `Long` arithmetic, preventing `8 * parallelism` from overflowing a signed `Int`.
- `9ead059c13fc308ee20f23f43c72a9301b546de4` — add a regression test for `parallelism = Int.MAX_VALUE`.

Local validation:
- Compiled a standalone Kotlin harness against Bouncy Castle 1.80.
- Confirmed the existing fixed Argon2id vector remains unchanged.
- Confirmed the overflowing parallelism input is rejected before invoking the KDF.
- Re-examined the supplied `.dat` fixture: its JSON payload begins at `0x0460`, is 290 bytes, and ends at `0x0581`; the preceding bytes `0x045C..0x045F` encode `0x122` if read as big-endian. This is documented as a hypothesis supported by one fixture, not a generalized parser rule.

Limits:
- The Gradle/JUnit suite and Android/NDK builds have not been run.
- The SBA framing and footer are still not fully understood; AEGIS and archive creation remain fail-closed.
- The branch remains **NOT GO** until reference-derived archive round-trip, cryptographic vectors, all-ABI builds and restore/corruption tests pass.



## Work entry — unencrypted SBA v1 writer (2026-10-19)

- Corrected `SbaArchiveNative.createArchive` source arguments from `ByteArray[]` to `String[]`, matching the reference call site, which passes source paths.
- Replaced the archive-creation fail-closed JNI stub with a bridge to `SbaArchiveWriter`.
- Added unencrypted v1 SBA framing for `SBA1`, `SAE1`, `SAI1`, and `SAF1`, including index records, CRCs, source-directory/file TAR payloads, optional Zstandard compression, progress cancellation, and atomic destination replacement.
- Added SbaArchiveReader for strict unencrypted v1/v2 header/index/entry/footer validation, UTF-8 and path safety checks, bounds/overflow checks, and CRC verification.
- Exposed SBA magic detection, archive-info reading, and unencrypted entry extraction through SbaArchiveNative.
- Added unit coverage for uncompressed and Zstandard-compressed writer/reader output, footer CRC validation, and preserving an existing destination when encrypted mode is rejected.
- The writer explicitly rejects encrypted mode; this does not implement AEGIS or encrypted archive parity.
- No Gradle/JUnit or Android/NDK build was run for these commits. Treat the new path as implemented but unverified until CI and reference-parser round-trip tests pass.

- TAR source generation retains POSIX permission bits, modification times, directories, regular files, and symbolic links without following them. Unsupported special file types and overlong symlink targets fail explicitly rather than being silently omitted.

## Work entry — TAR extraction flags and diagnostics (2026-10-19)

- Corrected the stats entry point to interpret its long argument as the reference TAR byte length (not an offset); it now validates the byte length against regular-file size and starts parsing at offset zero.
- Implemented reference-order 20-element TAR stats with parsed entry/type counts, regular-file byte totals, skipped-entry count, and measured parser/copy timing fields. Counters that are not instrumented remain zero rather than invented.
- Applied the caller's permission mask to extracted regular files and directories instead of ignoring the native flags.
- This remains unverified on Android/NDK until the Gradle/JUnit and device restore tests run.
