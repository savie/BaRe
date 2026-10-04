# BΛR☰ Tahap 2 — Reference Skeleton Target

## 1. TUJUAN

Tahap 2 menetapkan **target skeleton BΛR☰** untuk rekonstruksi Reference Swift Backup 5.1.0 (620).

Dasar:
1. `docs/bare.md`
2. `docs/PHASE_1_INVENTORY.md`
3. Reference Swift Backup 5.1.0 (620)

P2 adalah **target contract**, bukan laporan implementasi.

## 2. ATURAN TARGET

Formula:

`BΛR☰ = Reference + Authorized Deviations`

Authorized Deviations yang berlaku:

- **Branding:** Swift Backup → BΛR☰ / BaRe
- **Backend:** Firebase → Supabase
- **Premium:** gratis / entitlement granted
- **Source:** Java
- **UI:** Android Views/XML

Selain deviation tersebut, struktur, contract, feature, dan behavior mengikuti Reference.

Tidak ada komponen Reference yang dikeluarkan dari target karena berasal dari dependency, library, AndroidX, Google, Firebase, vendor SDK, native library, atau pihak ketiga.

## 3. TARGET MANIFEST

| Komponen | Target |
|---|---:|
| Activity | 95 |
| Service | 10 |
| Receiver | 10 |
| Provider | 4 |
| **Total** | **119** |

Semua 119 komponen adalah target skeleton BΛR☰.

## 3A. REFERENCE EVIDENCE — HASIL BONGKAR

P2 diturunkan langsung dari artefak Reference 5.1.0 (versionCode 620), bukan dari asumsi nama class.

Artefak yang dibongkar:
- `output/jadx/resources/AndroidManifest.xml`
- `output/jadx/sources/`
- `output/apktool/AndroidManifest.xml`
- `output/apktool/smali/` dan `smali_classes*/`

Evidence Manifest Reference yang terverifikasi:
- Activity: **95**
- Service: **10**
- Receiver: **10**
- Provider: **4**
- Total: **119**

Evidence source app-owned yang tersedia di JADX:
- Activity app-owned: **71** source class
- Service app-owned: **3** source class
- Receiver app-owned: **8** source class
- Application: `org/swiftapps/swiftbackup/SwiftApp.java`

Contoh source yang benar-benar tersedia di Reference:
- `org/swiftapps/swiftbackup/intro/IntroActivity.java`
- `org/swiftapps/swiftbackup/home/HomeActivity.java`
- `org/swiftapps/swiftbackup/tasks/TaskService.java`
- `org/swiftapps/swiftbackup/jobs/BootReceiver.java`

Aturan P2 setelah bongkar Reference:
1. Nama, package, inheritance, method, field, dan manifest attribute target app-owned harus diturunkan dari source/evidence Reference.
2. Hanya identitas app-owned yang dinormalisasi ke BaRe sesuai `docs/bare.md`.
3. Component external/dependency tidak boleh dibuatkan class BaRe fiktif hanya untuk memenuhi angka 119; yang ditargetkan adalah contract/boundary Reference yang terbukti.
4. Jika source implementation tidak berasal dari source app-owned Reference, P2 mencatat contract-nya dan tidak mengarang implementation class.
5. Deviation Firebase → Supabase berlaku pada fungsi backend; Firebase bukan implementation target.

## 4. APPLICATION TARGET

Reference:
`org.swiftapps.swiftbackup.SwiftApp`

Target:
**Application owner BΛR☰ di namespace BaRe.**

Kontrak Application Reference tetap dipertahankan; identitas app-owned Swift dinormalisasi ke BaRe.

Reference theme/launcher/application attributes tetap menjadi target dengan perubahan branding/package yang diizinkan.

## 5. ACTIVITY TARGET — 95

