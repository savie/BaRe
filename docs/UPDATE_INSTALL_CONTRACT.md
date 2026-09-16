# APK Update / Install Contract

## Goal

Development APK updates must preserve the installed BaRe application instead of requiring uninstall/reinstall.

## Android update invariants

An APK is an update candidate when:

- `applicationId` remains `com.bare`.
- The new APK uses the same signing identity as the installed APK.
- `versionCode` is greater than the installed version.
- The APK is otherwise installable for the target device.

Android uses the signing key to establish that an APK update belongs to the same application, and `versionCode` is the package version number used for version ordering.

## CI versioning

GitHub Actions supplies:

- `BARE_VERSION_CODE = github.run_number`
- `BARE_VERSION_NAME = 0.1.<run_number>`

This makes successive CI APKs monotonically versioned within the workflow run sequence.

## CI signing

The CI workflow supports a stable development debug keystore through the repository Actions secret:

- `BARE_DEBUG_KEYSTORE_B64`

When the secret exists, the workflow installs it as the runner's `~/.android/debug.keystore` before `assembleDebug`. When the secret is absent, Gradle uses the runner's ephemeral default debug keystore; such APKs are not a stable update channel across different CI runners.

The private keystore must never be committed to the repository. GitHub Actions secrets are the intended storage boundary for CI signing material.

## ADB update path

For an APK that has the same signing identity and a higher `versionCode`:

```bash
adb install -r <bare-apk>
```

`-r` requests reinstall/update while retaining application data. A successful update is a runtime verification point; merely producing an APK is not proof that update-in-place works.

## Verification requirement

Before declaring update-in-place verified, test at minimum:

1. Install a baseline APK.
2. Launch and confirm the package is `com.bare`.
3. Install a later APK with `adb install -r`.
4. Confirm installation succeeds without uninstall.
5. Confirm application data/state that should survive the update remains available.
6. Confirm the reported version increased.

## Security boundary

The stable development signing key is a credential. It must remain outside source control and be protected with the minimum required CI access. Release/distribution signing must use a separate controlled release key and must not reuse a public development credential.
