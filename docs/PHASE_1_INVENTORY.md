# BΛR☰ Tahap 1 — Inventaris Target Reference

## 1. Tujuan Tahap 1

Tahap 1 menetapkan **seluruh target rekonstruksi BΛR☰ terhadap Reference Swift Backup 5.1.0 (versionCode 620)**.

Dokumen ini adalah **dokumen inventaris target**, bukan laporan kemajuan implementasi.

### Aturan target

> **Setiap komponen yang dideklarasikan oleh Reference AndroidManifest adalah target BΛR☰.**

Tidak ada komponen yang dikeluarkan dari target hanya karena asalnya:

- dependency
- library
- AndroidX
- Google/Firebase
- vendor SDK
- native library
- compatibility module
- implementasi pihak ketiga

Asal implementasi Reference boleh dicatat untuk kebutuhan penelusuran forensik, tetapi **tidak mengurangi jumlah target BΛR☰**.

### Aturan kesetaraan

Target rekonstruksi:

**Reference → BΛR☰ = 1:1 + Authorized Deviations**

`Authorized Deviations` hanya boleh berasal dari ketentuan yang secara eksplisit diizinkan oleh `docs/bare.md`.

Jika suatu komponen Reference berasal dari dependency, native library, atau permukaan eksternal dan tidak dapat dibuat dengan implementasi yang sama persis, komponen tersebut **tetap merupakan target**. BΛR☰ harus menyediakan mekanisme yang mempertahankan kontrak yang relevan.

---

## 2. Sumber Kewenangan dan Acuan

- Reference: **Swift Backup 5.1.0**
- Version code: **620**
- Repository: `savie/BaRe`
- Branch: `rewrite`
- Dokumen kewenangan proyek: `docs/bare.md`
- Berkas Reference:
  - `/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`
  - `/mnt/data/5.1.0 (620).apk`
- Direktori `reference/`: cermin bukti Reference dan bersifat hanya-baca

Reference adalah sumber kebenaran untuk rekonstruksi. Reference tidak diubah.

---

## 3. Identitas Reference yang Diverifikasi

- Package: `org.swiftapps.swiftbackup`
- Application class: `org.swiftapps.swiftbackup.SwiftApp`
- Version name: `5.1.0`
- Version code: `620`
- minSdk: `26`
- targetSdk: `37`
- compileSdk manifest baseline: `37`

---

# 4. TARGET UTAMA ANDROIDMANIFEST

Reference mendeklarasikan **119 komponen AndroidManifest**.

| Jenis komponen | Reference | Target BΛR☰ |
|---|---:|---:|
| Activity | 95 | **95** |
| Service | 10 | **10** |
| Receiver | 10 | **10** |
| Provider | 4 | **4** |
| **TOTAL** | **119** | **119** |

**Semua 119 komponen adalah target BΛR☰.**

Angka pada tabel ini adalah **jumlah target**, bukan pembagian berdasarkan kepemilikan aplikasi dan dependency.

Tidak ada aturan yang mengubah komponen menjadi “bukan target” hanya karena komponen tersebut berasal dari library atau dependency.

---

# 5. TARGET ACTIVITY — 95 / 95

Semua nama berikut adalah target BΛR☰ tanpa pengecualian berdasarkan asal implementasinya.

