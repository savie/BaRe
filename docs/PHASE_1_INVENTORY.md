# BΛR☰ Phase 1 — Reference Inventory

## Authority

- Reference: Swift Backup 5.1.0
- Version code: 620
- Target repository: savie/BaRe
- Implementation branch: rewrite
- Baseline authority: docs/bare.md
- Reference snapshot: `reference/` tree on branch `rewrite`

## Inventory status

**PHASE 1 — REOPENED / REQUALIFIED.**

The Reference manifest inventory itself is verified against the canonical decompile archive. The previous Phase 1 ownership split (71/3/8 application-owned versus dependency/library exclusions) is **superseded as a target-scope rule**. Origin/ownership is still recorded for traceability, but it no longer removes a Reference manifest component from the BaRe reconstruction target.

The Reference JADX/APKTool snapshot is present in the `rewrite` branch and was audited directly. Phase 1 is considered complete when the baseline identity, source/resource inventory, manifest baseline, component inventory, major feature/package domains, reconstruction deviations, and implementation gate are explicitly recorded.

| Domain | Status | Evidence |
|---|---|---|
| Reference identity | COMPLETE | Package, application class, version 5.1.0 / 620 verified |
| Reference source/class structure | COMPLETE | JADX + Smali snapshot inventoried |
| Reference package structure | COMPLETE | `org.swiftapps.swiftbackup` package domains recorded |
| AndroidManifest | COMPLETE | APKTool manifest audited |
| Activities | VERIFIED | 95 total; **all 95 are reconstruction target surfaces** |
| Fragments / UI classes | COMPLETE | Major UI domains and reconstruction boundaries mapped; unresolved behavior remains UNKNOWN |
| Services | VERIFIED | 10 total; **all 10 are reconstruction target surfaces** |
| Receivers | VERIFIED | 10 total; **all 10 are reconstruction target surfaces** |
| Providers | VERIFIED | 4 total; **all 4 are reconstruction target surfaces** |
| Layout XML | COMPLETE | 341 layout + 2 land + 2 sw600dp + 1 w600dp + 2 watch |
| Drawables / vectors | COMPLETE | Resource snapshot inventoried; application/library distinction retained |
| Menus | COMPLETE | 44 menu resources inventoried |
| XML / raw / fonts / animation resources | COMPLETE | 18 XML, 12 raw, 7 fonts, 41 anim, 42 animator |
| Values / colors | COMPLETE | 199 colors; values/configuration resource tree retained |
| Navigation / workflow baseline | COMPLETE | Intro → Home baseline and major feature domains recorded |
| Permissions / intents / configuration | COMPLETE | Reference manifest baseline audited |
| Feature/package map | COMPLETE | Major Reference domains recorded |
| Dependencies / integration | COMPLETE | Reference dependency surface recorded; rewrite dependency implementation remains evidence-gated |
| Authorized deviations | COMPLETE | Branding, Swift-specific external identity, Premium, Supabase backend, Java + Views/XML constraints recorded |
| Runtime behavior | DEFERRED | Runtime verification belongs to Phase 7/8, not Phase 1 |

## Verified Reference identity

- Package: `org.swiftapps.swiftbackup`
- Application class: `org.swiftapps.swiftbackup.SwiftApp`
- Version name: `5.1.0`
- Version code: `620`
- APKTool minSdk: `26`
- APKTool targetSdk: `37`
- Manifest compileSdkVersion: `37`

## Full Reference manifest component inventory

This is the complete Phase 1 manifest component ledger. It records **all** Reference manifest declarations in one place and classifies each component by Reference origin for traceability.

### Current target rule — 1:1 + authorized deviations

Every Reference manifest component is now a **BaRe/BΛR☰ reconstruction target**, regardless of whether its Reference origin is application-owned or dependency/library.

Therefore the frozen target counts are:

- **Activities: 95 / 95 target**
- **Services: 10 / 10 target**
- **Receivers: 10 / 10 target**
- **Providers: 4 / 4 target**

The target is **1:1 with Reference**, except only the deviations explicitly authorized by `docs/bare.md`. A dependency/library classification is an ownership/origin fact, **not an exclusion from the reconstruction target**.

For a dependency/native surface, the required reconstruction mechanism may be integration, compatibility boundary, preserved ABI/API contract, or equivalent target implementation as supported by Reference evidence. It must still have an explicit BaRe target owner and may not be discarded as “dependency” without reconciliation.

### Activity = 95

