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
**PHASE 3 — UI + NAVIGATION / FLOW**

P3 is the active implementation phase. P4 engine work is intentionally deferred; P3 may consume verified P4 contracts but does not implement their side effects.

Phase 1 and Phase 2 are now frozen at **100%**:
- Phase 1 — evidence/inventory gate: COMPLETE
- Phase 2 — Reference-owned structural skeleton gate: COMPLETE

Authoritative gate records:
- `docs/PHASE_1_INVENTORY.md`
- `docs/PHASE_2_SKELETON.md`

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

Deferred to P4:
- Real Google/Firebase/anonymous authentication.
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
- PHASE 3 — UI + Navigation: **ACTIVE**. Intro → Home, Home bottom navigation, Home search shell, Dashboard → Apps, Apps shell, App Info shell, and App Detail shell now have explicit navigation boundaries. Exact runtime/visual parity remains unverified.
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
