# Bootstrap Status

Repository bootstrap establishes the initial Android/Kotlin/Gradle/Compose skeleton and capability/provider boundaries.

This is an implementation bootstrap plus the first P0 package-backup vertical slice; it is not functional parity completion.

## Verification State

- Repository write: VERIFIED through successful project commits on `bootstrap/repository-baseline`.
- Baseline Android build: VERIFIED by GitHub Actions run #6 (`assembleDebug` passed).
- Stable development signing: VERIFIED by GitHub Actions run #25; the configured `BARE_DEBUG_KEYSTORE_B64` secret decoded and passed `keytool` validation before the APK build.
- APK update versioning: IMPLEMENTED; CI supplies increasing `versionCode` from `github.run_number` and `versionName` in `MAJOR.MINOR.PATCH` format.
- In-place APK update on a device: NOT VERIFIED; current user observation is that v13 → v25 → v26 was performed as uninstall/install.
- Runtime/device behavior: PARTIALLY OBSERVED by user; backup archives are being created under `/data/data/com.bare/files/backups/*.bare.zip`.
- Functional backup/restore parity: NOT IMPLEMENTED.

## Current CI Evidence

- Run #6: GREEN baseline `assembleDebug` build.
- Run #25: GREEN build of the first P0 package-backup slice, including stable signing preparation and APK artifact upload.
- Run #26: GREEN build, including JVM unit tests and APK artifact upload.

## First P0 Vertical Slice

Implemented boundary:

`installed app → package discovery → capability resolution → backup plan → package/APK backup → manifest → archive → integrity → artifact metadata result → verification`

Implemented components:

- Android installed-package discovery with package/version/APK/split metadata.
- Broad package visibility request via `QUERY_ALL_PACKAGES` so the discovery path can enumerate installed packages subject to Android/device policy.
- Explicit capability resolution for `NON_ROOT`, `ADB`, `SHIZUKU`, and `ROOT`.
- `NON_ROOT` APK/package backup execution path.
- Versioned ZIP archive containing `manifest.json`, APK components, and `integrity.json`.
- SHA-256 integrity hashing and archive-structure verification.
- App-private backup staging under `files/backups`.
- Basic UI to discover visible packages and trigger APK backup.
- JVM unit-test coverage for the SHA-256 primitive, with CI execution enabled.

## Runtime Observation / Gap

Observed by user:

- Backup archive is created at `/data/data/com.bare/files/backups/*.bare.zip`.
- Archive contains `base.apk`, `split_*.apk` where applicable, `integrity.json`, and `manifest.json`.
- Current discovery is showing internal/system applications but has not yet demonstrated installed third-party applications such as WhatsApp or ChatGPT.

This is a runtime observation, not yet an independently captured device verification result.

## P0 Verification Gaps

- Real-device package discovery for third-party/user-installed applications is not yet verified after enabling `QUERY_ALL_PACKAGES`.
- Actual APK backup execution and resulting archive integrity are not yet independently device-verified.
- `ADB`, `SHIZUKU`, and `ROOT` providers are modeled but not integrated/executable yet.
- App-data backup/restore is not implemented.
- Restore path is not implemented.
- Package visibility behavior and `QUERY_ALL_PACKAGES` policy/device behavior are not yet validated across target Android/OEM environments.
- In-place APK update without uninstall remains unverified.

The first slice is therefore `IMPLEMENTED / CI-BUILD-VERIFIED / RUNTIME-PARTIALLY-OBSERVED`, with critical device verification gaps remaining.

## Next Lifecycle Target

Verify the package discovery change on a real device first. Then continue the provider boundary:

1. `NON_ROOT` runtime package/APK backup verification, including user-installed apps.
2. ADB provider.
3. Shizuku provider.
4. Root provider.
5. Application data and related-data capabilities.
6. Restore flow, incremental backup, scheduling, storage expansion, and parity/regression coverage.
