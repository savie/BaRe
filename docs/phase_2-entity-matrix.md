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
| APP-001 | Application | `org.swiftapps.swiftbackup.SwiftApp` | INTERNAL | PH2-INTERNAL-SOURCE | direct | ... | IMPLEMENTED | ... |
| ACT-001 | Activity | `org.swiftapps.swiftbackup.intro.IntroActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-002 | Activity | `org.swiftapps.swiftbackup.home.HomeActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-003 | Activity | `org.swiftapps.swiftbackup.home.search.HomeSearchActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-004 | Activity | `org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-005 | Activity | `org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-006 | Activity | `org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-007 | Activity | `org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-008 | Activity | `org.swiftapps.swiftbackup.detail.DetailActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-009 | Activity | `org.swiftapps.swiftbackup.apkshare.ApkImportActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-010 | Activity | `org.swiftapps.swiftbackup.appinfo.AppInfoActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-011 | Activity | `org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-012 | Activity | `org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-013 | Activity | `org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-014 | Activity | `org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-015 | Activity | `org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-016 | Activity | `org.swiftapps.swiftbackup.settings.SettingsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-017 | Activity | `org.swiftapps.swiftbackup.blacklist.BlacklistActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-018 | Activity | `org.swiftapps.swiftbackup.notice.NoticeListActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-019 | Activity | `org.swiftapps.swiftbackup.settings.SettingsDetailActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-020 | Activity | `org.swiftapps.swiftbackup.settings.AppSwipeActionsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-021 | Activity | `org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-022 | Activity | `org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-023 | Activity | `org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-024 | Activity | `org.swiftapps.swiftbackup.locale.LocaleActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-025 | Activity | `org.swiftapps.swiftbackup.contributor.ContributorRegActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-026 | Activity | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-027 | Activity | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-028 | Activity | `org.swiftapps.swiftbackup.manage.ManageSpaceActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-029 | Activity | `org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-030 | Activity | `org.swiftapps.swiftbackup.premium.PremiumActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-031 | Activity | `org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-032 | Activity | `org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-033 | Activity | `org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-034 | Activity | `org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-035 | Activity | `org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-036 | Activity | `org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-037 | Activity | `org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-038 | Activity | `org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-039 | Activity | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-040 | Activity | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-041 | Activity | `org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-042 | Activity | `org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-043 | Activity | `org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-044 | Activity | `org.swiftapps.swiftbackup.folders.ui.FolderEditActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-045 | Activity | `org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-046 | Activity | `org.swiftapps.swiftbackup.slog.SLogActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-047 | Activity | `org.swiftapps.swiftbackup.wifi.WifiActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-048 | Activity | `org.swiftapps.swiftbackup.walls.WallsDashActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-049 | Activity | `org.swiftapps.swiftbackup.walls.WallsManageActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-050 | Activity | `org.swiftapps.swiftbackup.walls.WallApplyActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-051 | Activity | `org.swiftapps.swiftbackup.notice.NoticeViewActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-052 | Activity | `org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-053 | Activity | `org.swiftapps.swiftbackup.password.PasswordStrategyActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-054 | Activity | `org.swiftapps.swiftbackup.password.UserPasswordActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-055 | Activity | `org.swiftapps.swiftbackup.settings.MultipleBackupsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-056 | Activity | `org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-057 | Activity | `org.swiftapps.swiftbackup.tasks.ui.TaskActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-058 | Activity | `org.swiftapps.swiftbackup.tasks.PreconditionsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-059 | Activity | `org.swiftapps.swiftbackup.settings.LicensesActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-060 | Activity | `org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-061 | Activity | `org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-062 | Activity | `org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-063 | Activity | `org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-064 | Activity | `org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-065 | Activity | `org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-066 | Activity | `org.swiftapps.swiftbackup.cloud.connect.YandexSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-067 | Activity | `org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-068 | Activity | `org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-069 | Activity | `org.swiftapps.swiftbackup.cloud.connect.CsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-070 | Activity | `org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-071 | Activity | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.ComposeSmsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-072 | Activity | `net.openid.appauth.RedirectUriReceiverActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-073 | Activity | `com.gun0912.tedpermission.TedPermissionActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-074 | Activity | `com.microsoft.identity.client.BrowserTabActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-075 | Activity | `com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-076 | Activity | `com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-077 | Activity | `com.microsoft.identity.client.helper.BrokerHelperActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-078 | Activity | `com.microsoft.identity.client.CurrentTaskBrowserTabActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-079 | Activity | `com.microsoft.identity.common.internal.providers.oauth2.SilentAuthorizationActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-080 | Activity | `com.microsoft.identity.common.internal.broker.BrokerActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-081 | Activity | `com.microsoft.identity.common.internal.broker.InstallCertActivityLauncher` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-082 | Activity | `com.google.firebase.auth.internal.GenericIdpActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-083 | Activity | `com.google.firebase.auth.internal.RecaptchaActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-084 | Activity | `androidx.credentials.playservices.controllers.identityauth.HiddenActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-085 | Activity | `androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-086 | Activity | `com.google.android.gms.auth.api.signin.internal.SignInHubActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-087 | Activity | `net.openid.appauth.AuthorizationManagementActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-088 | Activity | `com.android.billingclient.api.ProxyBillingActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-089 | Activity | `com.android.billingclient.api.ProxyBillingActivityV2` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-090 | Activity | `com.google.android.gms.common.api.GoogleApiActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-091 | Activity | `com.pcloud.sdk.AuthorizationActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-092 | Activity | `com.pcloud.sdk.CustomTabActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-093 | Activity | `com.yubico.yubikit.android.ui.OtpActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-094 | Activity | `com.yubico.yubikit.android.ui.YubiKeyPromptActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-095 | Activity | `com.google.android.play.core.common.PlayCoreDialogWrapperActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-001 | Service | `org.swiftapps.swiftbackup.tasks.TaskService` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| SRV-002 | Service | `org.swiftapps.swiftbackup.home.schedule.ScheduleService` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| SRV-003 | Service | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.HeadlessSmsSendService` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| SRV-004 | Service | `com.google.firebase.components.ComponentDiscoveryService` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-005 | Service | `androidx.credentials.playservices.CredentialProviderMetadataHolder` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-006 | Service | `com.google.android.gms.auth.api.signin.RevocationBoundService` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-007 | Service | `com.google.firebase.sessions.SessionLifecycleService` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-008 | Service | `androidx.room.MultiInstanceInvalidationService` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-009 | Service | `com.google.android.datatransport.runtime.backends.TransportBackendDiscovery` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-010 | Service | `com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| RCV-001 | Receiver | `org.swiftapps.swiftbackup.jobs.AlarmReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-002 | Receiver | `org.swiftapps.swiftbackup.common.LocaleChangedReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-003 | Receiver | `org.swiftapps.swiftbackup.jobs.BootReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-004 | Receiver | `org.swiftapps.swiftbackup.tasks.NotificationTaskCancelReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-005 | Receiver | `org.swiftapps.swiftbackup.common.PackageInstallResultReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-006 | Receiver | `org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-007 | Receiver | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.SmsReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-008 | Receiver | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.MmsReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-009 | Receiver | `androidx.profileinstaller.ProfileInstallReceiver` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| RCV-010 | Receiver | `com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| PRV-001 | Provider | `androidx.core.content.FileProvider` | PH2-DEPENDENCY-BLOCKED | ... | direct/delegated | ... | BLOCKED | ... |
| PRV-002 | Provider | `rikka.shizuku.ShizukuProvider` | PH2-DEPENDENCY-BLOCKED | ... | direct/delegated | ... | BLOCKED | ... |
| PRV-003 | Provider | `com.gun0912.tedpermission.provider.TedPermissionProvider` | PH2-DEPENDENCY-BLOCKED | ... | direct/delegated | ... | BLOCKED | ... |
| PRV-004 | Provider | `androidx.startup.InitializationProvider` | PH2-DEPENDENCY-BLOCKED | ... | direct/delegated | ... | BLOCKED | ... |

## State Rule

Allowed progression:

`PLANNED → IMPLEMENTED → COMPILED → TESTED → VERIFIED`

Alternative terminal states:

`UNKNOWN` / `BLOCKED` / `AUTHORIZED DEVIATION`

A delegated entity requires delegation evidence. Dependency presence alone is insufficient.

## Completion Rule

The matrix is complete only when all 120 rows have an explicit state and evidence reference. No aggregate claim such as “all 120 done” is valid while individual rows remain unresolved.


## Executed P2 Status

- Application + 82 internal components: `IMPLEMENTED`.
- 37 external/dependency-owned components: `BLOCKED`.
- Structural Java compile: PASS using explicit compile-only Android/AndroidX contract stubs.
- Full Android build: NOT VERIFIED because BaRe has no declared dependency/build contract for the 37 external entities yet.


## Dependency Evidence Reference

All 37 dependency-owned rows use the executed evidence register:
`docs/phase_2-dependency-register.md`

Current state for all 37:
`BLOCKED` — Reference contract observed, BaRe dependency/build contract missing.

No dependency-owned row is claimed `VERIFIED`.
