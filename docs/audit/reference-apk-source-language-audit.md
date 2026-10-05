# Reference APK Source Language Audit

## Tujuan

Dokumen ini menjadi dasar penentuan bahasa implementasi BaRe agar mengikuti bahasa yang dapat dibuktikan dari Swift Backup 5.1.0 (620). Audit dilakukan terhadap seluruh class pada APK Reference, bukan hanya `org/swiftapps/swiftbackup`.

## Canonical

- Reference: Swift Backup 5.1.0 / versionCode 620.
- APK: `5.1.0 (620).apk`.
- Scope: seluruh class pada `classes.dex` dan `classes2.dex`.
- Evidence utama: DEX/Smali hasil ekstraksi APK; hasil JADX dipakai sebagai evidence pendukung.
- Hasil `.java` dari JADX tidak dianggap sebagai bukti source asli Java.
- Klasifikasi bahasa yang tidak dapat dibuktikan diberi `UNKNOWN`.

## Hasil Audit

Total class yang terdeteksi: **14.217**.

| Ownership | Class | Kotlin strong evidence |
|---|---:|---:|
| Other | 11.090 | 0 |
| Third-party Library | 936 | 0 |
| Google/Android Library | 920 | 0 |
| Microsoft Library | 751 | 0 |
| Swift Backup | 346 | **127** |
| AndroidX | 162 | 0 |
| Android/Java Platform | 11 | 0 |
| Kotlin Runtime/Coroutine | 1 | 1 |

### Swift Backup

Audit diperdalam terhadap **346 class** pada namespace `org.swiftapps.swiftbackup`, satu per satu. Setiap class dicatat eksplisit agar hasil audit dapat ditelusuri dan dipakai sebagai dasar keputusan bahasa BaRe.