**71 application-owned**
1. ``org.swiftapps.swiftbackup.intro.IntroActivity``
2. ``org.swiftapps.swiftbackup.home.HomeActivity``
3. ``org.swiftapps.swiftbackup.home.search.HomeSearchActivity``
4. ``org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity``
5. ``org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity``
6. ``org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity``
7. ``org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity``
8. ``org.swiftapps.swiftbackup.detail.DetailActivity``
9. ``org.swiftapps.swiftbackup.apkshare.ApkImportActivity``
10. ``org.swiftapps.swiftbackup.appinfo.AppInfoActivity``
11. ``org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity``
12. ``org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity``
13. ``org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity``
14. ``org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity``
15. ``org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity``
16. ``org.swiftapps.swiftbackup.settings.SettingsActivity``
17. ``org.swiftapps.swiftbackup.blacklist.BlacklistActivity``
18. ``org.swiftapps.swiftbackup.notice.NoticeListActivity``
19. ``org.swiftapps.swiftbackup.settings.SettingsDetailActivity``
20. ``org.swiftapps.swiftbackup.settings.AppSwipeActionsActivity``
21. ``org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity``
22. ``org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity``
23. ``org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity``
24. ``org.swiftapps.swiftbackup.locale.LocaleActivity``
25. ``org.swiftapps.swiftbackup.contributor.ContributorRegActivity``
26. ``org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity``
27. ``org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity``
28. ``org.swiftapps.swiftbackup.manage.ManageSpaceActivity``
29. ``org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity``
30. ``org.swiftapps.swiftbackup.premium.PremiumActivity``
31. ``org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity``
32. ``org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity``
33. ``org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity``
34. ``org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity``
35. ``org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity``
36. ``org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity``
37. ``org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity``
38. ``org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity``
39. ``org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity``
40. ``org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity``
41. ``org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity``
42. ``org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity``
43. ``org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity``
44. ``org.swiftapps.swiftbackup.folders.ui.FolderEditActivity``
45. ``org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity``
46. ``org.swiftapps.swiftbackup.slog.SLogActivity``
47. ``org.swiftapps.swiftbackup.wifi.WifiActivity``
48. ``org.swiftapps.swiftbackup.walls.WallsDashActivity``
49. ``org.swiftapps.swiftbackup.walls.WallsManageActivity``
50. ``org.swiftapps.swiftbackup.walls.WallApplyActivity``
51. ``org.swiftapps.swiftbackup.notice.NoticeViewActivity``
52. ``org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity``
53. ``org.swiftapps.swiftbackup.password.PasswordStrategyActivity``
54. ``org.swiftapps.swiftbackup.password.UserPasswordActivity``
55. ``org.swiftapps.swiftbackup.settings.MultipleBackupsActivity``
56. ``org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity``
57. ``org.swiftapps.swiftbackup.tasks.ui.TaskActivity``
58. ``org.swiftapps.swiftbackup.tasks.PreconditionsActivity``
59. ``org.swiftapps.swiftbackup.settings.LicensesActivity``
60. ``org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity``
61. ``org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity``
62. ``org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity``
63. ``org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity``
64. ``org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity``
65. ``org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity``
66. ``org.swiftapps.swiftbackup.cloud.connect.YandexSignInActivity``
67. ``org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity``
68. ``org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity``
69. ``org.swiftapps.swiftbackup.cloud.connect.CsActivity``
70. ``org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity``
71. ``org.swiftapps.swiftbackup.messagescalls.defaulthandler.ComposeSmsActivity``

**24 dependency/library**
1. `net.openid.appauth.RedirectUriReceiverActivity`
2. `com.gun0912.tedpermission.TedPermissionActivity`
3. `com.microsoft.identity.client.BrowserTabActivity`
4. `com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity`
5. `com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity`
6. `com.microsoft.identity.client.helper.BrokerHelperActivity`
7. `com.microsoft.identity.client.CurrentTaskBrowserTabActivity`
8. `com.microsoft.identity.common.internal.providers.oauth2.SilentAuthorizationActivity`
9. `com.microsoft.identity.common.internal.broker.BrokerActivity`
10. `com.microsoft.identity.common.internal.broker.InstallCertActivityLauncher`
11. `com.google.firebase.auth.internal.GenericIdpActivity`
12. `com.google.firebase.auth.internal.RecaptchaActivity`
13. `androidx.credentials.playservices.controllers.identityauth.HiddenActivity`
14. `androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity`
15. `com.google.android.gms.auth.api.signin.internal.SignInHubActivity`
16. `net.openid.appauth.AuthorizationManagementActivity`
17. `com.android.billingclient.api.ProxyBillingActivity`
18. `com.android.billingclient.api.ProxyBillingActivityV2`
19. `com.google.android.gms.common.api.GoogleApiActivity`
20. `com.pcloud.sdk.AuthorizationActivity`
21. `com.pcloud.sdk.CustomTabActivity`
22. `com.yubico.yubikit.android.ui.OtpActivity`
23. `com.yubico.yubikit.android.ui.YubiKeyPromptActivity`
24. `com.google.android.play.core.common.PlayCoreDialogWrapperActivity`

### Service = 10

**3 application-owned**
1. ``org.swiftapps.swiftbackup.tasks.TaskService``
2. ``org.swiftapps.swiftbackup.home.schedule.ScheduleService``
3. ``org.swiftapps.swiftbackup.messagescalls.defaulthandler.HeadlessSmsSendService``

