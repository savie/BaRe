# Original `libsba_archive.so` compatibility audit

This inventory is derived from the checked-in original `bare-implementation/lib/*/libsba_archive.so` binaries, not from assumptions about a replacement implementation. The candidate workflow uses `llvm-readelf` and `strings` on each original ABI and uploads the full comparison.

## JNI exports observed in the original

The original x86_64 binary exports 20 `Java_...` JNI symbols. Candidate exports must be compared against the original per ABI; an ordinary successful compile is not a compatibility result.

Original exports:

- `SbaArchiveNative.createArchive`
- `SbaLibaegisCryptoNative.decryptAegis128X2ChunkedEntryFdRaw`
- `SbaLibaegisCryptoNative.decryptAegis256ChunkedEntryFdRaw`
- `SbaLibaegisCryptoNative.encryptAegis256ChunkedEntryFdRaw`
- `SbaLibaegisCryptoNative.isAvailable`
- `SbaNativeCrypto.deriveArgon2id`
- `SbaRuntimeNative.version`
- `SbaSwiftTarNative.createTarToFdWithWriteStatsRaw`
- `SbaSwiftTarNative.extractAegisArchiveEntry`
- `SbaSwiftTarNative.extractAegisArchiveEntryFused`
- `SbaSwiftTarNative.extractTarFromFdRaw`
- `SbaSwiftTarNative.extractTarFromFdWithStatsRaw`
- `SbaSwiftTarNative.extractTarZstdFromFdRaw`
- `SbaSwiftTarNative.listTarEntriesFromFdRaw`
- `SbaSwiftTarNative.listTarEntriesZstdFromFdRaw`
- `SbaZstdNative.compressZstdBytes`
- `SbaZstdNative.compressZstdFdToFdRaw`
- `SbaZstdNative.compressZstdFileToFdRaw`
- `SbaZstdNative.decompressZstdBytes`
- `SbaZstdNative.decompressZstdFdToFdRaw`

## Binary strings that establish format/behavior clues

The original binary contains these literal format/domain strings:

- `SBA1`
- `SBA1-AEGIS128X2-entry-chunk-aad-v1`
- `SBA1-AEGIS128X2-entry-chunk-nonce-v1`
- `SBA1-AEGIS256-entry-chunk-aad-v1`
- `SBA1-AEGIS256-entry-chunk-nonce-v1`
- `SBA_SWIFTTAR`
- `SwiftTar`

It also contains error strings for malformed/truncated Zstandard frames, SBA metadata/index bounds, byte-count mismatches, cancellation, AEGIS authentication failure, unsafe TAR paths, PAX records, sparse extents, xattrs, symlinks/hardlinks, and output metadata restoration. These indicate that a replacement needs substantially more than basic TAR listing and Zstandard byte-array operations.

## Compatibility gaps in the current C++ candidate

The current candidate intentionally remains isolated. It does not yet implement these original exports:

- `SbaArchiveNative.createArchive`
- `SbaLibaegisCryptoNative.decryptAegis128X2ChunkedEntryFdRaw`
- `SbaLibaegisCryptoNative.decryptAegis256ChunkedEntryFdRaw`
- `SbaLibaegisCryptoNative.encryptAegis256ChunkedEntryFdRaw`
- `SbaLibaegisCryptoNative.isAvailable`
- `SbaSwiftTarNative.createTarToFdWithWriteStatsRaw`
- `SbaSwiftTarNative.extractAegisArchiveEntry`
- `SbaSwiftTarNative.extractAegisArchiveEntryFused`
- `SbaSwiftTarNative.extractTarFromFdRaw`
- `SbaSwiftTarNative.extractTarFromFdWithStatsRaw`
- `SbaSwiftTarNative.extractTarZstdFromFdRaw`
- `SbaZstdNative.compressZstdFdToFdRaw`
- `SbaZstdNative.compressZstdFileToFdRaw`

The workflow emits `missing-original-jni-exports.txt` and `extra-candidate-jni-exports.txt` per ABI. The candidate must have no extra exports that are not grounded in the original contract, and every original export must be implemented with matching signature and behavior before integration.

## Next reverse-engineering priorities

1. Confirm `SbaRuntimeNative.version()` returns `SwiftTar` on all four original ABIs; x86_64 disassembly and its referenced string establish this implementation.
2. Map all remaining JNI exports to exact Smali descriptors and callers, including exports not present in the current decompiled Java wrapper.
3. Recover the `SBA1` header/index layout and creation parameters from `createArchive` call sites and the original binary.
4. Recover AEGIS chunk framing using the observed AAD/nonce domain strings, then verify with original-generated fixtures and known-answer tests.
5. Implement TAR create/extract behavior only after matching the original's path validation, sparse file, PAX, xattr, metadata, progress, and return-array semantics.
