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
- cloud summary aggregate contract

## Firebase/backend audit checkpoint
**STATUS: CALL-SITE AUDIT ADVANCED; CONTRACTS PORTED**

Confirmed Reference paths:
- `appData`
- `appData/activeSkus`
- `users/{uid}`
- `users/{uid}/userInfo`
- `users/{uid}/cloud_v1/{cloudDir}`
- `tags/{cloudTag}/apps`
- `tags/{cloudTag}/folders`
- `tags/{cloudTag}/smsBackupsCount`
- `tags/{cloudTag}/callLogBackupsCount`
- `purchase_verifications/{uid}/{obfuscated-key}`
- `contributorDetails/{uid-prefix}`

### Concrete Reference behavior now verified
- `re3` resolves current UID and current cloud tag/path.
- `ig1` reads `apps`, `folders`, SMS count, and call-log count to build the cloud summary.
- App summary counts only metadata with valid cloud details and sums `CloudMetadata.getTotalSize()`.
- Folder summary counts valid `FolderMetadata` entries.
- `FolderItem.writeToFirebaseNode()` writes to `tags/{cloudTag}/folders/{folderId}/folderItem`.
- `purchase_verifications/{uid}/{obfuscated-key}` is observed as a boolean verification node.
- `activeSkus` is a Firebase-backed list under `appData` and is used by the billing catalog flow.
- Contributor registration is read from `contributorDetails/{uid-prefix}`; Home menu reacts to existence/non-existence.
- Contributor data fields are: status, type, name, locales, telegram ID, Crowdin ID, PayPal ID.
- Cloud provider access remains separate from Firebase/Supabase backend state.

### Ported
- `ReferenceBackendContract`
- `BaReBackendRepository`
- `BackendResult`
- `CloudAppMetadata` with corrected Reference `hasBackups()` semantics
- `CloudMetadataRepository`
- `CloudSummaryRepository` + `CloudSummaryService`
- `BaReFolderItem`
- `FolderRepository`
- `CloudFolderRepository`
- `BackupCountsRepository` + `BackupCountsService`
- `ContributorRegistrationData`
- `ContributorRegistrationRepository` + service
- `PurchaseVerificationRepository` + service, now boolean-state based
- `BillingCatalogRepository`
- `CloudProviderRepository` + `CloudAccessService`
- `TelemetryService`

### Still UNKNOWN / IN PROGRESS
- Exact Supabase relational schema/RLS/auth claims: UNKNOWN until complete backend contract audit
- Complete cloud_v1/apps writer/reader graph outside current summary flow: IN PROGRESS
- Complete cloud_v1/folders mutation graph outside FolderItem: IN PROGRESS
- All SMS/call count writers: IN PROGRESS
- Contributor registration mutation/write path: IN PROGRESS
- Anonymous/account migration lifecycle: IN PROGRESS
- Full purchase/billing flow beyond activeSkus + verification boolean: IN PROGRESS
- Full re3 call graph across remaining features: NOT COMPLETE

### Firebase → Supabase rule
No mechanical rename. No invented Supabase schema/RLS/auth claims.

Separation:
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
**CURRENT PHASE: PHASE 2 DOMAIN RECONSTRUCTION — BACKEND CALL-GRAPH AUDIT**

### Latest completed batch
- Rebuilt Reference decompile locally for direct call-site audit.
- Verified `re3` node construction and current-cloud-tag logic.
- Verified cloud summary aggregation in `ig1`.
- Verified FolderItem Firebase write target.
- Verified purchase verification node is boolean.
- Verified `appData/activeSkus` billing catalog read.
- Verified contributor remote read and menu listener behavior.
- Corrected CloudMetadata `hasBackups()` parity.
- Added cloud summary and billing catalog contracts.
- Updated persistent status checkpoint.

### Exact next work — do not restart
1. Finish concrete writer/reader audit for remaining `cloud_v1/apps` and folders consumers.
2. Finish SMS/call count writers and contributor mutation path.
3. Audit anonymous/migration/sign-out lifecycle from `d45`/account initialization.
4. Audit billing flow around `activeSkus` and purchase verification.
5. Freeze the backend contract; then derive Supabase adapter/schema from evidence.
6. Wire Home services to real repository implementations.
7. Build and runtime-verify before claiming MATCH.

Start next session from:
- `app/src/main/java/com/bare/backend`
- `app/src/main/java/com/bare/cloud`
- `app/src/main/java/com/bare/folders`
- `app/src/main/java/com/bare/messagescalls`
- `app/src/main/java/com/bare/contributor`
- `app/src/main/java/com/bare/purchase`

Do not restart the Reference inventory/audit from zero.

## Documentation policy
- Root documentation: `README.md` only.
- All project docs under `docs/`.
- `docs/REFERENCE_BACKEND_CONTRACT.md`: backend evidence.
- `docs/RECONSTRUCTION_STATUS.md`: session checkpoint and next steps.