| # | Reference | Target BΛR☰ |
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
| 72 | `net.openid.appauth.RedirectUriReceiverActivity` | AppAuth component contract |
| 73 | `com.gun0912.tedpermission.TedPermissionActivity` | TedPermission component contract |
| 74 | `com.microsoft.identity.client.BrowserTabActivity` | Microsoft Identity component contract |
| 75 | `com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity` | Microsoft Identity component contract |
| 76 | `com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity` | Microsoft Identity component contract |
| 77 | `com.microsoft.identity.client.helper.BrokerHelperActivity` | Microsoft Identity component contract |
| 78 | `com.microsoft.identity.client.CurrentTaskBrowserTabActivity` | Microsoft Identity component contract |
| 79 | `com.microsoft.identity.common.internal.providers.oauth2.SilentAuthorizationActivity` | Microsoft Identity component contract |
| 80 | `com.microsoft.identity.common.internal.broker.BrokerActivity` | Microsoft Identity component contract |
| 81 | `com.microsoft.identity.common.internal.broker.InstallCertActivityLauncher` | Microsoft Identity component contract |
| 82 | `com.google.firebase.auth.internal.GenericIdpActivity` | BaRe authentication/identity contract; backend Firebase → Supabase |
| 83 | `com.google.firebase.auth.internal.RecaptchaActivity` | BaRe authentication/verification contract; backend Firebase → Supabase |
| 84 | `androidx.credentials.playservices.controllers.identityauth.HiddenActivity` | Credentials component contract |
| 85 | `androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity` | Credentials component contract |
| 86 | `com.google.android.gms.auth.api.signin.internal.SignInHubActivity` | Google Sign-In component contract |
| 87 | `net.openid.appauth.AuthorizationManagementActivity` | AppAuth component contract |
| 88 | `com.android.billingclient.api.ProxyBillingActivity` | Billing component contract |
| 89 | `com.android.billingclient.api.ProxyBillingActivityV2` | Billing component contract |
| 90 | `com.google.android.gms.common.api.GoogleApiActivity` | Google Play Services component contract |
| 91 | `com.pcloud.sdk.AuthorizationActivity` | pCloud component contract |
| 92 | `com.pcloud.sdk.CustomTabActivity` | pCloud component contract |
| 93 | `com.yubico.yubikit.android.ui.OtpActivity` | YubiKey component contract |
| 94 | `com.yubico.yubikit.android.ui.YubiKeyPromptActivity` | YubiKey component contract |
| 95 | `com.google.android.play.core.common.PlayCoreDialogWrapperActivity` | Play Core component contract |

## 6. SERVICE TARGET — 10