| No. Reference | Class | Classifier | Evidence |
|---:|---|---|---|
| 9202 | `org.swiftapps.swiftbackup.SwiftApp` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9203 | `org.swiftapps.swiftbackup.SwiftApp$Companion` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9204 | `org.swiftapps.swiftbackup.anonymous.MFirebaseUser` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9205 | `org.swiftapps.swiftbackup.apkreader.ApkManifestParser` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9206 | `org.swiftapps.swiftbackup.apkreader.ApkManifestParser$Companion` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9207 | `org.swiftapps.swiftbackup.apkshare.ApkImportActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9208 | `org.swiftapps.swiftbackup.apkshare.ApkImportActivity$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9209 | `org.swiftapps.swiftbackup.apkshare.ApkSharePackageMetadata` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9210 | `org.swiftapps.swiftbackup.apkshare.ApkSharePackageMetadata$FileMetadata` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9211 | `org.swiftapps.swiftbackup.apkshare.SaiApksMetadata` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9212 | `org.swiftapps.swiftbackup.apkshare.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9213 | `org.swiftapps.swiftbackup.appconfigs.data.Config` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9214 | `org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9215 | `org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings$ApplyData` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9216 | `org.swiftapps.swiftbackup.appconfigs.data.ConfigsData` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9217 | `org.swiftapps.swiftbackup.appconfigs.data.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9218 | `org.swiftapps.swiftbackup.appconfigs.data.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9219 | `org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9220 | `org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9221 | `org.swiftapps.swiftbackup.appconfigs.edit.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9222 | `org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9223 | `org.swiftapps.swiftbackup.appconfigs.list.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9224 | `org.swiftapps.swiftbackup.appconfigs.list.a$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9225 | `org.swiftapps.swiftbackup.appconfigs.list.a$b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9226 | `org.swiftapps.swiftbackup.appconfigs.list.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9227 | `org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9228 | `org.swiftapps.swiftbackup.appinfo.AppInfoActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9229 | `org.swiftapps.swiftbackup.appslist.data.FavoriteApp` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9230 | `org.swiftapps.swiftbackup.appslist.data.FavoriteAppsRepo$FavoritesWrapper` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9231 | `org.swiftapps.swiftbackup.appslist.ui.AppItemContentLayout` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9232 | `org.swiftapps.swiftbackup.appslist.ui.AppListItemLayout` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9233 | `org.swiftapps.swiftbackup.appslist.ui.AppRowLabelsView` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9234 | `org.swiftapps.swiftbackup.appslist.ui.AppSwipeActionRevealLayout` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9235 | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9236 | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9237 | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelledApp` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9238 | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9239 | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9240 | `org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9241 | `org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9242 | `org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9243 | `org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9244 | `org.swiftapps.swiftbackup.apptasks.AppsWorkingDir` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9245 | `org.swiftapps.swiftbackup.apptasks.install.InstallerSourceProxy` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9246 | `org.swiftapps.swiftbackup.apptasks.notifications.NotificationPolicyProxy` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9247 | `org.swiftapps.swiftbackup.apptasks.notifications.NotificationPolicyProxy$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9248 | `org.swiftapps.swiftbackup.apptasks.notifications.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9249 | `org.swiftapps.swiftbackup.apptasks.notifications.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9250 | `org.swiftapps.swiftbackup.apptasks.notifications.c` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9251 | `org.swiftapps.swiftbackup.apptasks.sba.SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9252 | `org.swiftapps.swiftbackup.apptasks.sba.a` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9253 | `org.swiftapps.swiftbackup.blacklist.BlacklistActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9254 | `org.swiftapps.swiftbackup.blacklist.data.BlacklistApp` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9255 | `org.swiftapps.swiftbackup.blacklist.data.BlacklistData` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9256 | `org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9257 | `org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9258 | `org.swiftapps.swiftbackup.cloud.connect.CsActivity` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9259 | `org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9260 | `org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9261 | `org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9262 | `org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9263 | `org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9264 | `org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9265 | `org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9266 | `org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9267 | `org.swiftapps.swiftbackup.cloud.connect.YandexSignInActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9268 | `org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9269 | `org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectLayoutManager` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9270 | `org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9271 | `org.swiftapps.swiftbackup.cloud.helpers.BoxRecentUploadCache$CachedBoxFile` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9272 | `org.swiftapps.swiftbackup.cloud.helpers.BoxRecentUploadCache$Data` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9273 | `org.swiftapps.swiftbackup.cloud.model.CloudResult` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9274 | `org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9275 | `org.swiftapps.swiftbackup.cloud.orphans.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9276 | `org.swiftapps.swiftbackup.cloud.orphans.a$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9277 | `org.swiftapps.swiftbackup.cloud.orphans.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9278 | `org.swiftapps.swiftbackup.cloud.orphans.c` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9279 | `org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9280 | `org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials$CloudPrivateKey` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9281 | `org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials$CloudServiceMetadata` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9282 | `org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9283 | `org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult$Failed` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9284 | `org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult$InvalidCredentials` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9285 | `org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult$Success` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9286 | `org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult$TempConnectionError` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9287 | `org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult$UnknownError` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9288 | `org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult$UnknownHostKey` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9289 | `org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult$UntrustedCertificate` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9290 | `org.swiftapps.swiftbackup.cloud.protocols.CloudServiceId` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9291 | `org.swiftapps.swiftbackup.cloud.protocols.TokenCredentials` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9292 | `org.swiftapps.swiftbackup.cloud.protocols.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9293 | `org.swiftapps.swiftbackup.cloud.protocols.filen.FilenCredentials` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9294 | `org.swiftapps.swiftbackup.cloud.protocols.filen.FilenItemCodec$DirectoryMetadata` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9295 | `org.swiftapps.swiftbackup.cloud.protocols.filen.FilenItemCodec$FileMetadata` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9296 | `org.swiftapps.swiftbackup.cloud.protocols.filen.FilenSession` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9297 | `org.swiftapps.swiftbackup.cloud.protocols.filen.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9298 | `org.swiftapps.swiftbackup.cloud.protocols.filen.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9299 | `org.swiftapps.swiftbackup.cloud.protocols.filen.c` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9300 | `org.swiftapps.swiftbackup.cloud.protocols.mega.MegaLoginResult` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9301 | `org.swiftapps.swiftbackup.cloud.protocols.mega.MegaLoginResult$Failed` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9302 | `org.swiftapps.swiftbackup.cloud.protocols.mega.MegaLoginResult$MultiFactorAuthRequired` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9303 | `org.swiftapps.swiftbackup.cloud.protocols.mega.MegaLoginResult$Success` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9304 | `org.swiftapps.swiftbackup.cloud.protocols.mega.lite.SwiftMegaSavedSession` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9305 | `org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9306 | `org.swiftapps.swiftbackup.common.Const` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9307 | `org.swiftapps.swiftbackup.common.GsonHelper$UriAdapter` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9308 | `org.swiftapps.swiftbackup.common.IgnoredException` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9309 | `org.swiftapps.swiftbackup.common.LocaleChangedReceiver` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9310 | `org.swiftapps.swiftbackup.common.MyAppGlideModule` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9311 | `org.swiftapps.swiftbackup.common.NotificationHelper` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9312 | `org.swiftapps.swiftbackup.common.PackageInstallResultReceiver` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9313 | `org.swiftapps.swiftbackup.common.V` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9314 | `org.swiftapps.swiftbackup.common.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9315 | `org.swiftapps.swiftbackup.compress.Packer` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9316 | `org.swiftapps.swiftbackup.compress.compressor.MultiCompressor$CompressedFileMetadata` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9317 | `org.swiftapps.swiftbackup.compress.compressor.MultiCompressor$Type` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9318 | `org.swiftapps.swiftbackup.contributor.ContributorRegActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9319 | `org.swiftapps.swiftbackup.contributor.ContributorRegistration` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9320 | `org.swiftapps.swiftbackup.contributor.ContributorRegistration$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9321 | `org.swiftapps.swiftbackup.contributor.a` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9322 | `org.swiftapps.swiftbackup.contributor.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9323 | `org.swiftapps.swiftbackup.contributor.c` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9324 | `org.swiftapps.swiftbackup.database.MDatabase` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9325 | `org.swiftapps.swiftbackup.database.MDatabase_Impl` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9326 | `org.swiftapps.swiftbackup.detail.DetailActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9327 | `org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9328 | `org.swiftapps.swiftbackup.folders.data.BackupInfo` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9329 | `org.swiftapps.swiftbackup.folders.data.BackupResult` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9330 | `org.swiftapps.swiftbackup.folders.data.BackupResult$Failure` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9331 | `org.swiftapps.swiftbackup.folders.data.BackupResult$NoChange` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9332 | `org.swiftapps.swiftbackup.folders.data.BackupResult$Success` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9333 | `org.swiftapps.swiftbackup.folders.data.BackupStats` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9334 | `org.swiftapps.swiftbackup.folders.data.BackupType` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9335 | `org.swiftapps.swiftbackup.folders.data.ChainValidationResult` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9336 | `org.swiftapps.swiftbackup.folders.data.Changes` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9337 | `org.swiftapps.swiftbackup.folders.data.FileEntry` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9338 | `org.swiftapps.swiftbackup.folders.data.FolderBackup$BaseBackup` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9339 | `org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9340 | `org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9341 | `org.swiftapps.swiftbackup.folders.data.FolderItem` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9342 | `org.swiftapps.swiftbackup.folders.data.FolderMetadata` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9343 | `org.swiftapps.swiftbackup.folders.data.FolderMetadata$BaseBackup` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9344 | `org.swiftapps.swiftbackup.folders.data.FolderMetadata$IncrementalBackup` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9345 | `org.swiftapps.swiftbackup.folders.data.FolderState` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9346 | `org.swiftapps.swiftbackup.folders.data.Manifest` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9347 | `org.swiftapps.swiftbackup.folders.data.ManifestInfo` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9348 | `org.swiftapps.swiftbackup.folders.data.RestoreResult` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9349 | `org.swiftapps.swiftbackup.folders.data.a` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9350 | `org.swiftapps.swiftbackup.folders.data.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9351 | `org.swiftapps.swiftbackup.folders.data.c` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9352 | `org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9353 | `org.swiftapps.swiftbackup.folders.ui.FolderEditActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9354 | `org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9355 | `org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9356 | `org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9357 | `org.swiftapps.swiftbackup.home.HomeActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9358 | `org.swiftapps.swiftbackup.home.cloud.CloudBackupTag` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9359 | `org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9360 | `org.swiftapps.swiftbackup.home.schedule.ScheduleService` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9361 | `org.swiftapps.swiftbackup.home.schedule.ScheduleService$RunMode` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9362 | `org.swiftapps.swiftbackup.home.schedule.ScheduleService$RunMode$MultipleSchedules` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9363 | `org.swiftapps.swiftbackup.home.schedule.ScheduleService$RunMode$Schedules` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9364 | `org.swiftapps.swiftbackup.home.schedule.ScheduleService$RunMode$SingleSchedule` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9365 | `org.swiftapps.swiftbackup.home.schedule.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9366 | `org.swiftapps.swiftbackup.home.schedule.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9367 | `org.swiftapps.swiftbackup.home.schedule.c` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9368 | `org.swiftapps.swiftbackup.home.schedule.d` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9369 | `org.swiftapps.swiftbackup.home.schedule.data.GlobalScheduleError` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9370 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleData` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9371 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleData$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9372 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9373 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem$AppConfig` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9374 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem$AppsLabels` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9375 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem$AppsQuickActions` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9376 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem$AppsQuickActions$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9377 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem$CallLogs` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9378 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem$Folders` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9379 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem$Messages` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9380 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem$Type` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9381 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem$Wallpapers` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9382 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem$Wifi` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9383 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9384 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails$BlockedLowBattery` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9385 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails$BlockedNotCharging` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9386 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails$BlockedWifiPrivilegedAccess` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9387 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails$FailedWifiDeviceRead` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9388 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails$NeverRun` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9389 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails$SkippedUploadCloudNotConnected` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9390 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails$SkippedUploadNetworkError` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9391 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails$SkippedUploadSyncOptionsError` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9392 | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails$Started` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9393 | `org.swiftapps.swiftbackup.home.schedule.data.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9394 | `org.swiftapps.swiftbackup.home.schedule.data.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9395 | `org.swiftapps.swiftbackup.home.schedule.data.c` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9396 | `org.swiftapps.swiftbackup.home.schedule.data.d` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9397 | `org.swiftapps.swiftbackup.home.schedule.data.e` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9398 | `org.swiftapps.swiftbackup.home.schedule.data.f` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9399 | `org.swiftapps.swiftbackup.home.schedule.data.g` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9400 | `org.swiftapps.swiftbackup.home.schedule.data.h` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9401 | `org.swiftapps.swiftbackup.home.schedule.data.i` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9402 | `org.swiftapps.swiftbackup.home.schedule.data.j` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9403 | `org.swiftapps.swiftbackup.home.schedule.data.k` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9404 | `org.swiftapps.swiftbackup.home.schedule.data.l` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9405 | `org.swiftapps.swiftbackup.home.schedule.data.m` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9406 | `org.swiftapps.swiftbackup.home.schedule.data.n` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9407 | `org.swiftapps.swiftbackup.home.schedule.data.o` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9408 | `org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9409 | `org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9410 | `org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9411 | `org.swiftapps.swiftbackup.home.search.HomeSearchActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9412 | `org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9413 | `org.swiftapps.swiftbackup.intro.IntroActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9414 | `org.swiftapps.swiftbackup.intro.IntroActivity$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9415 | `org.swiftapps.swiftbackup.intro.IntroBenefitCardView` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9416 | `org.swiftapps.swiftbackup.intro.IntroPermissionCardView` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9417 | `org.swiftapps.swiftbackup.intro.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9418 | `org.swiftapps.swiftbackup.intro.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9419 | `org.swiftapps.swiftbackup.intro.c` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9420 | `org.swiftapps.swiftbackup.intro.d` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9421 | `org.swiftapps.swiftbackup.intro.d$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9422 | `org.swiftapps.swiftbackup.intro.d$b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9423 | `org.swiftapps.swiftbackup.intro.e` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9424 | `org.swiftapps.swiftbackup.jobs.AlarmReceiver` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9425 | `org.swiftapps.swiftbackup.jobs.BootReceiver` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9426 | `org.swiftapps.swiftbackup.locale.LocaleActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9427 | `org.swiftapps.swiftbackup.manage.ManageSpaceActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9428 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9429 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9430 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9431 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9432 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.b$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9433 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.c` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9434 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.d` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9435 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.e` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9436 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.f` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9437 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.f$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9438 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.g` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9439 | `org.swiftapps.swiftbackup.messagescalls.backuprestore.h` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9440 | `org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9441 | `org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9442 | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9443 | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9444 | `org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9445 | `org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9446 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.ComposeSmsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9447 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.HeadlessSmsSendService` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9448 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.MmsReceiver` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9449 | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.SmsReceiver` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9450 | `org.swiftapps.swiftbackup.model.StorageInfoLocal` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9451 | `org.swiftapps.swiftbackup.model.StorageInfoLocal$Success` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9452 | `org.swiftapps.swiftbackup.model.StorageInfoLocal$Success$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9453 | `org.swiftapps.swiftbackup.model.StorageInfoLocal$a` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9454 | `org.swiftapps.swiftbackup.model.StorageInfoLocal$b` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9455 | `org.swiftapps.swiftbackup.model.StorageInfoLocal$c` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9456 | `org.swiftapps.swiftbackup.model.app.AppCloudBackup` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9457 | `org.swiftapps.swiftbackup.model.app.AppCloudBackup$a` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9458 | `org.swiftapps.swiftbackup.model.app.AppCloudBackup$b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9459 | `org.swiftapps.swiftbackup.model.app.AppCloudBackups` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9460 | `org.swiftapps.swiftbackup.model.app.AppCloudBackups$a` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9461 | `org.swiftapps.swiftbackup.model.app.AppCloudBackups$a$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9462 | `org.swiftapps.swiftbackup.model.app.AppCloudBackups$a$b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9463 | `org.swiftapps.swiftbackup.model.app.AppCloudBackups$b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9464 | `org.swiftapps.swiftbackup.model.app.AppSpecialDataPayload` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9465 | `org.swiftapps.swiftbackup.model.app.AppSpecialDataPayload$a` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9466 | `org.swiftapps.swiftbackup.model.app.CloudMetadata` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9467 | `org.swiftapps.swiftbackup.model.app.CloudMetadata$a` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9468 | `org.swiftapps.swiftbackup.model.app.CloudMetadata$b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9469 | `org.swiftapps.swiftbackup.model.app.LocalMetadata` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9470 | `org.swiftapps.swiftbackup.model.app.LocalMetadata$a` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9471 | `org.swiftapps.swiftbackup.model.app.LocalMetadata$b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9472 | `org.swiftapps.swiftbackup.model.firebase.AppSettings` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9473 | `org.swiftapps.swiftbackup.model.firebase.AppSettings$a` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9474 | `org.swiftapps.swiftbackup.model.firebase.WallsCloudDetails` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9475 | `org.swiftapps.swiftbackup.model.firebase.WifiCloudDetails` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9476 | `org.swiftapps.swiftbackup.model.provider.CallLogItem` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9477 | `org.swiftapps.swiftbackup.model.provider.CallLogItem$a` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9478 | `org.swiftapps.swiftbackup.notice.NoticeItem` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9479 | `org.swiftapps.swiftbackup.notice.NoticeItem$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9480 | `org.swiftapps.swiftbackup.notice.NoticeListActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9481 | `org.swiftapps.swiftbackup.notice.NoticeViewActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9482 | `org.swiftapps.swiftbackup.password.PasswordStrategyActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9483 | `org.swiftapps.swiftbackup.password.UserPasswordActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9484 | `org.swiftapps.swiftbackup.premium.NoGmsPremium` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9485 | `org.swiftapps.swiftbackup.premium.PremiumActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9486 | `org.swiftapps.swiftbackup.settings.AppSwipeActionsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9487 | `org.swiftapps.swiftbackup.settings.FolderBackupStrategy` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9488 | `org.swiftapps.swiftbackup.settings.FolderRestoreStrategy` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9489 | `org.swiftapps.swiftbackup.settings.LicensesActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9490 | `org.swiftapps.swiftbackup.settings.MSwitchPreference` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9491 | `org.swiftapps.swiftbackup.settings.MultipleBackupStrategy` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9492 | `org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$NewBackupCondition` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9493 | `org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$Representation` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9494 | `org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$Representation$ConditionalBackups` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9495 | `org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$Representation$DatedBackups` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9496 | `org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$Representation$SingleBackup` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9497 | `org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$Type` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9498 | `org.swiftapps.swiftbackup.settings.MultipleBackupsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9499 | `org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9500 | `org.swiftapps.swiftbackup.settings.SettingsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9501 | `org.swiftapps.swiftbackup.settings.SettingsDetailActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9502 | `org.swiftapps.swiftbackup.settings.SwiftBackupSettingsHelper$SettingsData` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9503 | `org.swiftapps.swiftbackup.settings.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9504 | `org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9505 | `org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9506 | `org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9507 | `org.swiftapps.swiftbackup.settings.b` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9508 | `org.swiftapps.swiftbackup.settings.c` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9509 | `org.swiftapps.swiftbackup.settings.d` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9510 | `org.swiftapps.swiftbackup.settings.e` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9511 | `org.swiftapps.swiftbackup.settings.f` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9512 | `org.swiftapps.swiftbackup.settings.g` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9513 | `org.swiftapps.swiftbackup.settings.h` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9514 | `org.swiftapps.swiftbackup.settings.i` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9515 | `org.swiftapps.swiftbackup.settings.j` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9516 | `org.swiftapps.swiftbackup.settings.k` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9517 | `org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9518 | `org.swiftapps.swiftbackup.slog.SLogActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9519 | `org.swiftapps.swiftbackup.tasks.NotificationTaskCancelReceiver` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9520 | `org.swiftapps.swiftbackup.tasks.PreconditionsActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9521 | `org.swiftapps.swiftbackup.tasks.TaskManager$ErrorSummary` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9522 | `org.swiftapps.swiftbackup.tasks.TaskService` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9523 | `org.swiftapps.swiftbackup.tasks.fgs.DataSyncFgsRuntimeLedger$Entry` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9524 | `org.swiftapps.swiftbackup.tasks.fgs.DataSyncFgsRuntimeLedger$listType$1` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9525 | `org.swiftapps.swiftbackup.tasks.model.SyncOption` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9526 | `org.swiftapps.swiftbackup.tasks.ui.TaskActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9527 | `org.swiftapps.swiftbackup.views.LocaleTextView` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9528 | `org.swiftapps.swiftbackup.views.MAppBarLayout` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9529 | `org.swiftapps.swiftbackup.views.MCheckBox` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9530 | `org.swiftapps.swiftbackup.views.NoSwipeViewPager` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9531 | `org.swiftapps.swiftbackup.views.PreCachingGridLayoutManager` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9532 | `org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9533 | `org.swiftapps.swiftbackup.views.ProviderChipGroup` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9534 | `org.swiftapps.swiftbackup.views.QuickRecyclerView` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9535 | `org.swiftapps.swiftbackup.views.SpeedyLinearLayoutManager` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9536 | `org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9537 | `org.swiftapps.swiftbackup.views.SwiftListItemCardView` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9538 | `org.swiftapps.swiftbackup.views.SwiftSegmentConstraintLayout` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9539 | `org.swiftapps.swiftbackup.views.SwiftSegmentLinearLayout` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9540 | `org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9541 | `org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup$a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9542 | `org.swiftapps.swiftbackup.views.a` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9543 | `org.swiftapps.swiftbackup.walls.WallApplyActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9544 | `org.swiftapps.swiftbackup.walls.WallsDashActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9545 | `org.swiftapps.swiftbackup.walls.WallsManageActivity` | UNKNOWN | No decisive Kotlin-origin marker found |
| 9546 | `org.swiftapps.swiftbackup.wifi.PasswordInfo` | Kotlin (strong evidence) | DefaultConstructorMarker |
| 9547 | `org.swiftapps.swiftbackup.wifi.WifiActivity` | UNKNOWN | No decisive Kotlin-origin marker found |

