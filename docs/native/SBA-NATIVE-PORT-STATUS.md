# SBA native port status (BΛR☰)

## Source of truth

The reference signatures were audited from the SwiftBackup 5.1.0 (620) decompilation at
`output/jadx/sources/com/swiftapps/sba/` and corresponding smali. The reference JNI
namespace is `com.swiftapps.sba`; the BΛR☰ target namespace is deliberately
`com.bareapps.barebackup.sba`. The reference `libsba_archive.so` therefore cannot be
used unchanged as the target implementation.

## Current implementation state

- `app/src/main/cpp/CMakeLists.txt` builds a separate `sba_archive` shared library
  alongside the existing `native-lib`.
- `app/src/main/cpp/sba_archive.cpp` exports target-package JNI symbols and a runtime
  version probe. The AEGIS capability probe returns false until a real implementation
  is linked.
- Unsupported algorithm calls throw `UnsupportedOperationException`; they do not return
  fabricated success values.
- Archive creation, TAR listing/extraction, Zstandard, Argon2id, and AEGIS are **not
  implemented** by this initial JNI boundary. This is not feature parity and must not be
  released as a working backup engine.

## Exact reference method inventory

- `SbaArchiveNative.createArchive`
- `SbaLibaegisCryptoNative.isAvailable`,
  `decryptAegis128X2ChunkedEntryFdRaw`,
  `decryptAegis256ChunkedEntryFdRaw`
- `SbaNativeCrypto.deriveArgon2id`
- `SbaRuntimeNative.version`
- `SbaSwiftTarNative.extractTarFromFdRaw`,
  `extractTarFromFdWithStatsRaw`, `extractTarZstdFromFdRaw`,
  `listTarEntriesFromFdRaw`, `listTarEntriesZstdFromFdRaw`,
  `extractAegisArchiveEntry`, `extractAegisArchiveEntryFused`
- `SbaZstdNative.decompressZstdFdToFdRaw`, `compressZstdBytes`,
  `decompressZstdBytes`

The decompiled reference `SbaLibaegisCryptoNative` exposes two raw decrypt methods,
not an encrypt method. The target wrapper currently has an additional encryption
declaration; that declaration must be justified by an independent BΛR☰ design and tests,
not assumed to be reference-compatible.

## Required next work

1. Vendor or build maintained implementations of Zstandard, Argon2id, and AEGIS from
   legitimate source packages, with pinned versions, license notices, and known-answer tests.
2. Implement TAR parsing/extraction with path traversal protection, sparse-file and
   metadata handling, cancellation, progress callbacks, and error mapping.
3. Reconstruct the archive metadata/cryptographic framing from observed behavior and
   independent test fixtures. Do not infer binary format solely from JNI method names.
4. Add instrumentation/unit tests for every JNI method and all supported ABIs.
5. Run the Android Gradle build and device/emulator backup/restore tests before claiming
   functionality.

## Verification

No Android build or runtime test is claimed by this document. A successful native library
link alone would only verify packaging and symbol resolution, not archive correctness.