| # | Reference | Target BΛR☰ |
|---:|---|---|
| 1 | `org.swiftapps.swiftbackup.tasks.TaskService` | `com.bare.tasks.TaskService` |
| 2 | `org.swiftapps.swiftbackup.home.schedule.ScheduleService` | `com.bare.home.schedule.ScheduleService` |
| 3 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.HeadlessSmsSendService` | `com.bare.messagescalls.defaulthandler.HeadlessSmsSendService` |
| 4 | `com.google.firebase.components.ComponentDiscoveryService` | BaRe component-discovery contract; Firebase → Supabase where backend functionality is required |
| 5 | `androidx.credentials.playservices.CredentialProviderMetadataHolder` | Credentials component contract |
| 6 | `com.google.android.gms.auth.api.signin.RevocationBoundService` | Google Sign-In component contract |
| 7 | `com.google.firebase.sessions.SessionLifecycleService` | BaRe session-lifecycle contract; Firebase → Supabase where backend functionality is required |
| 8 | `androidx.room.MultiInstanceInvalidationService` | Room component contract |
| 9 | `com.google.android.datatransport.runtime.backends.TransportBackendDiscovery` | DataTransport component contract |
| 10 | `com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService` | DataTransport component contract |

## 7. RECEIVER TARGET — 10

| # | Reference | Target BΛR☰ |
|---:|---|---|
| 1 | `org.swiftapps.swiftbackup.jobs.AlarmReceiver` | `com.bare.jobs.AlarmReceiver` |
| 2 | `org.swiftapps.swiftbackup.common.LocaleChangedReceiver` | `com.bare.common.LocaleChangedReceiver` |
| 3 | `org.swiftapps.swiftbackup.jobs.BootReceiver` | `com.bare.jobs.BootReceiver` |
| 4 | `org.swiftapps.swiftbackup.tasks.NotificationTaskCancelReceiver` | `com.bare.tasks.NotificationTaskCancelReceiver` |
| 5 | `org.swiftapps.swiftbackup.common.PackageInstallResultReceiver` | `com.bare.common.PackageInstallResultReceiver` |
| 6 | `org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver` | `com.bare.detail.ShortcutPinnedReceiver` |
| 7 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.SmsReceiver` | `com.bare.messagescalls.defaulthandler.SmsReceiver` |
| 8 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.MmsReceiver` | `com.bare.messagescalls.defaulthandler.MmsReceiver` |
| 9 | `androidx.profileinstaller.ProfileInstallReceiver` | ProfileInstaller component contract |
| 10 | `com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver` | DataTransport component contract |

## 8. PROVIDER TARGET — 4

| # | Reference | Target BΛR☰ |
|---:|---|---|
| 1 | `androidx.core.content.FileProvider` | FileProvider contract |
| 2 | `rikka.shizuku.ShizukuProvider` | Shizuku provider contract |
| 3 | `com.gun0912.tedpermission.provider.TedPermissionProvider` | TedPermission provider contract |
| 4 | `androidx.startup.InitializationProvider` | AndroidX Startup component contract |

## 9. FRAGMENT TARGET

Seluruh Fragment yang terbukti menjadi bagian dari struktur Reference adalah target BΛR☰.

Aturan:
- struktur dan behavior mengikuti Reference;
- identifier app-owned dinormalisasi ke BaRe;
- tidak mengarang Fragment yang tidak didukung evidence.

## 10. MANIFEST TARGET

Manifest BΛR☰ mempertahankan kontrak Reference untuk:
- Application
- Activity
- Service
- Receiver
- Provider
- permission
- intent-filter
- exported/enabled
- authority
- metadata
- service/activity/provider attributes
- application attributes
- queries dan deklarasi struktural lainnya.

Perubahan identitas yang diizinkan:
- Swift Backup → BΛR☰ / BaRe
- Firebase backend → Supabase

## 11. RESOURCE TARGET

Seluruh resource Reference yang masuk reconstruction adalah target BΛR☰.

Baseline Reference:
- layout: 341
- layout-land: 2
- layout-sw600dp: 2
- layout-w600dp: 1
- layout-watch: 2
- drawable: 445
- drawable-anydpi: 2
- drawable-anydpi-v31: 1
- menu: 44
- xml: 18
- raw: 12
- font: 7
- anim: 41
- animator: 42
- color: 199

Resource app-owned mengikuti identitas BaRe.

## 12. NATIVE / LIBRARY / EXTERNAL TARGET

Native, library, dan external surface yang terbukti menjadi bagian Reference tetap target.

Termasuk:
- SBA native runtime dan ABI;
- OAuth/identity;
- cloud integration;
- billing;
- Shizuku;
- AndroidX;
- Google/dependency component;
- Firebase-origin component contract yang fungsi backend-nya direalisasikan tanpa Firebase dan menggunakan Supabase bila membutuhkan backend.

Tidak ada dependency yang otomatis dikeluarkan dari target.

## 13. P2 FREEZE

P2 membekukan:

**95 Activity + 10 Service + 10 Receiver + 4 Provider = 119 target Manifest components.**

Ditambah:
- Application;
- Fragment;
- Manifest structure;
- resources;
- native/library/external surfaces.

P2 tidak berisi status implementasi, jumlah yang sudah dibuat, gap, PASS berdasarkan kondisi `app/`, build, runtime, atau device.

## 14. SUMBER

1. `docs/bare.md`
2. `docs/PHASE_1_INVENTORY.md`
3. Reference Swift Backup 5.1.0 (620)

P2 = **target skeleton BΛR☰**, bukan work report.