**Ringkasan 346 class:**
- **Kotlin (strong evidence): 127 class**
- **Java (proven): 0 class**
- **UNKNOWN: 219 class**
- Tidak ada class yang diklasifikasikan Java hanya karena hasil JADX berupa `.java`.

**127 class Kotlin** ditandai langsung pada kolom `Classifier` di ledger di atas. Evidence utama yang tercatat per class saat ini adalah `DefaultConstructorMarker`; classifier tidak didasarkan hanya pada nama file hasil decompile.

**219 class UNKNOWN** juga ditampilkan satu per satu. UNKNOWN berarti evidence bytecode yang tersedia belum cukup untuk membedakan Java-origin dan Kotlin-origin secara aman.

## Evidence Kotlin

Evidence compiler/runtime yang dipakai untuk klasifikasi kuat antara lain:

- `kotlin/jvm/internal/DefaultConstructorMarker`
- referensi `kotlin/coroutines/*`
- referensi `kotlinx/coroutines/*`
- pola synthetic class yang konsisten dengan hasil compiler Kotlin, bila didukung evidence lain.

`DefaultConstructorMarker` ditemukan pada **306 class** di seluruh APK dan **127 class** di namespace Swift Backup.

## Java vs Kotlin

Audit ini **tidak mengubah semua class tanpa marker Kotlin menjadi Java**.

