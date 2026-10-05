# Phase 2 — Reconstruction Evidence
| Field | Value |
|---|---|
| Phase | P2 — Reference Reconstruction |
| Reference | Swift Backup 5.1.0 / versionCode 620 |
| Current scope | **Only unclear/obfuscated Reference filenames** |
| Inventory | 68 unclear Reference files audited; generated `R.java` excluded from rename audit |
| Rule | Reference unclear filename → semantic inspection → BaRe target filename; no filename-equality assumption |
| State | IN PROGRESS — UNCLEAR FILE AUDIT |

## UNCLEAR REFERENCE FILE AUDIT

| # | Reference File | BaRe File / Target | Role | Status |
|---|---|---|---|---|
| 001 | `org/swiftapps/filesystem/a.java` | `org/swiftapps/filesystem/RandomAccessFileWriter.java` | Utility menulis byte ke FileChannel pada offset tertentu / random-access file writer | **MATCH** |
| 002 | `org/swiftapps/swiftbackup/apkshare/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/apkshare/ApkShareArchiveWriter.java`** | APKS/archive utility: SHA-256, archive-entry validation, ZIP/APKS construction; writes `meta.sai_v2.json` and `meta.swiftbackup_v1.json`; records APK metadata including SHA-256; Reference direct caller evidence: `defpackage/jm1.java` calls `org.swiftapps.swiftbackup.apkshare.a.c(...)` at two call sites (around lines 565 and 777), for APKS creation | **CANDIDATE** |
| 003 | `org/swiftapps/swiftbackup/appconfigs/data/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/appconfigs/data/ConfigSettingsApplyDataCreator.java`** | Parcelable.Creator khusus `ConfigSettings.ApplyData`; `createFromParcel()` membaca satu String dan membentuk `new ConfigSettings.ApplyData(...)`; `newArray()` membuat array `ApplyData` | **CANDIDATE** |
| 004 | `org/swiftapps/swiftbackup/appconfigs/data/b.java` | **CANDIDATE: `org/swiftapps/swiftbackup/appconfigs/data/ConfigSettingsCreator.java`** | Parcelable.Creator untuk `ConfigSettings`; `createFromParcel()` membaca seluruh field parcel sesuai constructor `ConfigSettings(...)`, termasuk `ApplyData`, `AppBackupLimitItem` list, dan `MultipleBackupStrategy`; `newArray()` membuat array `ConfigSettings` | **CANDIDATE** |
| 005 | `org/swiftapps/swiftbackup/appconfigs/edit/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivityActionSwitchMap.java`** | Synthetic enum switch-map for `ConfigEditActivity.a`: `Run→1`, `Save→2`, `Hide→3`; no independent domain logic | **CANDIDATE** |
| 006 | `org/swiftapps/swiftbackup/appconfigs/list/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/appconfigs/list/ConfigListViewModel.java`** | Config-list state/ViewModel; stores `ConfigsData`, persists sort preference, sorts by `Name`/`LastUpdated` with `Asc`/`Desc`, and publishes sorted values | **CANDIDATE** |
| 007 | `org/swiftapps/swiftbackup/appconfigs/list/b.java` | **CANDIDATE: `org/swiftapps/swiftbackup/appconfigs/list/ConfigListSortFieldSwitchMap.java`** | Synthetic enum switch-map for ConfigList sort field: `Name→1`, `LastUpdated→2` | **CANDIDATE** |
| 008 | `org/swiftapps/swiftbackup/apptasks/notifications/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyRequestParser.java`** | Parses 4-part notification policy request (`mode`, `userId`, `packageName`, `payloadFile`), validates mode/user/package, and returns notification request data | **CANDIDATE** |
| 009 | `org/swiftapps/swiftbackup/apptasks/notifications/b.java` | **CANDIDATE: `org/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyRequest.java`** | Immutable notification policy request value object: mode, userId, packageName, payload `File`; `toString()` identity is `Request(...)` | **CANDIDATE** |
| 010 | `org/swiftapps/swiftbackup/apptasks/notifications/c.java` | **CANDIDATE: `org/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyModeSwitchMap.java`** | Synthetic enum switch-map for `NotificationPolicyProxy.a`: `Backup→1`, `Restore→2` | **CANDIDATE** |
| 011 | `org/swiftapps/swiftbackup/apptasks/sba/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/apptasks/sba/SbaAppDataArchiveMetadataBuilder.java`** | Builds serialized SBA app-data archive metadata JSON from app identity/version, backup mode flags, compression level, data/de-data sizes, and included `data`/`data_de` parts | **CANDIDATE** |
| 012 | `org/swiftapps/swiftbackup/cloud/orphans/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerViewModel.java`** | Cloud-orphan cleaner ViewModel/state coordinator; tracks cloud identity, cleaner state, scan/delete progress, coroutine handle, and publishes updated orphan state | **CANDIDATE** |
| 013 | `org/swiftapps/swiftbackup/cloud/orphans/b.java` | **CANDIDATE: `org/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerState.java`** | Immutable cleaner state value object; `toString()` identity is `State(...)`; carries provider/cloud metadata, phase, orphan files, selected IDs, status and scan/reference counts | **CANDIDATE** |
| 014 | `org/swiftapps/swiftbackup/cloud/orphans/c.java` | **CANDIDATE: `org/swiftapps/swiftbackup/cloud/orphans/CloudOrphanScanContinuation.java`** | Coroutine continuation for cloud-orphan scan processing; captures cleaner, orphan collection, operation token/identity and coroutine handle; `invokeSuspend` contains the scan state machine | **CANDIDATE** |
| 015 | `org/swiftapps/swiftbackup/cloud/protocols/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/cloud/protocols/CloudCredentialsPersistence.java`** | CloudCredentials persistence/export helper; exports credentials JSON to a document URI and reconstructs saved credentials from SharedPreferences with decoded password/private key | **CANDIDATE** |
| 016 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java` | **CANDIDATE: `org/swiftapps/swiftbackup/cloud/protocols/filen/FilenCloudStorageClient.java`** | Filen cloud storage client/manager; lists directory contents with cache, resolves paths, parses file/folder metadata, and performs permanent file/directory deletion | **CANDIDATE** |
| 017 | `org/swiftapps/swiftbackup/common/V.java` | **CANDIDATE: `org/swiftapps/swiftbackup/common/SecurePreferencesManager.java`** | Singleton secure-preferences manager; selects encrypted vs fallback secure preferences, generates/loads AES/HMAC key material, and stores typed application security state | **CANDIDATE** |
| 018 | `org/swiftapps/swiftbackup/common/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/common/GsonUriAdapterFactory.java`** | Gson factory supplier registering a custom `Uri` JSON adapter and configuring the Gson `Excluder` with `v14` strategy | **CANDIDATE** |
| 019 | `org/swiftapps/swiftbackup/contributor/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/contributor/ContributorRegistrationViewModel.java`** | Contributor registration state/ViewModel; persists contributor details identity, exposes state holder, and initializes registration loading coroutine | **CANDIDATE** |
| 020 | `org/swiftapps/swiftbackup/contributor/b.java` | **CANDIDATE: `org/swiftapps/swiftbackup/contributor/ContributorRegistrationTypeSwitchMap.java`** | Synthetic enum switch-map: `Translator→1`, `CommunityHelper→2`; semantically identical to Reference `c.java`; whether BaRe requires one shared target or two artifacts remains UNKNOWN | **CANDIDATE** |
| 021 | `org/swiftapps/swiftbackup/contributor/c.java` | **CANDIDATE: `org/swiftapps/swiftbackup/contributor/ContributorRegistrationTypeSwitchMap.java`** | Synthetic enum switch-map: `Translator→1`, `CommunityHelper→2`; source body is identical to Reference `b.java`; shared-target/duplicate-artifact decision remains UNKNOWN | **CANDIDATE** |
| 022 | `org/swiftapps/swiftbackup/folders/data/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/folders/data/FolderMetadataFactory.java`** | Validates `FolderItem`, constructs `kj3` folder metadata handle, optionally loads existing `FolderMetadata`, and creates/writes or refreshes metadata when absent | **CANDIDATE** |
| 023 | `org/swiftapps/swiftbackup/folders/data/b.java` | **UNKNOWN** | BaRe counterpart is empty; no independent Reference semantic role or safe target identity proven | **UNKNOWN** |
| 024 | `org/swiftapps/swiftbackup/folders/data/c.java` | **UNKNOWN** | BaRe counterpart is empty; no independent Reference semantic role or safe target identity proven | **UNKNOWN** |
| 025 | `org/swiftapps/swiftbackup/home/schedule/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/ScheduleServiceLauncher.java`** | ScheduleService launcher/helper; classifies foreground-service start exceptions, checks task-busy state, maps run mode to service identity, builds Intent extras, starts `ScheduleService`, and reports blocked starts | **CANDIDATE** |
| 026 | `org/swiftapps/swiftbackup/home/schedule/b.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/ScheduleRunModeMultipleSchedulesCreator.java`** | Parcelable.Creator for `ScheduleService.RunMode.MultipleSchedules`; reconstructs the Parcelable list and creates arrays of that type | **CANDIDATE** |
| 027 | `org/swiftapps/swiftbackup/home/schedule/c.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/ScheduleRunModeSchedulesCreator.java`** | Parcelable.Creator for singleton `ScheduleService.RunMode.Schedules`; consumes parcel marker and returns `Schedules.INSTANCE`, with typed array creation | **CANDIDATE** |
| 028 | `org/swiftapps/swiftbackup/home/schedule/d.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/ScheduleRunModeSingleScheduleCreator.java`** | Parcelable.Creator for `ScheduleService.RunMode.SingleSchedule`; reconstructs the contained `ScheduleItem` and creates typed arrays | **CANDIDATE** |
| 029 | `org/swiftapps/swiftbackup/home/schedule/data/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemBackupOptionFactory.java`** | Builds `y37` schedule-item option rows for AppParts, Locations, RepeatDays and SyncOptions, converting selected values to display-label items and attaching resource/icon metadata | **CANDIDATE** |
| 030 | `org/swiftapps/swiftbackup/home/schedule/data/b.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleCardItem.java`** | Immutable `jl0` schedule-card UI/state model; `toString()` explicitly identifies `ScheduleCardItem` and carries title/subtitle, enable state, next/last-run text, error flag, schedule properties and underlying `ScheduleItem` | **CANDIDATE** |
| 031 | `org/swiftapps/swiftbackup/home/schedule/data/c.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleDataConditionSwitchMap.java`** | Synthetic enum switch-map for `ScheduleData.a`: `NONE→1`, `CHARGING→2`, `MINIMUM_PERCENT→3` | **CANDIDATE** |
| 032 | `org/swiftapps/swiftbackup/home/schedule/data/d.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleDataNormalizer.java`** | Normalizes `ScheduleData` child schedules by clearing disabled/root/permission-ineligible items according to current capability state, then returns a copied `ScheduleData` | **CANDIDATE** |
| 033 | `org/swiftapps/swiftbackup/home/schedule/data/e.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemAppConfigCreator.java`** | Parcelable.Creator for `ScheduleItem.AppConfig`; reconstructs package/name/type/config identifiers and enabled flag | **CANDIDATE** |
| 034 | `org/swiftapps/swiftbackup/home/schedule/data/f.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemAppsLabelsCreator.java`** | Parcelable.Creator for `ScheduleItem.AppsLabels`; reconstructs label/type/app selection strings and enabled flag | **CANDIDATE** |
| 035 | `org/swiftapps/swiftbackup/home/schedule/data/g.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleAppsQuickActionsTypeSwitchMap.java`** | Synthetic enum switch-map for `ScheduleItem.AppsQuickActions.a`: `System→1`, `User→2`, `Fav→3` | **CANDIDATE** |
| 036 | `org/swiftapps/swiftbackup/home/schedule/data/h.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemAppsQuickActionsCreator.java`** | Parcelable.Creator for `ScheduleItem.AppsQuickActions`; reconstructs id, type, quick-action IDs, allowed apps, app parts, locations, sync option, repeat days and enabled flag from Parcel | **CANDIDATE** |
| 037 | `org/swiftapps/swiftbackup/home/schedule/data/i.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemCallLogsCreator.java`** | Parcelable.Creator for `ScheduleItem.CallLogs`; reconstructs id, type, three call-log strings and enabled flag from Parcel | **CANDIDATE** |
| 038 | `org/swiftapps/swiftbackup/home/schedule/data/j.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemDefaults.java`** | Static schedule-item defaults helper: returns APP-only or APP+DATA parts depending on root capability, and DEVICE as default location | **CANDIDATE** |
| 039 | `org/swiftapps/swiftbackup/home/schedule/data/k.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemFoldersCreator.java`** | Parcelable.Creator for `ScheduleItem.Folders`; reconstructs folder list and remaining schedule fields from Parcel | **CANDIDATE** |
| 040 | `org/swiftapps/swiftbackup/home/schedule/data/l.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemMessagesCreator.java`** | Parcelable.Creator for `ScheduleItem.Messages`; reconstructs id, type, message fields and enabled flag | **CANDIDATE** |
| 041 | `org/swiftapps/swiftbackup/home/schedule/data/m.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemWallpapersCreator.java`** | Parcelable.Creator for `ScheduleItem.Wallpapers`; reconstructs id, type, wallpaper fields and enabled flag | **CANDIDATE** |
| 042 | `org/swiftapps/swiftbackup/home/schedule/data/n.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemWifiCreator.java`** | Parcelable.Creator for `ScheduleItem.Wifi`; reconstructs id, type, Wi-Fi fields and enabled flag | **CANDIDATE** |
| 043 | `org/swiftapps/swiftbackup/home/schedule/data/o.java` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetailsPersistence.java`** | Formats run timestamps using app locale, loads/stores `ScheduleLastRunDetails` through SharedPreferences + Gson type metadata, and builds the persistence key | **CANDIDATE** |
| 044 | `org/swiftapps/swiftbackup/intro/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroStateCardTypeSwitchMap.java`** | Synthetic switch-map covering `IntroActivity` card types and `IntroActivity` state enum values | **CANDIDATE** |
| 045 | `org/swiftapps/swiftbackup/intro/b.java` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroActivitySignInStateCallback.java`** | Synthetic callback receiving `IntroViewModel` sign-in state; calls `IntroActivity.Y(true)` when state is `SIGNED_IN` | **CANDIDATE** |
| 046 | `org/swiftapps/swiftbackup/intro/c.java` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroActivityFirstRunRestoreStateCallback.java`** | Synthetic callback for first-run cloud-restore state; resets state and routes SUCCESS to `IntroActivity.V()` and FAILED to `IntroActivity.X()` | **CANDIDATE** |
| 047 | `org/swiftapps/swiftbackup/intro/d.java` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroViewModel.java`** | Intro ViewModel coordinating sign-in, first-run cloud-settings restore, storage setup, root/Shizuku permission state and intro prerequisite state | **CANDIDATE** |
| 048 | `org/swiftapps/swiftbackup/intro/e.java` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroFirstRunCloudSettingsRestoreContinuation.java`** | Coroutine continuation wrapping `IntroViewModel.restoreFirstRunCloudSettings`; `invokeSuspend` decompile remains unsupported | **CANDIDATE** |
| 049 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreStateSwitchMap.java`** | Synthetic switch-map for Calls backup/restore state: `Loading→1`, `DataReceived→2`, `DataEmpty→3` | **CANDIDATE** |
| 050 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/b.java` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreViewModel.java`** | ViewModel holding Calls restore state/data and reacting to task completion | **CANDIDATE** |
| 051 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/c.java` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallLogsBackupFileReadContinuation.java`** | Coroutine continuation reading call-log data from a backup file | **CANDIDATE** |
| 052 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/d.java` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallLogsDeviceReadContinuation.java`** | Coroutine continuation reading call-log data from the device | **CANDIDATE** |
| 053 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/e.java` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreStateSwitchMap.java`** | Synthetic switch-map for Messages backup/restore state: `Loading→1`, `DataReceived→2`, `DataEmpty→3` | **CANDIDATE** |
| 054 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/f.java` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreViewModel.java`** | ViewModel holding Messages restore state/data and reacting to messages task completion | **CANDIDATE** |
| 055 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/g.java` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupFileReadContinuation.java`** | Coroutine continuation reading message data from a backup file | **CANDIDATE** |
| 056 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/h.java` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesDeviceReadContinuation.java`** | Coroutine continuation reading message data from the device | **CANDIDATE** |
| 057 | `org/swiftapps/swiftbackup/settings/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/SettingsAppsFragment.java`** | Apps settings PreferenceFragment; handles settings-app preference clicks, preference refresh, resume state and navigation to app settings screens | **CANDIDATE** |
| 058 | `org/swiftapps/swiftbackup/settings/b.java` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyStore.java`** | Provides default/legacy strategies, loads persisted strategy with premium gating/migration, and clamps backup-count range | **CANDIDATE** |
| 059 | `org/swiftapps/swiftbackup/settings/c.java` | **UNKNOWN** | Empty generated/reference class; semantic role not independently proven | **UNKNOWN** |
| 060 | `org/swiftapps/swiftbackup/settings/d.java` | **UNKNOWN** | Empty generated/reference class; semantic role not independently proven | **UNKNOWN** |
| 061 | `org/swiftapps/swiftbackup/settings/e.java` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyTypeSwitchMap.java`** | Synthetic switch-map for `MultipleBackupStrategy.Type` | **CANDIDATE** |
| 062 | `org/swiftapps/swiftbackup/settings/f.java` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyMapper.java`** | Maps persisted `MultipleBackupStrategy` to UI representation and resolves strategy type/condition | **CANDIDATE** |
| 063 | `org/swiftapps/swiftbackup/settings/g.java` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyConditionSwitchMap.java`** | Synthetic switch-map for `NewBackupCondition`: `ApkChanges→1`, `DataChanges→2`, `ApkOrDataChanges→3` | **CANDIDATE** |
| 064 | `org/swiftapps/swiftbackup/settings/h.java` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyCardBinder.java`** | Binds a `MultipleBackupStrategy` to the multiple-backups card UI, slider and condition radio buttons | **CANDIDATE** |
| 065 | `org/swiftapps/swiftbackup/settings/i.java` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyState.java`** | Immutable state containing single/dated/conditional strategies and selected strategy type | **CANDIDATE** |
| 066 | `org/swiftapps/swiftbackup/settings/j.java` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyTypeSwitchMap.java`** | Synthetic switch-map for the same `MultipleBackupStrategy.Type` enum; whether Reference `e` and `j` require separate artifacts remains UNKNOWN | **CANDIDATE** |
| 067 | `org/swiftapps/swiftbackup/settings/k.java` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyViewModel.java`** | ViewModel updating selected strategy type and per-type strategy values in `MultipleBackupStrategyState` | **CANDIDATE** |
| 068 | `org/swiftapps/swiftbackup/views/a.java` | **CANDIDATE: `org/swiftapps/swiftbackup/views/SwiftSegmentedCardGroupPositionSwitchMap.java`** | Synthetic switch-map for `SwiftSegmentedCardGroup` position: `Single→1`, `Top→2`, `Middle→3`, `Bottom→4` | **CANDIDATE** |
| 069 | `defpackage/ai.java` | **UNKNOWN** | Direct dependency used by SHA-256 digest formatting path; semantic target not yet reconstructed | **UNKNOWN** |
| 070 | `defpackage/c6.java` | **UNKNOWN** | Direct dependency used for archive validation/error reporting | **UNKNOWN** |
| 071 | `defpackage/cy0.java` | **UNKNOWN** | Direct dependency used for buffered InputStream → OutputStream copy | **UNKNOWN** |
| 072 | `defpackage/f51.java` | **UNKNOWN** | Direct dependency providing Charset used for archive metadata bytes | **UNKNOWN** |
| 073 | `defpackage/f6.java` | **UNKNOWN** | Direct dependency used for archive validation/error reporting | **UNKNOWN** |
| 074 | `defpackage/gv7.java` | **UNKNOWN** | Direct dependency referenced around Gson serialization state | **UNKNOWN** |
| 075 | `defpackage/hl1.java` | **UNKNOWN** | Direct dependency used for collection capacity calculation | **UNKNOWN** |
| 076 | `defpackage/nq7.java` | **UNKNOWN** | Direct dependency used for string/entry-name validation | **UNKNOWN** |
| 077 | `defpackage/q63.java` | **UNKNOWN** | Filesystem abstraction used for archive output/input, existence and size; counterpart absent from current BaRe source | **UNKNOWN** |
| 078 | `defpackage/rs9.java` | **UNKNOWN** | Direct dependency used for closeable exception-safe cleanup | **UNKNOWN** |
| 079 | `defpackage/uh.java` | **UNKNOWN** | Enum defining APK share file role: BASE / SPLIT | **UNKNOWN** |
| 080 | `defpackage/vh.java` | **UNKNOWN** | Reference model identified as `ApkShareFile(sourceFile, archiveName, role)`; BaRe target not mapped | **UNKNOWN** |
| 081 | `defpackage/w14.java` | **UNKNOWN** | Direct dependency used for Gson serialization | **UNKNOWN** |
| 082 | `defpackage/x50.java` | **UNKNOWN** | Direct dependency used for digest/string formatting | **UNKNOWN** |
| 083 | `defpackage/xs1.java` | **UNKNOWN** | Direct dependency used for q63-related error message formatting | **UNKNOWN** |
| 084 | `defpackage/jm1.java` | **CANDIDATE: `defpackage/ApkShareExportOrchestrator.java`** | Obfuscated multi-purpose static utility class; methods `l(...)`/`m(...)` are proven APK/APKS export orchestration paths; Share APK/APKS resource/caller trace supports export-orchestrator semantics | **CANDIDATE** |
| 085 | `defpackage/k55.java` | **UNKNOWN** | Base type for APK export source variants; `xh`=Installed, `yh`=LocalBackup, `wh`=CloudBackup | **UNKNOWN** |
| 086 | `defpackage/xh.java` | **UNKNOWN** | Installed-app export source wrapper; carries `ji` app metadata | **UNKNOWN** |
| 087 | `defpackage/yh.java` | **UNKNOWN** | Local-backup export source wrapper; carries `ji` app metadata and `hk` backup | **UNKNOWN** |
| 088 | `defpackage/wh.java` | **UNKNOWN** | Cloud-backup export source wrapper; carries `ji` app metadata and `AppCloudBackup` | **UNKNOWN** |
| 089 | `defpackage/ji.java` | **UNKNOWN** | Parcelable app descriptor used for package/source APK metadata | **UNKNOWN** |
| 090 | `defpackage/hk.java` | **UNKNOWN** | Local APK backup handle used by APK/APKS export path | **UNKNOWN** |
| 091 | `defpackage/ov2.java` | **UNKNOWN** | Empty immutable-list fallback/singleton used when no split APK list exists | **UNKNOWN** |
| 092 | `defpackage/nc8.java` | **UNKNOWN** | Collection helper used to create singleton base-APK list | **UNKNOWN** |
| 093 | `defpackage/io4.java` | **UNKNOWN** | Nullable-long normalization helper used for backup/split size accounting | **UNKNOWN** |
| 094 | `defpackage/fo2.java` | **UNKNOWN** | Download/extraction work item carrying source/link, expected size and target q63 path | **UNKNOWN** |
| 095 | `defpackage/kh6.java` | **UNKNOWN** | Mutable progress accumulator for downloaded/exported byte count | **UNKNOWN** |
| 096 | `defpackage/oh.java` | **UNKNOWN** | Progress value object carrying current/total byte counts | **UNKNOWN** |
| 097 | `defpackage/ph.java` | **UNKNOWN** | Terminal progress value emitted after cloud APK download/extraction | **UNKNOWN** |
| 098 | `defpackage/ky.java` | **UNKNOWN** | Split-APK extraction helper used to unpack backed-up split APKs | **UNKNOWN** |
| 099 | `defpackage/xg.java` | **UNKNOWN** | Comparator used to order extracted split APK files before APKS packaging | **UNKNOWN** |
| 100 | `defpackage/nh.java` | **UNKNOWN** | UI/task caller invoking `jm1.l(...)` asynchronously for APK export | **UNKNOWN** |
| 101 | `defpackage/b7.java` | **UNKNOWN** | Callback/selector passed to split-APK extraction operation | **UNKNOWN** |
| 102 | `defpackage/l0.java` | **UNKNOWN** | Error/logging helper used on split export/extraction failures | **UNKNOWN** |
| 103 | `defpackage/rh.java` | **UNKNOWN** | APK share export result value: output q63 file plus MIME type; `toString()` identity is `ApkShareExportResult` | **UNKNOWN** |
| 104 | `defpackage/ni.java` | **UNKNOWN** | App action menu builder; exposes `Share APK` for installed apps | **UNKNOWN** |
| 105 | `defpackage/oy.java` | **UNKNOWN** | App action enum; `ShareApk` maps id `share_apk` to `R.string.share_apk` | **UNKNOWN** |
| 106 | `defpackage/ts.java` | **UNKNOWN** | Synthetic action switch-map; maps `oy.ShareApk` to action id 8 | **UNKNOWN** |
| 107 | `defpackage/ny.java` | **UNKNOWN** | Synthetic action switch-map; maps `oy.ShareApk` to action id 8 | **UNKNOWN** |
| 108 | `defpackage/tj.java` | **UNKNOWN** | Share-APK action caller; constructs `xh(ji)` and dispatches to `nh.n(...)` | **UNKNOWN** |
| 109 | `defpackage/ss.java` | **UNKNOWN** | Share-APK action caller; constructs `xh(ji)` and dispatches to `nh.n(...)` | **UNKNOWN** |
| 110 | `defpackage/ij.java` | **UNKNOWN** | Share-APK action caller; constructs `xh(ji)` and dispatches to `nh.n(...)` | **UNKNOWN** |
| 111 | `defpackage/mh.java` | **UNKNOWN** | Share result UI; maps MIME `application/octet-stream` to `share_apks`, otherwise `share_apk` | **UNKNOWN** |
| 112 | `defpackage/lh.java` | **UNKNOWN** | UI progress handler displaying `preparing_apks` during APK preparation | **UNKNOWN** |

## GATE

| Requirement | State |
|---|---|
| Scope limited to unclear Reference filenames | PASS |
| Clear/named Reference files excluded | PASS |
| Semantic inspection used instead of filename equality | PASS |
| Unsupported target names invented | NO |
| Confirmed semantic rename already present | `org/swiftapps/filesystem/a.java` → `org/swiftapps/filesystem/RandomAccessFileWriter.java` = MATCH |
| Remaining UNKNOWN mappings | 83 (including 16 newly discovered direct dependencies) |
| Build/runtime verification | NOT STARTED — OUT OF CURRENT SCOPE |

---

## CLASS / TYPE — OBFUSCATED REFERENCE

Class/type inventory is tracked separately from the FILES table. The Reference name is retained exactly; the BaRe column records the current repository condition. No target name is invented before semantic inspection.

| # | Reference | BaRe aktual | Kondisi sekarang | Status |
|---|---|---|---|---|
| 001 | `org/swiftapps/filesystem/a.java::class a` | `org/swiftapps/filesystem/RandomAccessFileWriter.java` | Class already semantically renamed; method still needs separate verification | MATCH |
| 002 | `org/swiftapps/swiftbackup/apkshare/a.java::class a` | `same path a.java` | Role proven as APKS/archive utility; meaningful original class name not proven; no rename authorized | UNKNOWN |
| 003 | `org/swiftapps/swiftbackup/appconfigs/data/a.java::class a` | `CANDIDATE: org/swiftapps/swiftbackup/appconfigs/data/ConfigSettingsApplyDataCreator.java` | `Parcelable.Creator` untuk nested `ConfigSettings.ApplyData`; semantic identity proven from `ApplyData.CREATOR = new a()` | CANDIDATE |
| 004 | `org/swiftapps/swiftbackup/appconfigs/data/b.java::class b` | `CANDIDATE: org/swiftapps/swiftbackup/appconfigs/data/ConfigSettingsCreator.java` | `Parcelable.Creator<ConfigSettings>`; semantic identity proven from `ConfigSettings.CREATOR = new b()` and parcel reconstruction matching `ConfigSettings` constructor fields | CANDIDATE |
| 005 | `org/swiftapps/swiftbackup/appconfigs/edit/a.java::class a` | `CANDIDATE: org/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivityActionSwitchMap.java` | Synthetic enum switch-map bound to `ConfigEditActivity.a` actions `Run`, `Save`, `Hide` | CANDIDATE |
| 006 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::class a,b` | `CANDIDATE: org/swiftapps/swiftbackup/appconfigs/list/ConfigListViewModel.java` | Main class is Config-list state/ViewModel; nested enums define sort direction (`Asc`, `Desc`) and sort field (`Name`, `LastUpdated`) | CANDIDATE |
| 007 | `org/swiftapps/swiftbackup/appconfigs/list/b.java::class b` | `CANDIDATE: org/swiftapps/swiftbackup/appconfigs/list/ConfigListSortFieldSwitchMap.java` | Synthetic switch-map bound to ConfigList sort-field enum `a.b` | CANDIDATE |
| 008 | `org/swiftapps/swiftbackup/apptasks/notifications/a.java::class a` | `CANDIDATE: org/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyRequestParser.java` | Stateless parser/validator for notification policy request arguments | CANDIDATE |
| 009 | `org/swiftapps/swiftbackup/apptasks/notifications/b.java::class b` | `CANDIDATE: org/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyRequest.java` | Immutable request value object; semantic identity proven from constructor, equality/hashCode and `toString()` | CANDIDATE |
| 010 | `org/swiftapps/swiftbackup/apptasks/notifications/c.java::class c` | `CANDIDATE: org/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyModeSwitchMap.java` | Synthetic switch-map bound to notification policy mode enum | CANDIDATE |
| 011 | `org/swiftapps/swiftbackup/apptasks/sba/a.java::class a` | `CANDIDATE: org/swiftapps/swiftbackup/apptasks/sba/SbaAppDataArchiveMetadataBuilder.java` | Stateless static builder producing JSON for `SbaAppDataArchiveMetadata` | CANDIDATE |
| 012 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::class a` | `CANDIDATE: org/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerViewModel.java` | Cloud-orphan cleaner ViewModel/state coordinator | CANDIDATE |
| 013 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::class b` | `CANDIDATE: org/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerState.java` | Immutable cleaner state value object; semantic identity proven by `State(...)`, copy-like factory and state predicates | CANDIDATE |
| 014 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::class c` | `CANDIDATE: org/swiftapps/swiftbackup/cloud/orphans/CloudOrphanScanContinuation.java` | Coroutine continuation/state-machine class used by cloud-orphan scan | CANDIDATE |
| 015 | `org/swiftapps/swiftbackup/cloud/protocols/a.java::class a` | `CANDIDATE: org/swiftapps/swiftbackup/cloud/protocols/CloudCredentialsPersistence.java` | Stateless persistence/export helper for `CloudCredentials` | CANDIDATE |
| 016 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::class c` | `CANDIDATE: org/swiftapps/swiftbackup/cloud/protocols/filen/FilenCloudStorageClient.java` | Stateful Filen cloud storage client with API wrapper, operation handlers, TTL cache and root item | CANDIDATE |
| 017 | `org/swiftapps/swiftbackup/common/V.java::class V` | `CANDIDATE: org/swiftapps/swiftbackup/common/SecurePreferencesManager.java` | Singleton secure-preferences/crypto state manager with encrypted-preferences fallback and typed getters/setters | CANDIDATE |
| 018 | `org/swiftapps/swiftbackup/common/a.java::class a` | `CANDIDATE: org/swiftapps/swiftbackup/common/GsonUriAdapterFactory.java` | Synthetic Gson factory supplier; embedded adapter is explicitly identified as `GsonHelper$UriAdapter` | CANDIDATE |
| 019 | `org/swiftapps/swiftbackup/contributor/a.java::class a` | `CANDIDATE: org/swiftapps/swiftbackup/contributor/ContributorRegistrationViewModel.java` | Contributor registration state/ViewModel extending `qo0` | CANDIDATE |
| 020 | `org/swiftapps/swiftbackup/contributor/b.java::class b` | `CANDIDATE: org/swiftapps/swiftbackup/contributor/ContributorRegistrationTypeSwitchMap.java` | Synthetic switch-map for `ContributorRegistration.a` | CANDIDATE |
| 021 | `org/swiftapps/swiftbackup/contributor/c.java::class c` | `CANDIDATE: org/swiftapps/swiftbackup/contributor/ContributorRegistrationTypeSwitchMap.java` | Duplicate synthetic switch-map with identical mapping to `b.java` | CANDIDATE |
| 022 | `org/swiftapps/swiftbackup/folders/data/a.java::class a` | `CANDIDATE: org/swiftapps/swiftbackup/folders/data/FolderMetadataFactory.java` | Static folder metadata/helper conversion utility | CANDIDATE |
| 023 | `org/swiftapps/swiftbackup/folders/data/b.java::class b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 024 | `org/swiftapps/swiftbackup/folders/data/c.java::class c` | `same path c.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 025 | `org/swiftapps/swiftbackup/home/schedule/a.java::class a` | `CANDIDATE: org/swiftapps/swiftbackup/home/schedule/ScheduleServiceLauncher.java` | Static ScheduleService startup/error-handling utility | CANDIDATE |
| 026 | `org/swiftapps/swiftbackup/home/schedule/b.java::class b` | `CANDIDATE: org/swiftapps/swiftbackup/home/schedule/ScheduleRunModeMultipleSchedulesCreator.java` | Parcelable.Creator bound to `RunMode.MultipleSchedules` | CANDIDATE |
| 027 | `org/swiftapps/swiftbackup/home/schedule/c.java::class c` | `CANDIDATE: org/swiftapps/swiftbackup/home/schedule/ScheduleRunModeSchedulesCreator.java` | Parcelable.Creator bound to singleton `RunMode.Schedules` | CANDIDATE |
| 028 | `org/swiftapps/swiftbackup/home/schedule/d.java::class d` | `CANDIDATE: org/swiftapps/swiftbackup/home/schedule/ScheduleRunModeSingleScheduleCreator.java` | Parcelable.Creator bound to `RunMode.SingleSchedule` | CANDIDATE |
| 029 | `org/swiftapps/swiftbackup/home/schedule/data/a.java::class a` | `CANDIDATE: org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemBackupOptionFactory.java` | Static factory for schedule-item backup option presentation models | CANDIDATE |
| 030 | `org/swiftapps/swiftbackup/home/schedule/data/b.java::class b` | `CANDIDATE: org/swiftapps/swiftbackup/home/schedule/data/ScheduleCardItem.java` | Immutable `jl0` schedule-card data model; semantic identity proven by `toString()` and `getItemId()` delegation | CANDIDATE |
| 031 | `org/swiftapps/swiftbackup/home/schedule/data/c.java::class c` | `CANDIDATE: org/swiftapps/swiftbackup/home/schedule/data/ScheduleDataConditionSwitchMap.java` | Synthetic switch-map bound to `ScheduleData.a` condition enum | CANDIDATE |
| 032 | `org/swiftapps/swiftbackup/home/schedule/data/d.java::class d` | `CANDIDATE: org/swiftapps/swiftbackup/home/schedule/data/ScheduleDataNormalizer.java` | Static ScheduleData normalization/copy helper | CANDIDATE |
| 033 | `org/swiftapps/swiftbackup/home/schedule/data/e.java::class e` | `CANDIDATE: org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemAppConfigCreator.java` | Parcelable.Creator bound to `ScheduleItem.AppConfig` | CANDIDATE |
| 034 | `org/swiftapps/swiftbackup/home/schedule/data/f.java::class f` | `CANDIDATE: org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemAppsLabelsCreator.java` | Parcelable.Creator bound to `ScheduleItem.AppsLabels` | CANDIDATE |
| 035 | `org/swiftapps/swiftbackup/home/schedule/data/g.java::class g` | `CANDIDATE: org/swiftapps/swiftbackup/home/schedule/data/ScheduleAppsQuickActionsTypeSwitchMap.java` | Synthetic switch-map bound to `ScheduleItem.AppsQuickActions.a` | CANDIDATE |
| 036 | `org/swiftapps/swiftbackup/home/schedule/data/h.java::class h` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemAppsQuickActionsCreator.java`** | Parcelable.Creator implementation for `ScheduleItem.AppsQuickActions` | CANDIDATE |
| 037 | `org/swiftapps/swiftbackup/home/schedule/data/i.java::class i` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemCallLogsCreator.java`** | Parcelable.Creator implementation for `ScheduleItem.CallLogs` | CANDIDATE |
| 038 | `org/swiftapps/swiftbackup/home/schedule/data/j.java::class j` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemDefaults.java`** | Static helper providing default app parts and default device location for ScheduleItem | CANDIDATE |
| 039 | `org/swiftapps/swiftbackup/home/schedule/data/k.java::class k` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemFoldersCreator.java`** | Parcelable.Creator implementation for `ScheduleItem.Folders` | CANDIDATE |
| 040 | `org/swiftapps/swiftbackup/home/schedule/data/l.java::class l` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemMessagesCreator.java`** | Parcelable.Creator implementation for `ScheduleItem.Messages` | CANDIDATE |
| 041 | `org/swiftapps/swiftbackup/home/schedule/data/m.java::class m` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemWallpapersCreator.java`** | Parcelable.Creator implementation for `ScheduleItem.Wallpapers` | CANDIDATE |
| 042 | `org/swiftapps/swiftbackup/home/schedule/data/n.java::class n` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemWifiCreator.java`** | Parcelable.Creator implementation for `ScheduleItem.Wifi` | CANDIDATE |
| 043 | `org/swiftapps/swiftbackup/home/schedule/data/o.java::class o` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetailsPersistence.java`** | Static persistence/formatting helper for `ScheduleLastRunDetails` | CANDIDATE |
| 044 | `org/swiftapps/swiftbackup/intro/a.java::class a` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroStateCardTypeSwitchMap.java`** | Synthetic enum switch-map for intro state and card type | CANDIDATE |
| 045 | `org/swiftapps/swiftbackup/intro/b.java::class b` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroActivitySignInStateCallback.java`** | Synthetic `mt3` callback bound to `IntroActivity` for sign-in state changes | CANDIDATE |
| 046 | `org/swiftapps/swiftbackup/intro/c.java::class c` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroActivityFirstRunRestoreStateCallback.java`** | Synthetic `mt3` callback bound to `IntroActivity` for first-run cloud-restore state | CANDIDATE |
| 047 | `org/swiftapps/swiftbackup/intro/d.java::class d` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroViewModel.java`** | Intro ViewModel/coordinator with sign-in, restore, permission and storage-setup state | CANDIDATE |
| 048 | `org/swiftapps/swiftbackup/intro/e.java::class e` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroFirstRunCloudSettingsRestoreContinuation.java`** | Coroutine continuation capturing `IntroViewModel` for first-run cloud settings restore | CANDIDATE |
| 049 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/a.java::class a` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreStateSwitchMap.java`** | Synthetic Calls backup/restore state switch-map | CANDIDATE |
| 050 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/b.java::class b` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreViewModel.java`** | Calls backup/restore ViewModel | CANDIDATE |
| 051 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/c.java::class c` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallLogsBackupFileReadContinuation.java`** | Calls backup-file read continuation | CANDIDATE |
| 052 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/d.java::class d` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallLogsDeviceReadContinuation.java`** | Calls device read continuation | CANDIDATE |
| 053 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/e.java::class e` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreStateSwitchMap.java`** | Synthetic Messages backup/restore state switch-map | CANDIDATE |
| 054 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/f.java::class f` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreViewModel.java`** | Messages backup/restore ViewModel | CANDIDATE |
| 055 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/g.java::class g` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupFileReadContinuation.java`** | Messages backup-file read continuation | CANDIDATE |
| 056 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/h.java::class h` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesDeviceReadContinuation.java`** | Messages device read continuation | CANDIDATE |
| 057 | `org/swiftapps/swiftbackup/settings/a.java::class a` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/SettingsAppsFragment.java`** | Apps settings PreferenceFragment/controller | CANDIDATE |
| 058 | `org/swiftapps/swiftbackup/settings/b.java::class b` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyStore.java`** | MultipleBackupStrategy defaults, migration and persistence helper | CANDIDATE |
| 059 | `org/swiftapps/swiftbackup/settings/c.java::class c` | **UNKNOWN** | Empty generated/reference class; semantic role not independently proven | UNKNOWN |
| 060 | `org/swiftapps/swiftbackup/settings/d.java::class d` | **UNKNOWN** | Empty generated/reference class; semantic role not independently proven | UNKNOWN |
| 061 | `org/swiftapps/swiftbackup/settings/e.java::class e` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyTypeSwitchMap.java`** | Synthetic MultipleBackupStrategy.Type switch-map | CANDIDATE |
| 062 | `org/swiftapps/swiftbackup/settings/f.java::class f` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyMapper.java`** | MultipleBackupStrategy representation/type mapper | CANDIDATE |
| 063 | `org/swiftapps/swiftbackup/settings/g.java::class g` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyConditionSwitchMap.java`** | Synthetic NewBackupCondition switch-map | CANDIDATE |
| 064 | `org/swiftapps/swiftbackup/settings/h.java::class h` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyCardBinder.java`** | Multiple-backup strategy card UI binder | CANDIDATE |
| 065 | `org/swiftapps/swiftbackup/settings/i.java::class i` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyState.java`** | Immutable MultipleBackupStrategy settings state | CANDIDATE |
| 066 | `org/swiftapps/swiftbackup/settings/j.java::class j` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyTypeSwitchMap.java`** | Duplicate synthetic Type switch-map; shared-target decision with `e.java` remains UNKNOWN | CANDIDATE |
| 067 | `org/swiftapps/swiftbackup/settings/k.java::class k` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyViewModel.java`** | MultipleBackupStrategy settings ViewModel | CANDIDATE |
| 068 | `org/swiftapps/swiftbackup/views/a.java::class a` | **CANDIDATE: `org/swiftapps/swiftbackup/views/SwiftSegmentedCardGroupPositionSwitchMap.java`** | Synthetic SwiftSegmentedCardGroup position switch-map | CANDIDATE |
| 069 | `org/swiftapps/swiftbackup/intro/d.java::enum a` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroFirstRunRestoreState.java`** | State enum: `IDLE`, `RUNNING`, `SUCCESS`, `FAILED` | CANDIDATE |
| 070 | `org/swiftapps/swiftbackup/intro/d.java::enum b` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroSignInState.java`** | Sign-in state enum: `RUNNING`, `SIGNED_IN`, `NOT_SIGNED_IN` | CANDIDATE |

