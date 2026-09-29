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

## Current phase
**PHASE 4 — CORE FOUNDATION + REFERENCE SKELETON RECONSTRUCTION**

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
- Migration is conditional: destination is checked first; source metadata must exist and pass the migration predicate.
- The metadata object is written to the new `users/{uid}/cloud_v1/{sanitized-new-dir}` node, then the old `users/{uid}/cloud_v1/{sanitized-old-dir}` node is conditionally cleaned up.
- If the source changes during cleanup, the Reference skips unsafe cleanup and attempts rollback of the destination; rollback is also conditional on the destination remaining unchanged.
- `AccountMigrationRepository.MigrationResult` now preserves these observed outcomes: `MIGRATED`, `NOT_NEEDED`, `NOT_FOUND`, `SOURCE_CHANGED`, `DESTINATION_CHANGED`, `ROLLED_BACK`, `FAILED`, `UNKNOWN`.
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

## Roadmap alignment
- PHASE 1 — Foundation: Android/Gradle/Java/resources/manifest baseline exists; runtime/build verification remains gated.
- PHASE 2 — Reference Skeleton: Reference Activity/Service/Receiver component boundaries are now registered in the BaRe manifest.
- PHASE 3 — UI + Navigation: Intro/Home navigation exists but remains partial visual parity; exact resource port continues.
- PHASE 4 — Core Behavior: account/schedule/cloud/messages-calls contracts are being reconstructed without Supabase.
- PHASE 5 — Features: feature-domain implementation continues after skeleton stabilization.
- PHASE 6 — Authorized Deviations: branding/premium/Supabase remain explicit deviations; Supabase is permission-gated.
- PHASE 7 — Runtime: build/install remains permission-gated.
- PHASE 8/9 — Parity/deviation audit: blocked until runtime verification is authorized and executable.

## Phase 2–5 progress
- Reference Activity skeleton coverage: 71 internal Reference activities represented in `rewrite`.
- Reference Service/Receiver coverage: 10 internal services/receivers represented in `rewrite` with existing concrete boundaries where already implemented; no placeholder behavior is being treated as parity.
- Activity skeletons intentionally contain no invented UI or behavior; they establish component presence before feature implementation.

## Phase 4 progress
- Reference component skeleton now covers the audited 71 internal activities plus the 3 audited services and 8 audited receivers; these are boundaries only and intentionally contain no invented behavior.
- Placeholder Home fragment was removed; Home now maps to the four explicit Reference-shaped fragments already present.
- Reference `CallLogItem` fields and call-type constants are now represented in BaRe.
- Reference SMS default-handler persistence key and backup-file-path/highlight intent keys are represented in `MessagesCallsPolicy`.
- Capability access remains behind `MessagesCallsCapabilityRepository`; no device provider implementation has been invented.

## Open evidence boundaries after contract freeze
1. The exact provider SDK serialization behind the conditional migration transaction is provider-specific and remains outside the backend-neutral contract.
2. The app metadata-node mutation after cloud file deletion remains `UNKNOWN`; no write/delete is inferred without direct Reference evidence.
3. These `UNKNOWN` boundaries must not be silently filled during Supabase implementation.

## Execution gate after contract freeze
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