Alasannya: setelah compilation menjadi DEX, source Java dan Kotlin sama-sama kehilangan source asli. Tidak adanya `DefaultConstructorMarker` bukan bukti cukup bahwa class tersebut ditulis dengan Java.

Karena itu:

- `Kotlin (strong evidence)` → boleh dan sebaiknya dipertimbangkan sebagai Kotlin pada BaRe.
- `UNKNOWN` → belum boleh dipaksakan menjadi Java atau Kotlin.
- Class yang sudah ada di BaRe sebagai Java **tidak perlu mass-convert**.
- Target reconstruction berikutnya dapat memakai Java atau Kotlin berdasarkan evidence class tersebut.

## Keputusan untuk BaRe

Constraint **Java-only** tidak lagi dipakai sebagai aturan absolut.

Aturan reconstruction menjadi:

> **Java/Kotlin diperbolehkan; bahasa implementasi mengikuti evidence Reference dan dipilih untuk faithful reconstruction.**

Audit ini hanya menentukan bahasa implementasi. Audit ini tidak membuktikan semantic equivalence, dependency contract, build compatibility, atau runtime parity.

## Status

**AUDIT COMPLETE — LANGUAGE DECISION BASIS ESTABLISHED**

Class yang masih `UNKNOWN` harus tetap diperlakukan sebagai UNKNOWN sampai evidence tambahan ditemukan.
