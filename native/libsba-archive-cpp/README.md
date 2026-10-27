# C++ implementation track for libsba_archive.so

This directory is an isolated, source-owned prototype. It is deliberately NOT wired into APK packaging and must not replace the checked-in `bare-implementation/lib/*/libsba_archive.so` until the full JNI surface and compatibility tests are implemented.

## First milestone

- Cross-compile an isolated Android shared library for the four project ABIs.
- Implement JNI byte-array compression/decompression using pinned Zstandard v1.5.7.
- Keep the app's current native library untouched while this prototype is developed.

## Required compatibility surface

Declarations under `bare-implementation/smali/com/swiftapps/sba/` show the library is much larger than a Zstandard wrapper. A production-compatible replacement still needs, at minimum:

- `SbaArchiveNative.createArchive`
- `SbaSwiftTarNative`: TAR extraction/listing, Zstandard TAR paths, Aegis archive extraction, and write statistics
- `SbaZstdNative`: byte operations and file-descriptor streaming decompression
- `SbaNativeCrypto.deriveArgon2id`
- `SbaLibaegisCryptoNative`: AEGIS-128X2 and AEGIS-256 chunked decryption
- `SbaRuntimeNative.version`

The exact JNI descriptors, return shapes, callback/progress behavior, archive metadata, error handling, and format semantics must be matched. Exporting placeholder symbols is not compatibility.

## Build

Use Android NDK CMake with ABI values `arm64-v8a`, `armeabi-v7a`, `x86`, and `x86_64`. The build fetches Zstandard from the pinned `v1.5.7` tag. CI should report the resolved source commit and generated binary hashes. This prototype is not yet a drop-in replacement and is not intended to be loaded by the app.

## Acceptance gates before integration

1. Compile all four ABIs and inspect JNI exports/dependencies.
2. Add native tests for empty, normal, malformed, truncated, and oversized Zstandard frames.
3. Implement and test TAR parsing/extraction semantics, including path traversal defenses and metadata/xattrs/sparse files.
4. Implement Argon2id and AEGIS using audited, pinned source dependencies and known-answer test vectors.
5. Match archive creation/extraction formats and progress/statistics contracts against known fixtures.
6. Run end-to-end backup/restore round trips before changing the APK's library files.
