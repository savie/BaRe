# BaRe archive native library

This directory builds the BaRe-owned `libsba_archive.so` Android native library.

## Scope

- SBA1/SBA2 header and footer validation.
- SBA archive creation with TAR traversal, optional Zstandard compression, Argon2id key derivation, AEGIS chunk encryption, index/footer generation, and integrity metadata.
- AEGIS chunk encryption/decryption and archive-entry extraction.
- Zstandard byte-array and file-descriptor operations.
- TAR creation, listing, and safe extraction.
- Four Android ABIs: `arm64-v8a`, `armeabi-v7a`, `x86`, and `x86_64`.

## JNI contract

The native library exposes exactly 20 JNI operations through the existing BaRe-owned classes in `com.bareapps.sba`:

| Class | Native operations |
|---|---:|
| `SbaArchiveNative` | 1 |
| `SbaBareTarNative` | 8 |
| `SbaLibaegisCryptoNative` | 4 |
| `SbaNativeCrypto` | 1 |
| `SbaRuntimeNative` | 1 |
| `SbaZstdNative` | 5 |
| **Total** | **20** |

Progress callbacks use `SbaNativeProgressListener`; TAR entry results use `SbaTarEntryInfo`. The JNI exports, Smali declarations, and helper type descriptors must match. No second package/class compatibility surface is used.

## Build

The namespace APK workflow builds host-side tests, cross-compiles this target for all four Android ABIs, and copies the resulting `libsba_archive.so` into the matching `lib/<abi>/` directory before packaging the APK.

## Tests

`tests/` contains host-runnable SBA format validation, Argon2id known-answer vectors, and AEGIS authenticated-encryption smoke tests. These are CI checks and are not packaged in the APK.

Successful compilation and unit tests are not, by themselves, proof of byte-for-byte compatibility with every historical archive. Device round-trip and restore compatibility remain separate validation requirements.