| 071 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::class EnumC0012a` | `CANDIDATE: nested in ConfigListViewModel.java` | Sort-direction enum: `Asc`, `Desc`; each carries display string resource | CANDIDATE |
| 072 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::class b` | `CANDIDATE: nested in ConfigListViewModel.java` | Sort-field enum: `Name`, `LastUpdated`; each carries display string resource | CANDIDATE |
| 073 | `defpackage/ai.java::class ai` | `same path ai.java` | Synthetic `mt3` implementation; selector-driven utility callback | UNKNOWN |
| 074 | `defpackage/c6.java::class c6` | `same path c6.java` | Synthetic multi-interface validation/error helper; `f(String)` and `g(...)` throw `IllegalArgumentException` | UNKNOWN |
| 075 | `defpackage/cy0.java::class cy0` | `same path cy0.java` | Abstract stream-copy helper implementing buffered InputStream → OutputStream transfer | UNKNOWN |
| 076 | `defpackage/f51.java::class f51` | `same path f51.java` | Abstract holder with UTF-8 Charset field used by archive metadata path | UNKNOWN |
| 077 | `defpackage/f6.java::class f6` | `same path f6.java` | Direct validation/error dependency encountered from apkshare/a.java | UNKNOWN |
| 078 | `defpackage/gv7.java::class gv7` | `same path gv7.java` | Gson-serialization dependency encountered from apkshare/a.java | UNKNOWN |
| 079 | `defpackage/hl1.java::class hl1` | `same path hl1.java` | Collection-capacity helper dependency encountered from apkshare/a.java | UNKNOWN |
| 080 | `defpackage/nq7.java::class nq7` | `same path nq7.java` | String/archive-entry validation dependency encountered from apkshare/a.java | UNKNOWN |
| 081 | `defpackage/q63.java::class q63` | `same path q63.java` | Filesystem abstraction used for archive input/output, existence, and size | UNKNOWN |
| 082 | `defpackage/rs9.java::class rs9` | `same path rs9.java` | Closeable exception-safe cleanup dependency | UNKNOWN |
| 083 | `defpackage/uh.java::enum uh` | `same path uh.java` | Enum defining APK share file role: BASE / SPLIT | UNKNOWN |
| 084 | `defpackage/vh.java::class vh` | `same path vh.java` | Model identity proven by `toString()` as `ApkShareFile(sourceFile, archiveName, role)` | UNKNOWN |
| 085 | `defpackage/w14.java::class w14` | `same path w14.java` | Gson serialization dependency encountered from apkshare/a.java | UNKNOWN |
| 086 | `defpackage/x50.java::class x50` | `same path x50.java` | Digest/string formatting dependency encountered from apkshare/a.java | UNKNOWN |
| 087 | `defpackage/xs1.java::class xs1` | `same path xs1.java` | q63-related error-message formatting dependency | UNKNOWN |
| 088 | `defpackage/mt3.java::interface mt3` | `same path mt3.java` | Functional callback interface exposing `invoke(Object)`; directly implemented by ai | UNKNOWN |
| 089 | `defpackage/be8.java::class be8` | `same path be8.java` | Singleton returned by ai selector 2/default; semantic filename remains unproven | UNKNOWN |
| 090 | `defpackage/tb1.java::class tb1` | `same path tb1.java` | Static/global cloud-state abstraction referenced by ai selector 2 | UNKNOWN |
| 091 | `defpackage/qb1.java::class qb1` | `same path qb1.java` | Static cloud helper; `t(String)` invoked by ai selector 2 | UNKNOWN |
| 092 | `defpackage/el1.java::class el1` | `same path el1.java` | String/collection formatting helper used by ai selector 3 | UNKNOWN |
| 093 | `defpackage/fl1.java::class fl1` | `same path fl1.java` | Varargs-to-list helper used by ai selector 3 | UNKNOWN |
| 094 | `defpackage/hc1.java::class hc1` | `same path hc1.java` | Synthetic `mt3` implementation instantiated by ai selector 3 | UNKNOWN |
| 095 | `defpackage/jm1.java::class jm1` | `same path jm1.java` | Multi-purpose obfuscated static utility class; class-wide semantic rename not proven; APK export role proven only for `l/m` | UNKNOWN |
| 096 | `defpackage/k55.java::class k55` | `same path k55.java` | Base type for export source variants `Installed`, `LocalBackup`, `CloudBackup` | UNKNOWN |
| 097 | `defpackage/xh.java::class xh` | `same path xh.java` | `Installed(app)` source variant | UNKNOWN |
| 098 | `defpackage/yh.java::class yh` | `same path yh.java` | `LocalBackup(app, backup)` source variant | UNKNOWN |
| 099 | `defpackage/wh.java::class wh` | `same path wh.java` | `CloudBackup(app, backup)` source variant | UNKNOWN |
| 100 | `defpackage/ji.java::class ji` | `same path ji.java` | App descriptor consumed for package/name/version/installer metadata | UNKNOWN |
| 101 | `defpackage/hk.java::class hk` | `same path hk.java` | Backup APK handle consumed by local/cloud export path | UNKNOWN |
| 102 | `defpackage/ov2.java::class ov2` | `same path ov2.java` | Empty-list singleton/fallback | UNKNOWN |
| 103 | `defpackage/nc8.java::class nc8` | `same path nc8.java` | Collection singleton/list helper | UNKNOWN |
| 104 | `defpackage/io4.java::class io4` | `same path io4.java` | Nullable-long/size normalization helper | UNKNOWN |
| 105 | `defpackage/fo2.java::class fo2` | `same path fo2.java` | APK/split download work item | UNKNOWN |
| 106 | `defpackage/kh6.java::class kh6` | `same path kh6.java` | Mutable byte-progress accumulator | UNKNOWN |
| 107 | `defpackage/oh.java::class oh` | `same path oh.java` | Progress snapshot value | UNKNOWN |
| 108 | `defpackage/ph.java::class ph` | `same path ph.java` | Terminal progress marker/value | UNKNOWN |
| 109 | `defpackage/ky.java::class ky` | `same path ky.java` | Split-APK extraction helper | UNKNOWN |
| 110 | `defpackage/xg.java::class xg` | `same path xg.java` | Comparator for extracted split APK files | UNKNOWN |
| 111 | `defpackage/nh.java::class nh` | `same path nh.java` | Asynchronous UI/task caller of `jm1.l` | UNKNOWN |
| 112 | `defpackage/b7.java::class b7` | `same path b7.java` | Selector/callback passed to split extraction | UNKNOWN |
| 113 | `defpackage/l0.java::class l0` | `same path l0.java` | Export/extraction error logger | UNKNOWN |
| 114 | `defpackage/rh.java::class rh` | `same path rh.java` | APK share export result value object | UNKNOWN |
| 115 | `defpackage/ni.java::class ni` | `same path ni.java` | App action menu builder; ShareApk entry available for installed apps | UNKNOWN |
| 116 | `defpackage/oy.java::class oy` | `same path oy.java` | App action enum containing `ShareApk` | UNKNOWN |
| 117 | `defpackage/ts.java::class ts` | `same path ts.java` | Synthetic action switch-map for `oy.ShareApk` | UNKNOWN |
| 118 | `defpackage/ny.java::class ny` | `same path ny.java` | Synthetic action switch-map for `oy.ShareApk` | UNKNOWN |
| 119 | `defpackage/tj.java::class tj` | `same path tj.java` | Share-APK action caller | UNKNOWN |
| 120 | `defpackage/ss.java::class ss` | `same path ss.java` | Share-APK action caller | UNKNOWN |
| 121 | `defpackage/ij.java::class ij` | `same path ij.java` | Share-APK action caller | UNKNOWN |
| 122 | `defpackage/mh.java::class mh` | `same path mh.java` | Share-result UI handler | UNKNOWN |
| 123 | `defpackage/lh.java::class lh` | `same path lh.java` | APK preparation progress handler | UNKNOWN |

