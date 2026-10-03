# BΛR☰ Reconstruction Status

## Baseline
- Reference: Swift Backup 5.1.0, version code 620
- Reference artifact: supplied `SwiftBackup-5.1.0-620-decompiled.zip`
- Reconstruction branch: `rewrite`
- Target: 1:1 Reference fidelity except explicitly Authorized Deviations

## Execution guard
- Supabase implementation: **WAITING FOR EXPLICIT USER PERMISSION**
- APK build: **WAITING FOR EXPLICIT USER PERMISSION**
- Current work is limited to Reference audit and GitHub reconstruction/contracts.

## Current control-plane status

The short current project dashboard is `docs/RECONSTRUCTION_CHECKPOINT.md`.

P4 remains frozen at the static contract boundary under `docs/PHASE_4_GATE.md` and `docs/audits/P4_CONTRACT_REGISTER.md`.

P5.6 is the current lifecycle boundary: P5.5 R-A through R-F are statically implemented and closed; P5.6 static re-audit/regression pass 01 is PASS and remains ACTIVE for targeted cross-batch regression. P5.7 Feature Closure is next. The P5 Gate remains **NOT OPENED**.

Latest Activity depth audit:
- 71/71 Reference-owned Activities covered/registered
- 23 🟢 meaningful reconstruction depth
- 48 🟡 shallow / boundary-level reconstruction
- 0 🔴 not-meaningful surfaces

This file is a **detailed evidence / implementation history ledger**. Entries below are historical records unless explicitly marked as current. Do not use historical counts or intermediate checkpoints as the current P3 status.

## Current phase
**PHASE 5.6 — RE-AUDIT / REGRESSION — ACTIVE / STATIC PASS 01**

P5.5 R-A through R-F are statically closed. P5.6 pass 01 is a static boundary/regression pass and does not claim build, install, runtime, provider, backend, archive/crypto engine, filesystem, privileged, or device execution.

P4 was closed after re-audit against `v1.0/rebaseline/reference/*`, the supplied Swift Backup 5.1.0 (620) decompile ZIP, current `rewrite` source, and N-07/N-08/N-09 evidence.

Historical P4.0 contract gaps, later resolved at the P4 static boundary, were recorded in `docs/audits/P4_CONTRACT_REGISTER.md` and included:
- first-start/account lifecycle state and first-run cloud-restore result semantics;
- authoritative permission readiness vs P3 manual success flags;
- preferred-storage selection/persistence/fallback via Reference `preferred_storage_dir`;
- account/session state orchestration beyond provider-neutral model interfaces;
- Reference-shaped `AppSettings` persistence contract;
- Intro `saved_password_mode` key/default semantics;
- TaskActivity task status/progress/error contract;
- complete P4-consumed core-data ownership;
- secure/encrypted local preference boundary for persisted P4 state.

P4 is closed at the static contract boundary. C01-C14 are closed/pass; C15/C16 remain explicitly downstream. No P4 blocker or unresolved contract-level UNKNOWN remains. No build, install, runtime, provider, backend, or engine success is claimed.

P3 remains frozen at the documented static boundary. The P4.5 verified checkpoint is recorded in `docs/PHASE_4_GATE.md` and `docs/audits/P4_CONTRACT_REGISTER.md`. The next lifecycle boundary is Phase 5 feature execution reconstruction; its provider/backend/engine/runtime work remains outside the current execution guard.

Phase 1 and Phase 2 are now frozen at **100%**:
- Phase 1 — evidence/inventory gate: COMPLETE
- Phase 2 — Reference-owned structural skeleton gate: COMPLETE

Authoritative gate records:
- `docs/PHASE_1_INVENTORY.md`
- `docs/PHASE_2_SKELETON.md`

### Historical P4.0 closure — 2026-10-01

P4.0 contract inventory is **COMPLETE / ACCEPTED**.

- 16/16 targeted P4 contract rows have complete inventory fields.
- The P4 contract register records the acceptance matrix and closure decision.
- Remaining GAP / PARTIAL rows are explicitly handed to P4.1 for blocker analysis; P4.0 does not require those gaps to be implemented.
- P4.1 is now the next active package.
- Build/install/runtime/provider/backend/engine execution remains prohibited by the existing guard.

## P3 onboarding implementation status

The Intro → Home flow is now an active P3 UI/navigation state machine.

Implemented:
- First-start gate redirects completed onboarding directly to Home.
- Sign-in surface has two live paths: Google-shaped P3 boundary and anonymous/skip P3 boundary.
- Permission stage is reachable after either sign-in path.
- Storage action opens the Android storage-management surface where supported.
- Notification action requests POST_NOTIFICATIONS where supported.
- Installed-app visibility has an explicit live P3 action/state boundary.
- Root / Shizuku permissions have an explicit live P3 action/state boundary.
- Permission items expose Ready (P3) state rather than remaining inert labels.
- Continue from permissions reports missing setup items and provides an explicit Continue anyway path for P3.
- Password strategy boundary exposes app-generated vs user-password choices without implementing password/encryption engine.
- Getting Started transition is live and hands off into Home.
- Intro menu can reset only the P3 onboarding state.

P4.0 inventory / P4 implementation boundaries:
- Real Google/Firebase/anonymous authentication remains a downstream/provider boundary unless a specific P4 contract is proven.
- P4.0 contract inventory and P4.1 blocker analysis determine which core behavior is actually required before implementation.
- Real storage coordinator and preferred-storage persistence.
- Real Root/Shizuku detection, grant callbacks, and privileged permission engine.
- Real installed-app inventory/app-op behavior.
- First-run cloud restore.
- Real password generation, secure storage, restore and encryption.
- Backend initialization and cloud state.

## Latest verified Reference behavior

### Cloud backend
- `re3.c()` → current cloud tag `apps` node.
- `re3.d()` → current cloud tag `callLogBackupsCount` node.
- `re3.e(id)` → `users/{uid}/cloud_v1/{id}`.
- `re3.g()` → current cloud directory under `users/{uid}/cloud_v1/{sanitized-current-cloud-dir}`.
- `re3.h()` → current cloud tag `folders` node.
- `re3.i()` → current cloud tag `smsBackupsCount` node.
- `re3.l()` → purchase verification Boolean node under current UID and an obfuscated child key.
- App metadata is read/written at `apps/{packageName with dots removed}`.
- App cloud backup metadata is written after Reference `prepareForFirebaseUpload()`.
- Home cloud summary reads apps, folders, SMS count and call-log count.
- FolderItem writes to `folders/{folderId}/folderItem`.
- FolderMetadata writes the complete object to `folders/{folderId}` after its cloud-write validation.
- FolderMetadata persisted shape: FolderItem + BaseBackup + Map<String, IncrementalBackup>.
- Package/cloud-directory sanitizer removes `/`, `.`, `#`, `$`, `[`, `]`.

### SMS / call-log writers
- SMS backup task writes `null` when no backups exist, otherwise integer count to `smsBackupsCount`.
- Call-log backup task writes `null` when no backups exist, otherwise integer count to `callLogBackupsCount`.
- These writer methods are now exposed in `BackupCountsRepository`.

### Billing
- `appData/activeSkus` is a Firebase list of SKU strings.
- `subs:` entries become subscription SKU values after prefix removal.
- `inapp:` entries become in-app SKU values after prefix removal.
- Other activeSku entries are ignored by the Reference billing catalog path.
- Purchase verification is a Boolean under `purchase_verifications/{uid}/{obfuscated-key}`.
- The audited graph contains the verification listener/read path; no verification-node writer was found.
- `users/{uid}/transactions/premium` is a distinct transaction object.
- Reference transaction model `wb6` fields:
  - orderId
  - packageName
  - sku
  - purchaseToken
  - signature
  - purchaseTime
  - purchaseState
  - autoRenewing
  - accountId
  - acknowledged
  - verificationTime
- Reference default transaction constructor leaves all fields null except `verificationTime=currentTimeMillis()`.
- BaRe now has `PremiumTransaction` + `PremiumTransactionRepository`.

### Contributor
- Registration read/listener: `contributorDetails/{uid-prefix}`.
- Fields: status, type, name, locales, Telegram ID, Crowdin ID, PayPal ID.
- Translator validity: name + Telegram + Crowdin.
- Community Helper validity: name + Telegram.
- No contributor mutation/write call-site found in audited Reference graph. Mutation remains UNKNOWN.

### Account / migration
- Reference `d45.c()`:
  - checks `is_migrating_to_google_sign_in`;
  - signs out Firebase auth;
  - clears anonymous identity state;
  - clears local app data for non-anonymous user;
  - resets anonymous/migration state;
  - resets cloud-restore and first-start flags;
  - cancels scheduled alarms;
  - re-runs account initialization.
- Reference Google account email-change migration compares sanitized old/new cloud directories.
- Migration is conditional in the Reference execution path; BaRe WP-B retains only the observed sign-in migration guard and leaves cloud migration execution downstream.
- The metadata object is written to the new `users/{uid}/cloud_v1/{sanitized-new-dir}` node, then the old `users/{uid}/cloud_v1/{sanitized-old-dir}` node is conditionally cleaned up.
- If the source changes during cleanup, the Reference skips unsafe cleanup and attempts rollback of the destination; rollback is also conditional on the destination remaining unchanged.
- The provider-neutral migration boundary does not claim a typed result enum; those cloud-migration outcomes remain downstream execution semantics.
- Reference account initialization reads `users/{uid}/userInfo` for non-anonymous users. Anonymous users receive a local user record without a database read/write.
- Reference `userInfo` model fields are uid, anonymous, displayName, email, photoUrl, latestAppVersion, currentAppVersion; current Reference version is 620.
- Existing user profile fields are refreshed when provider identity changes, and non-anonymous userInfo is persisted back to `users/{uid}/userInfo`.
- Post-login work explicitly skips anonymous users; for non-anonymous users it reloads `userInfo` and persists the resulting Reference-shaped model.
- Anonymous → Google migration is guarded by the current identity being anonymous before setting `is_migrating_to_google_sign_in` and entering the sign-out/reinitialization lifecycle.
- BaRe now exposes the Reference `ah8` shape through `UserInfo` + `UserInfoRepository` without Firebase SDK types.
- Crashlytics UID/custom-key updates are telemetry side effects, not backend user-state contract.
- Exact provider execution remains behind repository boundaries.

### Cloud deletion provider contract
- Reference `ju3` is a Google Drive file-ID deletion task.
- Empty IDs are filtered before deletion.
- Batch deletion reports failed IDs and a provider retry delay.
- Reference retries failed IDs once; fallback delay is 5 seconds when no provider delay is available.
- Final success requires zero remaining failed IDs.
- BaRe now exposes this through `CloudFileDeletionRepository` without binding the contract to Google Drive SDK types.

