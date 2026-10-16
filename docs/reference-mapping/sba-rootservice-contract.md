# SBA root-service contract mapping — SwiftBackup 5.1.0 (620)

Reference source: `SwiftBackup-5.1.0-620-decompiled.zip`, JADX output under `output/jadx/sources/`.
Target snapshot inspected: BΛR☰ branch `rewrite`.

This document records source-derived contracts and migration blockers. It does not claim feature parity.

## 1. Current target state

The following target paths were present as structural markers only when inspected:

- `app/src/main/java/com/bareapps/barebackup/apptasks/sba/.gitkeep`
- `app/src/main/java/com/bareapps/sba/.gitkeep`
- `app/src/main/java/com/bareapps/sba/internal/progress/.gitkeep`
- `app/src/main/java/com/bareapps/sba/internal/tar/.gitkeep`
- `app/src/main/java/com/bareapps/rootservice/.gitkeep` (now also contains the separate `ShellHelper.kt` port)

The target Gradle dependencies include libsu 6.0.0 and Shizuku API/provider 13.1.5. The target tree has no `app/src/main/jniLibs/` payload and no SBA native wrapper source at the time of this mapping.

## 2. Binder contract

Reference service class:
`org.swiftapps.rootservice.ShizukuAidlService extends defpackage.fp6`.

Reference Binder descriptor:
`org.swiftapps.rootservice.IRootAidlInterface`.

The interface is represented in the decompilation by `defpackage.z84` (interface), `y84` (Binder Stub), and `x84` (Proxy). The decompiled source exposes these methods and transaction codes:

| Transaction | Method | Inputs | Output / behavior |
|---:|---|---|---|
| 1 | `getPid()` | — | service process PID |
| 2 | `getUid()` | — | service process UID |
| 3 | `getPackageArchiveInfo(path, flags)` | absolute path, PackageManager flags | `PackageInfo`; requires an Android `Context` |
| 4 | `getParcelFileDescriptor(path, mode)` | absolute path, supported PFD mode | opened `ParcelFileDescriptor`; reference accepts modes 268435456, 738197504, 939524096 |
| 5 | `getSbaNativeVersion()` | — | native runtime version combined with Aegis availability |
| 6 | `isSbaAegis256Available()` | — | native capability boolean |
| 7 | `isSbaFile(path)` | absolute path | checks the first four bytes against `SBA1` |
| 8 | `readSbaInfo(path)` | absolute path | archive header/index/footer/entry metadata |
| 9 | `readSbaInfoPage(path, start, pageSize)` | absolute path, pagination | paged archive info |
| 10 | `listSbaTarEntries(path, entryName, password, start, pageSize)` | absolute path, entry name, optional char[] password, pagination | paged TAR entries within an SBA archive |
| 11 | `listTarEntries(path, start, pageSize)` | absolute path, pagination | paged TAR entries |
| 12 | `createSba(request, callback)` | create request Parcelable, optional Binder callback | async operation ID |
| 13 | `extractSba(request, callback)` | extract request Parcelable, optional Binder callback | async operation ID |
| 14 | `extractTar(request, callback)` | TAR extract request Parcelable, optional Binder callback | async operation ID |
| 15 | `cancelSba(operationId)` | operation ID | sets cancellation flag when operation exists |
| 16 | `getSbaResult(operationId)` | operation ID | current/final operation result |

The service validates paths as absolute and nonblank for path operations. Errors are returned as `RemoteException` with method context. Operations run on a cached thread pool and are tracked by monotonically increasing IDs starting at 1. Archive-info cache TTL is 30 seconds with a maximum of 4 entries; TAR-entry cache TTL is 30 seconds with a maximum of 2 entries. Completed operation records are eligible for removal after completion; the source declares a 5-minute completed-operation TTL.

The reference AIDL callback `defpackage.e94` has one method:
`c(long operationId, int state, int errorCode, int errorSubCode, int progressCode, String message, long processed, long total)`.
Its generated/proxy semantics must be preserved when the named callback interface is ported.

## 3. Request Parcelable field mapping

These names below are semantic migration names, not the reference's obfuscated class names. Parcel field order is taken from each reference `writeToParcel` implementation and its matching CREATOR.

### Create request (`defpackage.i17`)

Parcel order:
1. output path (`String`)
2. list of create entries (`j17` records, count followed by each record)
3. integer mode/profile field
4. integer encryption/compression flag
5. integer compression level/method parameter
6. integer option flag
7. optional password/key material (`char[]`)
8. metadata JSON string
9. progress update interval in milliseconds (`long`)
10. boolean flag indicating the Shizuku execution path

Call-site evidence in `defpackage.mz6.B`: output path, a list built from entry descriptors, compression selection, optional password, metadata string, 2000 ms progress interval, and whether the execution backend is Shizuku. Some integer fields are passed through native creation and should retain their wire values; do not rename them to a stronger semantic claim until the native format/options mapping is complete.

Each create entry (`defpackage.j17`) parcel order:
- entry name
- source path
- include-root-directory boolean
- include paths string list
- exclude paths string list
- optional fallback source path

### SBA extract request (`defpackage.m17`)

Parcel order:
1. SBA source path
2. target directory/path
3. optional selected entry name
4. restore/profile integer
5. optional password (`char[]`)
6. optional include-path string list
7. progress interval in milliseconds
8. boolean option

Call-site evidence in `defpackage.mz6.C` sets a 2000 ms progress interval and a true final option. Preserve nullable fields and exact parcel order.

### TAR extract request (`defpackage.s17`)

Parcel order:
- TAR source path
- target directory
- restore-profile integer
- optional include-path string list
- progress interval in milliseconds

## 4. Result and metadata Parcelables

### Operation result (`defpackage.o17` → semantic `SbaOperationResult`)

