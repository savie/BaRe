# BΛR☰ Phase 1 — Reference Inventory

## Authority

- Reference: Swift Backup 5.1.0
- Version code: 620
- Target repository: savie/BaRe
- Implementation branch: rewrite
- Baseline authority: docs/bare.md

## Inventory status

The current GitHub rewrite branch contains the BaRe Android bootstrap, but the Reference JADX/APKTool source/resource snapshot is not present in the accessible GitHub tree.

Therefore Reference-dependent inventory items are not marked MATCH.

| Domain | Status | Evidence / blocker |
|---|---|---|
| Reference source/class structure | BLOCKED | Reference source tree not accessible in rewrite |
| Reference package structure | BLOCKED | Reference source tree not accessible in rewrite |
| AndroidManifest | BLOCKED | Reference manifest not accessible in rewrite |
| Activities | BLOCKED | Reference source tree not accessible in rewrite |
| Fragments | BLOCKED | Reference source tree not accessible in rewrite |
| Services | BLOCKED | Reference source tree not accessible in rewrite |
| Receivers | BLOCKED | Reference source tree not accessible in rewrite |
| Providers | BLOCKED | Reference source tree not accessible in rewrite |
| Layout XML | BLOCKED | Reference resource tree not accessible in rewrite |
| Drawables / vectors | BLOCKED | Reference resource tree not accessible in rewrite |
| Menus / values / styles / themes | BLOCKED | Reference resource tree not accessible in rewrite |
| Navigation / workflows | BLOCKED | Reference behavior/source evidence not accessible |
| Permissions / intents / configuration | BLOCKED | Reference manifest/source evidence not accessible |
| Backup / restore | BLOCKED | Reference implementation evidence not accessible |
| Settings / account / Premium | BLOCKED | Reference implementation evidence not accessible |
| Storage / database | BLOCKED | Reference implementation evidence not accessible |
| Dependencies | BLOCKED | Reference build/dependency evidence not accessible |
| Runtime behavior | BLOCKED | Runtime/reference evidence not accessible |

## BaRe bootstrap inventory

| Item | Status | Notes |
|---|---|---|
| Android application module | MATCH (bootstrap requirement) | app/ exists |
| Java implementation | MATCH | MainActivity.java; no Kotlin source introduced |
| Android Views/XML | MATCH (bootstrap requirement) | View-based Activity and XML style |
| Compose | MATCH (disabled) | Not enabled in app/build.gradle |
| Kotlin | MATCH (not used) | No Kotlin source/configuration introduced |
| Namespace | AUTHORIZED DEVIATION | com.bare per handoff |
| Application ID | AUTHORIZED DEVIATION | com.bare per handoff |
| Branding | AUTHORIZED DEVIATION | BΛR☰ per handoff |
| minSdk | AUTHORIZED CONFIGURATION | 23 per current project requirement |
| compileSdk | AUTHORIZED CONFIGURATION | 35 per current project requirement |
| targetSdk | AUTHORIZED CONFIGURATION | 35 per current project requirement |
| versionName | AUTHORIZED CONFIGURATION | 1.0 per current project requirement |
| versionCode | AUTHORIZED CONFIGURATION | BARE_VERSION_CODE, fallback 1 |
| Stable debug signing | CONFIGURED | Optional environment-driven signing |
| Supabase | UNKNOWN | Actual backend state/configuration not yet audited |
| Premium entitlement | UNKNOWN | Reference behavior not yet inventoried |

## Gate

Phase 1 cannot be declared complete until the Reference source/resource snapshot is accessible for evidence-backed inventory and mapping.