**7 dependency/library**
1. `com.google.firebase.components.ComponentDiscoveryService`
2. `androidx.credentials.playservices.CredentialProviderMetadataHolder`
3. `com.google.android.gms.auth.api.signin.RevocationBoundService`
4. `com.google.firebase.sessions.SessionLifecycleService`
5. `androidx.room.MultiInstanceInvalidationService`
6. `com.google.android.datatransport.runtime.backends.TransportBackendDiscovery`
7. `com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService`

### Receiver = 10

**8 application-owned**
1. ``org.swiftapps.swiftbackup.jobs.AlarmReceiver``
2. ``org.swiftapps.swiftbackup.common.LocaleChangedReceiver``
3. ``org.swiftapps.swiftbackup.jobs.BootReceiver``
4. ``org.swiftapps.swiftbackup.tasks.NotificationTaskCancelReceiver``
5. ``org.swiftapps.swiftbackup.common.PackageInstallResultReceiver``
6. ``org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver``
7. ``org.swiftapps.swiftbackup.messagescalls.defaulthandler.SmsReceiver``
8. ``org.swiftapps.swiftbackup.messagescalls.defaulthandler.MmsReceiver``

**2 dependency/library**
1. `androidx.profileinstaller.ProfileInstallReceiver`
2. `com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver`

### Provider = 4

**0 application-owned**

No Reference provider belongs to `org.swiftapps.swiftbackup.*`.

**4 dependency/library**
1. `androidx.core.content.FileProvider`
2. `rikka.shizuku.ShizukuProvider`
3. `com.gun0912.tedpermission.provider.TedPermissionProvider`
4. `androidx.startup.InitializationProvider`

### Inventory boundary

The dependency/library classification above records Reference origin only. Under the current target rule, these components **remain in the BaRe reconstruction target**. Their exact target mechanism/owner must be established from Reference evidence before downstream phases are qualified. No component may be excluded solely because its Reference implementation originates from a dependency, library, AndroidX, Google/Firebase, vendor SDK, or native compatibility surface.

## Resource inventory

| Resource type | Count |
|---|---:|
| layout | 341 |
| layout-land | 2 |
| layout-sw600dp | 2 |
| layout-w600dp | 1 |
| layout-watch | 2 |
| drawable | 445 |
| drawable-anydpi | 2 |
| drawable-anydpi-v31 | 1 |
| menu | 44 |
| xml | 18 |
| raw | 12 |
| font | 7 |
| anim | 41 |
| animator | 42 |
| color | 199 |

The decoded resource tree also contains AndroidX/Material/library resources. The inventory preserves that distinction rather than treating every decoded resource as application-owned behavior.

## Manifest baseline

Reference application configuration includes:

- `allowBackup=false`
- `allowClearUserData=false`
- `largeHeap=true`
- `requestLegacyExternalStorage=true`
- `supportsRtl=true`
- `enableOnBackInvokedCallback=true`
- `android:name="org.swiftapps.swiftbackup.SwiftApp"`
- `android:theme="@style/SwiftTheme"`
- launcher: `org.swiftapps.swiftbackup.intro.IntroActivity`
- primary post-intro activity: `org.swiftapps.swiftbackup.home.HomeActivity`

The Reference manifest declares storage, notification, SMS, contacts, call-log, network, biometric, billing, wallpaper, boot, package-management, usage-statistics, foreground-service, alarm, shortcut, and related permissions.

## BaRe bootstrap / authorized baseline

| Item | Status | Notes |
|---|---|---|
| Android application module | COMPLETE | `app/` exists |
| Java implementation | COMPLETE | Java source only |
| Android Views/XML | COMPLETE | Compose not enabled |
| Kotlin | COMPLETE | No Kotlin source |
| Namespace | AUTHORIZED DEVIATION | `com.bare` |
| Application ID | AUTHORIZED DEVIATION | `com.bare` |
| Branding | AUTHORIZED DEVIATION | BΛR☰ / BaRe |
| minSdk | MATCHED BASELINE | `26` on current rewrite |
| compileSdk | MATCHED BASELINE | `37` on current rewrite |
| targetSdk | MATCHED BASELINE | `37` on current rewrite |
| versionName | AUTHORIZED CONFIGURATION | `1.0` |
| versionCode | AUTHORIZED CONFIGURATION | `BARE_VERSION_CODE`, fallback 1 |
| Stable debug signing | CONFIGURED | Optional environment-driven signing |
| Supabase | GATED | Implementation requires explicit permission and actual configuration evidence |
| Premium entitlement | RECONSTRUCTION CONTRACT | Premium remains a Reference feature; free entitlement is an authorized deviation |

## Phase 1 completion gate

**Current status: REOPENED.**

The canonical Reference manifest inventory is verified: **95 Activities, 10 Services, 10 Receivers, 4 Providers**. The previous exclusion of dependency/library components from the reconstruction target is invalidated and superseded by the current **1:1 + authorized deviations** target rule.

Phase 1 does **not** claim implementation parity, runtime parity, feature parity, or build parity. Those belong to subsequent verification gates.

Phase 2 and downstream phases remain blocked from treating the old 71/3/8/0 ownership subset as the target boundary until this requalified P1 baseline is accepted.

