# JNI descriptor inventory from the checked-in app sources

Reference sources are under `reference/jadx/sources/com/swiftapps/sba/` and matching smali under `bare-implementation/smali/com/swiftapps/sba/`. These descriptors are transcribed from declarations/call sites; they are not inferred from native symbol names.

## Declarations available in the checked-in app

| Native symbol | JNI descriptor |
|---|---|
| `SbaArchiveNative.createArchive` | `(ILjava/lang/String;[B[[B[Ljava/lang/String;[I[[Ljava/lang/String;[[Ljava/lang/String;IIIIIIIIII[B[B[B[BLcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J` |
| `SbaNativeCrypto.deriveArgon2id` | `([B[BIIII)[B` |
| `SbaLibaegisCryptoNative.decryptAegis128X2ChunkedEntryFdRaw` | `(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J` |
| `SbaLibaegisCryptoNative.decryptAegis256ChunkedEntryFdRaw` | `(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J` |
| `SbaLibaegisCryptoNative.isAvailable` | `()Z` |
| `SbaSwiftTarNative.extractTarFromFdRaw` | `(IJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;` |
| `SbaSwiftTarNative.extractTarFromFdWithStatsRaw` | `(IJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J` |
| `SbaSwiftTarNative.extractTarZstdFromFdRaw` | `(IJJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;` |
| `SbaSwiftTarNative.listTarEntriesFromFdRaw` | `(IJ)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;` |
| `SbaSwiftTarNative.listTarEntriesZstdFromFdRaw` | `(IJJ)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;` |
| `SbaSwiftTarNative.extractAegisArchiveEntry` | `(Ljava/lang/String;JJJJLjava/lang/String;I[Ljava/lang/String;II[B[B[BJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;` |
| `SbaSwiftTarNative.extractAegisArchiveEntryFused` | `(Ljava/lang/String;JJJJLjava/lang/String;I[Ljava/lang/String;II[B[B[BJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;` |
| `SbaZstdNative.compressZstdBytes` | `([BI)[B` |
| `SbaZstdNative.decompressZstdBytes` | `([B)[B` |
| `SbaZstdNative.decompressZstdFdToFdRaw` | `(IIJLcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J` |

## Original binary exports without a matching declaration in the checked-in wrapper

The original `.so` exports these additional names, but the current checked-in Java wrapper sources do not provide their declarations. Their full native signatures and runtime contracts must be recovered from the exact original binary/version before implementation; do not guess parameter lists.

- `SbaLibaegisCryptoNative.encryptAegis256ChunkedEntryFdRaw`
- `SbaRuntimeNative.version` — method descriptor is expected to be confirmed against its declaration; the returned version value is not verified.
- `SbaSwiftTarNative.createTarToFdWithWriteStatsRaw`
- `SbaZstdNative.compressZstdFdToFdRaw`
- `SbaZstdNative.compressZstdFileToFdRaw`

The original binary surface is recorded separately in `original-jni-surface.txt`. A replacement must export the complete original surface, but symbol presence alone is not sufficient: parameter semantics, return values, errors, callbacks, file offsets, archive layout and crypto framing must also match.
