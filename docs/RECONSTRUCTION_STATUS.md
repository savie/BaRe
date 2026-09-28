# BΛR☰ Reconstruction Status

## Baseline

- Reference: Swift Backup 5.1.0, version code 620
- Reference artifact: supplied `SwiftBackup-5.1.0-620-decompiled.zip`
- Reconstruction branch: `rewrite`
- Canonical handoff: `docs/bare.md`
- Target: 1:1 Reference fidelity except explicitly Authorized Deviations

## Phase 1

### Foundation

- Android project skeleton: COMPLETE
- Java source implementation: COMPLETE (bootstrap)
- Android Views/XML: COMPLETE (bootstrap foundation)
- Kotlin source: NOT USED
- Kotlin JVM target: NOT CONFIGURED
- Compose: NOT ENABLED
- Namespace: `com.bare`
- Application ID: `com.bare`
- minSdk: 26 (aligned with Reference)
- compileSdk: 37 (aligned with Reference)
- targetSdk: 37 (aligned with Reference)
- versionName: `1.0`
- versionCode: `BARE_VERSION_CODE`, fallback `1`
- Stable debug signing: CONFIGURED as optional environment-driven signing
- Packaging exclusions: CONFIGURED

### Identity / naming alignment

- Application class: `com.bare.BaReApp`
- Launcher Activity: `com.bare.intro.IntroActivity`
- Theme resource: `BaReTheme`
- User-facing branding: `BΛR☰`
- Bootstrap `MainActivity`: REMOVED
- Reference `SwiftApp` naming: replaced at the BaRe application identity layer; internal Reference identifiers will be renamed selectively, not by unsafe global replacement.
- Android resource identifiers cannot safely use `BΛR☰` as a resource name, so valid `BaRe` identifiers are used where canonical BΛR☰ characters are not valid.

### Reference audit

**STATUS: COMPLETE**

The supplied Reference artifact is now directly accessible and has been audited.

Verified:

- Reference package: `org.swiftapps.swiftbackup`
- Application class: `org.swiftapps.swiftbackup.SwiftApp`
- Version: `5.1.0`
- Version code: `620`
- JADX Java sources: 12,611 total
- Reference-package Java sources: 259
- APKTool smali: 11,752
- Activities: 95 total / 71 Reference-package
- Services: 10 total / 3 Reference-package
- Receivers: 10 total / 8 Reference-package
- Providers: 4 total / 0 Reference-package
- Layouts: 341
- Drawables: 445
- Menus: 44
- XML resources: 18
- Raw resources: 12
- Fonts: 7

Detailed evidence is recorded in `docs/REFERENCE_AUDIT.md`.

### Reconstruction slice — Intro

**STATUS: IN PROGRESS**

Implemented from Reference evidence:

- `BaReApp` application class
- Reference notification channel IDs/categories
- `IntroActivity` launcher
- Reference-derived intro screen structure
- Sign-in/benefit presentation structure
- Storage permission entry
- Android 13+ notification permission entry
- Intro completion persistence
- Transition to `HomeActivity`

Not yet parity-complete:

- Reference Intro ViewModel/state machine
- Cloud sign-in flow
- first-run restore flow
- password strategy flow
- Shizuku flow
- Firebase diagnostics/error dialog behavior
- exact Reference custom view styling/resources
- exact dependency versions
- exact Reference application initialization beyond the currently reconstructed notification-channel slice

Temporary reconstruction gate:

- `HomeActivity` is currently a shell so the launcher flow has a valid target.
- This shell is **not MATCH** and must be replaced by the Reference `HomeActivity` reconstruction.

### Phase 1 mapping

**STATUS: IN PROGRESS**

Still being completed:

1. Manifest component → source mapping
2. Screen/layout → Activity/Fragment mapping
3. Resource → feature mapping
4. Navigation/workflow mapping
5. Dependency/integration mapping
6. Explicit Authorized Deviation register
7. Reconstruction sequencing

## Important package rule

Reference internal package is `org.swiftapps.swiftbackup`.

The handoff explicitly prohibits global renaming of internal identifiers merely because they contain Swift. Internal package/class identifiers must therefore be preserved where technically feasible and only changed when an explicit Authorized Deviation or technical necessity is evidenced.

## Verification policy

Every reconstructed capability must be classified as:

- MATCH
- AUTHORIZED DEVIATION
- UNAUTHORIZED DEVIATION
- UNKNOWN
- BLOCKED

Build success alone does not establish parity. Runtime success alone does not establish feature parity.

## Current gate

**PHASE 1 — AUDIT COMPLETE / MAPPING IN PROGRESS**

The Reference-access blocker is resolved.

Next execution gate:

`Reference inventory → mapping → reconstruction sequence → first real feature implementation`.
