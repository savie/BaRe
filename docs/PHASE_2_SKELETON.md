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

## Canonical Reference component inventory

**Important:** the counts above are counts of **Reference-package Android manifest components**, not counts of all decoded APK/library components.

The following list is the authoritative Phase 2 component inventory for the 5.1.0 (620) Reference manifest.

### Activities — 71

| # | Reference Activity | BaRe Activity |
|---:|---|---|
| 1 | `org.swiftapps.swiftbackup.intro.IntroActivity` | `com.bare.intro.IntroActivity` |
| 2 | `org.swiftapps.swiftbackup.home.HomeActivity` | `com.bare.home.HomeActivity` |
| 3 | `org.swiftapps.swiftbackup.home.search.HomeSearchActivity` | `com.bare.home.search.HomeSearchActivity` |
| 4 | `org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity` | `com.bare.appsquickactions.AppsQuickActionsActivity` |
| 5 | `org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity` | `com.bare.appslist.ui.list.AppListActivity` |
| 6 | `org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity` | `com.bare.appslist.ui.listbatch.AppsBatchActivity` |
| 7 | `org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity` | `com.bare.appslist.ui.listconfig.AppsConfigRunActivity` |
| 8 | `org.swiftapps.swiftbackup.detail.DetailActivity` | `com.bare.detail.DetailActivity` |
| 9 | `org.swiftapps.swiftbackup.apkshare.ApkImportActivity` | `com.bare.apkshare.ApkImportActivity` |
| 10 | `org.swiftapps.swiftbackup.appinfo.AppInfoActivity` | `com.bare.appinfo.AppInfoActivity` |
| 11 | `org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity` | `com.bare.appconfigs.list.ConfigListActivity` |
| 12 | `org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity` | `com.bare.appconfigs.edit.ConfigEditActivity` |
| 13 | `org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity` | `com.bare.appconfigs.settings.ConfigSettingsActivity` |
| 14 | `org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity` | `com.bare.home.schedule.ScheduleLabelsSelectActivity` |
| 15 | `org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity` | `com.bare.home.schedule.ui.ScheduleFolderSelectActivity` |
| 16 | `org.swiftapps.swiftbackup.settings.SettingsActivity` | `com.bare.settings.SettingsActivity` |
| 17 | `org.swiftapps.swiftbackup.blacklist.BlacklistActivity` | `com.bare.blacklist.BlacklistActivity` |
| 18 | `org.swiftapps.swiftbackup.notice.NoticeListActivity` | `com.bare.notice.NoticeListActivity` |
| 19 | `org.swiftapps.swiftbackup.settings.SettingsDetailActivity` | `com.bare.settings.SettingsDetailActivity` |
| 20 | `org.swiftapps.swiftbackup.settings.AppSwipeActionsActivity` | `com.bare.settings.AppSwipeActionsActivity` |
| 21 | `org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity` | `com.bare.cloud.diagnostics.CloudDiagnosticsActivity` |
| 22 | `org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity` | `com.bare.cloud.orphans.CloudOrphanCleanerActivity` |
| 23 | `org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity` | `com.bare.settings.appvisibility.AppVisibilityDiagnosticsActivity` |
| 24 | `org.swiftapps.swiftbackup.locale.LocaleActivity` | `com.bare.locale.LocaleActivity` |
| 25 | `org.swiftapps.swiftbackup.contributor.ContributorRegActivity` | `com.bare.contributor.ContributorRegActivity` |
| 26 | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity` | `com.bare.appslist.ui.labels.LabelsActivity` |
| 27 | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity` | `com.bare.appslist.ui.labels.LabelEditActivity` |
| 28 | `org.swiftapps.swiftbackup.manage.ManageSpaceActivity` | `com.bare.manage.ManageSpaceActivity` |
| 29 | `org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity` | `com.bare.shortcuts.ShortcutsActivity` |
| 30 | `org.swiftapps.swiftbackup.premium.PremiumActivity` | `com.bare.premium.PremiumActivity` |
| 31 | `org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity` | `com.bare.cloud.connect.GmsSignInActivity` |
| 32 | `org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity` | `com.bare.cloud.connect.NoGmsSignInActivity` |
| 33 | `org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity` | `com.bare.messagescalls.dash.MessagesDashActivity` |
| 34 | `org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity` | `com.bare.messagescalls.backups.MessagesBackupsActivity` |
| 35 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity` | `com.bare.messagescalls.backuprestore.MessagesBackupRestoreActivity` |
| 36 | `org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity` | `com.bare.messagescalls.dash.CallsDashActivity` |
| 37 | `org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity` | `com.bare.messagescalls.backups.CallsBackupsActivity` |
| 38 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity` | `com.bare.messagescalls.backuprestore.CallsBackupRestoreActivity` |
| 39 | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity` | `com.bare.messagescalls.conversationsview.ConversationsActivity` |
| 40 | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity` | `com.bare.messagescalls.conversationsview.ChatActivity` |
| 41 | `org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity` | `com.bare.folders.ui.FoldersDashActivity` |
| 42 | `org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity` | `com.bare.folders.ui.batch.FoldersBatchActivity` |
| 43 | `org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity` | `com.bare.folders.ui.FolderPickerActivity` |
| 44 | `org.swiftapps.swiftbackup.folders.ui.FolderEditActivity` | `com.bare.folders.ui.FolderEditActivity` |
| 45 | `org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity` | `com.bare.folders.ui.FolderDetailActivity` |
| 46 | `org.swiftapps.swiftbackup.slog.SLogActivity` | `com.bare.slog.SLogActivity` |
| 47 | `org.swiftapps.swiftbackup.wifi.WifiActivity` | `com.bare.wifi.WifiActivity` |
| 48 | `org.swiftapps.swiftbackup.walls.WallsDashActivity` | `com.bare.walls.WallsDashActivity` |
| 49 | `org.swiftapps.swiftbackup.walls.WallsManageActivity` | `com.bare.walls.WallsManageActivity` |
| 50 | `org.swiftapps.swiftbackup.walls.WallApplyActivity` | `com.bare.walls.WallApplyActivity` |
| 51 | `org.swiftapps.swiftbackup.notice.NoticeViewActivity` | `com.bare.notice.NoticeViewActivity` |
| 52 | `org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity` | `com.bare.home.storageswitch.StorageSwitchActivity` |
| 53 | `org.swiftapps.swiftbackup.password.PasswordStrategyActivity` | `com.bare.password.PasswordStrategyActivity` |
| 54 | `org.swiftapps.swiftbackup.password.UserPasswordActivity` | `com.bare.password.UserPasswordActivity` |
| 55 | `org.swiftapps.swiftbackup.settings.MultipleBackupsActivity` | `com.bare.settings.MultipleBackupsActivity` |
| 56 | `org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity` | `com.bare.settings.RestoreSpecialDataDetailsActivity` |
| 57 | `org.swiftapps.swiftbackup.tasks.ui.TaskActivity` | `com.bare.tasks.ui.TaskActivity` |
| 58 | `org.swiftapps.swiftbackup.tasks.PreconditionsActivity` | `com.bare.tasks.PreconditionsActivity` |
| 59 | `org.swiftapps.swiftbackup.settings.LicensesActivity` | `com.bare.settings.LicensesActivity` |
| 60 | `org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity` | `com.bare.cloud.connect.common.CloudConnectActivity` |
| 61 | `org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity` | `com.bare.settings.appbackuplimits.AppBackupLimitsActivity` |
| 62 | `org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity` | `com.bare.cloud.connect.DropboxSignInActivity` |
| 63 | `org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity` | `com.bare.cloud.connect.OneDriveSignInActivity` |
| 64 | `org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity` | `com.bare.cloud.connect.BoxSignInActivity` |
| 65 | `org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity` | `com.bare.cloud.connect.MegaSignInActivity` |
| 66 | `org.swiftapps.swiftbackup.cloud.connect.YandexSignInActivity` | `com.bare.cloud.connect.YandexSignInActivity` |
| 67 | `org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity` | `com.bare.cloud.connect.PCloudSignInActivity` |
| 68 | `org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity` | `com.bare.cloud.connect.TeraBoxSignInActivity` |
| 69 | `org.swiftapps.swiftbackup.cloud.connect.CsActivity` | `com.bare.cloud.connect.CsActivity` |
| 70 | `org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity` | `com.bare.cloud.connect.FilenSignInActivity` |
| 71 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.ComposeSmsActivity` | `com.bare.messagescalls.defaulthandler.ComposeSmsActivity` |

### Services — 3

| # | Reference Service | BaRe Service |
|---:|---|---|
| 1 | `org.swiftapps.swiftbackup.tasks.TaskService` | `com.bare.tasks.TaskService` |
| 2 | `org.swiftapps.swiftbackup.home.schedule.ScheduleService` | `com.bare.home.schedule.ScheduleService` |
| 3 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.HeadlessSmsSendService` | `com.bare.messagescalls.defaulthandler.HeadlessSmsSendService` |