Parcel order:
- operation ID: long
- state: int
- error code: int
- error subcode: int
- error message: nullable string
- output path: nullable string
- bytes processed: long
- duration milliseconds: long
- diagnostics: nullable string
- TAR entry count: long
- regular-file count: long
- directory count: long
- symlink count: long
- hardlink count: long
- other-entry count: long
- skipped-entry count: long
- regular-file bytes: long

Source evidence: the initial operation state is 0; the source treats states 0 and 1 as non-final. Successful creation writes state 2. Unknown operation IDs return state 3 and error code 1. Preserve the numeric protocol, not just labels.

### Archive info (`defpackage.f17`)

Contains format name, four-byte magic string, format version, file size, metadata JSON, header, index, footer, a list of archive entries, and the next entry start index for pagination.

Nested data:
- Header (`d17`): header size, flags, creation epoch milliseconds, compression descriptor, compression method ID, compression level, encryption name, encryption method ID, KDF method ID, KDF iterations, payload chunk size, KDF descriptor.
- Index (`e17`): offset, size, version, CRC32 integer, CRC32 hex string, entry count.
- Footer (`c17`): offset, size, CRC32 integer, CRC32 hex string.
- Archive entry (`k17`): name, order, entry offset, payload offset, payload size, compressed size, TAR size, compression descriptor, encryption name, flags, nullable TAR-entry/regular-file/directory counts.
- Compression descriptor (`g17`): name and level.
- KDF descriptor (`n17`): name, integer parameters, and two nullable integer parameters.

### TAR entry info (`defpackage.p17` / `com.swiftapps.sba.internal.tar.SbaTarEntryInfo`)

The Binder-facing TAR entry contains name, type name, nullable link name, mode, size, real size, modification time in milliseconds, sparse flag, and xattr names. The native-facing class uses integer type codes:
- 1 file
- 2 directory
- 3 symlink
- 4 hardlink
- 5 FIFO
- 6 character device
- 7 block device
- 99 other

The list wrapper (`defpackage.q17`) contains a list of entries and the next start index.

## 5. SBA archive format evidence

Reference `defpackage.zv1` declares:
- SBA archive magic: ASCII `SBA1` (bytes 83, 66, 65, 49)
- Other magic constants: `SAE1`, `SAI1`, `SAF1` (their exact use must be retained from the parser/writer implementation rather than inferred from names alone).

The metadata JSON emitted for app-data archives has these keys:
`kind`, `version`, `packageName`, `appId`, `versionName`, `versionCode`, `backupCache`, `includeDeviceProtectedData`, `compressionLevel`, `encrypted`, `dataSize`, `deDataSize`, `entries`.
The default `kind` is `swiftbackup.app-data`; default metadata version is 1. Entry names used by this builder include `data` and optionally `data_de`.

The native archive writer receives a packed set of header/options, destination path, metadata bytes, entry payload buffers/names, per-entry arrays/options, encryption-related byte arrays, and a progress listener. The exact argument preparation lives in `defpackage.tu0`; it is not a self-contained call that can be replaced with a generic ZIP/TAR writer.

## 6. Native dependency map

The reference packages these libraries under all four ABIs: `arm64-v8a`, `armeabi-v7a`, `x86`, and `x86_64`.

- `libsba_archive.so` — exports JNI symbols for classes in the exact package `com.swiftapps.sba`; includes archive creation, TAR list/extract, Zstandard, Argon2id, and Aegis methods.
- Java/Kotlin wrappers that load this library: `SbaArchiveNative`, `SbaNativeCrypto`, `SbaRuntimeNative`, `SbaLibaegisCryptoNative`, `SbaZstdNative`, `SbaSwiftTarNative`.
- Native callback contract: `com.swiftapps.sba.internal.progress.SbaNativeProgressListener` with `isCancellationRequested()` and `onProgress(long,long)`.
- Native TAR object contract: `com.swiftapps.sba.internal.tar.SbaTarEntryInfo`; the library constructs this class from native code.
- Native JNI symbols are exported as `Java_com_swiftapps_sba_...`, so renaming the wrapper package to `com.bareapps.sba` would break those symbol bindings unless the native library is rebuilt/relinked. A compatibility package or rebuilt native implementation is required.

Target branch currently has none of these native libraries or wrappers. Gradle's libsu and Shizuku dependencies do not supply SBA archive support.

## 7. Why the root-service implementation is not yet safe to port as one class

The reference implementation is `defpackage.fp6`, a large Binder service with asynchronous operation tracking, cache behavior, path validation, archive parsing, and calls into the following coupled subsystems:

- `defpackage.jd4`, `tu0`, `xh8`, `z85` — request preparation, archive creation/extraction, TAR/native orchestration
- archive models/parser and JSON metadata serialization
- file-access abstraction and root/SAF descriptor acquisition
- native wrapper classes and `libsba_archive.so`
- callback Binder interface and operation result state machine

Those equivalents are not present in the inspected target tree. Copying `fp6` or creating a Binder class that returns placeholders for create/extract/read-info would not be a valid port. The next implementation stage must first choose and document the native strategy (carry forward the reference ABI-specific library with exact JNI compatibility, or independently rebuild it), then port the named request/result models and real service operations. Until then, no incomplete service is advertised as parity.

## 8. Port order

1. Decide native-library provenance/ABI policy and package compatibility.
2. Port native wrapper contracts and the two native-facing model/interface types.
3. Port semantic request/result Parcelable models with exact wire order.
4. Port archive parser/writer orchestration and file descriptor access against existing BΛR☰ abstractions.
5. Implement the Binder service and callback with the reference transaction ordering, cache TTLs, validation, cancellation, and result-state transitions.
6. Register the Shizuku user-service binding path in BΛR☰ only when the binder contract and service implementation are real.
