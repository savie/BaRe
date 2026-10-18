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

Important distinction: an ELF export is not proof that the decompiled app declares or calls it. The three orphan exports above are recorded in the C++ boundary as fail-closed placeholders because their exact signatures/semantics are not supported by the decompiled class declarations. Do not present their ABI as verified.

## Kotlin declaration parity

- `SbaArchiveNative.createArchive`: argument types match the decompiled reference declaration.
- `SbaLibaegisCryptoNative`: declarations are aligned with the decompiled class; the ELF-only encrypt export is not exposed as a Kotlin method.
- `SbaRuntimeNative.version`: declaration matches.
- `SbaSwiftTarNative`: declared methods and parameter/return types match the decompiled reference class.
- `SbaZstdNative`: declared methods and parameter/return types match the decompiled reference class.
- `SbaNativeCrypto.deriveArgon2id`: declaration still requires descriptor-level cross-check against smali before calling it ABI-verified.
- `SbaNativeProgressListener` and `SbaTarEntryInfo`: constructors, fields, and callback descriptors require exact verification before the target native algorithms can use them.

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