### App / folder cloud cleanup
- Folder cloud deletion is explicit in Reference `al3.a(FolderMetadata)`: remove the folder metadata node first, collect base + incremental backup and manifest links, then delete those cloud files through the active cloud provider.
- App cloud cleanup is handled by Reference `ik.a(...)` / `AppBackupDeleteHelper`: it fetches `tags/{cloudTag}/apps/{packageKey}`, filters protected backups out of automatic cleanup, selects old normal backups according to the configured multiple-backup representation, and sends selected backup records to the cloud deletion operation.
- For Google Drive, the concrete file-delete provider task is `ju3`: it receives file IDs, filters empty IDs, performs batch deletion, retries failed IDs once after the provider-provided delay (or 5s fallback), and reports failure if IDs remain. The higher-level app metadata-node post-delete mutation is not fully resolved; keep that part `UNKNOWN` until the remaining task path is audited.

### Account initialization
- `d45.b()` initializes account state for registered listeners.
- When an authenticated user exists, Reference loads `userInfo` through `ah8.Companion.fromDatabase(...)` and updates telemetry identity.
- When no authenticated user exists, Reference resets first-start/cloud-restore state, cancels scheduled alarms, and signals the intro/account initialization state.
- `d45.c()` performs sign-out lifecycle cleanup and re-enters initialization via `b()`.

## Contracts added/updated in this audit batch
- `CloudAppRepository`
- `ReferenceCloudKey`
- `FolderMetadata`
- `CloudFolderRepository.writeFolderMetadata()`
- `BackupCountsRepository.writeSmsCount()`
- `BackupCountsRepository.writeCallLogCount()`
- `BillingCatalogRepository`
- `BillingSkuService`
- `PremiumTransaction`
- `PremiumTransactionRepository`
- `AccountMigrationRepository`
- `AccountLifecyclePolicy`
- `AccountMigrationRepository` migration outcome semantics
- `CloudFileDeletionRepository`
- `UserInfo` + `UserInfoRepository`
- `CallLogItem`
- `MessagesCallsCapabilityRepository`
- `MessagesCallsPolicy`

## Explicitly not executed
- No Supabase schema/table/RLS/auth implementation.
- No Supabase SDK wiring.
- No APK build.
- No install/runtime verification.
- No invented contributor mutation contract.
- No invented purchase-verification writer.


## Latest Phase 3 continuation — 2026-09-29
- Ported `bare_logo.png` from `v1.0/rebaseline` to `rewrite` as an exact Git blob.
- Refined Home Schedule and Cloud XML structures with Reference-derived card, scroll, warning/notice, status, list, and progress boundaries.
- Kept unverified custom Reference behavior out of the implementation; runtime/visual parity remains unverified.

## Latest UI reconstruction continuation — 2026-09-29
- Audited the Reference Account/Home account layouts directly from the decompiled 5.1.0 (620) resource set.
- Added a BaRe profile_card_user resource based on the Reference profile-card structure, while preserving only fields already supported by the current AccountFragment (account_user_name, account_user_email).
- Updated home_account_fragment.xml to follow the Reference account hierarchy: account caption → profile card include → settings caption → settings-item container.
- Reference-only profile actions/fields not yet supported by BaRe state/resources were intentionally not invented; those remain UNKNOWN.
- Cloud and Schedule Home fragments remain partial boundaries because their Reference layouts depend on custom Reference views/components and additional behavior not yet reconstructed.

## Latest reconstruction batch — 2026-09-29
- Re-audited `rewrite` component tree before adding skeletons.
- Reference component coverage confirmed: **71/71 internal activities, 3/3 services, 8/8 receivers**.
- No duplicate Activity/Service/Receiver skeletons were added.
- Manifest was tightened against audited Reference evidence:
  - SMS/MMS/default-handler permissions and intent contracts.
  - APK import SEND/VIEW contracts.
  - Boot/locale receiver contracts.
  - foreground-service type declarations for task/schedule services.
  - Reference-backed storage/app-management/Wi-Fi/biometric/wallpaper/notification-related permissions and hardware features.
  - Removed duplicate/misnamed HomeSearch registration.
- Home UI reconstruction batch:
  - Reference bottom-navigation menu structure.
  - Reference home navigation selector/vector resources.
  - Reference bottom-navigation tint selector.
  - Reference spacing values used by Home.
  - Reference Home container structure.
  - Reference Home app-bar structure adapted only for the authorized BΛR☰ branding deviation.
  - Added `ScheduleFabMenuView` as a behavior-free Reference boundary; schedule FAB behavior remains UNKNOWN.
- Static manifest inspection after the batch confirms 71 activities, 3 services, 8 receivers, with no duplicate activity names.
- No build, APK generation, install, runtime verification, Supabase schema, Supabase SDK, Supabase Auth, or Supabase RLS was executed.

## Phase 1 + Phase 2 gate — 2026-09-29

### Phase 1 — COMPLETE
- Reference snapshot is present in the `reference/` tree on `rewrite`.
- Reference identity, source inventory, resource inventory, manifest baseline, feature/package map, dependency surface, and Authorized Deviations are recorded.
- The previous “Reference source tree not accessible” blocker is obsolete and has been removed from the Phase 1 inventory.

### Phase 2 — COMPLETE
- 71/71 Reference-package Activities registered and represented by BaRe Java sources.
- 3/3 Reference-package Services registered and represented by BaRe Java sources.
- 8/8 Reference-package Receivers registered and represented by BaRe Java sources.
- 0 Reference-package Providers required; the 4 Reference manifest providers are dependency/library providers.
- No missing Reference-owned component boundary was found.
- The remaining 4 Reference-only permission declarations are explicitly tracked as dependency/manifest integration evidence, not silently treated as application-owned skeleton gaps.
- No runtime, visual, or feature parity claim is made by these gates.

### Freeze rule
Do not restart Phase 1 inventory. Do not reopen the Phase 2 structural skeleton unless new Reference evidence proves a component boundary was missed.

## Roadmap alignment
- PHASE 1 — Foundation: Android/Gradle/Java/resources/manifest baseline exists; runtime/build verification remains gated.
- PHASE 2 — Reference Skeleton: Reference Activity/Service/Receiver component boundaries are now registered in the BaRe manifest.
- PHASE 3 — UI + Navigation: **COMPLETE / FROZEN**. The P3 static boundary is closed; exact runtime/visual parity remains unverified.
- PHASE 4 — Core Behavior: account/schedule/cloud/messages-calls contracts are being reconstructed without Supabase.
- PHASE 5 — Features: feature-domain implementation continues after skeleton stabilization.
- PHASE 6 — Authorized Deviations: branding/premium/Supabase remain explicit deviations; Supabase is permission-gated.
- PHASE 7 — Runtime: build/install remains permission-gated.
- PHASE 8/9 — Parity/deviation audit: blocked until runtime verification is authorized and executable.

## Phase 2–5 historical progress
- Reference Activity skeleton coverage: 71 internal Reference activities represented in `rewrite`.
- Reference Service/Receiver coverage: 10 internal services/receivers represented in `rewrite` with existing concrete boundaries where already implemented; no placeholder behavior is being treated as parity.
- Activity skeletons intentionally contain no invented UI or behavior; they establish component presence before feature implementation.

## Phase 4 historical notes
- Reference component skeleton now covers the audited 71 internal activities plus the 3 audited services and 8 audited receivers; these are boundaries only and intentionally contain no invented behavior.
- Placeholder Home fragment was removed; Home now maps to the four explicit Reference-shaped fragments already present.
- Reference `CallLogItem` fields and call-type constants are now represented in BaRe.
- Reference SMS default-handler persistence key and backup-file-path/highlight intent keys are represented in `MessagesCallsPolicy`.
- Capability access remains behind `MessagesCallsCapabilityRepository`; no device provider implementation has been invented.

## Open evidence boundaries after P3 freeze
1. The exact provider SDK serialization behind the conditional migration transaction is provider-specific and remains outside the backend-neutral contract.
2. The app metadata-node mutation after cloud file deletion remains `UNKNOWN`; no write/delete is inferred without direct Reference evidence.
3. These `UNKNOWN` boundaries must not be silently filled during Supabase implementation.

## Execution gate after P3 freeze
1. **WAIT FOR EXPLICIT USER PERMISSION:** Supabase schema/auth/RLS/SDK implementation.
2. **WAIT FOR EXPLICIT USER PERMISSION:** APK build.
3. After permission, implementation must preserve every `UNKNOWN` boundary until evidence or an explicit Authorized Deviation resolves it.

## Verification rule
No parity claim from build alone. Required sequence: build → install → runtime → visual → behavior → feature → deviation audit → verification.

Do not restart the Reference inventory from zero.


## Latest UI dependency batch — 2026-09-29
- Audited the Reference Home resource dependencies for Schedule, Cloud, and Account directly from the supplied decompiled 5.1.0 (620) resource set.
- Added Java-only, Views/XML-compatible BaRe boundary classes corresponding to Reference view roles:
  - `SwiftSegmentedCardGroup`
  - `SwiftSegmentConstraintLayout`
  - `SwiftSegmentLinearLayout`
  - `SwiftBackupMaterialSwitch`
  - `QuickRecyclerView`
- The boundary classes preserve only behavior directly justified by the audited class role; Reference-specific rendering/segment regrouping remains UNKNOWN where its full implementation is not ported.
- Ported Reference-shaped `common_dropdown_item`, `dash_storage_view`, Schedule fragment card/notice, Cloud storage/warning/active-tag card resources, and the Account profile card.
- ScheduleFragment now consumes the Reference-shaped RecyclerView boundary through a local adapter backed by the existing ScheduleViewModel data; no new schedule semantics were invented.
- AccountFragment bindings were reconciled to the Reference profile-card IDs.
- CloudFragment no longer renders a non-Reference `cloud_status` field; cloud provider state remains at the explicit backend boundary.
- Cloud active-tag UI is structurally present but hidden until its provider/data contract is reconstructed; no active-tag data is invented.
- No build, APK generation, install, runtime verification, or Supabase work was executed.


## Latest Home Search batch — 2026-09-29
- Added Reference-shaped Home Search shell and result-item resources for generic, app, folder, and quick-action results.
- Ported the audited Reference search icons and required search labels.
- HomeSearchActivity remains a behavior boundary; no search indexing/query semantics were invented.


## Latest Settings UI reconstruction batch — 2026-09-29
- Reconstructed the Reference SettingsActivity shell as a Java Android Views boundary.
- Added a Reference-shaped PreferenceFragmentCompat surface with the audited settings preference keys and category structure.
- Added the Java-only MSwitchPreference boundary used by the Reference settings resource contract.
- Ported the audited Reference settings preference icons required by the reconstructed screen.
- Added AndroidX Preference as the explicit UI dependency required by the Reference PreferenceScreen contract.
- Settings click semantics remain evidence-bound; no backend, entitlement, export/import, or device-state behavior was invented.


## Latest Settings Detail boundary batch — 2026-09-29
- Reconstructed the Reference SettingsDetailActivity shell and verified extras: category_title and category (default 1).
- Preserved the eight-category selector contract (1..8) without guessing the obfuscated fragment mappings.
- Added an explicit SettingsCategoryBoundaryFragment to carry the verified category selector.
- Concrete category semantics remain UNKNOWN until the corresponding obfuscated Reference fragments are mapped.

### SettingsDetail category reconstruction

