# BΛR☰ Tahap 2 — Reference Skeleton Target

## 1. Tujuan

Tahap 2 menetapkan **target kerangka struktural Reference → BΛR☰** berdasarkan:

1. `docs/bare.md`
2. `docs/PHASE_1_INVENTORY.md`
3. Reference Swift Backup 5.1.0 (versionCode 620)

Tahap 2 menjawab:

> **Struktur apa saja yang wajib tersedia sebagai skeleton BΛR☰ untuk merekonstruksi Reference?**

Tahap 2 adalah **target definition / structural contract**. Dokumen ini tidak digunakan untuk menyatakan progres implementasi `app/`.

---

## 2. Batas Target

P1 telah membekukan batas:

| Komponen | Reference | Target BΛR☰ |
|---|---:|---:|
| Activity | 95 | 95 |
| Service | 10 | 10 |
| Receiver | 10 | 10 |
| Provider | 4 | 4 |
| **TOTAL** | **119** | **119** |

Aturan:

> Setiap komponen yang dideklarasikan oleh Reference AndroidManifest adalah target BΛR☰.

Tidak ada pengurangan karena komponen berasal dari:

- dependency;
- library;
- AndroidX;
- Google/Firebase;
- vendor SDK;
- native library;
- compatibility module;
- pihak ketiga.

Asal implementasi tidak mengubah target.

---

## 3. Definisi Skeleton

Skeleton adalah **target struktur** yang harus mempunyai representasi yang dapat dipetakan di BΛR☰.

Bentuk target dapat berupa:

- Java class;
- Application owner;
- Activity;
- Fragment;
- Service;
- Receiver;
- Provider;
- AndroidManifest declaration;
- compatibility boundary;
- API/ABI boundary;
- dependency integration boundary;
- resource/structural owner.

Skeleton tidak sama dengan implementasi behavior.

---

# 4. APPLICATION TARGET

Reference Application:

`org.swiftapps.swiftbackup.SwiftApp`

Target BΛR☰:

`com.bare.BaReApp`

Application target juga mempertahankan kontrak struktural Reference untuk:

- application lifecycle;
- initialization boundary;
- application metadata;
- theme;
- launcher;
- konfigurasi Application;
- dependency initialization yang menjadi bagian dari struktur aplikasi.

Perubahan identitas package/application mengikuti authorized deviation pada `docs/bare.md`.

---

# 5. ACTIVITY TARGET — 95 / 95

Semua 95 Activity berikut adalah **target BΛR☰**.

| # | Reference Activity | Target BΛR☰ |
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
| 72 | `net.openid.appauth.RedirectUriReceiverActivity` | Target AppAuth compatibility boundary |
| 73 | `com.gun0912.tedpermission.TedPermissionActivity` | Target TedPermission compatibility boundary |
| 74 | `com.microsoft.identity.client.BrowserTabActivity` | Target Microsoft Identity compatibility boundary |
| 75 | `com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity` | Target Microsoft Identity compatibility boundary |
| 76 | `com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity` | Target Microsoft Identity compatibility boundary |
| 77 | `com.microsoft.identity.client.helper.BrokerHelperActivity` | Target Microsoft Identity compatibility boundary |
| 78 | `com.microsoft.identity.client.CurrentTaskBrowserTabActivity` | Target Microsoft Identity compatibility boundary |
| 79 | `com.microsoft.identity.common.internal.providers.oauth2.SilentAuthorizationActivity` | Target Microsoft Identity compatibility boundary |
| 80 | `com.microsoft.identity.common.internal.broker.BrokerActivity` | Target Microsoft Identity compatibility boundary |
| 81 | `com.microsoft.identity.common.internal.broker.InstallCertActivityLauncher` | Target Microsoft Identity compatibility boundary |
| 82 | `com.google.firebase.auth.internal.GenericIdpActivity` | Target Firebase Auth compatibility boundary |
| 83 | `com.google.firebase.auth.internal.RecaptchaActivity` | Target Firebase Auth compatibility boundary |
| 84 | `androidx.credentials.playservices.controllers.identityauth.HiddenActivity` | Target Credentials compatibility boundary |
| 85 | `androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity` | Target Credentials compatibility boundary |
| 86 | `com.google.android.gms.auth.api.signin.internal.SignInHubActivity` | Target Google Sign-In compatibility boundary |
| 87 | `net.openid.appauth.AuthorizationManagementActivity` | Target AppAuth compatibility boundary |
| 88 | `com.android.billingclient.api.ProxyBillingActivity` | Target Billing compatibility boundary |
| 89 | `com.android.billingclient.api.ProxyBillingActivityV2` | Target Billing compatibility boundary |
| 90 | `com.google.android.gms.common.api.GoogleApiActivity` | Target Google Play Services compatibility boundary |
| 91 | `com.pcloud.sdk.AuthorizationActivity` | Target pCloud compatibility boundary |
| 92 | `com.pcloud.sdk.CustomTabActivity` | Target pCloud compatibility boundary |
| 93 | `com.yubico.yubikit.android.ui.OtpActivity` | Target YubiKey compatibility boundary |
| 94 | `com.yubico.yubikit.android.ui.YubiKeyPromptActivity` | Target YubiKey compatibility boundary |
| 95 | `com.google.android.play.core.common.PlayCoreDialogWrapperActivity` | Target Play Core compatibility boundary |

