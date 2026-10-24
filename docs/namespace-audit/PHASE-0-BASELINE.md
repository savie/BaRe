# BΛR☰ Phase 0 — Baseline Record

**Branch:** `feature/namespace-barebackup`  
**Record date:** 2026-10-24  
**Purpose:** Freeze the currently known-good CI artifact and document gaps before any migration edits.

## Known-good CI artifact

| Field | Recorded value | Evidence / status |
|---|---|---|
| Repository | `savie/BaRe` | Repository target |
| Branch | `feature/namespace-barebackup` | GitHub Actions artifact metadata |
| Build commit | `0d4cea9cfaff013d160d5e51601c3bc443da2ab6` | Artifact metadata |
| Workflow run | [39978620349](https://github.com/savie/BaRe/actions/runs/39978620349) | Job completed successfully |
| Job | `build-namespace-apk` | Completed / success |
| Artifact | `barebackup-namespace-test` | Artifact metadata |
| Artifact ID | `12512003526` | Artifact metadata |
| Artifact SHA-256 | `d7346a9e01b27ee861fbc076b27a42516710d243013d0198e97bc36e82c69cec` | GitHub artifact archive digest; **this is the ZIP artifact digest, not the APK digest** |
| Artifact size | 13,857,208 bytes | GitHub artifact metadata |
| Artifact created | 2026-10-23 15:30 UTC | GitHub artifact metadata |
| APK SHA-256 | `281c2454fd55e4a5c3234ab32443e50a08b7af9546d2d93af849c3cdc1b17ec8` | Computed from `BaRe-namespace-signed.apk` extracted from the CI artifact ZIP |
| APK signing certificate SHA-256 | `1b:af:08:dc:ac:7a:ee:98:e4:76:97:95:a7:1e:3f:74:07:0f:db:56:b0:3a:44:c3:11:9d:27:3a:66:72:23:91` | Extracted `META-INF/ANDROIDD.RSA` certificate with `keytool`; subject/issuer `CN=Android Debug, O=Android, C=US`. `apksigner` was not available in this environment. |
| Effective package ID in built APK | **Not yet independently verified** | Must inspect the APK manifest; do not infer from workflow success |
| Version name/code in built APK | **Not yet independently verified** | Must inspect the APK manifest |

## Source-state observations

- `bare-implementation/AndroidManifest.xml` at this branch currently declares `package="org.swiftapps.swiftbackup"`, with application class `org.swiftapps.swiftbackup.SwiftApp` and authorities/redirect schemes containing the same namespace.
- This differs from the intended installed identity `com.bareapps.barebackup` described in project notes. The current workflow includes a step named **“Apply minimal package namespace changes”**, so the built artifact may differ from the checked-in source. This must be proven by inspecting the APK, not assumed.
- The workflow job also has a step named **“Replace native library with reconstructed JNI implementation”**. Treat that as an explicit build-time source mutation until the workflow is audited and made deterministic.
- The source resource `bare-implementation/res/values/strings.xml` still has `<string name="swift_backup">Swift Backup</string>`; the launcher manifest references that key. A branding edit made only in source may not survive if CI imports or overwrites strings from another branch.
- Combined status endpoint returned no status rows for the inspected commits; the authoritative positive evidence currently available is the completed successful job and its artifact metadata above.

## Baseline protections

1. Do not modify `reference/apktool` or `reference/jadx`.
2. Do not modify `BareApp.kt`.
3. Keep all implementation changes inside `bare-implementation/`; keep audit records under `docs/namespace-audit/`.
4. Do not change the `reference` branch.
5. Do not perform namespace-wide replacements or change JNI/archive identifiers without a reviewed mapping and tests.

## Gate before Phase 1

**Phase 0 is partially recorded but not fully verified.** The artifact ZIP digest, extracted APK SHA-256, certificate fingerprint, and successful CI job are confirmed. Effective package ID and version metadata remain pending because this environment did not have `apksigner`/`aapt`/`apktool` available to decode the binary manifest. `jarsigner` emitted warnings about some Kotlin/Firebase metadata entries when streaming verification; use Android `apksigner verify --print-certs` in CI to make the APK signature check authoritative.

Before changing branding, locate and audit the exact workflow file and remove its dependency on branch-side source/config mutation, or prove each transformation is deterministic and represented by committed implementation inputs. Then inspect the APK manifest and complete the remaining package/version fields. Do not call the migration baseline fully verified until those values are recorded.
