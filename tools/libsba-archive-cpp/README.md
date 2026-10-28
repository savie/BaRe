# C++ implementation track for the original `libsba_archive.so`

This directory is the source and build-tool home for the C++ replacement. The reference implementation is the checked-in original `bare-implementation/lib/<abi>/libsba_archive.so`, not an inferred API or a new archive format.

## Safety and packaging model

- All work and generated artifacts live outside `bare-implementation/lib/`.
- `build-prototype.sh` builds to a separate output directory. By default it produces `libsba_archive_cpp.so`.
- The APK workflow still copies `bare-implementation/` to `build-src/`; the original tracked libraries remain unchanged.
- The optional APK-copy replacement step is disabled unless repository variable `SBA_CPP_REPLACEMENT_APPROVED=true` is explicitly set.
- Even when enabled, replacement refuses to proceed until `COMPATIBILITY-APPROVED` exists and the candidate exports every symbol in `original-jni-surface.txt`. Do not create that approval file until binary/API review and differential + end-to-end tests pass.
- The gated step only copies into `build-src/lib/<abi>/libsba_archive.so`; it never writes to `bare-implementation/lib/`.

## What is implemented in the prototype

- Android NDK CMake builds for `arm64-v8a`, `armeabi-v7a`, `x86`, and `x86_64`.
- Zstandard byte-array compression/decompression.
- Zstandard file-descriptor streaming decompression with progress/cancellation callbacks.
- Argon2id JNI entry point using pinned reference code and bounded parameters; host known-answer tests cover two lane configurations.
- TAR listing with header checksum checks, USTAR names, positive base-256 numeric fields, GNU long names/links, and PAX path/link/size/fractional-mtime overrides.
- Listing TAR entries from a bounded Zstandard-compressed file-descriptor range.

These are prototype implementations only. Build success does not establish compatibility of return values, error behavior, callback cadence, offsets, file modes, or archive format.

## Evidence from the original binary

The CI audit read the original `.so` symbols with `llvm-readelf -Ws`. On the recorded baseline run, the original library exposed **20 JNI symbols** and the prototype exposed **6**, leaving **14 original exports unimplemented**. The observed JNI surface is recorded in `original-jni-surface.txt`; the run and source binary are linked in that manifest. The comparison is based on the original checked-in binary, not guessed signatures.

The missing original operations include archive creation, TAR creation and extraction, compressed TAR extraction, AEGIS entry encryption/decryption, the runtime version method, and Zstandard FD/file compression. Their exact JNI descriptors and behavior must be matched against the Java declarations, call sites, original binary, and known-good fixtures.

## Required compatibility work

1. Implement every entry in `original-jni-surface.txt` with exact JNI descriptors and behavior; do not add placeholder exports.
2. Differential-test TAR/PAX/GNU handling, extraction path safety, sparse files, links, xattrs, metadata and errors against the original implementation.
3. Match Zstandard FD/file compression and decompression counters, offsets, cancellation and progress semantics.
4. Match the archive-creation layout and backup/restore format using known-good fixtures.
5. Integrate a vetted AEGIS implementation only after matching the original chunk format, nonce/tag handling and authentication-failure behavior; use known-answer tests.
6. Run end-to-end backup/restore and verify generated archives can be read by the original implementation and vice versa.
7. Only then create `COMPATIBILITY-APPROVED` and explicitly enable the guarded APK-copy replacement.

## Dependencies

- Zstandard pinned to `v1.5.7`.
- Argon2 reference implementation pinned to `20190702` from [P-H-C/phc-winner-argon2](https://github.com/P-H-C/phc-winner-argon2). Review the upstream license file before redistribution.