---

# 6. SERVICE TARGET — 10 / 10

| # | Reference Service | Target BΛR☰ |
|---:|---|---|
| 1 | `org.swiftapps.swiftbackup.tasks.TaskService` | `com.bare.tasks.TaskService` |
| 2 | `org.swiftapps.swiftbackup.home.schedule.ScheduleService` | `com.bare.home.schedule.ScheduleService` |
| 3 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.HeadlessSmsSendService` | `com.bare.messagescalls.defaulthandler.HeadlessSmsSendService` |
| 4 | `com.google.firebase.components.ComponentDiscoveryService` | Target Firebase compatibility boundary |
| 5 | `androidx.credentials.playservices.CredentialProviderMetadataHolder` | Target Credentials compatibility boundary |
| 6 | `com.google.android.gms.auth.api.signin.RevocationBoundService` | Target Google Sign-In compatibility boundary |
| 7 | `com.google.firebase.sessions.SessionLifecycleService` | Target Firebase Sessions compatibility boundary |
| 8 | `androidx.room.MultiInstanceInvalidationService` | Target Room compatibility boundary |
| 9 | `com.google.android.datatransport.runtime.backends.TransportBackendDiscovery` | Target DataTransport compatibility boundary |
| 10 | `com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService` | Target DataTransport compatibility boundary |

---

# 7. RECEIVER TARGET — 10 / 10

| # | Reference Receiver | Target BΛR☰ |
|---:|---|---|
| 1 | `org.swiftapps.swiftbackup.jobs.AlarmReceiver` | `com.bare.jobs.AlarmReceiver` |
| 2 | `org.swiftapps.swiftbackup.common.LocaleChangedReceiver` | `com.bare.common.LocaleChangedReceiver` |
| 3 | `org.swiftapps.swiftbackup.jobs.BootReceiver` | `com.bare.jobs.BootReceiver` |
| 4 | `org.swiftapps.swiftbackup.tasks.NotificationTaskCancelReceiver` | `com.bare.tasks.NotificationTaskCancelReceiver` |
| 5 | `org.swiftapps.swiftbackup.common.PackageInstallResultReceiver` | `com.bare.common.PackageInstallResultReceiver` |
| 6 | `org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver` | `com.bare.detail.ShortcutPinnedReceiver` |
| 7 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.SmsReceiver` | `com.bare.messagescalls.defaulthandler.SmsReceiver` |
| 8 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.MmsReceiver` | `com.bare.messagescalls.defaulthandler.MmsReceiver` |
| 9 | `androidx.profileinstaller.ProfileInstallReceiver` | Target ProfileInstaller compatibility boundary |
| 10 | `com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver` | Target DataTransport compatibility boundary |

---

# 8. PROVIDER TARGET — 4 / 4

| # | Reference Provider | Target BΛR☰ |
|---:|---|---|
| 1 | `androidx.core.content.FileProvider` | Target FileProvider contract |
| 2 | `rikka.shizuku.ShizukuProvider` | Target Shizuku provider contract |
| 3 | `com.gun0912.tedpermission.provider.TedPermissionProvider` | Target TedPermission provider contract |
| 4 | `androidx.startup.InitializationProvider` | Target AndroidX Startup compatibility boundary |

---

# 9. FRAGMENT TARGET

Fragment merupakan bagian dari skeleton internal sesuai roadmap `docs/bare.md`.

Target P2:

> **Seluruh Fragment yang menjadi bagian dari struktur Reference harus mempunyai pasangan target BΛR☰.**

P2 tidak menetapkan jumlah Fragment tanpa inventory Reference yang eksplisit.

Inventaris Fragment harus mengikuti evidence Reference dan dipetakan satu per satu pada tahap inventory struktur Fragment.

Tidak diperbolehkan:

- menghapus Fragment karena tidak ada di AndroidManifest;
- mengarang jumlah Fragment;
- menyamakan jumlah Fragment dengan jumlah Activity.

---

# 10. MANIFEST STRUCTURAL TARGET

Selain 119 component target, skeleton wajib mempertahankan struktur Manifest Reference yang relevan:

- Application class
- theme
- launcher
- Activity declaration
- Service declaration
- Receiver declaration
- Provider declaration
- permission
- intent-filter
- exported
- enabled
- authority
- metadata
- service type
- activity attributes
- provider attributes
- receiver filters
- application attributes
- queries dan deklarasi struktural lain

Reference baseline Application:

- `org.swiftapps.swiftbackup.SwiftApp`
- `@style/SwiftTheme`
- launcher `org.swiftapps.swiftbackup.intro.IntroActivity`
- post-intro `org.swiftapps.swiftbackup.home.HomeActivity`
- `allowBackup=false`
- `allowClearUserData=false`
- `largeHeap=true`
- `requestLegacyExternalStorage=true`
- `supportsRtl=true`
- `enableOnBackInvokedCallback=true`

Perbedaan hanya boleh berasal dari authorized deviation `docs/bare.md`.

---

# 11. NATIVE / LIBRARY / EXTERNAL TARGET

Native, library, dan external surface yang menjadi bagian dari struktur Reference tetap masuk target.

Termasuk:

- SBA native runtime;
- native `.so` ABI payload;
- OAuth / identity boundary;
- billing boundary;
- cloud SDK boundary;
- Shizuku;
- AndroidX;
- Google/Firebase surfaces;
- dependency lain yang menghasilkan component atau structural contract pada Reference.

Untuk dependency/library component, target berarti:

> BΛR☰ harus memiliki boundary struktural yang mempertahankan kontrak Reference.

Bentuk boundary dapat berupa implementation, wrapper, compatibility layer, preserved API/ABI, atau integration boundary yang ditetapkan pada fase implementasi.

---

# 12. RESOURCE STRUCTURAL TARGET

P1 menetapkan baseline Reference:

| Resource | Target baseline |
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

Angka tersebut adalah **target baseline Reference**, bukan status implementasi BΛR☰.

Resource behavior/UI detail masuk fase UI berikutnya, tetapi keberadaan resource sebagai structural surface tidak boleh dihilangkan dari target rekonstruksi.

---

# 13. ATURAN TARGET

1. Reference adalah source of truth.
2. P1 adalah target boundary.
3. Setiap target harus dapat ditelusuri ke Reference evidence.
4. Dependency/library tidak otomatis dikecualikan.
5. Authorized deviation hanya yang ditetapkan `docs/bare.md`.
6. Target tidak boleh diperkecil karena kondisi implementasi saat ini.
7. P2 tidak boleh mengubah target menjadi status implementasi.
8. Jika evidence Reference tidak cukup, status harus UNKNOWN; jangan mengarang.

---

# 14. BATAS TAHAP 2

Tahap 2 menetapkan **skeleton target**.

Tahap 2 tidak menyatakan:

- UI parity;
- behavior parity;
- feature parity;
- runtime parity;
- build parity;
- backend parity;
- device verification.

Tahap berikutnya menggunakan target P2 ini sebagai baseline dan mengimplementasikan target tersebut sesuai roadmap.

---

# 15. P2 FREEZE

Target yang dibekukan:

**95 Activity + 10 Service + 10 Receiver + 4 Provider = 119 target Manifest components.**

Ditambah:

- Application target;
- Fragment target;
- Manifest structural target;
- resource structural target;
- native/library/external boundaries.

**Target P2 tidak boleh dikurangi berdasarkan implementasi yang sudah ada atau belum ada.**

---

## 16. SUMBER KEWENANGAN

1. `docs/bare.md`
2. `docs/PHASE_1_INVENTORY.md`
3. Reference Swift Backup 5.1.0 (620)

Jika terjadi konflik, Reference evidence + `docs/bare.md` + P1 target boundary menjadi acuan.

P2 adalah **target skeleton contract**, bukan work report.