The Reference SettingsActivity (`pa7`) dispatches these exact category integers to SettingsDetailActivity:
- `1` → Apps (`a`) → `settings_apps.xml`
- `2` → Messages (`cf5`) → `settings_messages.xml`
- `3` → Calls (`v11`) → `settings_calls.xml`
- `4` → Labs (`fs4`) → `settings_labs.xml`
- `5` → Contact (`eu1`) → `settings_contact.xml`
- `6` → About (`a3`) → `settings_about.xml`
- `7` → Cloud (`sj1`) → `settings_cloud.xml`
- `8` → Folders (`zn3`) → `settings_folders.xml`

The rewrite now contains concrete `PreferenceFragmentCompat` implementations for all eight categories and removes the numeric boundary placeholder. Preference keys, visible/hidden entries, disabled encryption entries, category grouping, and toggle presence are preserved from the Reference XML. Category action semantics and backend integrations remain intentionally unimplemented where the rewrite has no verified equivalent.

### SettingsDetail action semantics — Apps/Messages/Calls

Ported only contracts directly supported by Reference code:
- Apps: `show_system_apps`, `restore_ssaids`, `backup_app_cache`, and `in_place_apk_downgrades` persist through Preference-managed settings; verified direct launches for Swipe Actions, Custom Configurations, Blacklist, and Restore Special Permissions are wired to the reconstructed activities.
- Messages: `max_sms_backups` uses the Reference option set `No limit, 1, 5, 10, 20, 50, 100`; `messages_backup_mms` persists as a boolean with Reference default `true`.
- Calls: `max_call_backups` uses the same Reference option set and persists under the verified `max_call_backups` key.
- Encryption/compression entries remain disabled/hidden where the Reference XML makes them so. Compression chooser behavior remains outside the verified rewrite contract rather than being approximated.


### Latest Settings Detail semantics continuation — 2026-09-29
- Contact (`eu1`): `email` now opens an explicit `mailto:support@swiftapps.org` intent with the Reference subject pattern `<app label> (From App)`; `telegram_group` opens the verified `https://t.me/swiftbackupsupport` destination.
- Labs (`fs4`): `scan_orphaned_cloud_files` remains hidden as in the Reference; the verified boolean keys `use_test_pdras`, `extra_logging`, `skip_disk_space_checks`, and `extend_data_sync_fgs_timeout_for_schedules` now persist and refresh from SharedPreferences.
- Cloud (`sj1`): `cloud_diagnostics` launches the reconstructed `CloudDiagnosticsActivity`; `parallel_cloud_transfers`, `multithreaded_downloads`, and `nextcloud_force_chunked_uploads` persist; chunk-size/connection preferences now use Reference-derived defaults and option sets:
  - multithreaded connections: 2, 3, 4 (Reference default resolves to 4)
  - Dropbox: 1, 10, 25, 50, 100, 150 MB (default 25 MB)
  - OneDrive: 5–60 MB in 5 MB steps (default 5 MB)
  - Nextcloud: 5, 10, 50, 100, 150 MB (default 100 MB)
  - S3: 5, 10, 50, 100, 150 MB (default 5 MB)
- Cloud multithreaded category visibility follows the Reference `allow_multithreaded_downloads` gate; provider/account entitlement behavior beyond that local flag remains outside the rewrite boundary.
- Folders (`zn3`): compression now exposes the Reference `No compression` / `Fastest` choices using levels 0/1, with `Fastest` as the Reference default fallback.
- Apps: app-data compression now exposes the same verified Reference `No compression` / `Fastest` levels 0/1 with `Fastest` default fallback.
- About (`a3`): version text is pinned to Reference `5.1.0 (620)`; developer notices launch `NoticeListActivity`, privacy policy and terms use the verified Reference URLs, and notices launch `LicensesActivity`.
- About version 7-tap test-option toggle and changelog coroutine remain UNKNOWN in rewrite because their backing Reference global state/async path has not been reconstructed.
- No Supabase implementation, APK build, install, or runtime verification was executed.


### Latest Smali-recovered Settings actions — 2026-09-29
- Recovered `fs4.d()` directly from Reference Smali after JADX failed its region reconstruction.
- `scan_orphaned_cloud_files` launches `CloudOrphanCleanerActivity`; the Reference still hides this preference during normal `l()` initialization, so BaRe preserves it hidden while retaining the verified action boundary.
- `app_visibility_diagnostics` launches `AppVisibilityDiagnosticsActivity`; BaRe now wires this action to the reconstructed activity boundary.
- `use_test_pdras`, `extra_logging`, `skip_disk_space_checks`, and `extend_data_sync_fgs_timeout_for_schedules` write their exact boolean keys from the switch state.
- `delete_gms_files`, `scan_backups`, and the OneDrive sign-in-agent chooser still depend on Reference coroutine/provider/UI infrastructure not present in the rewrite; they remain explicit boundaries rather than being approximated.
- This batch used raw Smali because the corresponding JADX `d()` method was explicitly marked `Method not decompiled`.


### Raw Smali recovery continuation — 2026-09-29
- When JADX failed to reconstruct `fs4.d()`, `sj1.d()`, and related callbacks cleanly, the supplied APK decompile archive was read directly from `output/apktool/smali_classes2/*.smali` instead of inferring behavior.
- Labs (`fs4`): verified `scan_orphaned_cloud_files` launches `CloudOrphanCleanerActivity`; `app_visibility_diagnostics` launches `AppVisibilityDiagnosticsActivity`; `onedrive_auth_agent` presents the Reference `Browser` / `WebView` authorization-agent choices backed by `BROWSER` / `WEBVIEW`; the four verified boolean settings persist through SharedPreferences.
- Cloud (`sj1`): verified chunk dialogs are built from a fixed Reference value set and filtered by per-provider ranges; multithreaded connection choices come from the feature-allowed list (default fallback 2..4). Rewrite now preserves the provider-specific filtered choice boundaries instead of approximating them as simple 5 MB steps.
- Apps (`settings.a`): verified `manage_labels` → `LabelsActivity`, `multiple_backups_strategy` → `MultipleBackupsActivity`, `app_backup_limits` → `AppBackupLimitsActivity`, and `restore_runtime_permissions` uses exactly three Reference choices: backed-up permission choices (id 0), all supported permissions (id 1), and don't restore permissions (id 2).
- Apps: verified `restore_ssaids` and `backup_app_cache` warning flows; the cache setting also has a legacy `KEY_BACKUP_APP_CACHE` fallback in Reference.
- App compression remains constrained to Reference-supported `NO_COMPRESSION` (0) and `FASTEST` (1) through `wp1.a()`; broader enum values are not exposed by the audited settings chooser.
- No Supabase implementation, APK build, install, or runtime verification was executed.


### Raw-smali recovery continuation — 2026-09-29
- Used the supplied decompiled archive's raw `fs4.smali`, `sj1.smali`, and related helper sources where JADX Java output was incomplete.
- Labs: recovered verified action targets for `scan_orphaned_cloud_files` → `CloudOrphanCleanerActivity`, `app_visibility_diagnostics` → `AppVisibilityDiagnosticsActivity`, and the OneDrive sign-in-agent chooser with Reference values `WEBVIEW` / `BROWSER` and display labels `WebView` / `Browser`.
- Labs `scan_orphaned_cloud_files` remains hidden during normal screen setup because Reference `fs4.l()` explicitly hides it, even though its click handler exists.
- Cloud raw smali confirms `cloud_diagnostics` → `CloudDiagnosticsActivity`, local persistence for `multithreaded_downloads` and `parallel_cloud_transfers`, and `nextcloud_force_chunked_uploads` through the Reference `ho6.U(boolean)` writer.
- Cloud raw helper code confirms the OneDrive chunk range is 5–60 and the existing rewrite preserves the audited defaults; multithreaded-download visibility is gated by `allow_multithreaded_downloads` plus Reference account/entitlement logic that remains outside the local rewrite boundary.
- No Supabase implementation, APK build, install, or runtime verification was executed.


### Settings Apps raw-evidence continuation — 2026-09-29
- Reference `settings.a` confirms direct targets now wired in rewrite: `multiple_backups_strategy` → `MultipleBackupsActivity`, `manage_labels` → `LabelsActivity`, and `app_backup_limits` → `AppBackupLimitsActivity`.
- Reference `restore_ssaids` and `backup_app_cache` include user-facing warning dialogs when enabled; the underlying boolean persistence remains verified, while exact localized warning copy is not yet ported.
- Reference `show_system_apps` persists the boolean and triggers app-list refresh operations; rewrite currently persists the flag but does not yet reproduce those internal refresh calls.
- Reference `restore_runtime_permissions` delegates to its permission helper; exact rewrite-equivalent provider/flow is not yet established and remains UNKNOWN.
- Reference app compression uses exactly the two `vp1` choices exposed by `wp1`: `No compression` and `Fastest`, with `Fastest` as the `xp1.DEFAULT` fallback; rewrite preserves those two choices.
- Multiple-backup strategy internals remain a dedicated feature boundary: Reference `MultipleBackupStrategy` exposes SingleBackup, DatedBackups, and ConditionalBackup representations with a default conditional strategy, while the reconstructed activity itself is still a behavior boundary.


### Latest raw-Smali recovery continuation — 2026-09-29
- Recovered `fs4.d()` action semantics from raw Smali after JADX reported the method as non-decompiled.
- Labs now has verified launch boundaries for `CloudOrphanCleanerActivity` and `AppVisibilityDiagnosticsActivity`, plus the OneDrive sign-in-agent chooser contract (`WEBVIEW` / `BROWSER`) persisted under `onedrive_auth_agent`.
- Recovered the exact cloud chunk chooser ranges from `sj1`/`ho6`/`ly8`: multithreaded connection choices resolve from the Reference feature list (default fallback 2,4); OneDrive uses 5, 10, 50, 60 MB; Dropbox uses 1, 10, 25, 50, 100, 150 MB; Nextcloud uses 1, 10, 50, 100, 150 MB; S3 uses 1, 5, 10, 50, 100, 150 MB.
- Apps (`org.swiftapps.swiftbackup.settings.a`) action targets now include verified `LabelsActivity`, `MultipleBackupsActivity`, and `AppBackupLimitsActivity` launches for `manage_labels`, `multiple_backups_strategy`, and `app_backup_limits`.
- `restore_runtime_permissions` remains outside the rewrite because the Reference delegates it through a permission/provider flow whose concrete rewrite equivalent is not yet established.
- No Supabase implementation, APK build, install, or runtime verification was executed.


### Latest P3 UI + FLOW activation — 2026-09-29
- Activated HomeSearchActivity as a Java/View navigation shell using the existing Reference-shaped home_search_activity.xml resource: back navigation, query input, and clear affordance are wired; search indexing/query semantics remain UNKNOWN.
- Activated AppListActivity against the existing Reference-shaped app_list_activity.xml shell: toolbar/back flow, RecyclerView boundary, error surface suppression, and batch-action entry point are wired without fabricating an app inventory.
- Activated AppInfoActivity and DetailActivity as explicit Reference-shaped screen boundaries. They do not fabricate app metadata or backup/restore state when the Reference parcelable/data contract is unavailable.
- Dashboard quick action Apps now opens AppListActivity, establishing the first concrete Home → feature flow.
- Added explicit P3 boundary strings for pending app inventory/info states.
- P4 engine behavior remains deferred: no backup, restore, cloud mutation, scheduling execution, filesystem mutation, or permission-provider execution was added by this batch.
- No APK build/install/runtime verification was executed by this batch.

