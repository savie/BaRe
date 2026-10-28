# libsba_archive.so C++ candidate build

This is the `tools/`-based build path modeled on `tools/native-jni-replacement/`. The workflow compiles a candidate named exactly `libsba_archive.so` for the four Android ABIs, copies the candidate into a disposable copy of `bare-implementation`, and uploads the candidate artifact.

## Safety boundary

- The workflow never writes to `bare-implementation/lib/*/libsba_archive.so`.
- It verifies the original library SHA-256 before and after staging.
- It does not package or sign an APK and does not wire the candidate into the normal APK workflow.
- The candidate is **not drop-in compatible yet**. JNI coverage, archive creation/extraction, AEGIS chunk decryption, and runtime/end-to-end comparisons are still incomplete.
- The original `libnative-lib.so` and its build process are independent and untouched.

## Source

`src/libsba_archive.cpp` and `CMakeLists.txt` are the staged C++ implementation and pinned build definition. Zstandard is pinned to v1.5.7; Argon2 reference source is pinned to 20190702. The generated binary name is `libsba_archive.so` so a later gated integration step can replace only the disposable build copy.

## Run

Use GitHub Actions → **Build libsba_archive.so candidate from tools** → Run workflow. CI builds each ABI separately and publishes artifacts for 14 days. A successful compile is not evidence of compatibility with the original shared library.
