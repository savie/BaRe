# Reference Feature Map

Derived from the supplied Swift Backup 5.1.0 (620) JADX/APKTool artifact. This is an inventory/mapping aid, not a parity claim.

## Primary domains

| Domain | Reference evidence |
|---|---|
| Onboarding | intro.IntroActivity; intro_* layouts |
| Home/dashboard | HomeActivity; home_activity.xml; home_appbar.xml |
| Apps | appslist; appinfo; appsquickactions |
| App configuration | appconfigs |
| App detail | detail.DetailActivity |
| APK import | apkshare.ApkImportActivity |
| Folders | folders |
| Messages | messagescalls |
| Calls | messagescalls |
| Cloud | cloud; cloud.connect |
| Scheduling | home.schedule; ScheduleService |
| Settings | settings |
| Premium | premium.PremiumActivity |
| Password/encryption | password |
| Tasks | tasks; TaskService |
| Wi-Fi | wifi.WifiActivity |
| Wallpapers | walls |
| Storage | home.storageswitch |
| Locale | locale.LocaleActivity |
| Blacklist | blacklist.BlacklistActivity |
| Notices/licenses | notice; settings.LicensesActivity |
| Logging | slog.SLogActivity |
| Database | database |

## Manifest baseline

Reference declares 95 activities total, 71 application-package activities, 10 services, 8 application-package receivers, and 4 providers (all provider entries are dependency/library providers).

Launcher:

org.swiftapps.swiftbackup.intro.IntroActivity

Primary post-intro Activity:

org.swiftapps.swiftbackup.home.HomeActivity

Application class:

org.swiftapps.swiftbackup.SwiftApp

## Application activities

- intro.IntroActivity
- home.HomeActivity
- home.search.HomeSearchActivity
- appsquickactions.AppsQuickActionsActivity
- appslist.ui.list.AppListActivity
- appslist.ui.listbatch.AppsBatchActivity
- appslist.ui.listconfig.AppsConfigRunActivity
- detail.DetailActivity
- apkshare.ApkImportActivity
- appinfo.AppInfoActivity
- appconfigs.list.ConfigListActivity
- appconfigs.edit.ConfigEditActivity
- appconfigs.settings.ConfigSettingsActivity
- home.schedule.ScheduleLabelsSelectActivity
- home.schedule.ui.ScheduleFolderSelectActivity
- settings.SettingsActivity
- blacklist.BlacklistActivity
- notice.NoticeListActivity
- settings.SettingsDetailActivity
- settings.AppSwipeActionsActivity
- cloud.diagnostics.CloudDiagnosticsActivity
- cloud.orphans.CloudOrphanCleanerActivity
- settings.appvisibility.AppVisibilityDiagnosticsActivity
- locale.LocaleActivity
- contributor.ContributorRegActivity
- appslist.ui.labels.LabelsActivity
- appslist.ui.labels.LabelEditActivity
- manage.ManageSpaceActivity
- shortcuts.ShortcutsActivity
- premium.PremiumActivity
- cloud.connect.GmsSignInActivity
- cloud.connect.NoGmsSignInActivity
- messagescalls.dash.MessagesDashActivity
- messagescalls.backups.MessagesBackupsActivity
- messagescalls.backuprestore.MessagesBackupRestoreActivity
- messagescalls.dash.CallsDashActivity
- messagescalls.backups.CallsBackupsActivity
- messagescalls.backuprestore.CallsBackupRestoreActivity
- messagescalls.conversationsview.ConversationsActivity
- messagescalls.conversationsview.ChatActivity
- folders.ui.FoldersDashActivity
- folders.ui.batch.FoldersBatchActivity
- folders.ui.FolderPickerActivity
- folders.ui.FolderEditActivity
- folders.ui.FolderDetailActivity
- slog.SLogActivity
- wifi.WifiActivity
- walls.WallsDashActivity
- walls.WallsManageActivity
- walls.WallApplyActivity
- notice.NoticeViewActivity
- home.storageswitch.StorageSwitchActivity
- password.PasswordStrategyActivity
- password.UserPasswordActivity
- settings.MultipleBackupsActivity
- settings.RestoreSpecialDataDetailsActivity
- tasks.ui.TaskActivity
- tasks.PreconditionsActivity
- settings.LicensesActivity
- cloud.connect.common.CloudConnectActivity
- settings.appbackuplimits.AppBackupLimitsActivity
- cloud.connect.DropboxSignInActivity
- cloud.connect.OneDriveSignInActivity
- cloud.connect.BoxSignInActivity
- cloud.connect.MegaSignInActivity
- cloud.connect.YandexSignInActivity
- cloud.connect.PCloudSignInActivity
- cloud.connect.TeraBoxSignInActivity
- cloud.connect.CsActivity
- cloud.connect.FilenSignInActivity
- messagescalls.defaulthandler.ComposeSmsActivity

## Application services

- tasks.TaskService
- home.schedule.ScheduleService
- messagescalls.defaulthandler.HeadlessSmsSendService

## Application receivers

- jobs.AlarmReceiver
- common.LocaleChangedReceiver
- jobs.BootReceiver
- tasks.NotificationTaskCancelReceiver
- common.PackageInstallResultReceiver
- detail.ShortcutPinnedReceiver
- messagescalls.defaulthandler.SmsReceiver
- messagescalls.defaulthandler.MmsReceiver

## Reconstruction sequence

1. Application/runtime foundation
2. Intro/onboarding
3. Home/dashboard shell
4. Navigation and home tabs
5. Apps inventory/detail/configuration
6. Folder backup/restore
7. Messages/calls backup/restore
8. Cloud connection and transfer flows
9. Scheduled tasks
10. Settings/password/storage
11. Premium entitlement conversion
12. Secondary features and integrations
13. Full parity verification

This sequence is an implementation sequence only. It does not authorize changing the Reference architecture or behavior.