### Receivers — 8

| # | Reference Receiver | BaRe Receiver |
|---:|---|---|
| 1 | `org.swiftapps.swiftbackup.jobs.AlarmReceiver` | `com.bare.jobs.AlarmReceiver` |
| 2 | `org.swiftapps.swiftbackup.common.LocaleChangedReceiver` | `com.bare.common.LocaleChangedReceiver` |
| 3 | `org.swiftapps.swiftbackup.jobs.BootReceiver` | `com.bare.jobs.BootReceiver` |
| 4 | `org.swiftapps.swiftbackup.tasks.NotificationTaskCancelReceiver` | `com.bare.tasks.NotificationTaskCancelReceiver` |
| 5 | `org.swiftapps.swiftbackup.common.PackageInstallResultReceiver` | `com.bare.common.PackageInstallResultReceiver` |
| 6 | `org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver` | `com.bare.detail.ShortcutPinnedReceiver` |
| 7 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.SmsReceiver` | `com.bare.messagescalls.defaulthandler.SmsReceiver` |
| 8 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.MmsReceiver` | `com.bare.messagescalls.defaulthandler.MmsReceiver` |

### Reference-owned Providers — 0

The Reference manifest has **4 providers total**, but all 4 are dependency/library providers. None is under `org.swiftapps.swiftbackup.*`. Therefore the Phase 2 application-owned provider count is **0**.

### How to read this inventory

- **Phase 2 MATCH** means only: the component boundary exists in BaRe Java source + manifest registration.
- It does **not** mean UI, state, behavior, feature execution, backend, or runtime parity.
- An Activity listed here may already have P3 work, may only have a skeleton, or may still require P3/P4/P5 reconstruction.
- Do not use the 71 count as “71 features complete”.
- The current vertical reconstruction checkpoint is tracked separately in `docs/RECONSTRUCTION_CHECKPOINT.md`.

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