### P3 full-surface continuation — 2026-09-29
- Home app-bar search now navigates to the Reference-shaped HomeSearchActivity boundary.
- Home avatar action switches to the Account tab.
- Schedule “New schedule” entry is interactive and reaches an explicit P3 boundary dialog; schedule persistence/execution remains P4.
- Cloud storage/warning surfaces are interactive and reach an explicit P3 cloud-connect boundary; provider auth/sync remains P4.
- Account menu rows are interactive: Settings and About have concrete navigation; other account actions reach explicit P3 boundary dialogs instead of dead rows.
- Settings Apps duplicate listener wiring was consolidated while preserving audited action targets and preference persistence.
- ReferenceActivityBoundary now provides a generic navigable P3 shell for still-unreconstructed Activity implementations. This does not claim feature or visual parity.
- No backup/restore engine, cloud mutation, scheduler execution, privileged permission engine, or Supabase implementation was added.

### P3 feature-surface continuation — 2026-09-29
- Apps Batch now exposes an interactive action chooser for Backup selected / Restore selected / P4 engine boundary.
- Multiple Backups, Password Strategy, Premium, Messages, Calls, and Folders dashboard Activity boundaries now expose an explicit interactive P3 surface instead of an inert skeleton.
- Generic ReferenceActivityBoundary back navigation is stabilized with Activity finish semantics.
- No feature engine, data mutation, cloud sync, encryption, scheduling execution, or backend behavior was introduced by this batch.

### P3 feature-surface continuation 2 — 2026-09-29
- Activated explicit P3 interaction boundaries for Cloud Connect, Cloud Diagnostics, Storage Switch, Notices, Notice View, Tasks, Task Preconditions.
- Activated P3 boundaries for Folders batch/picker/edit/detail and Messages/Calls backup and backup/restore surfaces.
- Activated P3 boundaries for APK Import, Manage Space, Wi-Fi, Walls dashboard/manager, Language, and Contributor registration.
- These surfaces now have a reachable, navigable interaction surface rather than a pure empty ReferenceActivityBoundary.
- No underlying provider authentication, filesystem mutation, SMS/call backup engine, task execution, wall application, or cloud operation was fabricated.

### P3 interaction contract deepening — 2026-09-29
- Replaced generic boundaries with concrete P3 controls for Custom Configurations list/edit/settings, Labels list/edit, Blacklist, App Backup Limits, and Restore Special Data Details.
- Cloud Connect now exposes the Reference-evidenced provider surface; provider authentication remains P4.
- Cloud Diagnostics now exposes concrete diagnostic action entry points; diagnostic execution remains P4.
- Config/label/blacklist persistence is not fabricated; controls are interactive but engine/state contracts remain deferred where Reference evidence has not yet been reconstructed into BaRe models.

### P3 flow deepening — Folders / Messages / Calls / Tasks — 2026-09-29
- Folders dashboard now exposes Reference-shaped device/cloud context plus folder management and picker entry points.
- Folder batch surface exposes add/edit and backup/restore entry points.
- Messages and Calls dashboards expose local/cloud backup surfaces, backup-list navigation, and backup/restore entry points.
- Messages/Calls backup-restore surfaces expose explicit Backup vs Restore selection and Continue boundary.
- Task surface exposes precondition check and cancel; Preconditions exposes SMS, Calls, and Wallpapers permission switches plus Done.
- Actual backup/restore execution, task execution, provider/filesystem mutation, and privileged permission grants remain P4.


## Latest Apps-list resource reconstruction — 2026-09-29
- Ported the Reference Apps-list resource/component hierarchy into the Java + Views/XML rewrite: `app_list_activity.xml`, `appbar_with_filters.xml`, `toolbar_mini.xml`, and `error_layout.xml`.
- Added Java-only boundaries for the Reference `MAppBarLayout` and fast-scroller roles; provider-specific fast-scroll behavior remains UNKNOWN.
- Ported the Reference `ic_playlist_check` action icon.
- Updated `AppListActivity` to bind the reconstructed mini-toolbar boundary while preserving the existing P3 batch-action navigation.
- The actual installed-app inventory, filtering/search semantics, drawer contents, sorting, refresh behavior, fast-scroll behavior, and app persistence remain P4/P5 evidence boundaries.
- No Supabase implementation, APK build, install, or runtime verification was executed.


## P3 Apps-list flow activation — 2026-09-29
- Deepened the Apps List from a passive shell into a navigable P3 flow while keeping feature engines deferred.
- Reference menu surface reconstructed: Search, Filter, and navigation drawer.
- Search opens a live query surface; submitted text reaches an explicit P3 boundary and does not fabricate indexing/query results.
- Filter opens an explicit P3 boundary; filter semantics/persistence remain UNKNOWN until the audited app-list contract is reconstructed.
- Refresh is interactive and returns to idle without mutating inventory; real app refresh remains P4.
- Apps navigation drawer now has live P3 routes matching audited Reference targets: Quick actions, App labels, Custom configurations, Blacklist, App backup settings (SettingsDetail category 1), and Settings.
- Batch action entry remains live; backup/restore execution remains P4.
- Back behavior now handles search and drawer state before finishing the Activity.
- No app inventory, backup/restore engine, privileged operation, filesystem mutation, backend mutation, APK build, install, or runtime verification was executed.


### P3 Apps-item / detail flow continuation — 2026-09-29
- Ported the Reference app-item structural surface into BaRe, including app-row content, labels boundary, favorite/menu affordances, and start/end swipe-action boundaries.
- Added Java/View boundary classes for AppListItemLayout, AppItemContentLayout, AppSwipeActionRevealLayout, and AppRowLabelsView.
- Apps List placeholder row is now interactive: row/detail entry reaches the existing DetailActivity P3 boundary; App Info reaches an explicit pending-data boundary; favorite reaches a persistence boundary; Backup/Restore reaches the existing engine boundary.
- App-item action menu exposes the Reference-audited action categories at P3 presentation level without executing app-management side effects.
- Swipe action controls are interactive but remain engine/provider boundaries; no backup, restore, uninstall, force-stop, clear-data, package launch, Play Store, or APK-sharing side effect was implemented.
- Added the AndroidX SwipeRefreshLayout dependency required by the reconstructed Apps-list resource surface.
- No APK build, install, runtime verification, or Supabase work was executed.

- App Info item action now reaches the existing BaRe AppInfoActivity P3 boundary directly; because the Reference Parcelable/data contract is not yet reconstructed, AppInfoActivity remains a pending-data surface rather than fabricating metadata.

### P3 Reference verification — Apps item → App Info / Detail
- Decompiled Reference AppInfoActivity requires a parcelable app under ji.PARCEL_KEY; when absent it logs the missing-app condition and finishes. BaRe deliberately does not fabricate that parcelable, so its P3 App Info surface remains a visible data-contract boundary.
- Decompiled Reference DetailActivity likewise consumes the same app parcelable for normal entry and separately supports a shortcut/package-name path. BaRe DetailActivity currently provides the navigation/UI boundary only.
- Reference detail_activity.xml contains an app-info card plus separate device/cloud backup cards. BaRe now has the equivalent P3 card structure and routes Backup/Restore controls to the existing engine boundary without executing them.
- Reference app_item.xml contains the app row, favorite/menu affordances, checkbox boundary, and two start/end reveal groups. BaRe now has the corresponding P3 hierarchy and swipe reveal interaction; action side effects remain deferred.


### P3 Apps-item geometry deepening — 2026-09-29
- Re-audited the Reference `AppItemContentLayout`, `AppListItemLayout`, `AppSwipeActionRevealLayout`, and `AppRowLabelsView` implementations rather than treating their Java classes as empty boundaries.
- BaRe app-row content now has an explicit custom ViewGroup measurement/layout path for the Reference title/subtitle/label/icon/favorite/menu/checkbox roles.
- Added the Reference checkbox boundary (`cb`) and the Reference-derived app-list/label geometry dimensions.
- Swipe reveal children now receive row-height-derived square action sizing, matching the Reference reveal-layout measurement role.
- App-row container measurement now resolves the card height first and measures reveal groups against that resolved row height.
- Label rendering now exposes a Reference-shaped chip surface for explicitly supplied label text; no label/provider data is invented.
- These changes remain P3-only: backup/restore, app-management, persistence, provider actions, and app inventory remain outside this batch.
- No APK build, install, runtime, or visual verification was executed.


### P3 Apps Quick Actions deepening — 2026-09-29
- Audited Reference `AppsQuickActionsActivity`, its three-card fragment structure, and the Reference quick-action catalog.
- BaRe now exposes the Reference Apps Quick Actions categories: app backup actions, app restore actions, and other app actions.
- Reference-derived action names/summaries are represented at the P3 presentation boundary.
- Each action reaches an explicit engine boundary; no backup, restore, deletion, app enable/disable, or cloud sync side effect is executed.
- The Reference Apps Quick Actions overflow routes to App Backup Settings and Settings; those routes are now wired in BaRe.


### P3 Apps Batch deepening — 2026-09-29
- Reconstructed the Reference Apps Batch screen hierarchy: toolbar, app-selection list boundary, empty/pending state, action FAB, and edit menu roles.
- Search, filter, select-all, App Backup Settings, and Settings are now explicit P3 interactions.
- Batch Backup / Restore actions now terminate at the existing engine boundary; no inventory, selection persistence, filesystem, package, or backup side effect is fabricated.
- Reference batch input extras and provider-backed selection semantics remain deferred because their concrete BaRe data contract is not reconstructed.


### P3 SwiftLogger surface deepening — 2026-09-29
- Reconstructed the Reference SwiftLogger toolbar/list/FAB/menu roles.
- Share Logs and Clear Logs are interactive P3 boundaries.
- Actual log collection, filtering, clearing, archive generation, and external sharing payloads remain deferred; no fake log data is produced.


### P3 configuration / license / cloud-auth continuation — 2026-09-29
- Apps Config Run moved from generic boundary to a Reference-shaped run surface: app-result list boundary, progress/empty state, action FAB, select-all, App Backup Settings, and Settings routes.
- The Reference premium gate and `extra_config_run_item` contract were preserved as boundaries; BaRe does not fabricate a configuration payload or execute it.
- Licenses now has the Reference toolbar + RecyclerView surface; license catalog data is intentionally empty until its data source is reconstructed.
- MEGA sign-in now exposes the audited email/password/connect form; connect stops at the provider-auth boundary.
- Dropbox sign-in now exposes the audited logo/status surface; external OAuth is not launched by P3.
- pCloud authentication now exposes the Reference WebView boundary with an explicit P3 auth status instead of performing token exchange.
- Provider authentication, token exchange, credential persistence, and cloud connection state remain P4.