## FUNCTION / METHOD — OBFUSCATED REFERENCE

| # | Reference | BaRe aktual | Kondisi sekarang | Status |
|---|---|---|---|---|
| 001 | `org/swiftapps/swiftbackup/apkshare/a.java::a(q63)` | `org/swiftapps/swiftbackup/apkshare/a.java::a(q63)` | SHA-256 via `q63.w(true)`; 262144-byte chunks; digest formatted via `x50.t0(..., new ai(0), 30)`; exception-safe close | MATCH |
| 002 | `org/swiftapps/swiftbackup/apkshare/a.java::b(String)` | `org/swiftapps/swiftbackup/apkshare/a.java::b(String)` | Rejects blank names and names containing `/`, `\\`, or `..`; errors via `c6.f`/`f6.g` | MATCH |
| 003 | `org/swiftapps/swiftbackup/apkshare/a.java::c(...)` | `org/swiftapps/swiftbackup/apkshare/a.java::c(...)` | Requires non-empty APK list; creates ZIP/APKS; validates/copies entries; records name/role/size/SHA-256; writes `meta.sai_v2.json` and `meta.swiftbackup_v1.json`; exception-safe close | MATCH |
| 004 | `org/swiftapps/swiftbackup/apkshare/a.java::d(...)` | `org/swiftapps/swiftbackup/apkshare/a.java::d(...)` | Validates name; requires `q63.j()`; creates `ZipEntry`; copies via `cy0.j(..., 262144)` | MATCH |
| 005 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::j(...)` | `org/swiftapps/swiftbackup/appconfigs/list/a.java::j(...)` | Not semantically reconstructed yet | UNKNOWN |
| 006 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::k(...)` | `org/swiftapps/swiftbackup/appconfigs/list/a.java::k(...)` | Not semantically reconstructed yet | UNKNOWN |
| 007 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::l(...)` | `org/swiftapps/swiftbackup/appconfigs/list/a.java::l(...)` | Not semantically reconstructed yet | UNKNOWN |
| 008 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::b(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 009 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::j(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::j(...)` | Not semantically reconstructed yet | UNKNOWN |
| 010 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::k(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::k(...)` | Not semantically reconstructed yet | UNKNOWN |
| 011 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::l(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::l(...)` | Not semantically reconstructed yet | UNKNOWN |
| 012 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::m(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::m(...)` | Not semantically reconstructed yet | UNKNOWN |
| 013 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::n(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::n(...)` | Not semantically reconstructed yet | UNKNOWN |
| 014 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::o(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::o(...)` | Not semantically reconstructed yet | UNKNOWN |
| 015 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::p(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::p(...)` | Not semantically reconstructed yet | UNKNOWN |
| 016 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::q(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::q(...)` | Not semantically reconstructed yet | UNKNOWN |
| 017 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::r(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::r(...)` | Not semantically reconstructed yet | UNKNOWN |
| 018 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::s(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::s(...)` | Not semantically reconstructed yet | UNKNOWN |
| 019 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::t(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::t(...)` | Not semantically reconstructed yet | UNKNOWN |
| 020 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::a(...)` | `org/swiftapps/swiftbackup/cloud/orphans/b.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 021 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::c(...)` | `org/swiftapps/swiftbackup/cloud/orphans/b.java::c(...)` | Not semantically reconstructed yet | UNKNOWN |
| 022 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::d(...)` | `org/swiftapps/swiftbackup/cloud/orphans/b.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 023 | `org/swiftapps/swiftbackup/cloud/protocols/a.java::b(...)` | `org/swiftapps/swiftbackup/cloud/protocols/a.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 024 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::a(...)` | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 025 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::b(...)` | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 026 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::d(...)` | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 027 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::e(...)` | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::e(...)` | Not semantically reconstructed yet | UNKNOWN |
| 028 | `org/swiftapps/swiftbackup/home/schedule/a.java::b(...)` | `org/swiftapps/swiftbackup/home/schedule/a.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 029 | `org/swiftapps/swiftbackup/home/schedule/data/a.java::b(...)` | `org/swiftapps/swiftbackup/home/schedule/data/a.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 030 | `org/swiftapps/swiftbackup/home/schedule/data/a.java::c(...)` | `org/swiftapps/swiftbackup/home/schedule/data/a.java::c(...)` | Not semantically reconstructed yet | UNKNOWN |
| 031 | `org/swiftapps/swiftbackup/home/schedule/data/a.java::d(...)` | `org/swiftapps/swiftbackup/home/schedule/data/a.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 032 | `org/swiftapps/swiftbackup/home/schedule/data/d.java::a(...)` | `org/swiftapps/swiftbackup/home/schedule/data/d.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 033 | `org/swiftapps/swiftbackup/home/schedule/data/j.java::a(...)` | `org/swiftapps/swiftbackup/home/schedule/data/j.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 034 | `org/swiftapps/swiftbackup/home/schedule/data/j.java::b(...)` | `org/swiftapps/swiftbackup/home/schedule/data/j.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 035 | `org/swiftapps/swiftbackup/home/schedule/data/o.java::a(long)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetailsPersistence.java::formatTimestamp(long)`** | Combines `Const.s(long)` with localized date/time formatting | CANDIDATE |
| 036 | `org/swiftapps/swiftbackup/home/schedule/data/o.java::b(String)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetailsPersistence.java::load(String)`** | Reads stored subtype, resolves registered `ScheduleLastRunDetails` class, deserializes JSON, and returns the typed details or null | CANDIDATE |
| 037 | `org/swiftapps/swiftbackup/home/schedule/data/o.java::c(String)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetailsPersistence.java::preferenceKey(String)`** | Prefixes schedule item ID with `schedule_last_run_msg_` | CANDIDATE |
| 038 | `org/swiftapps/swiftbackup/home/schedule/data/o.java::d(String,ScheduleLastRunDetails)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetailsPersistence.java::save(String,ScheduleLastRunDetails)`** | Stores subtype name in SharedPreferences and serializes the details through Gson | CANDIDATE |
| 039 | `org/swiftapps/swiftbackup/intro/d.java::j(...)` | `org/swiftapps/swiftbackup/intro/d.java::j(...)` | Not semantically reconstructed yet | UNKNOWN |
| 040 | `org/swiftapps/swiftbackup/intro/d.java::k(...)` | `org/swiftapps/swiftbackup/intro/d.java::k(...)` | Not semantically reconstructed yet | UNKNOWN |
| 041 | `org/swiftapps/swiftbackup/intro/d.java::l(...)` | `org/swiftapps/swiftbackup/intro/d.java::l(...)` | Not semantically reconstructed yet | UNKNOWN |
| 042 | `org/swiftapps/swiftbackup/intro/d.java::m(...)` | `org/swiftapps/swiftbackup/intro/d.java::m(...)` | Not semantically reconstructed yet | UNKNOWN |
| 043 | `org/swiftapps/swiftbackup/intro/d.java::n(...)` | `org/swiftapps/swiftbackup/intro/d.java::n(...)` | Not semantically reconstructed yet | UNKNOWN |
| 044 | `org/swiftapps/swiftbackup/intro/d.java::o(...)` | `org/swiftapps/swiftbackup/intro/d.java::o(...)` | Not semantically reconstructed yet | UNKNOWN |
| 045 | `org/swiftapps/swiftbackup/intro/d.java::p(...)` | `org/swiftapps/swiftbackup/intro/d.java::p(...)` | Not semantically reconstructed yet | UNKNOWN |
| 046 | `org/swiftapps/swiftbackup/settings/a.java::d(...)` | `org/swiftapps/swiftbackup/settings/a.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 047 | `org/swiftapps/swiftbackup/settings/a.java::l(...)` | `org/swiftapps/swiftbackup/settings/a.java::l(...)` | Not semantically reconstructed yet | UNKNOWN |
| 048 | `org/swiftapps/swiftbackup/settings/a.java::q(...)` | `org/swiftapps/swiftbackup/settings/a.java::q(...)` | Not semantically reconstructed yet | UNKNOWN |
| 049 | `org/swiftapps/swiftbackup/settings/a.java::r(...)` | `org/swiftapps/swiftbackup/settings/a.java::r(...)` | Not semantically reconstructed yet | UNKNOWN |
| 050 | `org/swiftapps/swiftbackup/settings/a.java::s(...)` | `org/swiftapps/swiftbackup/settings/a.java::s(...)` | Not semantically reconstructed yet | UNKNOWN |
| 051 | `org/swiftapps/swiftbackup/settings/a.java::t(...)` | `org/swiftapps/swiftbackup/settings/a.java::t(...)` | Not semantically reconstructed yet | UNKNOWN |
| 052 | `org/swiftapps/swiftbackup/settings/a.java::u(...)` | `org/swiftapps/swiftbackup/settings/a.java::u(...)` | Not semantically reconstructed yet | UNKNOWN |
| 053 | `org/swiftapps/swiftbackup/settings/a.java::v(...)` | `org/swiftapps/swiftbackup/settings/a.java::v(...)` | Not semantically reconstructed yet | UNKNOWN |
| 054 | `org/swiftapps/swiftbackup/settings/b.java::a(...)` | `org/swiftapps/swiftbackup/settings/b.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 055 | `org/swiftapps/swiftbackup/settings/b.java::c(...)` | `org/swiftapps/swiftbackup/settings/b.java::c(...)` | Not semantically reconstructed yet | UNKNOWN |
| 056 | `org/swiftapps/swiftbackup/settings/b.java::d(...)` | `org/swiftapps/swiftbackup/settings/b.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 057 | `org/swiftapps/swiftbackup/settings/f.java::a(...)` | `org/swiftapps/swiftbackup/settings/f.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 058 | `org/swiftapps/swiftbackup/settings/f.java::b(...)` | `org/swiftapps/swiftbackup/settings/f.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 059 | `org/swiftapps/swiftbackup/settings/k.java::j(...)` | `org/swiftapps/swiftbackup/settings/k.java::j(...)` | Not semantically reconstructed yet | UNKNOWN |
| 060 | `defpackage/uh.java::values()` | **UNKNOWN** | Enum API observed in Reference; BaRe counterpart not proven | UNKNOWN |
| 061 | `defpackage/vh.java::vh(q63,String,uh)` | **UNKNOWN** | Constructor observed; establishes `sourceFile`, `archiveName`, and `role` members | UNKNOWN |
| 062 | `defpackage/vh.java::equals(Object)` | **UNKNOWN** | Method observed in Reference; BaRe counterpart not proven | UNKNOWN |
| 063 | `defpackage/vh.java::hashCode()` | **UNKNOWN** | Method observed in Reference; BaRe counterpart not proven | UNKNOWN |
| 064 | `defpackage/vh.java::toString()` | **UNKNOWN** | Explicitly emits `ApkShareFile(...)` identity | UNKNOWN |
| 065 | `defpackage/ai.java::ai(int)` | **UNKNOWN** | Stores selector used by `invoke` | UNKNOWN |
| 066 | `defpackage/ai.java::invoke(Object)` | **UNKNOWN** | Selector 0 formats Byte as two-digit hex; 1 maps File to q63; 2 calls qb1.t(String) and returns be8.a; 3 formats dotted IPv4; default sleeps on Long and returns be8.a | UNKNOWN |
| 067 | `defpackage/c6.java::f(String)` | **UNKNOWN** | Throws `IllegalArgumentException` with supplied message; direct archive-entry validation/error path | UNKNOWN |
| 068 | `defpackage/c6.java::g(String,Object,Object,Object,Object,Object)` | **UNKNOWN** | Throws `IllegalArgumentException` from concatenated arguments; direct validation/error helper | UNKNOWN |
| 069 | `defpackage/cy0.java::j(InputStream,OutputStream,int)` | **UNKNOWN** | Copies input using supplied buffer size and returns byte count; apkshare/a.java passes 262144 | UNKNOWN |
| 070 | `defpackage/jm1.java::l(k55,mt3)` | **UNKNOWN** | Direct caller path: when split APKs exist, constructs `ApkSharePackageMetadata` and `vh` base/split entries, then calls `org.swiftapps.swiftbackup.apkshare.a.c(...)` to create `.apks` | UNKNOWN |
| 071 | `defpackage/jm1.java::m(ji,hk,CloudMetadata)` | **UNKNOWN** | Local/cloud backup APK export: validates backup APK, extracts split backup, resolves metadata, constructs base/split `vh` entries and delegates APKS assembly to `apkshare.a.c(...)` | UNKNOWN |
| 072 | `defpackage/jm1.java::G(long,String)` | `same path jm1.java::G(...)` | Creates/ensures `apk_share` working directory sized for export; returns q63 target directory | UNKNOWN |
| 073 | `defpackage/jm1.java::V(ji)` | `same path jm1.java::V(...)` | Sanitizes app display name into filesystem-safe export basename; falls back to package name | UNKNOWN |
| 074 | `defpackage/ni.java::build action list` | **UNKNOWN** | Adds `Share APK` action for installed apps via `R.string.share_apk` | UNKNOWN |
| 075 | `defpackage/oy.java::ShareApk` | **UNKNOWN** | Enum constant identity `ShareApk`; id `share_apk`; title resource `R.string.share_apk` | UNKNOWN |
| 076 | `defpackage/tj.java::...` | **UNKNOWN** | Dispatches installed app `xh(ji)` into `nh.n(...)` for Share APK flow | UNKNOWN |
| 077 | `defpackage/ss.java::...` | **UNKNOWN** | Dispatches installed app `xh(ji)` into `nh.n(...)` for Share APK flow | UNKNOWN |
| 078 | `defpackage/ij.java::...` | **UNKNOWN** | Dispatches installed app `xh(ji)` into `nh.n(...)` for Share APK flow | UNKNOWN |
| 079 | `defpackage/mh.java::...` | **UNKNOWN** | Builds SEND chooser from `rh`; selects `share_apks` for `application/octet-stream`, otherwise `share_apk` | UNKNOWN |
| 080 | `defpackage/lh.java::...` | **UNKNOWN** | Displays `preparing_apks` during APK preparation | UNKNOWN |
| 081 | `org/swiftapps/swiftbackup/appconfigs/data/a.java::createFromParcel(Parcel)` | **UNKNOWN** | `Parcelable.Creator<ConfigSettings.ApplyData>`; validates Parcel, reads String, returns `new ConfigSettings.ApplyData(...)` | UNKNOWN |
| 082 | `org/swiftapps/swiftbackup/appconfigs/data/a.java::newArray(int)` | **UNKNOWN** | Returns `new ConfigSettings.ApplyData[i]` | UNKNOWN |
| 083 | `org/swiftapps/swiftbackup/appconfigs/data/b.java::createFromParcel(Parcel)` | **UNKNOWN** | `Parcelable.Creator<ConfigSettings>`; reconstructs version, id, optional `ApplyData`, app parts, locations, sync option, backup limits, strategy, restore settings and enabled flags in constructor order | UNKNOWN |
| 084 | `org/swiftapps/swiftbackup/appconfigs/data/b.java::newArray(int)` | **UNKNOWN** | Returns `new ConfigSettings[i]` | UNKNOWN |
| 085 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::j()` | **UNKNOWN** | Loads `configs_list_sort_options` from SharedPreferences; defaults to `Name:Asc`; returns sort field/direction pair | UNKNOWN |
| 086 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::k(b,EnumC0012a)` | **UNKNOWN** | Persists selected sort field/direction and reapplies sorting to current `ConfigsData` | UNKNOWN |
| 087 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::l(ConfigsData)` | **UNKNOWN** | Applies Name/LastUpdated comparator and Asc/Desc direction, then publishes sorted config values | UNKNOWN |
| 088 | `org/swiftapps/swiftbackup/apptasks/notifications/a.java::a(String[])` | **UNKNOWN** | Parses mode/userId/packageName/payloadFile; accepts `backup`/`restore`, validates non-negative userId and safe package name, returns notification request object or null | UNKNOWN |
| 089 | `org/swiftapps/swiftbackup/apptasks/sba/a.java::a(ji,boolean,boolean,xp1)` | **UNKNOWN** | Serializes `SbaAppDataArchiveMetadata` JSON using package/app/version, data and de-data sizes, compression level, backup flags, and `data`/`data_de` part names | UNKNOWN |
| 090 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::j(pe4,a)` | **UNKNOWN** | Dispatches cloud orphan event type to state/action handlers; handles idle marker, `hi1`, `ii1` | UNKNOWN |
| 091 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::k(a,long,qh4)` | **UNKNOWN** | Clears matching active scan coroutine state under synchronization and signals completion | UNKNOWN |
| 092 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::l(a,long,String,bt3,kv1)` | **UNKNOWN** | Coroutine scan operation; executes orphan scan and returns scan success boolean | UNKNOWN |
| 093 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::m()` | **UNKNOWN** | Starts a new cancellable operation token/job and returns token/job pair | UNKNOWN |
| 094 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::n(String)` | **UNKNOWN** | Builds initial cloud-orphan cleaner state from current cloud connection and display metadata | UNKNOWN |
| 095 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::o()` | **UNKNOWN** | Builds stable cloud/session identity string from connection state, account/provider details and cleaner VM persistence identity | UNKNOWN |
| 096 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::p(b)` | **UNKNOWN** | Tests whether current orphan state matches cleaner identity and has no pending invalidation | UNKNOWN |
| 097 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::q()` | **UNKNOWN** | Reconciles current cloud identity/state; resets or updates orphan cleaner state as needed | UNKNOWN |
| 098 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::r(String)` | **UNKNOWN** | Resets cleaner transient state and publishes fresh initial state | UNKNOWN |
| 099 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::s(mt3)` | **UNKNOWN** | Applies state transformation callback to current cleaner state and publishes it | UNKNOWN |
| 100 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::t(b)` | **UNKNOWN** | Stores current cleaner state and publishes it through `ex6` | UNKNOWN |
| 101 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::a(b,EnumC0013a,List,Set,String,int,int,int)` | **UNKNOWN** | Copy/default factory for cleaner state; selectively replaces phase, files, selected IDs, status and counters | UNKNOWN |
| 102 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::b()` | **UNKNOWN** | True when connected, phase is `RESULTS`, and selected orphan list is non-empty | UNKNOWN |
| 103 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::c()` | **UNKNOWN** | Filters orphan files whose provider/type+identifier key exists in selected ID set | UNKNOWN |
| 104 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::d()` | **UNKNOWN** | True while phase is `SCANNING` or `DELETING` | UNKNOWN |
| 105 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::create(Object,jv1)` | **UNKNOWN** | Creates a new continuation instance preserving captured scan state | UNKNOWN |
| 106 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::invoke(Object,Object)` | **UNKNOWN** | Invokes the continuation state machine with coroutine context and completion | UNKNOWN |
| 107 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::invokeSuspend(Object)` | **UNKNOWN** | Coroutine state-machine body for cloud-orphan scan; JADX body is unavailable/unsupported in this decompile | UNKNOWN |
| 108 | `org/swiftapps/swiftbackup/cloud/protocols/a.java::a(CloudCredentials,tn2)` | **UNKNOWN** | Exports serialized `CloudCredentials` JSON to the selected document URI; writes using default charset and closes stream safely | UNKNOWN |
| 109 | `org/swiftapps/swiftbackup/cloud/protocols/a.java::b(dd1)` | **UNKNOWN** | Loads saved credential JSON/password/private key from SharedPreferences and reconstructs `CloudCredentials` for the requested cloud type | UNKNOWN |
| 110 | `org/swiftapps/swiftbackup/home/schedule/data/h.java::createFromParcel(Parcel)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemAppsQuickActionsCreator.java::createFromParcel(Parcel)`** | Reads all nine `AppsQuickActions` constructor values in Parcel order and reconstructs the schedule item | CANDIDATE |
| 111 | `org/swiftapps/swiftbackup/home/schedule/data/h.java::newArray(int)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemAppsQuickActionsCreator.java::newArray(int)`** | Creates typed `ScheduleItem.AppsQuickActions[]` array | CANDIDATE |
| 112 | `org/swiftapps/swiftbackup/home/schedule/data/i.java::createFromParcel(Parcel)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemCallLogsCreator.java::createFromParcel(Parcel)`** | Reads six `CallLogs` constructor values in Parcel order and reconstructs the schedule item | CANDIDATE |
| 113 | `org/swiftapps/swiftbackup/home/schedule/data/i.java::newArray(int)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemCallLogsCreator.java::newArray(int)`** | Creates typed `ScheduleItem.CallLogs[]` array | CANDIDATE |
| 114 | `org/swiftapps/swiftbackup/home/schedule/data/j.java::a(j)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemDefaults.java::defaultAppParts(j)`** | Returns APP+DATA when root capability is available; otherwise APP only | CANDIDATE |
| 115 | `org/swiftapps/swiftbackup/home/schedule/data/j.java::b(j)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemDefaults.java::defaultLocations(j)`** | Returns DEVICE as the default schedule-item location | CANDIDATE |
| 116 | `org/swiftapps/swiftbackup/home/schedule/data/k.java::createFromParcel(Parcel)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemFoldersCreator.java::createFromParcel(Parcel)`** | Reads folder schedule item fields and reconstructs nested `FolderItem` values through `FolderItem.CREATOR` | CANDIDATE |
| 117 | `org/swiftapps/swiftbackup/home/schedule/data/k.java::newArray(int)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemFoldersCreator.java::newArray(int)`** | Creates typed `ScheduleItem.Folders[]` array | CANDIDATE |
| 118 | `org/swiftapps/swiftbackup/home/schedule/data/l.java::createFromParcel(Parcel)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemMessagesCreator.java::createFromParcel(Parcel)`** | Reads six `Messages` constructor values in Parcel order and reconstructs the schedule item | CANDIDATE |
| 119 | `org/swiftapps/swiftbackup/home/schedule/data/l.java::newArray(int)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemMessagesCreator.java::newArray(int)`** | Creates typed `ScheduleItem.Messages[]` array | CANDIDATE |
| 120 | `org/swiftapps/swiftbackup/home/schedule/data/m.java::createFromParcel(Parcel)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemWallpapersCreator.java::createFromParcel(Parcel)`** | Reads six `Wallpapers` constructor values in Parcel order and reconstructs the schedule item | CANDIDATE |
| 121 | `org/swiftapps/swiftbackup/home/schedule/data/m.java::newArray(int)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemWallpapersCreator.java::newArray(int)`** | Creates typed `ScheduleItem.Wallpapers[]` array | CANDIDATE |
| 122 | `org/swiftapps/swiftbackup/home/schedule/data/n.java::createFromParcel(Parcel)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemWifiCreator.java::createFromParcel(Parcel)`** | Reads six `Wifi` constructor values in Parcel order and reconstructs the schedule item | CANDIDATE |
| 123 | `org/swiftapps/swiftbackup/home/schedule/data/n.java::newArray(int)` | **CANDIDATE: `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItemWifiCreator.java::newArray(int)`** | Creates typed `ScheduleItem.Wifi[]` array | CANDIDATE |
| 124 | `org/swiftapps/swiftbackup/intro/a.java::<clinit>` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroStateCardTypeSwitchMap.java::<clinit>`** | Initializes state mapping `IDLE→1`, `RUNNING→2`, `SUCCESS→3`, `FAILED→4`, and card mapping `ConnectionCard→1`, `FirstRunRestore→2` | CANDIDATE |
| 125 | `org/swiftapps/swiftbackup/intro/b.java::invoke(Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroActivitySignInStateCallback.java::invoke(Object)`** | On `SIGNED_IN`, invokes `IntroActivity.Y(true)`; otherwise no action | CANDIDATE |
| 126 | `org/swiftapps/swiftbackup/intro/c.java::invoke(Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroActivityFirstRunRestoreStateCallback.java::invoke(Object)`** | Routes first-run restore `SUCCESS` to completion and `FAILED` to error handling; IDLE/RUNNING remain active | CANDIDATE |
| 127 | `org/swiftapps/swiftbackup/intro/d.java::b()` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroViewModel.java::onCleared()`** | Resets/cancels storage and permission coordinator state, cancels active restore coroutine, then delegates lifecycle cleanup | CANDIDATE |
| 128 | `org/swiftapps/swiftbackup/intro/d.java::j()` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroViewModel.java::hasIntroPrerequisites()`** | Checks backend presence plus required root/notification/device capability states | CANDIDATE |
| 129 | `org/swiftapps/swiftbackup/intro/d.java::k(boolean)` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroViewModel.java::onShizukuPermissionResult(boolean)`** | Advances or resets pending Shizuku/root permission flow based on result | CANDIDATE |
| 130 | `org/swiftapps/swiftbackup/intro/d.java::l(kv1)` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroViewModel.java::restoreFirstRunCloudSettings(kv1)`** | Waits for Firebase availability, restores labels/configs/schedules/favorites/blacklist, and reports success/failure | CANDIDATE |
| 131 | `org/swiftapps/swiftbackup/intro/d.java::m(boolean,IntroActivity)` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroViewModel.java::startSignIn(boolean,IntroActivity)`** | Starts Google or anonymous sign-in and updates sign-in state/progress | CANDIDATE |
| 132 | `org/swiftapps/swiftbackup/intro/d.java::n(Intent,boolean,mt3)` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroViewModel.java::runIntroAction(Intent,boolean,mt3)`** | Executes supplied intent/action callback and hides progress when requested action fails | CANDIDATE |
| 133 | `org/swiftapps/swiftbackup/intro/d.java::o()` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroViewModel.java::refreshPermissionState()`** | Refreshes backend/root, notification and capability state holders | CANDIDATE |
| 134 | `org/swiftapps/swiftbackup/intro/d.java::p(b)` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroViewModel.java::updateSignInState(b)`** | Updates sign-in state and progress presentation | CANDIDATE |
| 135 | `org/swiftapps/swiftbackup/intro/e.java::create(Object,jv1)` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroFirstRunCloudSettingsRestoreContinuation.java::create(Object,jv1)`** | Creates a continuation preserving the captured `IntroViewModel` | CANDIDATE |
| 136 | `org/swiftapps/swiftbackup/intro/e.java::invoke(Object,Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/intro/IntroFirstRunCloudSettingsRestoreContinuation.java::invoke(Object,Object)`** | Invokes the coroutine continuation and delegates to `invokeSuspend` | CANDIDATE |
| 137 | `org/swiftapps/swiftbackup/intro/e.java::invokeSuspend(Object)` | **UNKNOWN** | Coroutine body is present only as JADX reconstructed control flow with `UnsupportedOperationException`; exact executable mapping is not verified | UNKNOWN |

| 138 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/b.java::onCallsTaskComplete(c21)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreViewModel.java::onCallsTaskComplete(c21)`** | MAIN-thread task completion handler | CANDIDATE |
| 139 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/c.java::create(Object,jv1)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallLogsBackupFileReadContinuation.java::create(Object,jv1)`** | Creates continuation preserving ViewModel and backup-file path | CANDIDATE |
| 140 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/c.java::invoke(Object,Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallLogsBackupFileReadContinuation.java::invoke(Object,Object)`** | Invokes backup-file call-log reader continuation | CANDIDATE |
| 141 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/c.java::invokeSuspend(Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallLogsBackupFileReadContinuation.java::invokeSuspend(Object)`** | Reads backup-file call logs and publishes empty/received state | CANDIDATE |
| 142 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/d.java::create(Object,jv1)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallLogsDeviceReadContinuation.java::create(Object,jv1)`** | Creates continuation preserving Calls ViewModel | CANDIDATE |
| 143 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/d.java::invoke(Object,Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallLogsDeviceReadContinuation.java::invoke(Object,Object)`** | Invokes device call-log reader continuation | CANDIDATE |
| 144 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/d.java::invokeSuspend(Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallLogsDeviceReadContinuation.java::invokeSuspend(Object)`** | Reads device call logs and publishes empty/received state | CANDIDATE |
| 145 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/f.java::onMessagesTaskComplete(jf5)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreViewModel.java::onMessagesTaskComplete(jf5)`** | MAIN-thread task completion handler | CANDIDATE |
| 146 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/g.java::create(Object,jv1)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupFileReadContinuation.java::create(Object,jv1)`** | Creates continuation preserving ViewModel and backup-file path | CANDIDATE |
| 147 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/g.java::invoke(Object,Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupFileReadContinuation.java::invoke(Object,Object)`** | Invokes backup-file message reader continuation | CANDIDATE |
| 148 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/g.java::invokeSuspend(Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupFileReadContinuation.java::invokeSuspend(Object)`** | Reads backup-file messages and publishes empty/received state | CANDIDATE |
| 149 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/h.java::create(Object,jv1)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesDeviceReadContinuation.java::create(Object,jv1)`** | Creates continuation preserving Messages ViewModel | CANDIDATE |
| 150 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/h.java::invoke(Object,Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesDeviceReadContinuation.java::invoke(Object,Object)`** | Invokes device message reader continuation | CANDIDATE |
| 151 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/h.java::invokeSuspend(Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesDeviceReadContinuation.java::invokeSuspend(Object)`** | Reads device messages and publishes empty/received state | CANDIDATE |
| 152 | `org/swiftapps/swiftbackup/settings/a.java::d(Preference)` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/SettingsAppsFragment.java::onPreferenceClick(Preference)`** | Handles app-settings preference actions including multiple-backup strategy, backup limits, cache, labels, configs, blacklist, permissions and swipe actions | CANDIDATE |
| 153 | `org/swiftapps/swiftbackup/settings/a.java::l()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/SettingsAppsFragment.java::onCreatePreferences()`** | Inflates `settings_apps`, binds preferences and initializes app-setting values | CANDIDATE |
| 154 | `org/swiftapps/swiftbackup/settings/a.java::onResume()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/SettingsAppsFragment.java::onResume()`** | Refreshes relevant preference state when fragment resumes | CANDIDATE |
| 155 | `org/swiftapps/swiftbackup/settings/a.java::q()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/SettingsAppsFragment.java::getSettingsActivity()`** | Returns hosting `SettingsDetailActivity` | CANDIDATE |
| 156 | `org/swiftapps/swiftbackup/settings/a.java::r()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/SettingsAppsFragment.java::getRestoreSsaidsPreference()`** | Returns the restore-SSAIDs switch preference | CANDIDATE |
| 157 | `org/swiftapps/swiftbackup/settings/a.java::s()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/SettingsAppsFragment.java::getBackupCachePreference()`** | Returns the backup-cache switch preference | CANDIDATE |
| 158 | `org/swiftapps/swiftbackup/settings/a.java::t()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/SettingsAppsFragment.java::refreshAppBackupLimits()`** | Refreshes app-backup-limits summary from configured limits | CANDIDATE |
| 159 | `org/swiftapps/swiftbackup/settings/a.java::u()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/SettingsAppsFragment.java::refreshCompressionLevel()`** | Refreshes compression-level preference summary | CANDIDATE |
| 160 | `org/swiftapps/swiftbackup/settings/a.java::v()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/SettingsAppsFragment.java::refreshSwipeActionsSummary()`** | Updates swipe-action summary text for left/right actions | CANDIDATE |
| 161 | `org/swiftapps/swiftbackup/settings/b.java::a()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyStore.java::defaultStrategy()`** | Returns `MultipleBackupStrategy.defaultStrategy` | CANDIDATE |
| 162 | `org/swiftapps/swiftbackup/settings/b.java::b()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyStore.java::legacyArchiveStrategy()`** | Returns legacy archive strategy | CANDIDATE |
| 163 | `org/swiftapps/swiftbackup/settings/b.java::c()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyStore.java::loadStrategy()`** | Loads persisted strategy and handles premium gating/legacy migration | CANDIDATE |
| 164 | `org/swiftapps/swiftbackup/settings/b.java::d(Integer)` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyStore.java::clampMaxBackups(Integer)`** | Clamps maximum backups to 2..10 with default 2 | CANDIDATE |
| 165 | `org/swiftapps/swiftbackup/settings/f.java::a(MultipleBackupStrategy)` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyMapper.java::toRepresentation(MultipleBackupStrategy)`** | Maps strategy to Single/Dated/Conditional UI representation | CANDIDATE |
| 166 | `org/swiftapps/swiftbackup/settings/f.java::b(MultipleBackupStrategy)` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyMapper.java::getType(MultipleBackupStrategy)`** | Resolves strategy type from stored integer with default fallback | CANDIDATE |
| 167 | `org/swiftapps/swiftbackup/settings/h.java::a(...)` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyCardBinder.java::bind(...)`** | Binds representation, max-backup slider and condition radio-group listeners | CANDIDATE |
| 168 | `org/swiftapps/swiftbackup/settings/i.java::a(...)` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyState.java::copy(...)`** | Copy/default factory for strategy state | CANDIDATE |
| 169 | `org/swiftapps/swiftbackup/settings/i.java::equals(Object)` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyState.java::equals(Object)`** | Value equality over three strategies and selected type | CANDIDATE |
| 170 | `org/swiftapps/swiftbackup/settings/i.java::hashCode()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyState.java::hashCode()`** | Value hash over state fields | CANDIDATE |
| 171 | `org/swiftapps/swiftbackup/settings/i.java::toString()` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyState.java::toString()`** | Explicit state identity `State(singleBackupStrategy=..., datedBackupStrategy=..., conditionalBackupStrategy=..., selectedType=...)` | CANDIDATE |
| 172 | `org/swiftapps/swiftbackup/settings/j.java::<clinit>` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyTypeSwitchMap.java::<clinit>`** | Initializes Type mapping `SingleBackup→1`, `DatedBackups→2`, `ConditionalBackup→3` | CANDIDATE |
| 173 | `org/swiftapps/swiftbackup/settings/k.java::j(MultipleBackupStrategy)` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyViewModel.java::setSelectedType(MultipleBackupStrategy)`** | Updates selected strategy type in current state | CANDIDATE |
| 174 | `org/swiftapps/swiftbackup/settings/k.java::k(MultipleBackupStrategy)` | **CANDIDATE: `org/swiftapps/swiftbackup/settings/MultipleBackupStrategyViewModel.java::setStrategyForType(MultipleBackupStrategy)`** | Replaces single/dated/conditional strategy according to resolved type | CANDIDATE |
| 175 | `org/swiftapps/swiftbackup/views/a.java::<clinit>` | **CANDIDATE: `org/swiftapps/swiftbackup/views/SwiftSegmentedCardGroupPositionSwitchMap.java::<clinit>`** | Initializes position mapping `Single→1`, `Top→2`, `Middle→3`, `Bottom→4` | CANDIDATE |
## FIELD / MEMBER — OBFUSCATED REFERENCE

| # | Reference | BaRe aktual | Kondisi sekarang | Status |
|---|---|---|---|---|
| 001 | `defpackage/vh.java::a` | **UNKNOWN** | Reference field type `q63`; constructor/toString establish semantic member `sourceFile` | UNKNOWN |
| 002 | `defpackage/vh.java::b` | **UNKNOWN** | Reference field type `String`; constructor/toString establish semantic member `archiveName` | UNKNOWN |
| 003 | `defpackage/vh.java::c` | **UNKNOWN** | Reference field type `uh`; constructor/toString establish semantic member `role` | UNKNOWN |
| 004 | `defpackage/ai.java::a` | **UNKNOWN** | Synthetic integer selector | UNKNOWN |
| 005 | `defpackage/c6.java::a` | **UNKNOWN** | Synthetic integer selector stored by constructor | UNKNOWN |
| 006 | `defpackage/f51.java::a` | **UNKNOWN** | Charset field initialized to UTF-8 and used by apkshare/a.java | UNKNOWN |
| 007 | `defpackage/q63.java::d` | **UNKNOWN** | Static boolean read by apkshare/a.java before stream operations; value not otherwise consumed in this class | UNKNOWN |
| 008 | `defpackage/w14.java::a` | **UNKNOWN** | Static holder accessed before `w14.d()` during Gson metadata serialization | UNKNOWN |
| 009 | `org/swiftapps/swiftbackup/appconfigs/edit/a.java::a` | **UNKNOWN** | Synthetic `int[]` switch-map indexed by `ConfigEditActivity.a.ordinal()`; entries map `Run`, `Save`, `Hide` to `1`, `2`, `3` | UNKNOWN |
| 010 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::e` | **UNKNOWN** | Boolean state flag; exact semantic purpose not independently proven beyond class usage | UNKNOWN |
| 011 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::f` | **UNKNOWN** | Current `ConfigsData` held by the ViewModel | UNKNOWN |
| 012 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::g` | **UNKNOWN** | `ex6` state/helper holder initialized by constructor | UNKNOWN |
| 013 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::h` | **UNKNOWN** | `u95` state publisher/holder receiving sorted config list | UNKNOWN |
| 014 | `org/swiftapps/swiftbackup/appconfigs/list/b.java::a` | **UNKNOWN** | Synthetic `int[]` switch-map indexed by ConfigList sort-field enum; `Name→1`, `LastUpdated→2` | UNKNOWN |
| 015 | `org/swiftapps/swiftbackup/apptasks/notifications/b.java::a` | **UNKNOWN** | Notification policy mode (`NotificationPolicyProxy.a`) | UNKNOWN |
| 016 | `org/swiftapps/swiftbackup/apptasks/notifications/b.java::b` | **UNKNOWN** | Numeric userId | UNKNOWN |
| 017 | `org/swiftapps/swiftbackup/apptasks/notifications/b.java::c` | **UNKNOWN** | Package name string | UNKNOWN |
| 018 | `org/swiftapps/swiftbackup/apptasks/notifications/b.java::d` | **UNKNOWN** | Payload `File` | UNKNOWN |
| 019 | `org/swiftapps/swiftbackup/apptasks/notifications/c.java::a` | **UNKNOWN** | Synthetic `int[]` switch-map indexed by notification policy mode; `Backup→1`, `Restore→2` | UNKNOWN |
| 020 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::e` | **UNKNOWN** | `ex6` state publisher | UNKNOWN |
| 021 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::f` | **UNKNOWN** | `ix6` auxiliary state/helper holder | UNKNOWN |
| 022 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::g` | **UNKNOWN** | Current cloud-orphan state object `b` | UNKNOWN |
| 023 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::h` | **UNKNOWN** | Cloud/session helper `kc` | UNKNOWN |
| 024 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::i` | **UNKNOWN** | Cloud identity string | UNKNOWN |
| 025 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::j` | **UNKNOWN** | Active operation/coroutine handle `qh4` | UNKNOWN |
| 026 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::k` | **UNKNOWN** | Monotonic operation token counter | UNKNOWN |
| 027 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::l` | **UNKNOWN** | Active operation token | UNKNOWN |
| 028 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::m` | **UNKNOWN** | State/reset/update counter | UNKNOWN |
| 029 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::n` | **UNKNOWN** | Pending cloud identity string awaiting reconciliation | UNKNOWN |
| 030 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::a` | **UNKNOWN** | Cloud type descriptor `dd1` | UNKNOWN |
| 031 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::b` | **UNKNOWN** | Provider title | UNKNOWN |
| 032 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::c` | **UNKNOWN** | Provider icon resource ID | UNKNOWN |
| 033 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::d` | **UNKNOWN** | Whether provider icon is a preset icon | UNKNOWN |
| 034 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::e` | **UNKNOWN** | Provider subtitle | UNKNOWN |
| 035 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::f` | **UNKNOWN** | Cloud-connected flag | UNKNOWN |
| 036 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::g` | **UNKNOWN** | Provider identity key | UNKNOWN |
| 037 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::h` | **UNKNOWN** | Cleaner phase/state enum | UNKNOWN |
| 038 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::i` | **UNKNOWN** | Orphan file list | UNKNOWN |
| 039 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::j` | **UNKNOWN** | Selected orphan ID set | UNKNOWN |
| 040 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::k` | **UNKNOWN** | Status message | UNKNOWN |
| 041 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::l` | **UNKNOWN** | Scanned file count | UNKNOWN |
| 042 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::m` | **UNKNOWN** | Firebase reference count | UNKNOWN |
| 043 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::a` | **UNKNOWN** | Coroutine completion/state-machine field `jd4` | UNKNOWN |
| 044 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::b` | **UNKNOWN** | Coroutine label/state integer | UNKNOWN |
| 045 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::c` | **UNKNOWN** | Synthetic coroutine receiver/context object | UNKNOWN |
| 046 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::d` | **UNKNOWN** | Captured cloud/session helper `kc` | UNKNOWN |
| 047 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::e` | **UNKNOWN** | Captured orphan file collection `ArrayList` | UNKNOWN |
| 048 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::f` | **UNKNOWN** | Captured cleaner ViewModel `a` | UNKNOWN |
| 049 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::k` | **UNKNOWN** | Captured operation token | UNKNOWN |
| 050 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::n` | **UNKNOWN** | Captured cloud identity string | UNKNOWN |
| 051 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::p` | **UNKNOWN** | Captured scan parameter/size value | UNKNOWN |
| 052 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::q` | **UNKNOWN** | Captured operation/job handle `qh4` | UNKNOWN |
| 053 | `org/swiftapps/swiftbackup/intro/a.java::a` | **UNKNOWN** | Synthetic `int[]` switch-map for `d.a` state enum; `IDLE→1`, `RUNNING→2`, `SUCCESS→3`, `FAILED→4` | UNKNOWN |
| 054 | `org/swiftapps/swiftbackup/intro/a.java::b` | **UNKNOWN** | Synthetic `int[]` switch-map for `IntroActivity.a`; `ConnectionCard→1`, `FirstRunRestore→2` | UNKNOWN |
| 055 | `org/swiftapps/swiftbackup/intro/d.java::e` | **UNKNOWN** | Active first-run cloud-settings restore coroutine/job handle `bl7` | UNKNOWN |
| 056 | `org/swiftapps/swiftbackup/intro/d.java::f` | **UNKNOWN** | Sign-in state publisher `ex6` | UNKNOWN |
| 057 | `org/swiftapps/swiftbackup/intro/d.java::g` | **UNKNOWN** | Backend/Firebase availability state holder `ex6` | UNKNOWN |
| 058 | `org/swiftapps/swiftbackup/intro/d.java::h` | **UNKNOWN** | Notification permission state holder `ex6` | UNKNOWN |
| 059 | `org/swiftapps/swiftbackup/intro/d.java::i` | **UNKNOWN** | Device/root capability state holder `ex6` | UNKNOWN |
| 060 | `org/swiftapps/swiftbackup/intro/d.java::j` | **UNKNOWN** | Aggregate intro-prerequisite state holder `ix6` | UNKNOWN |
| 061 | `org/swiftapps/swiftbackup/intro/d.java::k` | **UNKNOWN** | First-run cloud-restore state holder `ex6` | UNKNOWN |
| 062 | `org/swiftapps/swiftbackup/intro/d.java::l` | **UNKNOWN** | Storage-setup state holder `ix6` | UNKNOWN |
| 063 | `org/swiftapps/swiftbackup/intro/d.java::m` | **UNKNOWN** | Root/Shizuku permission state holder `ix6` | UNKNOWN |
| 064 | `org/swiftapps/swiftbackup/intro/d.java::n` | **UNKNOWN** | Auxiliary intro state publisher `ex6` | UNKNOWN |
| 065 | `org/swiftapps/swiftbackup/intro/d.java::o` | **UNKNOWN** | Storage-setup coordinator `qf4` | UNKNOWN |
| 066 | `org/swiftapps/swiftbackup/intro/d.java::p` | **UNKNOWN** | Root-permission coordinator `nf4` | UNKNOWN |
| 067 | `org/swiftapps/swiftbackup/intro/e.java::a` | **UNKNOWN** | Coroutine label/state integer | UNKNOWN |
| 068 | `org/swiftapps/swiftbackup/intro/e.java::b` | **UNKNOWN** | Captured `IntroViewModel` instance | UNKNOWN |

Field/member rows will be added only from actual Reference evidence. No fields are inferred from class or method names.

### SYMBOL-LEVEL GATE

| Requirement | State |
|---|---|
| Existing FILES table preserved | PASS |
| Class/type layer separated from file audit | PASS |
| Function/method layer separated from file audit | PASS |
| Field/member layer reserved without invented entries | PASS |
| Standalone defpackage/q63 row | NOT INCLUDED — no current BaRe condition |
| Semantic target names invented | NO |
| Symbol reconstruction performed by this ledger | PARTIAL — Target 002 evidence recorded |
| Current unverified symbol status | UNKNOWN |
