# libsba_archive JNI contract ledger

Scope: the original Swift-namespaced JNI API represented by the checked-in
`reference/apktool/smali/com/swiftapps/sba/` and
`reference/jadx/sources/com/swiftapps/sba/` artifacts. This ledger is
evidence tracking, not a claim of behavioral parity.

The JNI descriptors below are derived from the native declarations in Smali
or JADX source. A C++ function's parameter list alone does not establish a
Java descriptor.

| # | JNI export suffix | Recovered Java descriptor | Contract evidence | Candidate status |
|---:|---|---|---|---|
| 1 | `SbaArchiveNative.createArchive` | `(ILjava/lang/String;[B[[B[Ljava/lang/String;[I[[Ljava/lang/String;[[Ljava/lang/String;IIIIIIIIII[B[B[B[BLcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J` | `reference/apktool/smali/com/swiftapps/sba/SbaArchiveNative.smali` | BLOCKED — archive writer remains a stub |
| 2 | `SbaLibaegisCryptoNative.decryptAegis128X2ChunkedEntryFdRaw` | `(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J` | `reference/apktool/smali/com/swiftapps/sba/SbaLibaegisCryptoNative.smali` | BLOCKED — chunk format/operation not implemented |
| 3 | `SbaLibaegisCryptoNative.decryptAegis256ChunkedEntryFdRaw` | `(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J` | Same as #2 | BLOCKED — chunk format/operation not implemented |
| 4 | `SbaLibaegisCryptoNative.encryptAegis256ChunkedEntryFdRaw` | UNKNOWN | No matching method declaration found in current inspected Java/Smali wrappers | UNKNOWN — export must not be given a guessed prototype |
| 5 | `SbaLibaegisCryptoNative.isAvailable` | `()Z` | `reference/apktool/smali/com/swiftapps/sba/SbaLibaegisCryptoNative.smali` | IMPLEMENTED — returns JNI_TRUE; parity evidence recorded in existing README |
| 6 | `SbaNativeCrypto.deriveArgon2id` | `([B[BIIII)[B` | `reference/apktool/smali/com/swiftapps/sba/SbaNativeCrypto.smali` | IMPLEMENTED; historical KAT is recorded in PR/CI, rerun needed for current HEAD |
| 7 | `SbaRuntimeNative.version` | `()Ljava/lang/String;` | `reference/apktool/smali/com/swiftapps/sba/SbaRuntimeNative.smali` | IMPLEMENTED — returns SwiftTar |
| 8 | `SbaSwiftTarNative.createTarToFdWithWriteStatsRaw` | UNKNOWN | Export appears in original symbol inventory; no matching wrapper declaration recovered | UNKNOWN — do not guess FD, callback, or statistics contract |
| 9 | `SbaSwiftTarNative.extractAegisArchiveEntry` | `(Ljava/lang/String;JJJJLjava/lang/String;I[Ljava/lang/String;II[B[B[BJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;` | `reference/apktool/smali/com/swiftapps/sba/SbaSwiftTarNative.smali` | BLOCKED — AEGIS archive-entry extraction remains a stub |
| 10 | `SbaSwiftTarNative.extractAegisArchiveEntryFused` | Same as #9 | Same as #9 | BLOCKED — fused extraction remains a stub |
| 11 | `SbaSwiftTarNative.extractTarFromFdRaw` | `(IJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;` | `reference/apktool/smali/com/swiftapps/sba/SbaSwiftTarNative.smali` | IMPLEMENTED partially; filters/options and runtime parity remain unverified |
| 12 | `SbaSwiftTarNative.extractTarFromFdWithStatsRaw` | `(IJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J` | Same as #11 | IMPLEMENTED partially; 20-field meaning and parity remain unverified |
| 13 | `SbaSwiftTarNative.extractTarZstdFromFdRaw` | `(IJJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;` | Same as #11 | IMPLEMENTED partially; runtime parity remains unverified |
| 14 | `SbaSwiftTarNative.listTarEntriesFromFdRaw` | `(IJ)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;` | Same as #11 | IMPLEMENTED partially; runtime parity remains unverified |
| 15 | `SbaSwiftTarNative.listTarEntriesZstdFromFdRaw` | `(IJJ)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;` | Same as #11 | IMPLEMENTED partially; runtime parity remains unverified |
| 16 | `SbaZstdNative.compressZstdBytes` | `([BI)[B` | `reference/apktool/smali/com/swiftapps/sba/SbaZstdNative.smali` | IMPLEMENTED; fresh differential testing outstanding |
| 17 | `SbaZstdNative.compressZstdFdToFdRaw` | UNKNOWN | Not declared in inspected current wrapper; source implementation exists but descriptor/original contract still requires ELF/legacy evidence | UNKNOWN contract; do not mark parity |
| 18 | `SbaZstdNative.compressZstdFileToFdRaw` | UNKNOWN | Not declared in inspected current wrapper; fail-closed stub retained intentionally | UNKNOWN — do not guess a prototype |
| 19 | `SbaZstdNative.decompressZstdBytes` | `([B)[B` | `reference/apktool/smali/com/swiftapps/sba/SbaZstdNative.smali` | IMPLEMENTED; fresh differential testing outstanding |
| 20 | `SbaZstdNative.decompressZstdFdToFdRaw` | `(IIJLcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J` | Same as #16 | IMPLEMENTED partially; FD/runtime parity remains unverified |

## Rules for promoting status

- `CONTRACT RECOVERED` requires the exact wrapper declaration, descriptor,
  and any callback/type mapping to be cited to a checked-in artifact.
- `IMPLEMENTED` only means a real code path exists; it does not imply
  compatibility with the original.
- `PARITY VERIFIED` requires descriptor/export parity plus normal, boundary,
  error, callback/statistics, and differential tests against the original
  wherever that oracle can be run.
- Legacy exports with no recovered descriptor stay fail-closed. Do not infer
  their C++ prototype from the symbol spelling or from an unrelated wrapper.
