# BΛR☰ Reconstruction Status

## Baseline

- Reference: Swift Backup 5.1.0, version code 620
- Reference artifact: supplied `SwiftBackup-5.1.0-620-decompiled.zip`
- Reconstruction branch: `rewrite`
- Canonical handoff: `docs/bare.md`
- Target: 1:1 Reference fidelity except explicitly Authorized Deviations

## Foundation

- Android project skeleton: COMPLETE
- Java source implementation: ACTIVE
- Android Views/XML: ACTIVE
- Kotlin source: NOT USED
- Compose: NOT ENABLED
- Namespace/applicationId: `com.bare`
- minSdk/compileSdk/targetSdk: 26/37/37
- versionName: `1.0`
- versionCode: `BARE_VERSION_CODE`, fallback `1`
- Application class: `com.bare.BaReApp`
- Launcher: `com.bare.intro.IntroActivity`
- Theme: `BaReTheme`
- User-facing branding: BΛR☰
- Reference logo `bare_logo.png`: NOT YET PORTED; source exists on `v1.0/rebaseline` and is intentionally deferred until asset/visual parity phase.

## Reference audit

**COMPLETE**

Verified Reference inventory is recorded in `docs/REFERENCE_AUDIT.md`.

- Reference package: `org.swiftapps.swiftbackup`
- Version: 5.1.0 / 620
- JADX Java sources: 12,611
- Reference-package Java sources: 259
- APKTool smali: 11,752
- Activities: 95 / 71 Reference-package
- Services: 10 / 3 Reference-package
- Receivers: 10 / 8 Reference-package
- Providers: 4 / 0 Reference-package
- Layouts: 341
- Drawables: 445
- Menus: 44
- XML resources: 18
- Raw resources: 12
- Fonts: 7

## Home reconstruction — data/domain layer

**STATUS: PORTED CONTRACTS / NOT YET RUNTIME-VERIFIED**

Implemented:

- Reference-shaped Home pager with four pages
- Dashboard, Cloud, Schedule, Account ViewModels
- Reference quick-action ordering and Home action IDs
- Reference ScheduleItem.Type constants
- Reference ScheduleData defaults and legacy ordering
- Backend-neutral identity model
- Dashboard repository/action boundary
- Cloud repository/service boundary
- Schedule repository/service boundary
- Account/identity/contributor repository/service boundaries
- Storage service boundary
- Cloud-provider boundary separated from backend
- Telemetry boundary separated from domain

## Firebase/backend audit checkpoint

**STATUS: PARTIAL AUDIT — CONTRACTS PORTED**

Confirmed Reference Firebase paths/contracts:

- `appData`
- `users/{uid}`
- `users/{uid}/userInfo`
- `users/{uid}/cloud_v1`
- `tags/{cloudTag}/apps`
- `tags/{cloudTag}/folders`
- `tags/{cloudTag}/smsBackupsCount`
- `tags/{cloudTag}/callLogBackupsCount`
- `purchase_verifications/{uid}/{obfuscated-key}`
- `contributorDetails/{uid-prefix}`

Ported domain/repository contracts:

- `ReferenceBackendContract`
- `BaReBackendRepository`
- `CloudAppMetadata` field shape + Reference upload sanitization behavior
- `FolderRepository` + `BaReFolderItem`
- `BackupCountsRepository`
- `ContributorRegistrationData`
- `ContributorRegistrationRepository`
- `PurchaseVerificationRepository` boundary
- `CloudProviderRepository` + `CloudAccessService`
- `TelemetryService`

### Firebase → Supabase rule

Do NOT mechanically rename Firebase to Supabase.

The audited architecture separates:

1. BaRe backend/account metadata → future Supabase adapter
2. Cloud backup providers (Drive/etc.) → CloudProviderRepository
3. Local Android state/scheduler → local repositories
4. Crash/diagnostics telemetry → TelemetryService

No Supabase schema, RLS, table relation, or auth claim has been invented yet.

### Known UNKNOWN / incomplete backend areas

- Full payload/schema of `purchase_verifications`: UNKNOWN
- Full `appData` consumers outside audited Home slice: UNKNOWN
- Complete `cloud_v1/apps` read/write call graph: IN PROGRESS
- Complete `cloud_v1/folders` metadata lifecycle: IN PROGRESS
- All SMS/call count writers and consumers: IN PROGRESS
- Complete contributor registration mutation lifecycle: IN PROGRESS
- Complete account migration/anonymous lifecycle: IN PROGRESS
- Full `re3` call graph across all 95 activities: NOT YET COMPLETE

## Intro

**IN PROGRESS**

Implemented:

- BaReApp notification channels
- IntroActivity launcher
- Reference-derived intro structure
- Storage permission entry
- Android 13+ notification permission entry
- Intro completion persistence
- Home transition

Not parity-complete:

- full Reference Intro ViewModel/state machine
- cloud sign-in flow
- first-run restore
- password strategy
- Shizuku
- exact custom view styling/resources
- complete application initialization

## Verification

No parity claim is made from build status alone.

Each capability must eventually be classified:

- MATCH
- AUTHORIZED DEVIATION
- UNAUTHORIZED DEVIATION
- UNKNOWN
- BLOCKED

Required verification sequence:

`build → install → runtime → visual → behavior → feature → deviation audit → verification`

## Session handoff checkpoint

**CURRENT PHASE: PHASE 1 AUDIT/MAPPING → PHASE 2 DOMAIN RECONSTRUCTION**

Completed this session batch:

- Home repository/service/action boundaries
- Reference backend path contract
- Cloud provider vs backend separation
- CloudMetadata domain field port
- Folder domain/repository contract
- SMS/call backup count contract
- Contributor registration model/repository contract
- Purchase verification UNKNOWN boundary
- Persistent reconstruction status checkpoint

### Exact next work

1. Finish the `re3` call graph for `cloud_v1/apps`, folders, counts, contributor, and purchase.
2. Port remaining concrete repositories/services/actions from those call sites.
3. Implement actual BaRe/Supabase adapter only after payload/schema evidence is complete.
4. Port Reference Home Activity/Fragment behavior against those real services.
5. Continue outward from Home into the next Reference feature slice.
6. Only then begin full visual/resource parity and runtime verification.

Do not restart the audit from the beginning in a new session. Start from this checkpoint and the files under `app/src/main/java/com/bare/backend`, `com/bare/cloud`, `com/bare/folders`, `com/bare/messagescalls`, `com/bare/contributor`, and `com/bare/purchase`.

## Documentation policy

- Root documentation file: `README.md` only.
- Project documentation belongs under `docs/`.
- `docs/REFERENCE_BACKEND_CONTRACT.md` records backend evidence.
- This file records implementation checkpoint and exact next steps.