## P3 continuation — configs / cloud connect / shortcuts

- Reconstructed Reference-shaped **ConfigListActivity** surface: appbar, loading/error boundary, RecyclerView catalog boundary, New Config route, sort/help/labels/app-backup-settings/settings menu routes. No fabricated configuration records.
- Reconstructed **ConfigSettingsActivity** surface: Apply-to/labels card, settings container boundary, delete action boundary. Configuration persistence/deletion remains P4.
- Reconstructed **CloudConnectActivity** surface: provider cards for Google Drive, browser Google Drive, Dropbox, OneDrive, Box, MEGA, Yandex, pCloud, TeraBox, and Filen. Provider rows route into the existing sign-in activities; authentication/token exchange remains P4.
- Reconstructed **ShortcutsActivity** command routing for Reference extras `extra_id=configs` and `extra_id=quick_actions`. Arbitrary schedule command execution is held at a P3 boundary rather than invoking Task/Schedule engines.

Build/runtime verification remains intentionally deferred while P3 reconstruction continues.

## P3 continuation — cloud diagnostics / orphan cleanup

- Reconstructed CloudDiagnosticsActivity with Reference-shaped provider/notice/test-list/run surface. Diagnostic tests remain explicit P4 engine boundaries; no network/Firebase/cloud transfer is executed.
- Reconstructed CloudOrphanCleanerActivity with Reference-shaped provider/header/scope/status/results/list/scan/delete presentation. Cloud listing, Firebase reference validation, revalidation and deletion remain P4.
- Added Reference-shaped cloud diagnostics test and orphan-file layouts without inventing file/test results.
- Cloud info card resources remain evidence-bound; no cloud account/storage values are fabricated.

Build/runtime verification remains intentionally deferred while P3 reconstruction continues.

## P3 continuation — cloud info and provider sign-in surfaces

- Deepened Home Cloud surface around the existing Reference-shaped storage/warning/active-tag cards: connect, settings/action menu, warning acknowledgement and active-tag deletion boundary are now wired.
- Added navigation from the cloud action surface to Cloud Connect, Cloud Diagnostics and Cloud Orphan Cleaner.
- Reconstructed provider sign-in presentation boundaries for Google Drive, browser Google Drive, OneDrive, Box, Yandex and TeraBox. Provider SDK/OAuth/token exchange remains P4.
- Reconstructed Filen sign-in form with email/password fields and Connect action; credential validation/authentication remains P4.


## Latest P3 batch — Folders + SMS/Call surfaces
- Reconstructed folder dashboard, edit, detail, picker, and batch surfaces from Reference layouts/flows.
- Preserved folder selection/edit/backup/delete operations as P3 boundaries; no filesystem inventory or backup engine side effects were fabricated.
- Reconstructed Messages/Calls dashboard, backup-list, and backup/restore surfaces from the Reference `smscalls_*` layouts.
- Empty-state presentation is explicit; backup/restore execution remains a P4 boundary.
- Build/runtime verification remains intentionally deferred.


## Latest P3 batch — Settings deep surfaces
- Reconstructed Restore Special Data detail surface with Reference-derived permission switch and special-data list container.
- Reconstructed per-app backup limits surface with local/cloud MB fields; actual limit persistence remains outside P3.
- Reconstructed App Visibility Diagnostics surface with search, results container, refresh and copy actions; diagnostics/data collection remains outside P3.
- These screens no longer rely solely on generic ReferenceActivityBoundary shells.
- Build/runtime verification remains intentionally deferred.

## Latest P3 batch — Root Settings navigation
- Wired the reconstructed root Settings preference surface to the eight Reference detail categories: Apps, Messages, Calls, Labs, Contact, About, Cloud, and Folders.
- Reused the existing reconstructed detail fragments instead of introducing new engine contracts.
- Root actions without a reconstructed engine/system contract remain explicit P3 boundaries; SwiftLogger routes to the reconstructed SLog surface and notification management delegates to the Android app-notification settings surface.
- Build/runtime verification remains intentionally deferred.


## Latest P3 batch — Labels / Notices / Blacklist
- Reconstructed Labels list/edit surfaces from the Reference label layouts: toolbar, app-label container, label list boundary, create/edit flow, label preview, name field, and save/cancel controls.
- Reconstructed Notice list/view surfaces: toolbar, list boundary, intent-backed notice title/message rendering, and missing-message finish behavior.
- Reconstructed Blacklist surface from the Reference activity/menu contract: toolbar, explanatory card, Add apps actions, empty list boundary, FAB, and Clear all menu.
- Reference-derived blacklist copy is preserved: “Hide apps or back up APKs only”.
- No app inventory, label persistence, blacklist membership mutation, notice catalog, or engine/provider side effect is fabricated; those remain P4/evidence boundaries.
- Build/runtime verification remains intentionally deferred while P3 reconstruction continues.


## Latest P3 continuation — Schedule selection + Messages/Calls conversations — 2026-09-29

- Reconstructed the Reference-shaped Schedule Labels Select surface:
  - selected-label card with empty state and clear action
  - user-created labels section + create action
  - built-in labels section
  - already-used labels section
  - empty RecyclerView boundaries preserve the current evidence boundary
- Reconstructed the Reference-shaped Schedule Folder Select surface:
  - toolbar boundary
  - folder RecyclerView boundary
  - loading boundary
  - empty folder-setup presentation
  - Local Folder Setups action
  - Save action
- Reconstructed the Reference-shaped Messages/Calls Conversations and Chat layout surfaces:
  - app bar/toolbar boundary
  - conversation/chat RecyclerView boundary
  - Reference-shaped chat_item resource
- Conversation provider/query, parcelable conversation model, label persistence, folder inventory/selection persistence, and schedule mutation remain outside P3 and are not fabricated.
- The Reference ConversationsActivity and ChatActivity contain an observed finish() path during onCreate; BaRe preserves the shallow screen boundary without inventing provider behavior.
- No APK build, install, runtime, visual verification, or Supabase work was executed.

## Next P3 sweep

Continue with the remaining shallow Reference Activity boundaries and verify navigation/resource references before opening the P3/P4 behavior contracts. Keep all unresolved provider/data/engine semantics explicitly UNKNOWN and do not reopen frozen Phase 1/Phase 2 inventory gates.


### P3 continuation — shared appbar + Config Edit + Notices — 2026-09-29

- Restored a BaRe `appbar.xml` boundary from the Reference `appbar`/`toolbar` structure so existing P3 surfaces using `@layout/appbar` have a concrete Android Views/XML implementation.
- Reconstructed `ConfigEditActivity` around the Reference surface: configuration name field, custom-settings section boundary, settings RecyclerView boundary, Save Configuration action, and Delete action for edit mode.
- Added the missing `menu_config_edit.xml` delete boundary.
- Reconstructed Notice List layout around the Reference appbar + RecyclerView shape and added the Reference-shaped `notice_item` presentation boundary.
- Added only the strings required by these surfaces; config persistence/execution and notice backend/provider semantics remain deferred.
- Static resource/build verification could not be executed in this environment because the GitHub repository is not network-accessible from the local build runtime. No build success is claimed.

- Reconstructed `FoldersDashActivity` shell to match the Reference's two-tab `ViewPager` architecture and section selection boundary; folder inventory/persistence remains unimplemented.

- Reconstructed the Labels surfaces toward the Reference hierarchy: app-info card, selected-labels card, label list, apply FAB, label preview, name input, color section, and app-assignment section. Real label catalog/persistence/color/app-selection contracts remain deferred.
- Reconstructed the Folder Picker shell toward the Reference: app bar + breadcrumb RecyclerView, folder RecyclerView, progress boundary, select FAB, new-folder dialog, and storage/new-folder menu actions. Real storage/folder inventory and creation persistence remain deferred.

## P3 continuation — remaining shallow feature surfaces — 2026-09-29

- Activated the Reference-shaped APK Import presentation: import header/status, app-info boundary, action area, and incoming VIEW / SEND URI display boundary. APK extraction/install/import engine remains deferred.
- Reconstructed LocaleActivity as the Reference app-bar + locale RecyclerView surface; dynamic language catalog/selection persistence remains deferred.
- Reconstructed Walls dashboard/manage/apply surfaces with Reference-shaped cards, preview/apply boundary, and management list boundary. Wallpaper inventory/provider/application side effects remain deferred.
- Reconstructed Wi-Fi dashboard/cards and Android-version warning boundary. Wi-Fi inventory/backup/restore/delete/provider behavior remains deferred.
- Reconstructed Contributor Registration form surface with basic details, Telegram/Crowdin/PayPal fields and Save boundary. Reference contributor mutation was not observed, so persistence remains UNKNOWN.
- Reconstructed Premium feature presentation and purchase CTA boundary using the already-audited premium feature catalog. Billing/purchase execution remains deferred.
- Reconstructed Password Strategy selection cards for app-generated vs user-password modes. Secure password/encryption persistence remains deferred.
- Reconstructed Manage Space category list for Apps, Messages, Calls, Folders, Wallpapers and Wi-Fi with size values intentionally left unavailable; deletion/cleanup engine remains deferred.
- These changes are P3 UI/navigation reconstruction only; no filesystem, package, backup/restore, billing, cloud, provider or privileged side effect was introduced.
- No APK build/install/runtime verification was executed.


## P3 continuation — credentials / password / storage / backup strategy surfaces — 2026-09-29

- Reconstructed the custom cloud-service credentials form (`CsActivity`) around the Reference protocol/server/path/port/authentication/connect-test surface. Provider credential validation, local-network discovery, encryption/key handling and persistence remain deferred.
- Reconstructed User Password management around active-password status, password change, old-password status/addition and Done boundary. Secure password storage/crypto remains deferred.
- Reconstructed Storage Switch around storage-option cards, folder-location/status presentation and Apply & Restart boundary. Actual storage migration/restart side effects remain deferred.
- Reconstructed Multiple Backups around Reference single/dated/conditional strategy cards, backup-count slider and condition controls. Settings persistence/execution remains deferred.
- ComposeSmsActivity remains intentionally minimal because the audited Reference class itself contains no implementation/UI.
- No provider, filesystem, crypto, restart, backup, restore or backend side effect was introduced.


## P3 vertical sweep checkpoint — App Swipe Actions — 2026-09-29

- Audited Reference `AppSwipeActionsActivity`, `uy` selection flow, `oy` action catalog, and `ho6` persistence/serialization directly from the supplied decompiled 5.1.0 (620) artifact.
- Reconstructed the Reference-shaped Swipe Actions screen in BaRe using Java + Android Views/XML.
- Preserved the verified preference keys `app_list_right_swipe_actions` and `app_list_left_swipe_actions`.
- Preserved Reference defaults: Right = Launch; Left = Uninstall; secondary action = None.
- Preserved the Reference action catalog and distinct primary/secondary selection behavior, including the Reference reset semantics and `none` serialization.
- Kept app-management execution out of this P3 batch; this screen only configures the local swipe-action contract already used by the Apps-list surface.
- No filesystem/package mutation, backup/restore, provider operation, Supabase implementation, APK build, install, or runtime verification was executed.

