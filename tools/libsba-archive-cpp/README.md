# C++ implementation track for libsba_archive.so

This directory under `tools/` is the source-owned C++ prototype and build tooling. It is deliberately NOT wired into APK packaging and must not replace the checked-in original library. It is deliberately NOT wired into APK packaging and must not replace the checked-in `bare-implementation/lib/*/libsba_archive.so` until the full JNI surface and compatibility tests are implemented.

## Current status

- [x] Cross-compile the isolated Android shared library for all four project ABIs.
- [x] Implement JNI byte-array Zstandard compression/decompression.
- [x] Implement file-descriptor streaming Zstandard decompression with progress/cancellation callbacks.
- [x] Integrate the pinned Argon2 reference implementation and expose `deriveArgon2id` with the app’s parameter bounds.
- [x] Add a bounded basic TAR entry-listing JNI prototype for checksum-validated headers with octal and positive base-256 numeric fields.
- [x] Add a CI audit comparing the prototype JNI exports and relevant binary strings with the original `.so` for each ABI.
- [x] Add Zstandard-compressed TAR listing for the declared `(fd, offset, compressed length)` JNI signature; its behavioral compatibility with the original `.so` still needs differential tests.
- [x] CI verifies the streaming JNI export and records the source revision and SHA-256 of each ABI artifact.
- [ ] Verify runtime behavior and exact result/progress semantics against the original library.
- [x] Add PAX/GNU long names, positive base-256 numeric fields, and PAX size/fractional-mtime support to TAR listing.\n- [ ] Add sparse-file and xattr support; implement TAR extraction and archive creation.
- [x] Add a host-side Argon2id known-answer test against the upstream reference implementation.
- [ ] Verify the JNI output against the original library.
- [ ] Implement AEGIS operations with known-answer tests.
- [ ] Run backup/restore round trips before any APK integration.

The CI workflow at `.github/workflows/build-libsba-cpp-prototype.yml` passed on commit `b6f28d058fdf79445575519fafe17a33cf10700e` for `arm64-v8a`, `armeabi-v7a`, `x86`, and `x86_64`. This confirms compilation and the configured symbol/metadata checks, not runtime compatibility. See [the workflow run](https://github.com/savie/BaRe/actions/runs/40603101599).

## First milestone details

- Uses Android NDK CMake and C++17.
- Fetches Zstandard pinned to v1.5.7 and the Argon2 reference implementation pinned to release `20190702` (serial lane scheduling for portable Android builds).
- Keeps the app's current native library untouched while this prototype is developed.

## Required compatibility surface

Declarations under `bare-implementation/smali/com/swiftapps/sba/` show the library is much larger than a Zstandard wrapper. A production-compatible replacement still needs, at minimum:

- `SbaArchiveNative.createArchive`
- `SbaSwiftTarNative`: plain TAR listing and bounded Zstandard TAR listing are implemented as prototypes; TAR extraction, other Zstandard TAR paths, Aegis archive extraction, and write statistics remain missing
- `SbaRuntimeNative.version`: intentionally not implemented until the exact version contract/value can be verified against the original library
- `SbaZstdNative`: byte operations and file-descriptor streaming decompression (the FD decompressor is implemented in this prototype; exact result-array and progress semantics still need verification)
- `SbaNativeCrypto.deriveArgon2id` (now implemented, runtime/vector validation pending)
- `SbaLibaegisCryptoNative`: AEGIS-128X2 and AEGIS-256 chunked decryption

The current TAR listing prototype understands checksum-validated 512-byte headers, octal and positive base-256 numeric fields, USTAR prefix/name fields, and basic PAX/GNU long path/link overrides. It now honors PAX size and fractional mtime overrides. Sparse formats, xattrs, TAR extraction, and archive creation remain unimplemented. It does not yet implement PAX/GNU extensions, sparse metadata, xattrs, or extraction. The exact JNI descriptors, return shapes, callback/progress behavior, archive metadata, error handling, and format semantics must be matched. Exporting placeholder symbols is not compatibility.

## Build

Use Android NDK CMake with ABI values `arm64-v8a`, `armeabi-v7a`, `x86`, and `x86_64`. The build fetches Zstandard from the pinned `v1.5.7` tag. CI reports the source commit and generated binary hashes. This prototype is not yet a drop-in replacement and is not intended to be loaded by the app.

## Acceptance gates before integration

1. Compile all four ABIs and inspect JNI exports/dependencies.
2. Add native tests for byte-array and FD paths: empty, normal, concatenated, malformed, truncated, and oversized Zstandard frames; verify returned byte counters against the Java call sites.
3. Implement and test TAR parsing/extraction semantics, including path traversal defenses and metadata/xattrs/sparse files.
4. Implement Argon2id and AEGIS using audited, pinned source dependencies and known-answer test vectors.
5. Match archive creation/extraction formats and progress/statistics contracts against known fixtures.
6. Run end-to-end backup/restore round trips before changing the APK's library files.


## Third-party cryptography

Argon2id is built from the reference C implementation in
[P-H-C/phc-winner-argon2](https://github.com/P-H-C/phc-winner-argon2), release
`20190702`. Its source offers CC0 1.0 or Apache-2.0 licensing; see the
upstream `LICENSE` file. This prototype uses the reference implementation
rather than a hand-written Argon2 implementation. Runtime and known-answer
validation are still required before integration.
