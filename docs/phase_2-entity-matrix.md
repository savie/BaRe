# Phase 2 — 120 Entity Matrix

**State:** TEMPLATE — NOT VERIFIED

This matrix is the execution register for Phase 2. Every target entity must have an explicit mapping, strategy, evidence and state. A shorthand aggregate is not sufficient for a Phase 2 gate.

## Target Set

- 1 Application
- 95 Activities
- 10 Services
- 10 Receivers
- 4 Providers
- **120 total entities**

## Matrix

| ID | Type | Reference Symbol | Ownership | BaRe Symbol | Strategy | Evidence | State | Result |
|---|---|---|---|---|---|---|---|---|
| APP-001 | Application | `org.swiftapps.swiftbackup.SwiftApp` | INTERNAL | ... | direct | ... | PLANNED | ... |
| ACT-001 | Activity | `org.swiftapps.swiftbackup.intro.IntroActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-002 | Activity | `org.swiftapps.swiftbackup.home.HomeActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-003 | Activity | `org.swiftapps.swiftbackup.home.search.HomeSearchActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-004 | Activity | `org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-005 | Activity | `org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-006 | Activity | `org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-007 | Activity | `org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-008 | Activity | `org.swiftapps.swiftbackup.detail.DetailActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-009 | Activity | `org.swiftapps.swiftbackup.apkshare.ApkImportActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-010 | Activity | `org.swiftapps.swiftbackup.appinfo.AppInfoActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-011 | Activity | `org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-012 | Activity | `org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-013 | Activity | `org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-014 | Activity | `org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-015 | Activity | `org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-016 | Activity | `org.swiftapps.swiftbackup.settings.SettingsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-017 | Activity | `org.swiftapps.swiftbackup.blacklist.BlacklistActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-018 | Activity | `org.swiftapps.swiftbackup.notice.NoticeListActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-019 | Activity | `org.swiftapps.swiftbackup.settings.SettingsDetailActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-020 | Activity | `org.swiftapps.swiftbackup.settings.AppSwipeActionsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-021 | Activity | `org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-022 | Activity | `org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-023 | Activity | `org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-024 | Activity | `org.swiftapps.swiftbackup.locale.LocaleActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-025 | Activity | `org.swiftapps.swiftbackup.contributor.ContributorRegActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-026 | Activity | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-027 | Activity | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-028 | Activity | `org.swiftapps.swiftbackup.manage.ManageSpaceActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-029 | Activity | `org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-030 | Activity | `org.swiftapps.swiftbackup.premium.PremiumActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-031 | Activity | `org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-032 | Activity | `org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-033 | Activity | `org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-034 | Activity | `org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-035 | Activity | `org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-036 | Activity | `org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-037 | Activity | `org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-038 | Activity | `org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-039 | Activity | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-040 | Activity | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-041 | Activity | `org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-042 | Activity | `org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-043 | Activity | `org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-044 | Activity | `org.swiftapps.swiftbackup.folders.ui.FolderEditActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-045 | Activity | `org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-046 | Activity | `org.swiftapps.swiftbackup.slog.SLogActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-047 | Activity | `org.swiftapps.swiftbackup.wifi.WifiActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-048 | Activity | `org.swiftapps.swiftbackup.walls.WallsDashActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-049 | Activity | `org.swiftapps.swiftbackup.walls.WallsManageActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-050 | Activity | `org.swiftapps.swiftbackup.walls.WallApplyActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-051 | Activity | `org.swiftapps.swiftbackup.notice.NoticeViewActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-052 | Activity | `org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-053 | Activity | `org.swiftapps.swiftbackup.password.PasswordStrategyActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-054 | Activity | `org.swiftapps.swiftbackup.password.UserPasswordActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-055 | Activity | `org.swiftapps.swiftbackup.settings.MultipleBackupsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-056 | Activity | `org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-057 | Activity | `org.swiftapps.swiftbackup.tasks.ui.TaskActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-058 | Activity | `org.swiftapps.swiftbackup.tasks.PreconditionsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-059 | Activity | `org.swiftapps.swiftbackup.settings.LicensesActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-060 | Activity | `org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-061 | Activity | `org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-062 | Activity | `org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-063 | Activity | `org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-064 | Activity | `org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-065 | Activity | `org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-066 | Activity | `org.swiftapps.swiftbackup.cloud.connect.YandexSignInActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-067 | Activity | `org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-068 | Activity | `org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-069 | Activity | `org.swiftapps.swiftbackup.cloud.connect.CsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-070 | Activity | `org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-071 | Activity | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.ComposeSmsActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-072 | Activity | `net.openid.appauth.RedirectUriReceiverActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-073 | Activity | `com.gun0912.tedpermission.TedPermissionActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-074 | Activity | `com.microsoft.identity.client.BrowserTabActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-075 | Activity | `com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-076 | Activity | `com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-077 | Activity | `com.microsoft.identity.client.helper.BrokerHelperActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-078 | Activity | `com.microsoft.identity.client.CurrentTaskBrowserTabActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-079 | Activity | `com.microsoft.identity.common.internal.providers.oauth2.SilentAuthorizationActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-080 | Activity | `com.microsoft.identity.common.internal.broker.BrokerActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-081 | Activity | `com.microsoft.identity.common.internal.broker.InstallCertActivityLauncher` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-082 | Activity | `com.google.firebase.auth.internal.GenericIdpActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-083 | Activity | `com.google.firebase.auth.internal.RecaptchaActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-084 | Activity | `androidx.credentials.playservices.controllers.identityauth.HiddenActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-085 | Activity | `androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-086 | Activity | `com.google.android.gms.auth.api.signin.internal.SignInHubActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-087 | Activity | `net.openid.appauth.AuthorizationManagementActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-088 | Activity | `com.android.billingclient.api.ProxyBillingActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-089 | Activity | `com.android.billingclient.api.ProxyBillingActivityV2` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-090 | Activity | `com.google.android.gms.common.api.GoogleApiActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-091 | Activity | `com.pcloud.sdk.AuthorizationActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-092 | Activity | `com.pcloud.sdk.CustomTabActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-093 | Activity | `com.yubico.yubikit.android.ui.OtpActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-094 | Activity | `com.yubico.yubikit.android.ui.YubiKeyPromptActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| ACT-095 | Activity | `com.google.android.play.core.common.PlayCoreDialogWrapperActivity` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| SRV-001 | Service | `org.swiftapps.swiftbackup.tasks.TaskService` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| SRV-002 | Service | `org.swiftapps.swiftbackup.home.schedule.ScheduleService` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| SRV-003 | Service | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.HeadlessSmsSendService` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| SRV-004 | Service | `com.google.firebase.components.ComponentDiscoveryService` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| SRV-005 | Service | `androidx.credentials.playservices.CredentialProviderMetadataHolder` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| SRV-006 | Service | `com.google.android.gms.auth.api.signin.RevocationBoundService` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| SRV-007 | Service | `com.google.firebase.sessions.SessionLifecycleService` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| SRV-008 | Service | `androidx.room.MultiInstanceInvalidationService` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| SRV-009 | Service | `com.google.android.datatransport.runtime.backends.TransportBackendDiscovery` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| SRV-010 | Service | `com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| RCV-001 | Receiver | `org.swiftapps.swiftbackup.jobs.AlarmReceiver` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| RCV-002 | Receiver | `org.swiftapps.swiftbackup.common.LocaleChangedReceiver` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| RCV-003 | Receiver | `org.swiftapps.swiftbackup.jobs.BootReceiver` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| RCV-004 | Receiver | `org.swiftapps.swiftbackup.tasks.NotificationTaskCancelReceiver` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| RCV-005 | Receiver | `org.swiftapps.swiftbackup.common.PackageInstallResultReceiver` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| RCV-006 | Receiver | `org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| RCV-007 | Receiver | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.SmsReceiver` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| RCV-008 | Receiver | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.MmsReceiver` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| RCV-009 | Receiver | `androidx.profileinstaller.ProfileInstallReceiver` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| RCV-010 | Receiver | `com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver` | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| PRV-001 | Provider | `androidx.core.content.FileProvider` | ... | ... | direct/delegated | ... | PLANNED | ... |
| PRV-002 | Provider | `rikka.shizuku.ShizukuProvider` | ... | ... | direct/delegated | ... | PLANNED | ... |
| PRV-003 | Provider | `com.gun0912.tedpermission.provider.TedPermissionProvider` | ... | ... | direct/delegated | ... | PLANNED | ... |
| PRV-004 | Provider | `androidx.startup.InitializationProvider` | ... | ... | direct/delegated | ... | PLANNED | ... |

## State Rule

Allowed progression:

`PLANNED → IMPLEMENTED → COMPILED → TESTED → VERIFIED`

Alternative terminal states:

`UNKNOWN` / `BLOCKED` / `AUTHORIZED DEVIATION`

A delegated entity requires delegation evidence. Dependency presence alone is insufficient.

## Completion Rule

The matrix is complete only when all 120 rows have an explicit state and evidence reference. No aggregate claim such as “all 120 done” is valid while individual rows remain unresolved.
