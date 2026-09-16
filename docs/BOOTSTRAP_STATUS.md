# Bootstrap Status

Repository bootstrap establishes the initial Android/Kotlin/Gradle/Compose skeleton and capability/provider boundaries.

This is an implementation bootstrap plus the first P0 package-backup vertical slice; it is not functional parity completion.

## Verification State

- Repository write: VERIFIED through successful project commits on `bootstrap/repository-baseline`.
- Baseline Android build: VERIFIED by GitHub Actions run #6 (`assembleDebug` passed).
- Stable development signing: VERIFIED by GitHub Actions run #25; the configured `BARE_DEBUG_KEYSTORE_B64` secret decoded and passed `keytool` validation before the APK build.
- APK update versioning: IMPLEMENTED; CI supplies increasing `versionCode` from `github.run_number` and `versionName` in `MAJOR.MINOR.PATCH` format.
- In-place APK update on a device: NOT VERIFIED; requires two signed APKs with the same signing identity and a real device update test.
- Runtime/device behavior: UNKNOWN.
- Functional backup/restore parity: NOT IMPLEMENTED.

## Current CI Evidence

- Run #6: GREEN baseline `assembleDebug` build.
- Run #25: GREEN build of the first P0 package-backup slice, including stable signing preparation and APK artifact upload.
- Run #25 artifact: `bare-debug-apk-v25`, SHA-256 `2db30a1d4a8cfa000e712745cb9c5e54cca8e0898829d22a267833f5e774dd3b` for the uploaded artifact ZIP.
- Run #26: GREEN; `assembleDebug` and `:app:testDebugUnitTest` both passed after the unit-test step was enabled.
- Run #26 artifact: `bare-debug-apk-v26`, SHA-256 `a2ef6bd1774844cac7b1fc249955dce6633aa172350f73396e09fd59db7ca4b8` for the uploaded artifact ZIP.

## First P0 Vertical Slice

Implemented boundary:

`installed app → package discovery → capability resolution → backup plan → package/APK backup → manifest → archive → integrity → artifact metadata result → verification`

Implemented components:

- Android visible-package discovery with package/version/APK/split metadata.
- Explicit capability resolution for `NON_ROOT`, `ADB`, `SHIZUKU`, and `ROOT`.
- `NON_ROOT` APK/package backup execution path.
- Versioned ZIP archive containing `manifest.json`, APK components, and `integrity.json`.
- SHA-256 integrity hashing and archive-structure verification.
- App-private backup staging under `files/backups`.
- Basic UI to discover visible packages and trigger APK backup.
- JVM unit-test coverage for the SHA-256 primitive and capability resolution, with CI execution enabled.

## P0 Verification Gaps

- Runtime/device package discovery is not yet verified on a real Android device.
- Actual APK backup execution and resulting archive integrity are not yet device-verified.
- `ADB`, `SHIZUKU`, and `ROOT` providers are modeled but not integrated/executable yet.
- App-data backup/restore is not implemented.
- Restore path is not implemented.
- Package visibility limitations are not yet validated across target Android/OEM environments.

The first slice is therefore `IMPLEMENTED / CI-BUILD-VERIFIED / RUNTIME-UNVERIFIED`, not complete or fully verified.

## Next Lifecycle Target

Runtime validation of the first slice, then extend the provider boundary in order:

1. `NON_ROOT` runtime package/APK backup verification.
2. ADB provider.
3. Shizuku provider.
4. Root provider.
5. Application data and related-data capabilities.
6. Restore flow, incremental backup, scheduling, storage expansion, and parity/regression coverage.