### P3 boundary result

- Swipe Actions UI/selection/persistence: **MATCH at source-contract level**
- Runtime/visual verification: **UNKNOWN**
- App action execution: **P4 / boundary**


## P3 checkpoint — Preconditions — 2026-09-29

Reference PreconditionsActivity and preconditions_activity.xml were audited. BaRe now has the corresponding permission-preconditions presentation and request-code routing for SMS/call-log surfaces. Permission granting and task execution remain explicit later-stage boundaries.

## P3 checkpoint — Task screen resource fix — 2026-09-29

- Last known reconstruction checkpoint is commit `791aac8dbbefc83459215d4b9045ff43f5ffcdca` (`P3: fix Task screen behavior resource`).
- Audited the Reference `task_activity.xml` and confirmed `rv_tasks` uses `@string/appbar_scrolling_view_behavior`, while the reconstructed BaRe resource was not defined.
- The checkpoint replaces that unresolved resource reference with the concrete Material behavior class `com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior`, matching the concrete behavior already used by the Reference `rv_slog` surface.
- Therefore the `791aac8` change is considered a **source/resource-contract fix** and should be retained.
- This checkpoint is **not build-verified**: no APK build was executed.
- This checkpoint is **not runtime-verified**: Task screen inflation, scrolling/collapse behavior, and device behavior remain UNKNOWN.
- This checkpoint is **not visual-parity verified**: remaining Reference-specific Task layout details (dimensions, toolbar styling, system-window behavior, button styling, etc.) remain subject to the continuing P3 audit.
- No P4 task execution, cancellation engine, backup/restore execution, filesystem mutation, provider operation, backend mutation, APK build, install, or Supabase work was executed.

### Resume point

- **Resume from commit:** `791aac8dbbefc83459215d4b9045ff43f5ffcdca`
- **Next action:** continue P3 vertical sweep from the Task/Preconditions area; do not redo already completed App Swipe Actions work.
- Keep unresolved runtime/data/engine/provider semantics explicitly UNKNOWN until directly supported by Reference evidence.


## P3 continuation — Task surface deepening — 2026-09-30

- Resumed from the recorded `791aac8` Task resource-fix checkpoint after the interrupted sweep.
- Re-audited the Reference `task_activity.xml`, `task_activity_top.xml`, `menu_task_activity.xml`, and `TaskActivity` source.
- Confirmed the `791aac8` behavior-resource change remains valid and retained it.
- Deepened the BaRe Task layout with Reference-derived RecyclerView scroll boundaries: disabled overscroll and scrollbars, while retaining the concrete Material `AppBarLayout$ScrollingViewBehavior`.
- Deepened the task action button presentation with the Reference error/cancel visual boundary using Material color attributes.
- Added the Reference-observed `warning_view` status surface to `task_activity_top.xml`. BaRe continues to use Android Views/XML rather than introducing a new Lottie dependency solely for P3 reconstruction.
- Task execution state, TaskService observation, cancellation, persisted task errors, SwiftLogger data, APK-result handling, and actual task execution remain outside this P3 batch.
- Runtime/build/visual verification remains UNKNOWN.

### Current Task checkpoint

- Resource-fix commit: `791aac8dbbefc83459215d4b9045ff43f5ffcdca`
- Layout deepening commits: `27277e8e71cd19d8321805b7c83a56f365cbe9c9`, `b5692660df5decb8b634acf9246ee78996075862`
- Current reconstruction status: **P3 source-contract/UI boundary deepened; not runtime verified**


## P3 vertical sweep checkpoint — Activity depth audit — 2026-09-30

- Audit snapshot: `7f03a13a0dc05bdf42b5cad28c16f81d33651551`.
- Scope: all **71 Reference-owned Activities** were inspected for reconstruction depth. The audit confirms **71/71 registered/covered**, but registration/coverage must not be interpreted as completed reconstruction.
- This checkpoint is an **audit-only result**. No source/code/resource modification was made by that audit.

### Depth classification from snapshot 7f03a13a

#### 🔴 Not yet meaningful / near-stub — 7 Activities

- `PCloudSignInActivity`
- `CallsBackupsActivity`
- `MessagesBackupsActivity`
- `ComposeSmsActivity`
- `MultipleBackupsActivity`
- `RestoreSpecialDataDetailsActivity`
- `AppBackupLimitsActivity`

Meaning: the BaRe source at that snapshot did not yet expose enough reconstruction depth for these surfaces to be called meaningful reconstruction. This does **not** mean the corresponding Reference surface is unimportant.

#### 🟡 Shallow / boundary-only — 39 Activities

- `ApkImportActivity`
- `ConfigSettingsActivity`
- `AppInfoActivity`
- `LabelEditActivity`
- `LabelsActivity`
- `AppsConfigRunActivity`
- `AppsQuickActionsActivity`
- `BoxSignInActivity`
- `CsActivity`
- `DropboxSignInActivity`
- `FilenSignInActivity`
- `GmsSignInActivity`
- `MegaSignInActivity`
- `NoGmsSignInActivity`
- `OneDriveSignInActivity`
- `TeraBoxSignInActivity`
- `YandexSignInActivity`
- `CloudDiagnosticsActivity`
- `CloudOrphanCleanerActivity`
- `ContributorRegActivity`
- `DetailActivity`
- `FolderDetailActivity`
- `FolderEditActivity`
- `FolderPickerActivity`
- `FoldersBatchActivity`
- `ScheduleLabelsSelectActivity`
- `ScheduleFolderSelectActivity`
- `StorageSwitchActivity`
- `ManageSpaceActivity`
- `CallsBackupRestoreActivity`
- `MessagesBackupRestoreActivity`
- `ChatActivity`
- `ConversationsActivity`
- `CallsDashActivity`
- `MessagesDashActivity`
- `PasswordStrategyActivity`
- `UserPasswordActivity`
- `PremiumActivity`
- `AppVisibilityDiagnosticsActivity`
- `ShortcutsActivity`
- `WallsDashActivity`
- `WallApplyActivity`

Meaning: these surfaces have some entry point/UI shell/dialog/navigation boundary, but their data/behavior/engine contract remains shallow or intentionally deferred. For this audit, 🟡 is **not** itself a bug; several are the correct P3 boundary while provider/backup/restore/engine semantics remain deferred.

#### 🟢 Relatively meaningful reconstruction depth — 22 Activities

- `ConfigEditActivity`
- `ConfigListActivity`
- `AppListActivity`
- `AppsBatchActivity`
- `BlacklistActivity`
- `CloudConnectActivity`
- `FoldersDashActivity`
- `HomeActivity`
- `HomeSearchActivity`
- `IntroActivity`
- `LocaleActivity`
- `NoticeListActivity`
- `NoticeViewActivity`
- `AppSwipeActionsActivity`
- `LicensesActivity`
- `SettingsActivity`
- `SettingsDetailActivity`
- `SLogActivity`
- `PreconditionsActivity`
- `TaskActivity`
- `WallsManageActivity`
- `WifiActivity`

### Special-case review

The audit explicitly flags these 3 Activities for tighter Reference layout/source comparison before treating them as final green:

- `WallsManageActivity`
- `WifiActivity`
- `LocaleActivity`

Their source shape is sufficiently populated to appear green in the snapshot, but the audit does not consider that sufficient evidence for a final “complete” label.

### P3 depth summary

| Status | Count | Meaning |
|---|---:|---|
| 🟢 Meaningful reconstruction | 22 | UI/navigation/state handling has relatively real depth |
| 🟡 Shallow / boundary-only | 39 | Surface exists, but depth/data/engine remains boundary |
| 🔴 Not meaningful | 7 | Surface is still too thin/stub-like |
| **Classified subtotal** | **68** | Three Activities require special-case handling |

Three Activities are therefore tracked separately pending tighter Reference comparison, rather than forcing them into a final green classification.

### Backlog interpretation

The key audit conclusion is:

> **71 Activities registered/covered ≠ 71 Activities reconstructed.**

For the next P3 pass, do **not** restart the 71-Activity inventory from zero. Use this depth audit as the backlog map:

1. Finish the 🔴 group first.
2. Then deepen the 🟡 group in focused vertical sweeps.
3. Re-audit the three special-case Activities (`WallsManageActivity`, `WifiActivity`, `LocaleActivity`) against Reference layout + source before assigning final depth.
4. Keep provider/data/engine semantics explicitly **UNKNOWN / deferred** where the Reference contract has not yet been reconstructed.
5. Do not infer P4 behavior merely to make a surface appear deeper.

### Verification boundary

This checkpoint records source-shape/depth audit evidence only. It does **not** establish build, install, runtime, visual-parity, filesystem/provider, backup/restore, cloud, billing, or Supabase verification.


## P3 vertical sweep — AppBackupLimitsActivity — 2026-09-30

- Reference source: Swift Backup 5.1.0-620 decompile archive.
- Reference class: `org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity`.
- Reference companion model: `AppBackupLimitItem`.
- Reference UI contract reconstructed: title/summary, four app-part containers (`DATA`, `EXTERNAL_DATA`, `MEDIA`, `EXPANSION`), local/cloud MB inputs, positive-value normalization, state preservation, and `extra_limits` Parcelable result contract.
- BaRe implementation now contains the corresponding `AppBackupLimitItem` Parcelable model and a multi-part `AppBackupLimitsActivity` instead of the previous single-card boundary shell.
- Existing `app_part` launch extra remains supported as a compatibility path; when no explicit limits are supplied, the Reference-shaped four-part set is used.
- Execution semantics remain intentionally outside this reconstruction: this pass does not claim actual backup-size enforcement, persistence, provider/cloud transfer, or backup-engine integration.
- Verification boundary: source reconstruction only; build/install/runtime/visual-parity verification is still required before calling the surface runtime-verified.



## P3 vertical sweep — RestoreSpecialDataDetailsActivity — 2026-09-30

- Reference source: Swift Backup 5.1.0-620 decompile archive.
- Reference screen reconstructed: "Restore special data" card with one restore-special-permissions switch, clickable card toggle, and "What gets restored" list.
- Reference detail list contains 13 rows: notification settings/channels, notification access, accessibility service, usage access, install unknown apps, display over other apps, modify system settings, battery optimization, network access modes, all files access, alarms/reminders, other system modes, and Magisk Hide/DenyList mode.
- Reference source uses a ConfigSettings Parcelable when launched in configuration mode and otherwise persists restore_special_permissions in its preferences. BaRe does not currently expose the same ConfigSettings model, so this reconstruction preserves the boolean state/result contract and does not invent a cross-surface ConfigSettings implementation.
- Reference also disables the switch when the standalone flow lacks root access. The current BaRe reconstruction has no verified equivalent root capability contract, so it does not fabricate a root check.
- Runtime permission/system-setting restoration remains outside this P3 UI reconstruction boundary.

## P3 vertical sweep — MultipleBackupsActivity — 2026-09-30