1. `org.swiftapps.swiftbackup.intro.IntroActivity`
2. `org.swiftapps.swiftbackup.home.HomeActivity`
3. `org.swiftapps.swiftbackup.home.search.HomeSearchActivity`
4. `org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity`
5. `org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity`
6. `org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity`
7. `org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity`
8. `org.swiftapps.swiftbackup.detail.DetailActivity`
9. `org.swiftapps.swiftbackup.apkshare.ApkImportActivity`
10. `org.swiftapps.swiftbackup.appinfo.AppInfoActivity`
11. `org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity`
12. `org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity`
13. `org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity`
14. `org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity`
15. `org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity`
16. `org.swiftapps.swiftbackup.settings.SettingsActivity`
17. `org.swiftapps.swiftbackup.blacklist.BlacklistActivity`
18. `org.swiftapps.swiftbackup.notice.NoticeListActivity`
19. `org.swiftapps.swiftbackup.settings.SettingsDetailActivity`
20. `org.swiftapps.swiftbackup.settings.AppSwipeActionsActivity`
21. `org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity`
22. `org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity`
23. `org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity`
24. `org.swiftapps.swiftbackup.locale.LocaleActivity`
25. `org.swiftapps.swiftbackup.contributor.ContributorRegActivity`
26. `org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity`
27. `org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity`
28. `org.swiftapps.swiftbackup.manage.ManageSpaceActivity`
29. `org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity`
30. `org.swiftapps.swiftbackup.premium.PremiumActivity`
31. `org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity`
32. `org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity`
33. `org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity`
34. `org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity`
35. `org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity`
36. `org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity`
37. `org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity`
38. `org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity`
39. `org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity`
40. `org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity`
41. `org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity`
42. `org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity`
43. `org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity`
44. `org.swiftapps.swiftbackup.folders.ui.FolderEditActivity`
45. `org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity`
46. `org.swiftapps.swiftbackup.slog.SLogActivity`
47. `org.swiftapps.swiftbackup.wifi.WifiActivity`
48. `org.swiftapps.swiftbackup.walls.WallsDashActivity`
49. `org.swiftapps.swiftbackup.walls.WallsManageActivity`
50. `org.swiftapps.swiftbackup.walls.WallApplyActivity`
51. `org.swiftapps.swiftbackup.notice.NoticeViewActivity`
52. `org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity`
53. `org.swiftapps.swiftbackup.password.PasswordStrategyActivity`
54. `org.swiftapps.swiftbackup.password.UserPasswordActivity`
55. `org.swiftapps.swiftbackup.settings.MultipleBackupsActivity`
56. `org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity`
57. `org.swiftapps.swiftbackup.tasks.ui.TaskActivity`
58. `org.swiftapps.swiftbackup.tasks.PreconditionsActivity`
59. `org.swiftapps.swiftbackup.settings.LicensesActivity`
60. `org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity`
61. `org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity`
62. `org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity`
63. `org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity`
64. `org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity`
65. `org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity`
66. `org.swiftapps.swiftbackup.cloud.connect.YandexSignInActivity`
67. `org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity`
68. `org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity`
69. `org.swiftapps.swiftbackup.cloud.connect.CsActivity`
70. `org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity`
71. `org.swiftapps.swiftbackup.messagescalls.defaulthandler.ComposeSmsActivity`
72. `net.openid.appauth.RedirectUriReceiverActivity`
73. `com.gun0912.tedpermission.TedPermissionActivity`
74. `com.microsoft.identity.client.BrowserTabActivity`
75. `com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity`
76. `com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity`
77. `com.microsoft.identity.client.helper.BrokerHelperActivity`
78. `com.microsoft.identity.client.CurrentTaskBrowserTabActivity`
79. `com.microsoft.identity.common.internal.providers.oauth2.SilentAuthorizationActivity`
80. `com.microsoft.identity.common.internal.broker.BrokerActivity`
81. `com.microsoft.identity.common.internal.broker.InstallCertActivityLauncher`
82. `com.google.firebase.auth.internal.GenericIdpActivity`
83. `com.google.firebase.auth.internal.RecaptchaActivity`
84. `androidx.credentials.playservices.controllers.identityauth.HiddenActivity`
85. `androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity`
86. `com.google.android.gms.auth.api.signin.internal.SignInHubActivity`
87. `net.openid.appauth.AuthorizationManagementActivity`
88. `com.android.billingclient.api.ProxyBillingActivity`
89. `com.android.billingclient.api.ProxyBillingActivityV2`
90. `com.google.android.gms.common.api.GoogleApiActivity`
91. `com.pcloud.sdk.AuthorizationActivity`
92. `com.pcloud.sdk.CustomTabActivity`
93. `com.yubico.yubikit.android.ui.OtpActivity`
94. `com.yubico.yubikit.android.ui.YubiKeyPromptActivity`
95. `com.google.android.play.core.common.PlayCoreDialogWrapperActivity`

---

# 6. TARGET SERVICE — 10 / 10

1. `org.swiftapps.swiftbackup.tasks.TaskService`
2. `org.swiftapps.swiftbackup.home.schedule.ScheduleService`
3. `org.swiftapps.swiftbackup.messagescalls.defaulthandler.HeadlessSmsSendService`
4. `com.google.firebase.components.ComponentDiscoveryService`
5. `androidx.credentials.playservices.CredentialProviderMetadataHolder`
6. `com.google.android.gms.auth.api.signin.RevocationBoundService`
7. `com.google.firebase.sessions.SessionLifecycleService`
8. `androidx.room.MultiInstanceInvalidationService`
9. `com.google.android.datatransport.runtime.backends.TransportBackendDiscovery`
10. `com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService`

---

