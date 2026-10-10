# Reference Activity Inventory — SwiftBackup 5.1.0 (620)

Source root: `output/jadx/sources/org/swiftapps/swiftbackup/` inside `SwiftBackup-5.1.0-620-decompiled.zip`.
Method: enumerate Java files whose class filename ends in `Activity.java`. This is a static inventory, not proof that each Activity is reachable or operational at runtime.

Total enumerated: **71 Activity source files**.

## Activity classes

- `apkshare/ApkImportActivity.java`
- `appconfigs/edit/ConfigEditActivity.java`
- `appconfigs/list/ConfigListActivity.java`
- `appconfigs/settings/ConfigSettingsActivity.java`
- `appinfo/AppInfoActivity.java`
- `appslist/ui/labels/LabelEditActivity.java`
- `appslist/ui/labels/LabelsActivity.java`
- `appslist/ui/list/AppListActivity.java`
- `appslist/ui/listbatch/AppsBatchActivity.java`
- `appslist/ui/listconfig/AppsConfigRunActivity.java`
- `appsquickactions/AppsQuickActionsActivity.java`
- `blacklist/BlacklistActivity.java`
- `cloud/connect/BoxSignInActivity.java`
- `cloud/connect/CsActivity.java`
- `cloud/connect/DropboxSignInActivity.java`
- `cloud/connect/FilenSignInActivity.java`
- `cloud/connect/GmsSignInActivity.java`
- `cloud/connect/MegaSignInActivity.java`
- `cloud/connect/NoGmsSignInActivity.java`
- `cloud/connect/OneDriveSignInActivity.java`
- `cloud/connect/PCloudSignInActivity.java`
- `cloud/connect/TeraBoxSignInActivity.java`
- `cloud/connect/YandexSignInActivity.java`
- `cloud/connect/common/CloudConnectActivity.java`
- `cloud/diagnostics/CloudDiagnosticsActivity.java`
- `cloud/orphans/CloudOrphanCleanerActivity.java`
- `contributor/ContributorRegActivity.java`
- `detail/DetailActivity.java`
- `folders/ui/FolderDetailActivity.java`
- `folders/ui/FolderEditActivity.java`
- `folders/ui/FolderPickerActivity.java`
- `folders/ui/FoldersDashActivity.java`
- `folders/ui/batch/FoldersBatchActivity.java`
- `home/HomeActivity.java`
- `home/schedule/ScheduleLabelsSelectActivity.java`
- `home/schedule/ui/ScheduleFolderSelectActivity.java`
- `home/search/HomeSearchActivity.java`
- `home/storageswitch/StorageSwitchActivity.java`
- `intro/IntroActivity.java`
- `locale/LocaleActivity.java`
- `manage/ManageSpaceActivity.java`
- `messagescalls/backuprestore/CallsBackupRestoreActivity.java`
- `messagescalls/backuprestore/MessagesBackupRestoreActivity.java`
- `messagescalls/backups/CallsBackupsActivity.java`
- `messagescalls/backups/MessagesBackupsActivity.java`
- `messagescalls/conversationsview/ChatActivity.java`
- `messagescalls/conversationsview/ConversationsActivity.java`
- `messagescalls/dash/CallsDashActivity.java`
- `messagescalls/dash/MessagesDashActivity.java`
- `messagescalls/defaulthandler/ComposeSmsActivity.java`
- `notice/NoticeListActivity.java`
- `notice/NoticeViewActivity.java`
- `password/PasswordStrategyActivity.java`
- `password/UserPasswordActivity.java`
- `premium/PremiumActivity.java`
- `settings/AppSwipeActionsActivity.java`
- `settings/LicensesActivity.java`
- `settings/MultipleBackupsActivity.java`
- `settings/RestoreSpecialDataDetailsActivity.java`
- `settings/SettingsActivity.java`
- `settings/SettingsDetailActivity.java`
- `settings/appbackuplimits/AppBackupLimitsActivity.java`
- `settings/appvisibility/AppVisibilityDiagnosticsActivity.java`
- `shortcuts/ShortcutsActivity.java`
- `slog/SLogActivity.java`
- `tasks/PreconditionsActivity.java`
- `tasks/ui/TaskActivity.java`
- `walls/WallApplyActivity.java`
- `walls/WallsDashActivity.java`
- `walls/WallsManageActivity.java`
- `wifi/WifiActivity.java`

## Premium-gate audit candidates

Static token scan found **93 occurrences** of premium-related terms in reference-package Java source and **37 distinct permission names** in the decoded manifest. A broad text scan is a candidate finder; it can include library or logging references and does not establish the semantic meaning of each match.

Confirmed explicit guard strings:
- `appslist/ui/listbatch/AppsBatchActivity.java` — `User not premium! Finishing.`
- `appslist/ui/listconfig/AppsConfigRunActivity.java` — `User not premium! Finishing.`
- `folders/ui/batch/FoldersBatchActivity.java` — `User not premium! Finishing.`

Confirmed strategy-level evidence:
- `settings/FolderBackupStrategy.java` — strategy objects carry an `isPremium` flag; incremental is marked premium in the audited source.
- `settings/MultipleBackupStrategy.java` — `isPremium()` derives a premium classification for configured multi-backup strategies.
- `settings/b.java`, `defpackage/bo3.java`, `defpackage/rj3.java`, and `defpackage/hl0.java` — strategy-selection/operation paths consult premium state or strategy premium classification.

Additional same-package scan candidates:
- `cloud/orphans/b.java`
- `detail/DetailActivity.java`
- `folders/ui/FolderDetailActivity.java`
- `home/HomeActivity.java`
- `model/app/CloudMetadata.java`
- `model/app/LocalMetadata.java`
- `premium/NoGmsPremium.java`
- `premium/PremiumActivity.java`

## Provider and platform observations

- 35 Java source files were found under the reference `cloud/` package.
- Provider-related classes/resources include Box, Dropbox, Google sign-in, OneDrive, pCloud, MEGA, Filen, TeraBox, Yandex, S3-compatible storage, WebDAV, SMB, SFTP, and FTP surfaces.
- The reference resource contains a Firebase URL belonging to the reference project. It is not a BΛR☰ backend endpoint and must not be reused.
- The sample backup ZIP contains `com.bare.app`, `com.bare.dat`, and `com.bare.xml`. Payload schema and restore compatibility remain unknown.
- Runtime navigation, provider login, permission grants, root/Shizuku behavior, and actual backup/restore are not established by this static inventory.
