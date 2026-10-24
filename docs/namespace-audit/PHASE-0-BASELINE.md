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
| APK SHA-256 | **Not yet verified** | Must hash the APK extracted from the artifact |
| APK signing certificate SHA-256 | **Not yet verified** | Must inspect the actual signed APK with `apksigner` |
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

**Phase 0 is partially recorded but not fully verified.** The artifact ZIP digest and successful CI job are confirmed; APK-level hash, certificate fingerprint, package ID, and version metadata remain pending because the APK itself has not yet been extracted and inspected in this run.

Before changing branding, audit the exact workflow file and remove its dependency on untracked branch-side source/config mutation, or prove each transformation is deterministic and represented by committed implementation inputs. Then inspect the signed APK and complete the missing artifact fields. Do not call the migration baseline fully verified until those values are recorded.
