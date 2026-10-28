# libsba_archive.so C++ candidate build

This is the `tools/`-based build path modeled on `tools/native-jni-replacement/`. The workflow compiles a candidate named exactly `libsba_archive.so` for the four Android ABIs, copies the candidate into a disposable copy of `bare-implementation`, and uploads the candidate artifact.

## Safety boundary

- The workflow never writes to `bare-implementation/lib/*/libsba_archive.so`.
- It verifies the original library SHA-256 before and after staging.
- It does not package or sign an APK and does not wire the candidate into the normal APK workflow.
- The candidate now exposes the same 20 JNI symbol names as the original, and CI enforces exact export parity. This is only symbol/API-surface parity: 11 newly exposed entry points currently fail closed with `UnsupportedOperationException`; the legacy Zstandard fd-to-fd compression export now has a streaming implementation until their implementations and behavior tests are added. The candidate is **not drop-in compatible yet**; archive creation/extraction, AEGIS chunk operations, and runtime/end-to-end comparisons remain incomplete.
- The original `libnative-lib.so` and its build process are independent and untouched.

## Source

`src/libsba_archive.cpp` and `CMakeLists.txt` are the staged C++ implementation and pinned build definition. Zstandard is pinned to v1.5.7; Argon2 reference source is pinned to 20190702; the upstream `aegis-aead/libaegis` C implementation is pinned to signed release commit `0bb16395782de7d3b0ec28735c5e7e09e6551c93` (0.10.3, MIT). The generated binary name is `libsba_archive.so` so a later gated integration step can replace only the disposable build copy.

## Run

Use GitHub Actions → **Build libsba_archive.so candidate from tools** → Run workflow. CI builds each ABI separately and publishes artifacts for 14 days. A successful compile is not evidence of compatibility with the original shared library.


## Explicitly not guessed

`SbaRuntimeNative.version()` returns `SwiftTar`, matching the original x86_64 binary's disassembly and referenced string. The workflow reports missing JNI exports against each original ABI as a compatibility-gap artifact.

The candidate now links the pinned upstream `libaegis` target and matches the original `SbaLibaegisCryptoNative.isAvailable()` behavior (unconditional `true`, confirmed by original x86_64 disassembly). AEGIS chunk decryption/encryption methods are still not implemented, so this does not make the candidate safe to integrate.
