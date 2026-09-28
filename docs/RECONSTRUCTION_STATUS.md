# BΛR☰ Reconstruction Status

## Baseline
- Reference: Swift Backup 5.1.0, version code 620
- Reference artifact: supplied `SwiftBackup-5.1.0-620-decompiled.zip`
- Reconstruction branch: `rewrite`
- Canonical handoff: `docs/bare.md`
- Target: 1:1 Reference fidelity except explicitly Authorized Deviations

## Foundation
- Android skeleton: COMPLETE
- Java source: ACTIVE
- Android Views/XML: ACTIVE
- Kotlin: NOT USED
- Compose: NOT ENABLED
- namespace/applicationId: `com.bare`
- minSdk/compileSdk/targetSdk: 26/37/37
- versionName: `1.0`
- versionCode: `BARE_VERSION_CODE`, fallback 1
- Application: `com.bare.BaReApp`
- Launcher: `com.bare.intro.IntroActivity`
- Theme: `BaReTheme`
- Branding: BΛR☰
- `bare_logo.png`: NOT YET PORTED; deferred to visual/asset parity phase

## Reference audit
**COMPLETE** — inventory/evidence in `docs/REFERENCE_AUDIT.md`.

## Home reconstruction
**STATUS: CONTRACTS PORTED / RUNTIME NOT VERIFIED**

Implemented:
- four-page Home pager/data models
- Dashboard/Cloud/Schedule/Account ViewModels
- Reference quick-action ordering/action IDs
- ScheduleData/ScheduleItem contracts
- repository/service/action boundaries
- identity/contributor boundaries
- storage boundary
- cloud-provider boundary separate from backend
- telemetry boundary

## Firebase/backend audit checkpoint
**STATUS: CONTRACT BATCH PORTED; PAYLOAD AUDIT PARTIAL**

Confirmed paths:
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

### Ported
- `ReferenceBackendContract`
- `BaReBackendRepository`
- `BackendResult`
- `CloudAppMetadata`
- `CloudMetadataRepository`
- `BaReFolderItem`
- `FolderRepository`
- `CloudFolderRepository`
- `BackupCountsRepository` + `BackupCountsService`
- `ContributorRegistrationData`
- `ContributorRegistrationRepository` + service
- `PurchaseVerificationRepository` + service
- `CloudProviderRepository` + `CloudAccessService`
- `TelemetryService`

### What remains UNKNOWN / IN PROGRESS
- Full purchase verification payload/schema: UNKNOWN
- Full appData consumer graph: UNKNOWN
- Complete cloud_v1/apps writer/reader call graph: IN PROGRESS
- Complete cloud_v1/folders lifecycle: IN PROGRESS
- All SMS/call count writers: IN PROGRESS
- Contributor mutation/update lifecycle: IN PROGRESS
- Anonymous/account migration lifecycle: IN PROGRESS
- Full re3 call graph across remaining features: NOT COMPLETE

### Firebase → Supabase rule
No mechanical rename. No invented Supabase schema/RLS/auth claims.

Separation is:
1. BaRe backend/account metadata → future Supabase adapter
2. Drive/etc. backup providers → CloudProviderRepository
3. Local Android state/scheduler → local repositories
4. Crash/diagnostics → TelemetryService

## Intro
**IN PROGRESS** — launcher/permission/transition reconstructed, but full Reference state machine and dependency flows remain.

## Verification
No parity claim from build alone.
Required classification: MATCH / AUTHORIZED DEVIATION / UNAUTHORIZED DEVIATION / UNKNOWN / BLOCKED.
Required sequence: build → install → runtime → visual → behavior → feature → deviation audit → verification.

## Session handoff checkpoint
**CURRENT PHASE: PHASE 2 DOMAIN RECONSTRUCTION — BACKEND CONTRACT LAYER**

### Completed in latest batch
- Cloud app metadata domain DTO
- cloud_v1/apps repository boundary
- cloud_v1/folders repository boundary
- SMS/call backup count service
- contributor registration service
- purchase verification service with explicit UNKNOWN state
- common BackendResult error boundary
- persistent status/checkpoint update

### Exact next work — do not restart
1. Complete concrete `re3` call-site audit for apps/folders/counts/contributor/purchase.
2. Implement only the proven repository methods/payloads.
3. Audit account anonymous/migration/sign-out behavior.
4. Determine exact Supabase adapter contract from completed evidence.
5. Implement Supabase adapter/schema only after evidence is sufficient; otherwise leave UNKNOWN.
6. Wire Home services to real repositories instead of temporary ViewModel mutations.
7. Then proceed to the next Reference feature slice.

Start next session from these directories:
- `app/src/main/java/com/bare/backend`
- `app/src/main/java/com/bare/cloud`
- `app/src/main/java/com/bare/folders`
- `app/src/main/java/com/bare/messagescalls`
- `app/src/main/java/com/bare/contributor`
- `app/src/main/java/com/bare/purchase`

## Documentation policy
- Root documentation: `README.md` only.
- All project docs under `docs/`.
- `docs/REFERENCE_BACKEND_CONTRACT.md`: backend evidence.
- `docs/RECONSTRUCTION_STATUS.md`: session checkpoint and next steps.