- Reference source: `output/jadx/sources/org/swiftapps/swiftbackup/settings/MultipleBackupsActivity.java`
- Reference model: `output/jadx/sources/org/swiftapps/swiftbackup/settings/MultipleBackupStrategy.java`
- Reconstructed the three strategy cards: Single backup, New backup each time, and Conditional new backups.
- Reconstructed max-backup slider range 2–10 and conditional change criteria (APK changes, app data changes, anything changes).
- Added a Parcelable `MultipleBackupStrategy` with Reference-compatible type/condition ordinals and preference key `apps_multiple_backups_strategy`.
- Apply persists the reconstructed strategy in the current BaRe settings preference boundary and returns it as `extra_multiple_backups_strategy`.
- Feature execution/backup rotation remains outside the current P3 UI reconstruction boundary.

## P3 vertical sweep — ComposeSmsActivity — 2026-09-30

- Reference source: `output/jadx/sources/org/swiftapps/swiftbackup/messagescalls/defaulthandler/ComposeSmsActivity.java`
- Reference implementation is an empty `android.app.Activity`; no UI, lifecycle logic, extras, or SMS handling code is present in the decompiled Activity.
- BaRe now matches that Activity boundary directly instead of adding unsupported behavior.
- The SMS/MMS intent-filter remains declared in the manifest, matching the Reference manifest contract.


## P3 vertical sweep — MessagesBackupsActivity — 2026-09-30
- Audited the exact Reference Activity from Swift Backup 5.1.0-620.
- Reference Activity structure: ViewModel-backed list state, Reference appbar/toolbar, progress indicator, QuickRecyclerView, and the `menu_smscalls_backups` delete-all action.
- Reference layout `smscalls_backups_activity.xml` contains only the appbar include, progress indicator, and RecyclerView; BaRe now follows that structure.
- Reference item layout `smscalls_backups_item.xml` was restored as the P3 list-item presentation boundary.
- Reference delete-all dispatch delegates to the SMS backup ViewModel/data layer. BaRe keeps that operation behind the existing P3 activity boundary rather than inventing deletion side effects.
- Reference-specific ViewModel/event/adapter engine (`he5` / `fe5` and related obfuscated contracts) was not silently recreated in this Activity patch.
- Runtime/build verification remains pending by project execution guard.


## P3 vertical sweep — CallsBackupsActivity — 2026-09-30
- Audited the exact Reference Activity from Swift Backup 5.1.0-620.
- Reference structure: ViewModel-backed call-log backup list, shared `smscalls_backups_activity.xml`, progress/list observers, and the shared `menu_smscalls_backups` delete-all action.
- Reference toolbar title is dynamic: `cloud_backups` when the active backup source is cloud, otherwise `device_backups`. BaRe currently has no verified equivalent source-state contract at this Activity boundary, so the reconstructed surface uses the verified device-backups title rather than inventing a new extra/state contract.
- Delete-all remains a P3 boundary; the Reference delegates the actual deletion through the call-log ViewModel/data layer.
- The shared SMS/call backup layout and delete menu previously restored for `MessagesBackupsActivity` are reused; no duplicate resources were introduced.
- Runtime/build verification remains pending by project execution guard.


## P3 vertical sweep — PCloudSignInActivity — 2026-09-30
- Audited Reference `PCloudSignInActivity`, `sv5`, `il0`, `activity_pcloud_authentication.xml`, and the Reference manifest entry.
- Reference request code is **1856** and the Activity delegates OAuth to `com.pcloud.sdk.AuthorizationActivity` through a ViewModel/provider contract.
- Reference performs a browser availability check and verifies a Custom Tabs-capable handler before starting the pCloud authorization flow.
- Reference processes the returned pCloud SDK auth result, validates the token, and forwards it to the provider ViewModel.
- BaRe does not currently include the pCloud SDK or an equivalent verified token/result repository contract. The reconstruction therefore preserves the browser/custom-tab gate and explicit P3 auth boundary, but does not fabricate OAuth token parsing or provider persistence.
- Added the missing Reference-facing strings `pcloud` and `no_browser_found_error`.
- Runtime/build verification remains pending by project execution guard.


## P3 complete 71-Activity depth audit — 2026-09-30

- Audit head: `36704f7803bf779887e59c3c94513f457f1ea1aa` (`rewrite`).
- Scope: all 71 Reference-owned Activities.
- Starting audit snapshot: `7f03a13a0dc05bdf42b5cad28c16f81d33651551`.
- Every post-snapshot Activity change was revalidated against the current head.
- The previous audit's yellow list contains 42 Activities despite the old heading stating 39; the new classification uses the actual 71-row inventory.
- The three former special-review Activities were directly compared against the supplied Reference source/layout and resolved to yellow:
  - `WallsManageActivity` — Reference has substantive menu/state/list behavior; BaRe remains an empty-adapter shell.
  - `WifiActivity` — Reference contains substantial Wi-Fi backup/restore/settings logic; BaRe remains a presentation boundary without provider execution.
  - `LocaleActivity` — Reference has locale catalog/menu/selection behavior; BaRe remains a toolbar/list boundary without locale catalog semantics.
- Final mutually-exclusive P3 depth classification:
  - 🟢 Green: **23**
  - 🟡 Yellow: **48**
  - 🔴 Red: **0**
  - Total: **71/71**
- Previous red items were resolved by dedicated vertical sweeps:
  - `PCloudSignInActivity` → 🟡
  - `CallsBackupsActivity` → 🟡
  - `MessagesBackupsActivity` → 🟡
  - `ComposeSmsActivity` → 🟢
  - `MultipleBackupsActivity` → 🟢
  - `RestoreSpecialDataDetailsActivity` → 🟢
  - `AppBackupLimitsActivity` → 🟢
- This is a source/resource reconstruction-depth audit only. It does not claim build, install, runtime, visual, provider, backup/restore, backend, Supabase, or end-to-end feature parity.


## P4.1 checkpoint — Reference-backed gap/blocker analysis — 2026-10-01

- P4.0 remains **COMPLETE / ACCEPTED** with exactly **16 contract rows C01–C16**.
- P4.1 is **IN PROGRESS**; no new C17+ contract was introduced.
- Evidence basis remains the supplied Swift Backup 5.1.0 (620) decompile ZIP, `v1.0/rebaseline/reference/*`, current `rewrite` source, and N-07/N-08/N-09 audits.
- Foundational dependency set: C07 + C11; identity/session: C01/C05/C06/C14; storage/permission: C04/C03; settings/password: C08/C09; first-run restore state: C10; task state: C12/C13.
- C02 remains PASS/regression-protected. C15/C16 remain downstream.
- This is analysis only. No implementation, build, install, runtime, provider, backend, or engine execution was performed.
- P4.2 must implement the smallest contract in dependency order and then trigger P3 regression re-audit per the Phase 4 workflow.


## P4.1 deepening checkpoint — 2026-10-01

- P4.1 remains **IN PROGRESS**.
- The canonical register now defines detailed acceptance/blocker closure conditions for all C01–C16, explicit evidence discipline, and six P4.2 work packages.
- No C17+ scope was introduced.
- No implementation, build, install, runtime, provider, backend, or engine execution was performed.


### Historical P4.1 owner reconciliation checkpoint — 2026-10-01

Canonical ownership was reconciled across C01–C16 against the current BaRe source and Reference evidence. No unresolved P4-level canonical-owner collision remains. The main collision is transitional P3 UI flags versus domain-owned state; P4.2 must centralize persisted/domain state and keep Activities as consumers. Dependency order remains WP-A → WP-B → WP-C → WP-D → WP-E → WP-F; C02 regression-only; C15/C16 downstream. P4.1 remains IN PROGRESS.


### P4.1 final closure — 2026-10-01

P4.1 is **CLOSED / READY FOR P4.2**. The final C01–C16 closure matrix confirms named Reference evidence, canonical owner, BaRe gap/state, dependency, P3 regression surface, and phase boundary for every row. No open contract-level UNKNOWN remains; no unresolved canonical-owner collision remains; no C17+ scope was introduced. C02 remains regression-only and C15/C16 remain downstream.

This is static contract-analysis closure only. No implementation, build, install, runtime, provider, backend, or engine execution was performed.


### Historical P4.2 WP-A checkpoint — 2026-10-01

- P4.1 is closed; implementation is now in P4.2 WP-A only.
- WP-A has reconciled and wired the Reference-backed local lifecycle keys `KEY_FIRST_START`, `KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED`, and `play_notification_sounds` through `LocalState`.
- WP-A has reconciled `StorageInfoLocal`, `TaskState`, and `ErrorSummary` to the Reference-shaped contracts and typed the active storage service/dashboard state accordingly.
- Targeted static regression against the supplied Swift Backup 5.1.0 (620) decompile found no new contradiction in the affected surfaces.
- WP-A is **NOT CLOSED**. C07/C11 remain the active scope; other C03/C05/C08/C09/C10/C12/C13/C14 contracts remain owned by later WPs.
- No build, install, runtime, device, provider, backend, or engine verification was performed.

### P4.2 WP-A correction — 2026-10-01

- Static review found `IntroActivity.completeIntro()` was incorrectly asserting `KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED=true` at UI completion.
- Corrected: Intro now only closes `KEY_FIRST_START`; C10 owns the terminal cloud-restore completion transition.
- Reset now clears both first-start and first-run restore-completion local keys.
- This removes a fabricated C10 terminal state from WP-A while preserving the Reference-backed local key boundary.
- WP-A remains IN PROGRESS; no build/install/runtime/provider/backend/engine verification was performed.

### WP-A C07/C11 inventory pass — 2026-10-01

- Persisted-key inventory is now explicitly reconciled: ordinary local lifecycle/preference keys stay in `LocalState`; sensitive password keys remain behind the secure `V.getZ()` boundary and are owned by C09/WP-D.
- `saved_storage_info_local` is confirmed as Reference storage-cache persistence, while its serialization/runtime persistence remains outside this WP-A execution scope.
- Static consumer search found no remaining generic storage DTO/Object surface in the active Dashboard path and no duplicate BaRe TaskState/ErrorSummary shape.
- No further WP-A mutation is justified without crossing into C09/C10/C12/C13 or runtime secure-storage/filesystem execution.
- WP-A remains **IN PROGRESS** pending package-level acceptance/static regression; no build/install/runtime/provider/backend/engine verification was performed.

### P4.2 WP-A final acceptance — 2026-10-01

- **WP-A / C07-C11: CLOSED (static acceptance).**
- Final static regression found no remaining duplicate local preference store, duplicate storage DTO, duplicate TaskState/ErrorSummary shape, or improper promotion of P3-only flags.
- `KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED` remains completion-owned by the future C10 restore flow rather than Intro UI completion.
- No build/install/runtime/provider/backend/engine verification was performed.
- P4.2 remains active outside WP-A.
### P4.2 WP-B implementation checkpoint — 2026-10-01

