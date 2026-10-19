# SBA native port audit — BΛR☰

## Audited reference material

Reference: user-provided SwiftBackup 5.1.0 (620) decompilation ZIP.
Native libraries were inspected from `output/jadx/resources/lib/<abi>/libsba_archive.so`.
JNI declarations were cross-checked against JADX Java and apktool smali under
`output/jadx/sources/com/swiftapps/sba/` and `output/apktool/smali/com/swiftapps/sba/`.

The reference's exported JNI namespace is `com.swiftapps.sba`; the target namespace is
`com.bareapps.barebackup.sba`. Renaming Kotlin packages alone does not make the original
ELF bind to the target. The current target `sba_archive.cpp` exports the corresponding
target-package names, but its algorithm methods are fail-closed placeholders. It is not
feature parity.

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
| 8 | SbaSwiftTarNative | createTarToFdWithWriteStatsRaw | ELF export present; declaration absent from decompiled class |
| 9 | SbaSwiftTarNative | extractAegisArchiveEntry | Present |
| 10 | SbaSwiftTarNative | extractAegisArchiveEntryFused | Present |
| 11 | SbaSwiftTarNative | extractTarFromFdRaw | Present, private native |
| 12 | SbaSwiftTarNative | extractTarFromFdWithStatsRaw | Present, private native |
| 13 | SbaSwiftTarNative | extractTarZstdFromFdRaw | Present, private native |
| 14 | SbaSwiftTarNative | listTarEntriesFromFdRaw | Present, private native |
| 15 | SbaSwiftTarNative | listTarEntriesZstdFromFdRaw | Present, private native |
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
- `SbaSwiftTarNative`: declared methods and parameter/return types match the decompiled reference class.
- `SbaZstdNative`: declared methods and parameter/return types match the decompiled reference class.
- `SbaNativeCrypto.deriveArgon2id`: parameter and return types match the decompiled reference declaration (`([B[BIIII)[B`).
- `SbaNativeProgressListener`: callback descriptors match the decompiled reference (`isCancellationRequested()Z`, `onProgress(JJ)V`).
- `SbaTarEntryInfo`: constructor parameter order/types match the reference (`(Ljava/lang/String;ILjava/lang/String;IJJJZ[Ljava/lang/String;)V`); the target Kotlin class provides the same constructor descriptor.

## Implementation status — not 100% parity

The current `app/src/main/cpp/sba_archive.cpp` has target-package exports for the audited
symbol inventory. Runtime version reports a target build marker; AEGIS availability returns
false; unsupported operations throw `UnsupportedOperationException`. No archive algorithm
is implemented by those placeholders. They are diagnostic scaffolding, not a backup engine.

Still required for a truthful feature-parity claim:
1. Recover exact JNI descriptors for every exported symbol from the reference DEX/smali or
   native disassembly, including the three ELF-only exports.
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
| JNI symbol inventory | 20 reference exports across 4 ABIs; target C++ has symbol stubs for the audited names | Inventory mapped; behavior not implied | Build target and inspect symbols for every ABI |
| Kotlin/JNI declarations | 16 reference declarations identified; 4 ELF-only exports remain unverified | Partial API mapping | Recover orphan signatures only from call sites/disassembly |
| TAR entry model | Constructor descriptor, type mapping, defensive xattr copy, equality/hash/string behavior ported | Source-level mapping; tests not run | Add contract tests against reference-produced entry fixtures |
| TAR listing | Target native parser exists and constructs target entry objects | Partial | Compare PAX/GNU/sparse/link/xattr/device cases against reference |
| TAR extraction | Target native extraction exists; path hardening and offset bounds have recent fixes | Partial | Compare file bytes, permissions, links, filters, cancellation, errors, and stats |
| TAR write + stats | createTarToFdWithWriteStatsRaw remains fail-closed; exact orphan signature is not established | Not implemented | Recover signature and byte-level format before implementation |
| Zstandard byte compression | SbaZstdNative.compressZstdBytes now calls zstd-jni Zstd.compress(input, level) rather than the target JNI placeholder | Implemented path; parity unverified | Compare reference output/decompression across levels, empty input, malformed input |
| Zstandard byte decompression | SbaZstdNative.decompressZstdBytes now decodes through ZstdInputStream | Implemented path; parity unverified | Compare multi-frame/trailing-frame/error semantics with reference |
| Zstandard FD decompression | Kotlin descriptor facade exists; native export delegates into it | Implemented path; parity unverified | Test byte counts, bounded output, cancellation, partial/truncated frames |
| Zstandard FD/file compression exports | Orphan exports still fail closed; semantic signatures are unverified | Not implemented | Recover signatures/callers; do not guess |
| Argon2id | Kotlin Bouncy Castle Argon2id implementation exists | Implementation exists; parity unverified | Known-answer vectors and reference-derived parameter/output comparison |
| AEGIS | Availability reports unavailable; encryption/decryption exports fail closed | Not implemented | Identify exact AEGIS variant, chunk framing, nonce/tag/AAD rules from evidence |
| SBA framing/metadata/archive creation | SbaArchiveNative.createArchive is declared; native operation is fail-closed | Not implemented | Recover archive layout, metadata serialization, index/footer and error behavior |
| Four-ABI/device validation | Reference has 4 ABIs; target build/runtime validation not recorded | Unverified | Build all ABIs and run real backup/restore/corruption tests |

### Current measurable summary

- Reference native inventory: **20/20 symbols mapped by name**.
- Reference declaration inventory: **17/20 exports have DEX declarations; 3/20 remain orphan exports**.
- Fully proven end-to-end behavioral parity: **0 areas certified** (no reference-vs-target runtime test suite has been run).
- Source-level implementation exists but is not certified: TAR listing/extraction, TAR entry model, Zstandard descriptor helpers, Argon2id.
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
