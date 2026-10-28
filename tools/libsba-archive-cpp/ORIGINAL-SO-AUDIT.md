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

## Recovered Java-side archive-creation contract

The decompiled call site in `reference/jadx/sources/defpackage/tu0.java` establishes several inputs to the native `createArchive` call. These are caller-side facts; they do **not** establish the binary `SBA1` header/index layout or the native meaning of every integer.

- The first integer is `1` for the unencrypted path and `2` when the AEGIS encryption configuration is present.
- The encryption setup chooses `l27.Aegis256`. It generates two independent 16-byte random values, then calls `sy6.a(password, firstRandom, 3, 16384, 1, 32)` and `sy6.d(Aegis256, derivedBytes, firstRandom, secondRandom)`. This establishes the Java-side KDF inputs (Argon2 parameters visible at the call site) and the two 16-byte values passed into key setup; it does not prove how the native code stores or consumes them.
- For the encrypted call, the visible integer arguments include `4, 1, 3, 16384, 1, 1048576, 1, 32` in the corresponding positions after the entry metadata arrays. The unencrypted call passes zero for several of these encryption-related fields. Preserve argument order from the JNI descriptor; do not treat these numbers as named format constants until native disassembly confirms their semantics.
- The encrypted call passes four byte arrays from the encryption configuration; the unencrypted call passes null for all four.
- Java-side result handling requires at least nine `long` values from `createArchive`; values at indices 0 through 8 are consumed to construct the archive result object. The extra timing value is supplied separately by the caller.

This evidence narrows future reverse engineering: correlate the native arguments with the `SBA1` metadata writer and the AEGIS chunk helpers, then validate every interpretation using archives created by the original binary. It is not sufficient to implement a new archive format that merely uses the same KDF or cipher.

## Next reverse-engineering priorities

1. Confirm `SbaRuntimeNative.version()` returns `SwiftTar` on all four original ABIs; x86_64 disassembly and its referenced string establish this implementation.
2. Map all remaining JNI exports to exact Smali descriptors and callers, including exports not present in the current decompiled Java wrapper.
3. Recover the `SBA1` header/index layout and creation parameters from `createArchive` call sites and the original binary.
4. Recover AEGIS chunk framing using the observed AAD/nonce domain strings, then verify with original-generated fixtures and known-answer tests.
5. Implement TAR create/extract behavior only after matching the original's path validation, sparse file, PAX, xattr, metadata, progress, and return-array semantics.