# 7. TARGET RECEIVER — 10 / 10

1. `org.swiftapps.swiftbackup.jobs.AlarmReceiver`
2. `org.swiftapps.swiftbackup.common.LocaleChangedReceiver`
3. `org.swiftapps.swiftbackup.jobs.BootReceiver`
4. `org.swiftapps.swiftbackup.tasks.NotificationTaskCancelReceiver`
5. `org.swiftapps.swiftbackup.common.PackageInstallResultReceiver`
6. `org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver`
7. `org.swiftapps.swiftbackup.messagescalls.defaulthandler.SmsReceiver`
8. `org.swiftapps.swiftbackup.messagescalls.defaulthandler.MmsReceiver`
9. `androidx.profileinstaller.ProfileInstallReceiver`
10. `com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver`

---

# 8. TARGET PROVIDER — 4 / 4

1. `androidx.core.content.FileProvider`
2. `rikka.shizuku.ShizukuProvider`
3. `com.gun0912.tedpermission.provider.TedPermissionProvider`
4. `androidx.startup.InitializationProvider`

---

# 9. PERMUKAAN NATIVE / LIBRARY / EKSTERNAL

Permukaan native dan library termasuk dalam batas target Tahap 1 apabila Reference menggunakannya sebagai bagian dari kontrak aplikasi.

Contoh:

- SBA native runtime
- native `.so` ABI payload
- external OAuth/identity surfaces
- billing surfaces
- cloud SDK surfaces
- Shizuku surfaces
- AndroidX provider/service/receiver/activity surfaces

Klasifikasi sebagai dependency/library hanya menjelaskan **asal implementasi Reference**.

Klasifikasi tersebut **tidak mengubah jumlah target** dan tidak boleh digunakan untuk menghapus komponen dari target rekonstruksi.

Untuk permukaan native/library, target dapat diwujudkan melalui:
- direct implementation
- compatibility wrapper
- preserved ABI/API boundary
- integrated dependency
- equivalent BaRe-owned implementation

Pemilihannya harus berdasarkan bukti Reference dan kontrak yang harus dipertahankan.

---

# 10. BASELINE RESOURCE REFERENCE

Inventaris resource Reference:

| Resource | Count |
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

Resource yang berasal dari library tetap diperlakukan sesuai kontrak Reference dan tidak otomatis dikeluarkan dari analisis kesetaraan.

---

# 11. BASELINE ANDROIDMANIFEST

Baseline aplikasi Reference:

- application class: `org.swiftapps.swiftbackup.SwiftApp`
- theme: `@style/SwiftTheme`
- launcher: `org.swiftapps.swiftbackup.intro.IntroActivity`
- primary post-intro activity: `org.swiftapps.swiftbackup.home.HomeActivity`
- `allowBackup=false`
- `allowClearUserData=false`
- `largeHeap=true`
- `requestLegacyExternalStorage=true`
- `supportsRtl=true`
- `enableOnBackInvokedCallback=true`

Permission, intent, provider authority, service contract, receiver filter, activity export state, dan atribut AndroidManifest lainnya merupakan bagian dari target kesetaraan Reference.

---

# 12. BASELINE YANG DIIZINKAN BΛR☰

Penyimpangan tingkat proyek yang diizinkan tetap hanya ditentukan oleh `docs/bare.md`, termasuk:

- branding: Swift Backup → BΛR☰ / BaRe
- BaRe package/application identity where explicitly authorized
- Premium entitlement gratis
- Supabase as BaRe backend where required
- Java implementation
- Android Views/XML
- other explicitly documented handoff deviations

Penyimpangan yang diizinkan tidak boleh digunakan untuk mengurangi jumlah target AndroidManifest Reference.

---

# 13. GERBANG TAHAP 1

### STATUS: **BASELINE TARGET DIKUALIFIKASI ULANG**

Target Tahap 1 ditetapkan sebagai berikut:

**95 Activities + 10 Services + 10 Receivers + 4 Providers = 119 Reference manifest components → 119 BΛR☰ target components**

Tidak ada jumlah target alternatif.

Tidak ada pengurangan berdasarkan kepemilikan.

Tidak ada pengecualian dependency/library.

Tidak ada aturan “library jadi bukan target”.

Tahap 1 hanya menetapkan **apa yang wajib ada sebagai target rekonstruksi**. Tahap 1 belum menyatakan kesetaraan implementasi, kesetaraan runtime, kesetaraan build, atau kesetaraan fitur.

Tahap 2 dan seluruh tahap berikutnya wajib menggunakan **batas target 119 komponen** ini.
