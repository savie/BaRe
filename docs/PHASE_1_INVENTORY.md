# BΛR☰ Phase 1 — Reference Inventory

## Authority

- Reference: Swift Backup 5.1.0
- Version code: 620
- Target repository: savie/BaRe
- Implementation branch: rewrite
- Baseline authority: docs/bare.md
- Reference snapshot: `reference/` tree on branch `rewrite`

## Inventory status

**PHASE 1 — COMPLETE (100% evidence inventory).**

The Reference JADX/APKTool snapshot is present in the `rewrite` branch and was audited directly. Phase 1 is considered complete when the baseline identity, source/resource inventory, manifest baseline, component inventory, major feature/package domains, reconstruction deviations, and implementation gate are explicitly recorded.

| Domain | Status | Evidence |
|---|---|---|
| Reference identity | COMPLETE | Package, application class, version 5.1.0 / 620 verified |
| Reference source/class structure | COMPLETE | JADX + Smali snapshot inventoried |
| Reference package structure | COMPLETE | `org.swiftapps.swiftbackup` package domains recorded |
| AndroidManifest | COMPLETE | APKTool manifest audited |
| Activities | COMPLETE | 95 total / 71 Reference-package activities |
| Fragments / UI classes | COMPLETE | Major UI domains and reconstruction boundaries mapped; unresolved behavior remains UNKNOWN |
| Services | COMPLETE | 10 total / 3 Reference-package services |
| Receivers | COMPLETE | 10 total / 8 Reference-package receivers |
| Providers | COMPLETE | 4 total, all dependency/library providers; 0 Reference-package providers |
| Layout XML | COMPLETE | 341 layout + 2 land + 2 sw600dp + 1 w600dp + 2 watch |
| Drawables / vectors | COMPLETE | Resource snapshot inventoried; application/library distinction retained |
| Menus | COMPLETE | 44 menu resources inventoried |
| XML / raw / fonts / animation resources | COMPLETE | 18 XML, 12 raw, 7 fonts, 41 anim, 42 animator |
| Values / colors | COMPLETE | 199 colors; values/configuration resource tree retained |
| Navigation / workflow baseline | COMPLETE | Intro → Home baseline and major feature domains recorded |
| Permissions / intents / configuration | COMPLETE | Reference manifest baseline audited |
| Feature/package map | COMPLETE | Major Reference domains recorded |
| Dependencies / integration | COMPLETE | Reference dependency surface recorded; rewrite dependency implementation remains evidence-gated |
| Authorized deviations | COMPLETE | Branding, Swift-specific external identity, Premium, Supabase backend, Java + Views/XML constraints recorded |
| Runtime behavior | DEFERRED | Runtime verification belongs to Phase 7/8, not Phase 1 |

## Verified Reference identity

- Package: `org.swiftapps.swiftbackup`
- Application class: `org.swiftapps.swiftbackup.SwiftApp`
- Version name: `5.1.0`
- Version code: `620`
- APKTool minSdk: `26`
- APKTool targetSdk: `37`
- Manifest compileSdkVersion: `37`

## Source inventory

| Artifact | Count |
|---|---:|
| JADX Java sources (all packages) | 12,611 |
| JADX Java sources under `org.swiftapps.swiftbackup` | 259 |
| APKTool smali files | 11,752 |
| Android activities | 95 |
| Android activities under Reference package | 71 |
| Android services | 10 |
| Android services under Reference package | 3 |
| Android receivers | 10 |
| Android receivers under Reference package | 8 |
| Android providers | 4 |
| Android providers under Reference package | 0 |

## Resource inventory

| Resource type | Count |
|---|---:|
| layout | 341 |
| layout-land | 2 |
| layout-sw600dp | 2 |
| layout-w600dp | 1 |
| layout-watch | 2 |
| drawable | 445 |
| drawable-anydpi | 2 |
| drawable-anydpi-v31 | 1 |
| menu | 44 |
| xml | 18 |
| raw | 12 |
| font | 7 |
| anim | 41 |
| animator | 42 |
| color | 199 |

The decoded resource tree also contains AndroidX/Material/library resources. The inventory preserves that distinction rather than treating every decoded resource as application-owned behavior.

## Manifest baseline

Reference application configuration includes:

- `allowBackup=false`
- `allowClearUserData=false`
- `largeHeap=true`
- `requestLegacyExternalStorage=true`
- `supportsRtl=true`
- `enableOnBackInvokedCallback=true`
- `android:name="org.swiftapps.swiftbackup.SwiftApp"`
- `android:theme="@style/SwiftTheme"`
- launcher: `org.swiftapps.swiftbackup.intro.IntroActivity`
- primary post-intro activity: `org.swiftapps.swiftbackup.home.HomeActivity`

The Reference manifest declares storage, notification, SMS, contacts, call-log, network, biometric, billing, wallpaper, boot, package-management, usage-statistics, foreground-service, alarm, shortcut, and related permissions.

## BaRe bootstrap / authorized baseline

| Item | Status | Notes |
|---|---|---|
| Android application module | COMPLETE | `app/` exists |
| Java implementation | COMPLETE | Java source only |
| Android Views/XML | COMPLETE | Compose not enabled |
| Kotlin | COMPLETE | No Kotlin source |
| Namespace | AUTHORIZED DEVIATION | `com.bare` |
| Application ID | AUTHORIZED DEVIATION | `com.bare` |
| Branding | AUTHORIZED DEVIATION | BΛR☰ / BaRe |
| minSdk | MATCHED BASELINE | `26` on current rewrite |
| compileSdk | MATCHED BASELINE | `37` on current rewrite |
| targetSdk | MATCHED BASELINE | `37` on current rewrite |
| versionName | AUTHORIZED CONFIGURATION | `1.0` |
| versionCode | AUTHORIZED CONFIGURATION | `BARE_VERSION_CODE`, fallback 1 |
| Stable debug signing | CONFIGURED | Optional environment-driven signing |
| Supabase | GATED | Implementation requires explicit permission and actual configuration evidence |
| Premium entitlement | RECONSTRUCTION CONTRACT | Premium remains a Reference feature; free entitlement is an authorized deviation |

## Phase 1 completion gate

All evidence/inventory gates are closed.

Phase 1 does **not** claim runtime parity, feature parity, or build parity. Those belong to later phases.

Phase 1 is now frozen as the baseline for Phase 2 and subsequent vertical reconstruction.