- WP-B is active for **C01 / C05 / C06 / C14**.
- Reference lifecycle evidence from `d45`, user-info evidence from `ah8`, migration guard from `rc1`, and cloud/session path evidence from `re3` were reconciled before mutation.
- `AccountLifecyclePolicy` now exposes explicit startup and Google-migration decisions without binding to provider SDKs.
- `AccountService` now consumes canonical `UserInfo` through `UserInfoRepository` instead of maintaining a parallel user-info shape.
- `BaReBackendRepository` now uses canonical `UserInfo` and exposes only identity/cloud-directory metadata evidenced by Reference `re3`/`ah8`.
- No provider/backend execution, fake success, build, install, or runtime verification was performed.
- **WP-B remains IN PROGRESS** pending account-surface consumer wiring and final static acceptance/regression.

### P4.2 WP-B decompile fidelity re-audit — 2026-10-01

- WP-B was re-audited directly against the supplied Swift Backup 5.1.0 / versionCode 620 decompile ZIP.
- C01 matches the observed `d45` first-start / restore-completion / sign-out reset flow.
- C05 canonical `UserInfo` matches the observed `ah8` seven-field model, including app-version fields.
- C06 was corrected to expose only the decompile-supported `is_migrating_to_google_sign_in` boolean boundary; the previously added typed result enum was removed.
- C14 was corrected to retain the directly evidenced current UID and `FireHelper.currentCloudDir` metadata boundary; unsupported generic initialization state was removed.
- No provider SDK execution or backend mutation was added.
- **WP-B remains IN PROGRESS** pending final consumer wiring and static acceptance.


### P4.2 WP-B consumer-wiring pass — 2026-10-01

- Rechecked Reference IntroActivity migration-resume behavior: read `is_migrating_to_google_sign_in` → clear it → invoke the sign-in action.
- Added the exact Reference migration key to the existing `LocalState` boundary and added `LocalAccountMigrationRepository` as the C06 adapter.
- BaRe IntroActivity now consumes the migration guard through that repository and re-enters its existing sign-in action when the guard is present.
- No provider SDK, token exchange, backend mutation, or actual Google migration execution was added.
- WP-B remains **IN PROGRESS** pending final C01/C05/C14 consumer/owner regression and static acceptance.


### WP-B C01/C05/C14 owner regression — 2026-10-01

Static regression found an unnecessary duplicate lifecycle boundary: `IdentityService` + `IdentityRepository` exposed `initialize()` / `hasIdentity()` separately from the canonical C01 `AccountLifecyclePolicy` / `AccountService` boundary, and neither had active consumers. These duplicate files were removed to preserve the owner rule: UI/domain consumers use the canonical lifecycle/account boundaries; no second identity lifecycle owner is introduced.

C05/C14 remain provider-neutral interfaces (`UserInfoRepository`, `BaReBackendRepository`, `ReferenceBackendContract`). No concrete provider implementation or backend execution was added. Account UI consumer wiring remains a later static step because the current BaRe repository interfaces have no provider implementation to safely instantiate without inventing runtime behavior.

**WP-B remains IN PROGRESS.** No build/install/runtime/provider/backend/engine execution was performed.


### WP-B account consumer regression — 2026-10-01

`AccountFragment` was rechecked against the current BaRe account contracts. It observes `AccountViewModel` but has no concrete `AccountService` composition/provider implementation. No speculative injection or fake provider was added. This preserves the contract boundary: `AccountFragment` remains a UI consumer, while identity/userInfo acquisition stays behind `AccountRepository` + `UserInfoRepository` / `AccountService`.

C01/C05/C14 therefore remain statically bounded but not implementation-complete. Closure requires a real composition/provider owner supported by Reference evidence; this pass does not invent one.


### P4.2 WP-B final static acceptance — 2026-10-01

**WP-B / C01-C05-C06-C14: 🟢 CLOSED — static contract acceptance.**

The earlier requirement for concrete account-provider composition was corrected. P4 contract closure does not require Firebase implementation, and BΛR☰ will not use Firebase as the target backend. Firebase remains Reference evidence only.

C01/C05 are green because their canonical lifecycle/account/session contracts, ownership, transitions, persistence boundaries, and downstream provider boundary are explicitly defined. C06 and C14 are likewise closed at the provider-neutral contract boundary.

The concrete Supabase auth/backend/session implementation, composition root, network/database mutation, and cloud execution remain downstream work. No fake Firebase implementation was introduced.

No build, install, runtime, provider, backend, or engine verification was performed.

### P4.2 WP-C final static acceptance — 2026-10-01

- **WP-C / C03-C04: 🟢 CLOSED — static contract acceptance.**
- Primary evidence was the supplied Swift Backup 5.1.0 / versionCode 620 decompile ZIP: dz5, intro.d, yn7, zn7, and StorageSwitchActivity.
- C03 now has an explicit permission/access state model and Intro consumes it instead of persisted P3_*_READY booleans.
- Root/Shizuku remains a separate coordinator/downstream execution boundary, matching the Reference state-machine split.
- C04 now has a canonical storage inventory/selection owner, exact preferred_storage_dir persistence, and deterministic saved-volume fallback.
- StorageSwitchActivity is a consumer of the storage boundary, not its owner.
- Static regression found no new contract-level UNKNOWN.
- No build, install, runtime, device, filesystem, privileged, provider, backend, or engine verification was performed.
- **Next active package: WP-D / C08-C09.**


### WP-C post-acceptance static correction — 2026-10-01

A final source reread found stale Intro call-sites to the removed P3 permission-ready helpers. Those call-sites were removed; current IntroActivity now refreshes the canonical PermissionAccessService state after permission-request returns/fallbacks. The C03/C04 closure decision is unchanged.

No build/install/runtime/provider/backend/engine execution was performed.


### P4.2 WP-D final static acceptance — 2026-10-01

**WP-D / C08-C09: CLOSED — static contract acceptance.**

- Primary evidence: supplied Swift Backup 5.1.0 / versionCode 620 decompile ZIP (`AppSettings`, `ha7`, `IntroActivity`, `ux5`).
- C08: `AppSettings` + `SettingsRepository` now own the smallest Reference-shaped settings contract required by frozen P3 consumers; `play_notification_sounds` remains one canonical local persistence key with Reference default `true`.
- C09: `saved_password_mode` is now modeled at the secure-state contract boundary via `PasswordStrategyRepository`; default is `STANDARD_PASSWORD.ordinal()`. Intro's `P3_PASSWORD_MODE` remains transitional only.
- `P3_PASSWORD_MODE` remains only as transitional Intro UI state; it is not the C09 canonical contract.
- No unsupported Reference settings fields were promoted into the P4 contract.
- Password generation/encryption/secure restore and cloud settings sync/backend mutation remain downstream.
- Static regression found no duplicate Settings store or stale Intro password-state call-site in the affected source.
- No build, install, runtime, provider, backend, or engine execution was performed.


### P4.2 WP-E / C10 final static acceptance — 2026-10-01

**WP-E / C10: CLOSED — static contract acceptance.**

- Direct decompile evidence confirms first-run cloud restore waits for backend readiness, performs settings/data reads, and returns a terminal success/failure result.
- FirstRunCloudRestoreState, FirstRunCloudRestoreResult, and FirstRunCloudRestoreCoordinator now own the P4 C10 state/result boundary.
- KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED is written only on terminal SUCCESS; Intro UI completion does not synthesize restore success.
- Actual Supabase/backend readiness, cloud reads/writes, data restoration, build/install/runtime verification remain downstream/unverified.

**Next active package: WP-F / C12-C13.**

### Historical P4.3 P3 static regression re-audit — 2026-10-02

- **P4.3: CLOSED — static regression acceptance.**
- Re-audited the WP-F affected P3 task surface: TaskActivity, TaskService, AlarmReceiver, task resources, and manifest registration.
- P4.3 found and corrected the then-current menu-ID mismatch. The subsequent N-11 target-app identity normalization renamed the app-owned logger ID consistently to R.id.action_barelogger in both consumer and resource; Reference-only action_swiftlogger remains unchanged.
- No additional P3 regression was identified in the affected surface.
- No build/install/runtime/provider/backend/engine verification was performed.
- **Next active package: P4.4 — remaining-gap classification.**


### Historical P4.4 remaining-gap classification — 2026-10-02

- **P4.4: CLOSED — static classification complete.**
- C01-C14 are closed at the P4 contract boundary; C02 remains PASS.
- C15/C16 remain downstream; no P4 blocker remains.
- Deferred execution remains explicitly outside P4.
- No build/install/runtime/provider/backend/engine verification was performed.
- **Next active package: P4.5 — verified checkpoint / package closure.**


### Historical P4.5 verified checkpoint / package closure — 2026-10-02

- **P4: CLOSED at the static contract boundary.**
- C01-C14 are closed/pass; C15/C16 remain downstream.
- P4.3 regression audit and P4.4 remaining-gap classification are complete.
- No build/install/runtime/provider/backend/engine verification was performed.
- **Next lifecycle boundary: Phase 5 — feature execution reconstruction.**


## Post-P4 identity normalization correction — 2026-10-02

Before entering P5, the target identity contract was reconciled with the implementation. The older P3 wording that treated non-visible Swift identifiers as automatically acceptable was removed from the current authority wording.

### Static closure

- `app/` contains **0 `Swift/swift` matches**;
- `app/` contains **0 `Firebase/firebase` matches**;
- no `Swift/swift` or `Firebase/firebase` target file paths remain;
- known Swift-derived identity sweep: **0**;
- `bareapps.org` target residue: **0**.

The remaining Reference Firebase/Swift occurrences are evidence-only under the read-only Reference surface and are not target-app defects.

No build/install/runtime/provider/backend/engine execution was performed.

**Next lifecycle boundary remains P5 — Feature Execution Reconstruction.**
\n\n### P5.2 contract / owner / boundary checkpoint — 2026-10-02\n\nHistorical P5.2 opening checkpoint: static contract/owner/boundary analysis was opened after rechecking the current control-plane documents and frozen P5.1 evidence. A dedicated P5.2 working authority was created. The first bounded extraction batch was F01–F11. P5.2 was subsequently completed across F01–F171 and formally closed as static analysis. P5.1 Register and Grouping remain frozen evidence inputs. The P5 gate remains not opened. No implementation, build, install, runtime, device, provider, backend, or feature-engine execution was performed.\n

## P5.6 targeted regression pass 02

P5.6 pass 02 completed a static cross-batch consumer regression. Existing P4 owners for password, storage, task-result, restore planning, and cloud metadata remain canonical. R-D/R-E/R-F contract layers remain bounded and do not absorb each other's ownership.

The R-D/R-E/R-F contract classes currently have no external consumer imports. This is recorded as **DEFERRED / NOT PERFORMED integration depth**, not UNKNOWN and not an owner collision. No runtime/provider/backend/device execution was performed.

P5.6 remains ACTIVE; P5.7 Feature Closure and the P5 Gate remain unopened.

## P5.6 targeted regression pass 03

Deep static handoff regression completed for R-E → R-F and restore/cloud/artifact boundaries. Ownership remains separated; no backend mapping or runtime execution is inferred.

Cloud metadata → artifact reuse, archive/crypto → task-result execution bridge, and downstream installer execution remain **DEFERRED / NOT PERFORMED**.

P5.6 remains ACTIVE; P5.7 Feature Closure and the P5 Gate remain unopened.

