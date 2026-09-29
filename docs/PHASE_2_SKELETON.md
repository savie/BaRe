# BΛR☰ Phase 2 — Reference Skeleton Gate

## Scope

Phase 2 is the structural skeleton phase defined by `docs/bare.md`.

Acceptance is based on the Reference component boundaries and their required BaRe registration/source presence. It does **not** claim implementation behavior or runtime parity.

## Gate result

**PHASE 2 — COMPLETE (100% structural skeleton coverage).**

Audit source:
- Reference: `reference/apktool/AndroidManifest.xml`
- BaRe: `app/src/main/AndroidManifest.xml`
- BaRe Java source tree under `app/src/main/java`

## Component coverage

| Component | Reference package count | BaRe registered | BaRe Java source | Result |
|---|---:|---:|---:|---|
| Activities | 71 | 71 | 71 | MATCH |
| Services | 3 | 3 | 3 | MATCH |
| Receivers | 8 | 8 | 8 | MATCH |
| Providers owned by Reference package | 0 | 0 | 0 | MATCH |

### Provider boundary

The Reference APK manifest contains 4 providers total, but all 4 are dependency/library providers and none belongs to `org.swiftapps.swiftbackup`.

Phase 2's application skeleton gate therefore requires 0 Reference-owned providers. Dependency provider declarations remain a dependency integration concern and are not silently reclassified as BaRe-owned components.

## Activity coverage

All 71 Reference-package Activities have a corresponding `com.bare.*` Activity source and manifest registration.

Reference → BaRe package substitution is limited to the application identity migration:

`org.swiftapps.swiftbackup.*` → `com.bare.*`

No Activity was omitted from the structural skeleton.

## Service coverage

All 3 Reference-package Services are present and registered:

- `TaskService`
- `ScheduleService`
- `HeadlessSmsSendService`

The current manifest also preserves the Reference foreground-service type boundary for the task/schedule services.

## Receiver coverage

All 8 Reference-package Receivers are present and registered:

- `AlarmReceiver`
- `LocaleChangedReceiver`
- `BootReceiver`
- `NotificationTaskCancelReceiver`
- `PackageInstallResultReceiver`
- `ShortcutPinnedReceiver`
- `SmsReceiver`
- `MmsReceiver`

The audited intent, export, permission, and boot/locale/SMS/MMS boundaries are preserved where reconstructed.

## Manifest structural audit

Reference and BaRe were compared directly.

### Component result

- Reference internal Activities: 71
- BaRe internal Activities: 71
- Missing internal Activities: 0
- Reference internal Services: 3
- BaRe internal Services: 3
- Missing internal Services: 0
- Reference internal Receivers: 8
- BaRe internal Receivers: 8
- Missing internal Receivers: 0
- Reference internal Providers: 0
- BaRe internal Providers: 0

### Permission delta

The Reference manifest contains 34 `uses-permission` declarations; the current BaRe manifest contains 30.

The four Reference-only declarations are:

1. `android.permission.QUERY_ADVANCED_PROTECTION_MODE`
2. `com.google.android.providers.gsf.permission.READ_GSERVICES`
3. `org.swiftapps.swiftbackup.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`
4. `moe.shizuku.manager.permission.API_V23`

These are **not counted as missing Phase 2 application-owned component boundaries**.

Interpretation is evidence-bound:
- `DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION` is a Reference-defined permission tied to the Reference package identity and dependency/runtime setup.
- GSF and Shizuku permissions are dependency/integration surface.
- `QUERY_ADVANCED_PROTECTION_MODE` is a Reference permission declaration but its runtime requirement has not been separately verified in BaRe.

No behavior is inferred from these declarations. They remain an explicit manifest/dependency audit item for the later integration/runtime stages.

### Feature declarations

Reference and BaRe both expose the audited 4 hardware feature declarations. No feature declaration was missing in the structural audit.

## Structural duplication check

The rewrite manifest was audited for duplicate Activity registrations during the reconstruction batch.

Result:
- 71 internal Reference Activities registered
- no duplicate Activity names
- duplicate/misnamed Home Search registration removed during reconstruction
- Services and Receivers retain one registration per Reference component boundary

## Phase 2 freeze rule

The following are intentionally **not** part of the Phase 2 completion claim:

- Activity UI parity
- Fragment behavior parity
- service implementation behavior
- receiver side effects
- provider SDK behavior
- cloud/backend implementation
- backup/restore implementation
- runtime verification
- visual parity

Those belong to later phases and remain UNKNOWN/BLOCKED where evidence has not yet been reconstructed.

## Phase 2 completion statement

**Phase 2 is frozen at 100% structural skeleton coverage.**

No known Reference-owned Activity, Service, Receiver, or Provider boundary is missing from the BaRe rewrite skeleton.

Next work starts from the frozen P1/P2 baseline and moves into Phase 3 + Phase 4 dependency-driven reconstruction without reopening the inventory from zero.
