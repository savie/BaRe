# libsba_archive.so C++ candidate build

This is the `tools/`-based build path modeled on `tools/native-jni-replacement/`. The workflow compiles a candidate named exactly `libsba_archive.so` for the four Android ABIs, copies the candidate into a disposable copy of `bare-implementation`, and uploads the candidate artifact.

## Safety boundary

- The workflow never writes to `bare-implementation/lib/*/libsba_archive.so`.
- It verifies the original library SHA-256 before and after staging.
- It does not package or sign an APK and does not wire the candidate into the normal APK workflow.
- The candidate preserves the original JNI export set, and CI checks exact export parity for all four ABIs. Implemented candidate paths now include SBA1/SBA2 archive creation (TAR source traversal, optional Zstandard compression, per-chunk AEGIS encryption, index/footer generation and v2 index MAC), AEGIS-256 chunk encryption/decryption, AEGIS-128X2 chunk decryption, AEGIS archive-entry extraction, byte-array and FD Zstandard operations, TAR listing, and basic TAR extraction. **This is implementation progress, not yet a drop-in compatibility claim.** The chunk nonce convention, header/index writer, key-check/MAC integration, advanced TAR behavior, and restore against reference archives still need runtime round-trip and cross-compatibility tests. The basic TAR extractor rejects unsafe paths and does not materialize symlinks or other special entries. Two legacy-only exports (`createTarToFdWithWriteStatsRaw` and `compressZstdFileToFdRaw`) remain fail-closed because no matching Java/Smali declarations were found to recover their descriptors; they are not called by the checked-in wrappers.
- The original `libnative-lib.so` and its build process are independent and untouched.

## Source

`src/libsba_archive.cpp` and `CMakeLists.txt` are the staged C++ implementation and pinned build definition. Zstandard is pinned to v1.5.7; Argon2 reference source is pinned to 20190702; the upstream `aegis-aead/libaegis` C implementation is pinned to signed release commit `0bb16395782de7d3b0ec28735c5e7e09e6551c93` (0.10.3, MIT). The generated binary name is `libsba_archive.so` so a later gated integration step can replace only the disposable build copy.

## Run

Use GitHub Actions → **Build libsba_archive.so candidate from tools** → Run workflow. CI builds each ABI separately and publishes artifacts for 14 days. A successful compile is not evidence of compatibility with the original shared library.


## JNI contract ledger

See [`JNI_CONTRACT_LEDGER.md`](JNI_CONTRACT_LEDGER.md) for the descriptors recovered from checked-in Smali/JADX evidence, current candidate status, and unresolved legacy exports. Unknown legacy signatures remain fail-closed; the ledger is not a parity claim.

## Explicitly not guessed

`SbaRuntimeNative.version()` returns `SwiftTar`, matching the original x86_64 binary's disassembly and referenced string. The workflow reports missing JNI exports against each original ABI as a compatibility-gap artifact.

The candidate links the pinned upstream `libaegis` target and matches the original `SbaLibaegisCryptoNative.isAvailable()` behavior (unconditional `true`, confirmed by original x86_64 disassembly). Archive creation and AEGIS chunk paths now compile, but format-level compatibility and device round-trip tests are still outstanding; do not treat symbol parity or successful compilation as proof of correctness.
