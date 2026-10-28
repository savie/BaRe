# Original `libsba_archive.so` compatibility audit

This inventory is derived from the checked-in original `bare-implementation/lib/*/libsba_archive.so` binaries, not from assumptions about a replacement implementation. The candidate workflow uses `llvm-readelf` and `strings` on each original ABI and uploads the full comparison.

## JNI exports observed in the original

The original x86_64 binary exports 20 `Java_...` JNI symbols. Candidate exports must be compared against the original per ABI; an ordinary successful compile is not a compatibility result.

Original exports:

- `SbaArchiveNative.createArchive`
- `SbaLibaegisCryptoNative.decryptAegis128X2ChunkedEntryFdRaw`
- `SbaLibaegisCryptoNative.decryptAegis256ChunkedEntryFdRaw`
- `SbaLibaegisCryptoNative.isAvailable`
- `SbaLibaegisCryptoNative.encryptAegis256ChunkedEntryFdRaw`
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

The current candidate exports eight methods. Comparing against the original binary reports 12 original exports not yet implemented. Of those, **eight are declared by the current Java/Smali API and are required for the current APK**; four are legacy exports found in the original binary but absent from the current decompiled `SbaZstdNative`, `SbaSwiftTarNative`, and `SbaLibaegisCryptoNative` declarations.

### Required by current Java/Smali declarations

- `SbaArchiveNative.createArchive`
- `SbaLibaegisCryptoNative.decryptAegis128X2ChunkedEntryFdRaw`
- `SbaLibaegisCryptoNative.decryptAegis256ChunkedEntryFdRaw`
- `SbaLibaegisCryptoNative.isAvailable`
- `SbaSwiftTarNative.extractAegisArchiveEntry`
- `SbaSwiftTarNative.extractAegisArchiveEntryFused`
- `SbaSwiftTarNative.extractTarFromFdRaw`
- `SbaSwiftTarNative.extractTarFromFdWithStatsRaw`
- `SbaSwiftTarNative.extractTarZstdFromFdRaw`

The current source declarations establish these JNI descriptors (the availability method is implemented; the other listed methods remain required):

- `SbaArchiveNative.createArchive`: `(ILjava/lang/String;[B[[B[Ljava/lang/String;[I[[Ljava/lang/String;[[Ljava/lang/String;IIIIIIIIII[B[B[B[BLcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J`
- `SbaLibaegisCryptoNative.decryptAegis128X2ChunkedEntryFdRaw`: `(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J`
- `SbaLibaegisCryptoNative.decryptAegis256ChunkedEntryFdRaw`: `(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J`
- `SbaLibaegisCryptoNative.isAvailable`: `()Z` (implemented as unconditional `true`, matching the original x86_64 disassembly; AEGIS encrypt/decrypt remain incomplete).
- `SbaSwiftTarNative.extractAegisArchiveEntry` and `extractAegisArchiveEntryFused`: `(Ljava/lang/String;JJJJLjava/lang/String;I[Ljava/lang/String;II[B[B[BJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;`
- `SbaSwiftTarNative.extractTarFromFdRaw` and `extractTarFromFdWithStatsRaw`: `(IJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;` and `(IJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J` respectively.
- `SbaSwiftTarNative.extractTarZstdFromFdRaw`: `(IJJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;`

### Additional legacy exports present in the original binary

These four symbols are in the original `.so` but not declared by the current decompiled Java wrappers. Their historical descriptors/callers still need investigation before deciding whether to reproduce them:

- `SbaLibaegisCryptoNative.encryptAegis256ChunkedEntryFdRaw`
- `SbaSwiftTarNative.createTarToFdWithWriteStatsRaw`
- `SbaZstdNative.compressZstdFdToFdRaw`
- `SbaZstdNative.compressZstdFileToFdRaw`

The candidate workflow emits `missing-original-jni-exports.txt` and `extra-candidate-jni-exports.txt` per ABI. The APK staging gate is deliberately stricter than the minimum current wrapper surface: it requires the candidate's export set to match the original binary exactly, so the workflow cannot silently accept a partial drop-in.

## Next reverse-engineering priorities

1. Confirm `SbaRuntimeNative.version()` returns `SwiftTar` on all four original ABIs; x86_64 disassembly and its referenced string establish this implementation.
2. Map all remaining JNI exports to exact Smali descriptors and callers, including exports not present in the current decompiled Java wrapper.
3. Recover the `SBA1` header/index layout and creation parameters from `createArchive` call sites and the original binary.
4. Recover AEGIS chunk framing using the observed AAD/nonce domain strings, then verify with original-generated fixtures and known-answer tests.
5. Implement TAR create/extract behavior only after matching the original's path validation, sparse file, PAX, xattr, metadata, progress, and return-array semantics.
