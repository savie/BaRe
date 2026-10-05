# BaRe Actual Class Inventory

## Tujuan

Dokumen ini mencatat seluruh class source yang saat ini benar-benar ada di BaRe pada branch `rewrite`. Inventory ini menggambarkan kondisi source saat ini, bukan target Reference dan bukan penilaian semantic equivalence.

## Canonical

- Repository: `savie/BaRe`
- Branch: `rewrite`
- Scope: `app/src/main/java/**`
- Source language saat ini: seluruh file class yang terdeteksi adalah `Java`.
- `Kotlin` source files: 0.
- Inventory dibuat dari Git tree aktual branch `rewrite`.

## Hasil Audit

| Metric | Count |
|---|---:|
| Total source files `.java` / `.kt` | **262** |
| Java source files | **262** |
| Kotlin source files | **0** |

> Catatan: angka ini adalah **source file/class**, bukan jumlah seluruh class hasil compilation. Nested/synthetic class yang muncul setelah compiler tidak dihitung sebagai source file terpisah kecuali memang memiliki file source sendiri.

## Complete Class Inventory

| No. | Source Path | Fully Qualified Class | Current Language |
|---:|---|---|---|
| 1 | `app/src/main/java/swiftapps/filesystem/File$FileType.java` | `org.swiftapps.filesystem.File$FileType` | Java |
| 2 | `app/src/main/java/swiftapps/filesystem/RandomAccessFileWriter.java` | `org.swiftapps.filesystem.RandomAccessFileWriter` | Java |
| 3 | `app/src/main/java/swiftapps/rootservice/ShellHelper.java` | `org.swiftapps.rootservice.ShellHelper` | Java |
| 4 | `app/src/main/java/swiftapps/rootservice/ShizukuAidlService.java` | `org.swiftapps.rootservice.ShizukuAidlService` | Java |
| 5 | `app/src/main/java/swiftapps/swiftbackup/SwiftApp.java` | `org.swiftapps.swiftbackup.SwiftApp` | Java |
| 6 | `app/src/main/java/swiftapps/swiftbackup/anonymous/MFirebaseUser.java` | `org.swiftapps.swiftbackup.anonymous.MFirebaseUser` | Java |
| 7 | `app/src/main/java/swiftapps/swiftbackup/apkreader/ApkManifestParser.java` | `org.swiftapps.swiftbackup.apkreader.ApkManifestParser` | Java |
| 8 | `app/src/main/java/swiftapps/swiftbackup/apkshare/ApkImportActivity.java` | `org.swiftapps.swiftbackup.apkshare.ApkImportActivity` | Java |
| 9 | `app/src/main/java/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata.java` | `org.swiftapps.swiftbackup.apkshare.ApkSharePackageMetadata` | Java |
| 10 | `app/src/main/java/swiftapps/swiftbackup/apkshare/SaiApksMetadata.java` | `org.swiftapps.swiftbackup.apkshare.SaiApksMetadata` | Java |
| 11 | `app/src/main/java/swiftapps/swiftbackup/apkshare/a.java` | `org.swiftapps.swiftbackup.apkshare.a` | Java |
| 12 | `app/src/main/java/swiftapps/swiftbackup/appconfigs/data/Config.java` | `org.swiftapps.swiftbackup.appconfigs.data.Config` | Java |
| 13 | `app/src/main/java/swiftapps/swiftbackup/appconfigs/data/ConfigSettings.java` | `org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings` | Java |
| 14 | `app/src/main/java/swiftapps/swiftbackup/appconfigs/data/ConfigsData.java` | `org.swiftapps.swiftbackup.appconfigs.data.ConfigsData` | Java |
| 15 | `app/src/main/java/swiftapps/swiftbackup/appconfigs/data/a.java` | `org.swiftapps.swiftbackup.appconfigs.data.a` | Java |
| 16 | `app/src/main/java/swiftapps/swiftbackup/appconfigs/data/b.java` | `org.swiftapps.swiftbackup.appconfigs.data.b` | Java |
| 17 | `app/src/main/java/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity.java` | `org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity` | Java |
| 18 | `app/src/main/java/swiftapps/swiftbackup/appconfigs/edit/a.java` | `org.swiftapps.swiftbackup.appconfigs.edit.a` | Java |
| 19 | `app/src/main/java/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity.java` | `org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity` | Java |
| 20 | `app/src/main/java/swiftapps/swiftbackup/appconfigs/list/a.java` | `org.swiftapps.swiftbackup.appconfigs.list.a` | Java |
| 21 | `app/src/main/java/swiftapps/swiftbackup/appconfigs/list/b.java` | `org.swiftapps.swiftbackup.appconfigs.list.b` | Java |
| 22 | `app/src/main/java/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity.java` | `org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity` | Java |
| 23 | `app/src/main/java/swiftapps/swiftbackup/appinfo/AppInfoActivity.java` | `org.swiftapps.swiftbackup.appinfo.AppInfoActivity` | Java |
| 24 | `app/src/main/java/swiftapps/swiftbackup/appslist/data/FavoriteApp.java` | `org.swiftapps.swiftbackup.appslist.data.FavoriteApp` | Java |
| 25 | `app/src/main/java/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper.java` | `org.swiftapps.swiftbackup.appslist.data.FavoriteAppsRepo$FavoritesWrapper` | Java |
| 26 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout.java` | `org.swiftapps.swiftbackup.appslist.ui.AppItemContentLayout` | Java |
| 27 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/AppListItemLayout.java` | `org.swiftapps.swiftbackup.appslist.ui.AppListItemLayout` | Java |
| 28 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView.java` | `org.swiftapps.swiftbackup.appslist.ui.AppRowLabelsView` | Java |
| 29 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout.java` | `org.swiftapps.swiftbackup.appslist.ui.AppSwipeActionRevealLayout` | Java |
| 30 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity.java` | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity` | Java |
| 31 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/labels/LabelParams.java` | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams` | Java |
| 32 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp.java` | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelledApp` | Java |
| 33 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity.java` | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity` | Java |
| 34 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/labels/LabelsData.java` | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData` | Java |
| 35 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/list/AppListActivity.java` | `org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity` | Java |
| 36 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity.java` | `org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity` | Java |
| 37 | `app/src/main/java/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity.java` | `org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity` | Java |
| 38 | `app/src/main/java/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity.java` | `org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity` | Java |
| 39 | `app/src/main/java/swiftapps/swiftbackup/apptasks/AppsWorkingDir.java` | `org.swiftapps.swiftbackup.apptasks.AppsWorkingDir` | Java |
| 40 | `app/src/main/java/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy.java` | `org.swiftapps.swiftbackup.apptasks.install.InstallerSourceProxy` | Java |
| 41 | `app/src/main/java/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy.java` | `org.swiftapps.swiftbackup.apptasks.notifications.NotificationPolicyProxy` | Java |
| 42 | `app/src/main/java/swiftapps/swiftbackup/apptasks/notifications/a.java` | `org.swiftapps.swiftbackup.apptasks.notifications.a` | Java |
| 43 | `app/src/main/java/swiftapps/swiftbackup/apptasks/notifications/b.java` | `org.swiftapps.swiftbackup.apptasks.notifications.b` | Java |
| 44 | `app/src/main/java/swiftapps/swiftbackup/apptasks/notifications/c.java` | `org.swiftapps.swiftbackup.apptasks.notifications.c` | Java |
| 45 | `app/src/main/java/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.java` | `org.swiftapps.swiftbackup.apptasks.sba.SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata` | Java |
| 46 | `app/src/main/java/swiftapps/swiftbackup/apptasks/sba/a.java` | `org.swiftapps.swiftbackup.apptasks.sba.a` | Java |
| 47 | `app/src/main/java/swiftapps/swiftbackup/blacklist/BlacklistActivity.java` | `org.swiftapps.swiftbackup.blacklist.BlacklistActivity` | Java |
| 48 | `app/src/main/java/swiftapps/swiftbackup/blacklist/data/BlacklistApp.java` | `org.swiftapps.swiftbackup.blacklist.data.BlacklistApp` | Java |
| 49 | `app/src/main/java/swiftapps/swiftbackup/blacklist/data/BlacklistData.java` | `org.swiftapps.swiftbackup.blacklist.data.BlacklistData` | Java |
| 50 | `app/src/main/java/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials.java` | `org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials` | Java |
| 51 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity` | Java |
| 52 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/CsActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.CsActivity` | Java |
| 53 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity` | Java |
| 54 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity` | Java |
| 55 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity` | Java |
| 56 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity` | Java |
| 57 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity` | Java |
| 58 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity` | Java |
| 59 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity` | Java |
| 60 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity` | Java |
| 61 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/YandexSignInActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.YandexSignInActivity` | Java |
| 62 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity.java` | `org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity` | Java |
| 63 | `app/src/main/java/swiftapps/swiftbackup/cloud/connect/common/CloudConnectLayoutManager.java` | `org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectLayoutManager` | Java |
| 64 | `app/src/main/java/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity.java` | `org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity` | Java |
| 65 | `app/src/main/java/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile.java` | `org.swiftapps.swiftbackup.cloud.helpers.BoxRecentUploadCache$CachedBoxFile` | Java |
| 66 | `app/src/main/java/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data.java` | `org.swiftapps.swiftbackup.cloud.helpers.BoxRecentUploadCache$Data` | Java |
| 67 | `app/src/main/java/swiftapps/swiftbackup/cloud/model/CloudResult.java` | `org.swiftapps.swiftbackup.cloud.model.CloudResult` | Java |
| 68 | `app/src/main/java/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity.java` | `org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity` | Java |
| 69 | `app/src/main/java/swiftapps/swiftbackup/cloud/orphans/a.java` | `org.swiftapps.swiftbackup.cloud.orphans.a` | Java |
| 70 | `app/src/main/java/swiftapps/swiftbackup/cloud/orphans/b.java` | `org.swiftapps.swiftbackup.cloud.orphans.b` | Java |
| 71 | `app/src/main/java/swiftapps/swiftbackup/cloud/orphans/c.java` | `org.swiftapps.swiftbackup.cloud.orphans.c` | Java |
| 72 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/CloudCredentials.java` | `org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials` | Java |
| 73 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult.java` | `org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult` | Java |
| 74 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/CloudServiceId.java` | `org.swiftapps.swiftbackup.cloud.protocols.CloudServiceId` | Java |
| 75 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/TokenCredentials.java` | `org.swiftapps.swiftbackup.cloud.protocols.TokenCredentials` | Java |
| 76 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/a.java` | `org.swiftapps.swiftbackup.cloud.protocols.a` | Java |
| 77 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials.java` | `org.swiftapps.swiftbackup.cloud.protocols.filen.FilenCredentials` | Java |
| 78 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata.java` | `org.swiftapps.swiftbackup.cloud.protocols.filen.FilenItemCodec$DirectoryMetadata` | Java |
| 79 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata.java` | `org.swiftapps.swiftbackup.cloud.protocols.filen.FilenItemCodec$FileMetadata` | Java |
| 80 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession.java` | `org.swiftapps.swiftbackup.cloud.protocols.filen.FilenSession` | Java |
| 81 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/filen/c.java` | `org.swiftapps.swiftbackup.cloud.protocols.filen.c` | Java |
| 82 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult.java` | `org.swiftapps.swiftbackup.cloud.protocols.mega.MegaLoginResult` | Java |
| 83 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/mega/lite/SwiftMegaSavedSession.java` | `org.swiftapps.swiftbackup.cloud.protocols.mega.lite.SwiftMegaSavedSession` | Java |
| 84 | `app/src/main/java/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials.java` | `org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials` | Java |
| 85 | `app/src/main/java/swiftapps/swiftbackup/common/Const.java` | `org.swiftapps.swiftbackup.common.Const` | Java |
| 86 | `app/src/main/java/swiftapps/swiftbackup/common/IgnoredException.java` | `org.swiftapps.swiftbackup.common.IgnoredException` | Java |
| 87 | `app/src/main/java/swiftapps/swiftbackup/common/LocaleChangedReceiver.java` | `org.swiftapps.swiftbackup.common.LocaleChangedReceiver` | Java |
| 88 | `app/src/main/java/swiftapps/swiftbackup/common/MyAppGlideModule.java` | `org.swiftapps.swiftbackup.common.MyAppGlideModule` | Java |
| 89 | `app/src/main/java/swiftapps/swiftbackup/common/NotificationHelper.java` | `org.swiftapps.swiftbackup.common.NotificationHelper` | Java |
| 90 | `app/src/main/java/swiftapps/swiftbackup/common/PackageInstallResultReceiver.java` | `org.swiftapps.swiftbackup.common.PackageInstallResultReceiver` | Java |
| 91 | `app/src/main/java/swiftapps/swiftbackup/common/V.java` | `org.swiftapps.swiftbackup.common.V` | Java |
| 92 | `app/src/main/java/swiftapps/swiftbackup/common/a.java` | `org.swiftapps.swiftbackup.common.a` | Java |
| 93 | `app/src/main/java/swiftapps/swiftbackup/compress/Packer.java` | `org.swiftapps.swiftbackup.compress.Packer` | Java |
| 94 | `app/src/main/java/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata.java` | `org.swiftapps.swiftbackup.compress.compressor.MultiCompressor$CompressedFileMetadata` | Java |
| 95 | `app/src/main/java/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type.java` | `org.swiftapps.swiftbackup.compress.compressor.MultiCompressor$Type` | Java |
| 96 | `app/src/main/java/swiftapps/swiftbackup/contributor/ContributorRegActivity.java` | `org.swiftapps.swiftbackup.contributor.ContributorRegActivity` | Java |
| 97 | `app/src/main/java/swiftapps/swiftbackup/contributor/ContributorRegistration.java` | `org.swiftapps.swiftbackup.contributor.ContributorRegistration` | Java |
| 98 | `app/src/main/java/swiftapps/swiftbackup/contributor/a.java` | `org.swiftapps.swiftbackup.contributor.a` | Java |
| 99 | `app/src/main/java/swiftapps/swiftbackup/contributor/b.java` | `org.swiftapps.swiftbackup.contributor.b` | Java |
| 100 | `app/src/main/java/swiftapps/swiftbackup/contributor/c.java` | `org.swiftapps.swiftbackup.contributor.c` | Java |
| 101 | `app/src/main/java/swiftapps/swiftbackup/database/MDatabase.java` | `org.swiftapps.swiftbackup.database.MDatabase` | Java |
| 102 | `app/src/main/java/swiftapps/swiftbackup/database/MDatabase_Impl.java` | `org.swiftapps.swiftbackup.database.MDatabase_Impl` | Java |
| 103 | `app/src/main/java/swiftapps/swiftbackup/detail/DetailActivity.java` | `org.swiftapps.swiftbackup.detail.DetailActivity` | Java |
| 104 | `app/src/main/java/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver.java` | `org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver` | Java |
| 105 | `app/src/main/java/swiftapps/swiftbackup/folders/data/BackupInfo.java` | `org.swiftapps.swiftbackup.folders.data.BackupInfo` | Java |
| 106 | `app/src/main/java/swiftapps/swiftbackup/folders/data/BackupResult.java` | `org.swiftapps.swiftbackup.folders.data.BackupResult` | Java |
| 107 | `app/src/main/java/swiftapps/swiftbackup/folders/data/BackupStats.java` | `org.swiftapps.swiftbackup.folders.data.BackupStats` | Java |
| 108 | `app/src/main/java/swiftapps/swiftbackup/folders/data/BackupType.java` | `org.swiftapps.swiftbackup.folders.data.BackupType` | Java |
| 109 | `app/src/main/java/swiftapps/swiftbackup/folders/data/ChainValidationResult.java` | `org.swiftapps.swiftbackup.folders.data.ChainValidationResult` | Java |
| 110 | `app/src/main/java/swiftapps/swiftbackup/folders/data/Changes.java` | `org.swiftapps.swiftbackup.folders.data.Changes` | Java |
| 111 | `app/src/main/java/swiftapps/swiftbackup/folders/data/FileEntry.java` | `org.swiftapps.swiftbackup.folders.data.FileEntry` | Java |
| 112 | `app/src/main/java/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup.java` | `org.swiftapps.swiftbackup.folders.data.FolderBackup$BaseBackup` | Java |
| 113 | `app/src/main/java/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot.java` | `org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot` | Java |
| 114 | `app/src/main/java/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup.java` | `org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup` | Java |
| 115 | `app/src/main/java/swiftapps/swiftbackup/folders/data/FolderItem.java` | `org.swiftapps.swiftbackup.folders.data.FolderItem` | Java |
| 116 | `app/src/main/java/swiftapps/swiftbackup/folders/data/FolderMetadata.java` | `org.swiftapps.swiftbackup.folders.data.FolderMetadata` | Java |
| 117 | `app/src/main/java/swiftapps/swiftbackup/folders/data/FolderState.java` | `org.swiftapps.swiftbackup.folders.data.FolderState` | Java |
| 118 | `app/src/main/java/swiftapps/swiftbackup/folders/data/Manifest.java` | `org.swiftapps.swiftbackup.folders.data.Manifest` | Java |
| 119 | `app/src/main/java/swiftapps/swiftbackup/folders/data/ManifestInfo.java` | `org.swiftapps.swiftbackup.folders.data.ManifestInfo` | Java |
| 120 | `app/src/main/java/swiftapps/swiftbackup/folders/data/RestoreResult.java` | `org.swiftapps.swiftbackup.folders.data.RestoreResult` | Java |
| 121 | `app/src/main/java/swiftapps/swiftbackup/folders/data/a.java` | `org.swiftapps.swiftbackup.folders.data.a` | Java |
| 122 | `app/src/main/java/swiftapps/swiftbackup/folders/data/b.java` | `org.swiftapps.swiftbackup.folders.data.b` | Java |
| 123 | `app/src/main/java/swiftapps/swiftbackup/folders/data/c.java` | `org.swiftapps.swiftbackup.folders.data.c` | Java |
| 124 | `app/src/main/java/swiftapps/swiftbackup/folders/ui/FolderDetailActivity.java` | `org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity` | Java |
| 125 | `app/src/main/java/swiftapps/swiftbackup/folders/ui/FolderEditActivity.java` | `org.swiftapps.swiftbackup.folders.ui.FolderEditActivity` | Java |
| 126 | `app/src/main/java/swiftapps/swiftbackup/folders/ui/FolderPickerActivity.java` | `org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity` | Java |
| 127 | `app/src/main/java/swiftapps/swiftbackup/folders/ui/FoldersDashActivity.java` | `org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity` | Java |
| 128 | `app/src/main/java/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity.java` | `org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity` | Java |
| 129 | `app/src/main/java/swiftapps/swiftbackup/home/HomeActivity.java` | `org.swiftapps.swiftbackup.home.HomeActivity` | Java |
| 130 | `app/src/main/java/swiftapps/swiftbackup/home/cloud/CloudBackupTag.java` | `org.swiftapps.swiftbackup.home.cloud.CloudBackupTag` | Java |
| 131 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity.java` | `org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity` | Java |
| 132 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/ScheduleService.java` | `org.swiftapps.swiftbackup.home.schedule.ScheduleService` | Java |
| 133 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/a.java` | `org.swiftapps.swiftbackup.home.schedule.a` | Java |
| 134 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/b.java` | `org.swiftapps.swiftbackup.home.schedule.b` | Java |
| 135 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/c.java` | `org.swiftapps.swiftbackup.home.schedule.c` | Java |
| 136 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/d.java` | `org.swiftapps.swiftbackup.home.schedule.d` | Java |
| 137 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/GlobalScheduleError.java` | `org.swiftapps.swiftbackup.home.schedule.data.GlobalScheduleError` | Java |
| 138 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/ScheduleData.java` | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleData` | Java |
| 139 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/ScheduleItem.java` | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem` | Java |
| 140 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails.java` | `org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails` | Java |
| 141 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/a.java` | `org.swiftapps.swiftbackup.home.schedule.data.a` | Java |
| 142 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/b.java` | `org.swiftapps.swiftbackup.home.schedule.data.b` | Java |
| 143 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/c.java` | `org.swiftapps.swiftbackup.home.schedule.data.c` | Java |
| 144 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/d.java` | `org.swiftapps.swiftbackup.home.schedule.data.d` | Java |
| 145 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/e.java` | `org.swiftapps.swiftbackup.home.schedule.data.e` | Java |
| 146 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/f.java` | `org.swiftapps.swiftbackup.home.schedule.data.f` | Java |
| 147 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/g.java` | `org.swiftapps.swiftbackup.home.schedule.data.g` | Java |
| 148 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/h.java` | `org.swiftapps.swiftbackup.home.schedule.data.h` | Java |
| 149 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/i.java` | `org.swiftapps.swiftbackup.home.schedule.data.i` | Java |
| 150 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/j.java` | `org.swiftapps.swiftbackup.home.schedule.data.j` | Java |
| 151 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/k.java` | `org.swiftapps.swiftbackup.home.schedule.data.k` | Java |
| 152 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/l.java` | `org.swiftapps.swiftbackup.home.schedule.data.l` | Java |
| 153 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/m.java` | `org.swiftapps.swiftbackup.home.schedule.data.m` | Java |
| 154 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/n.java` | `org.swiftapps.swiftbackup.home.schedule.data.n` | Java |
| 155 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/data/o.java` | `org.swiftapps.swiftbackup.home.schedule.data.o` | Java |
| 156 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView.java` | `org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView` | Java |
| 157 | `app/src/main/java/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity.java` | `org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity` | Java |
| 158 | `app/src/main/java/swiftapps/swiftbackup/home/search/HomeSearchActivity.java` | `org.swiftapps.swiftbackup.home.search.HomeSearchActivity` | Java |
| 159 | `app/src/main/java/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity.java` | `org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity` | Java |
| 160 | `app/src/main/java/swiftapps/swiftbackup/intro/IntroActivity.java` | `org.swiftapps.swiftbackup.intro.IntroActivity` | Java |
| 161 | `app/src/main/java/swiftapps/swiftbackup/intro/IntroBenefitCardView.java` | `org.swiftapps.swiftbackup.intro.IntroBenefitCardView` | Java |
| 162 | `app/src/main/java/swiftapps/swiftbackup/intro/IntroPermissionCardView.java` | `org.swiftapps.swiftbackup.intro.IntroPermissionCardView` | Java |
| 163 | `app/src/main/java/swiftapps/swiftbackup/intro/a.java` | `org.swiftapps.swiftbackup.intro.a` | Java |
| 164 | `app/src/main/java/swiftapps/swiftbackup/intro/b.java` | `org.swiftapps.swiftbackup.intro.b` | Java |
| 165 | `app/src/main/java/swiftapps/swiftbackup/intro/c.java` | `org.swiftapps.swiftbackup.intro.c` | Java |
| 166 | `app/src/main/java/swiftapps/swiftbackup/intro/d.java` | `org.swiftapps.swiftbackup.intro.d` | Java |
| 167 | `app/src/main/java/swiftapps/swiftbackup/intro/e.java` | `org.swiftapps.swiftbackup.intro.e` | Java |
| 168 | `app/src/main/java/swiftapps/swiftbackup/jobs/AlarmReceiver.java` | `org.swiftapps.swiftbackup.jobs.AlarmReceiver` | Java |
| 169 | `app/src/main/java/swiftapps/swiftbackup/jobs/BootReceiver.java` | `org.swiftapps.swiftbackup.jobs.BootReceiver` | Java |
| 170 | `app/src/main/java/swiftapps/swiftbackup/locale/LocaleActivity.java` | `org.swiftapps.swiftbackup.locale.LocaleActivity` | Java |
| 171 | `app/src/main/java/swiftapps/swiftbackup/manage/ManageSpaceActivity.java` | `org.swiftapps.swiftbackup.manage.ManageSpaceActivity` | Java |
| 172 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity.java` | `org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity` | Java |
| 173 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity.java` | `org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity` | Java |
| 174 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backuprestore/a.java` | `org.swiftapps.swiftbackup.messagescalls.backuprestore.a` | Java |
| 175 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backuprestore/b.java` | `org.swiftapps.swiftbackup.messagescalls.backuprestore.b` | Java |
| 176 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backuprestore/c.java` | `org.swiftapps.swiftbackup.messagescalls.backuprestore.c` | Java |
| 177 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backuprestore/d.java` | `org.swiftapps.swiftbackup.messagescalls.backuprestore.d` | Java |
| 178 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backuprestore/e.java` | `org.swiftapps.swiftbackup.messagescalls.backuprestore.e` | Java |
| 179 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backuprestore/f.java` | `org.swiftapps.swiftbackup.messagescalls.backuprestore.f` | Java |
| 180 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backuprestore/g.java` | `org.swiftapps.swiftbackup.messagescalls.backuprestore.g` | Java |
| 181 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backuprestore/h.java` | `org.swiftapps.swiftbackup.messagescalls.backuprestore.h` | Java |
| 182 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity.java` | `org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity` | Java |
| 183 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity.java` | `org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity` | Java |
| 184 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity.java` | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity` | Java |
| 185 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity.java` | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity` | Java |
| 186 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity.java` | `org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity` | Java |
| 187 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity.java` | `org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity` | Java |
| 188 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/defaulthandler/ComposeSmsActivity.java` | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.ComposeSmsActivity` | Java |
| 189 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/defaulthandler/HeadlessSmsSendService.java` | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.HeadlessSmsSendService` | Java |
| 190 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/defaulthandler/MmsReceiver.java` | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.MmsReceiver` | Java |
| 191 | `app/src/main/java/swiftapps/swiftbackup/messagescalls/defaulthandler/SmsReceiver.java` | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.SmsReceiver` | Java |
| 192 | `app/src/main/java/swiftapps/swiftbackup/model/StorageInfoLocal.java` | `org.swiftapps.swiftbackup.model.StorageInfoLocal` | Java |
| 193 | `app/src/main/java/swiftapps/swiftbackup/model/app/AppCloudBackup.java` | `org.swiftapps.swiftbackup.model.app.AppCloudBackup` | Java |
| 194 | `app/src/main/java/swiftapps/swiftbackup/model/app/AppCloudBackups.java` | `org.swiftapps.swiftbackup.model.app.AppCloudBackups` | Java |
| 195 | `app/src/main/java/swiftapps/swiftbackup/model/app/AppSpecialDataPayload.java` | `org.swiftapps.swiftbackup.model.app.AppSpecialDataPayload` | Java |
| 196 | `app/src/main/java/swiftapps/swiftbackup/model/app/CloudMetadata.java` | `org.swiftapps.swiftbackup.model.app.CloudMetadata` | Java |
| 197 | `app/src/main/java/swiftapps/swiftbackup/model/app/LocalMetadata.java` | `org.swiftapps.swiftbackup.model.app.LocalMetadata` | Java |
| 198 | `app/src/main/java/swiftapps/swiftbackup/model/firebase/AppSettings.java` | `org.swiftapps.swiftbackup.model.firebase.AppSettings` | Java |
| 199 | `app/src/main/java/swiftapps/swiftbackup/model/firebase/WallsCloudDetails.java` | `org.swiftapps.swiftbackup.model.firebase.WallsCloudDetails` | Java |
| 200 | `app/src/main/java/swiftapps/swiftbackup/model/firebase/WifiCloudDetails.java` | `org.swiftapps.swiftbackup.model.firebase.WifiCloudDetails` | Java |
| 201 | `app/src/main/java/swiftapps/swiftbackup/model/provider/CallLogItem.java` | `org.swiftapps.swiftbackup.model.provider.CallLogItem` | Java |
| 202 | `app/src/main/java/swiftapps/swiftbackup/notice/NoticeItem.java` | `org.swiftapps.swiftbackup.notice.NoticeItem` | Java |
| 203 | `app/src/main/java/swiftapps/swiftbackup/notice/NoticeListActivity.java` | `org.swiftapps.swiftbackup.notice.NoticeListActivity` | Java |
| 204 | `app/src/main/java/swiftapps/swiftbackup/notice/NoticeViewActivity.java` | `org.swiftapps.swiftbackup.notice.NoticeViewActivity` | Java |
| 205 | `app/src/main/java/swiftapps/swiftbackup/password/PasswordStrategyActivity.java` | `org.swiftapps.swiftbackup.password.PasswordStrategyActivity` | Java |
| 206 | `app/src/main/java/swiftapps/swiftbackup/password/UserPasswordActivity.java` | `org.swiftapps.swiftbackup.password.UserPasswordActivity` | Java |
| 207 | `app/src/main/java/swiftapps/swiftbackup/premium/NoGmsPremium.java` | `org.swiftapps.swiftbackup.premium.NoGmsPremium` | Java |
| 208 | `app/src/main/java/swiftapps/swiftbackup/premium/PremiumActivity.java` | `org.swiftapps.swiftbackup.premium.PremiumActivity` | Java |
| 209 | `app/src/main/java/swiftapps/swiftbackup/settings/AppSwipeActionsActivity.java` | `org.swiftapps.swiftbackup.settings.AppSwipeActionsActivity` | Java |
| 210 | `app/src/main/java/swiftapps/swiftbackup/settings/FolderBackupStrategy.java` | `org.swiftapps.swiftbackup.settings.FolderBackupStrategy` | Java |
| 211 | `app/src/main/java/swiftapps/swiftbackup/settings/FolderRestoreStrategy.java` | `org.swiftapps.swiftbackup.settings.FolderRestoreStrategy` | Java |
| 212 | `app/src/main/java/swiftapps/swiftbackup/settings/LicensesActivity.java` | `org.swiftapps.swiftbackup.settings.LicensesActivity` | Java |
| 213 | `app/src/main/java/swiftapps/swiftbackup/settings/MSwitchPreference.java` | `org.swiftapps.swiftbackup.settings.MSwitchPreference` | Java |
| 214 | `app/src/main/java/swiftapps/swiftbackup/settings/MultipleBackupStrategy.java` | `org.swiftapps.swiftbackup.settings.MultipleBackupStrategy` | Java |
| 215 | `app/src/main/java/swiftapps/swiftbackup/settings/MultipleBackupsActivity.java` | `org.swiftapps.swiftbackup.settings.MultipleBackupsActivity` | Java |
| 216 | `app/src/main/java/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity.java` | `org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity` | Java |
| 217 | `app/src/main/java/swiftapps/swiftbackup/settings/SettingsActivity.java` | `org.swiftapps.swiftbackup.settings.SettingsActivity` | Java |
| 218 | `app/src/main/java/swiftapps/swiftbackup/settings/SettingsDetailActivity.java` | `org.swiftapps.swiftbackup.settings.SettingsDetailActivity` | Java |
| 219 | `app/src/main/java/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData.java` | `org.swiftapps.swiftbackup.settings.SwiftBackupSettingsHelper$SettingsData` | Java |
| 220 | `app/src/main/java/swiftapps/swiftbackup/settings/a.java` | `org.swiftapps.swiftbackup.settings.a` | Java |
| 221 | `app/src/main/java/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem.java` | `org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem` | Java |
| 222 | `app/src/main/java/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity.java` | `org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity` | Java |
| 223 | `app/src/main/java/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity.java` | `org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity` | Java |
| 224 | `app/src/main/java/swiftapps/swiftbackup/settings/b.java` | `org.swiftapps.swiftbackup.settings.b` | Java |
| 225 | `app/src/main/java/swiftapps/swiftbackup/settings/c.java` | `org.swiftapps.swiftbackup.settings.c` | Java |
| 226 | `app/src/main/java/swiftapps/swiftbackup/settings/d.java` | `org.swiftapps.swiftbackup.settings.d` | Java |
| 227 | `app/src/main/java/swiftapps/swiftbackup/settings/e.java` | `org.swiftapps.swiftbackup.settings.e` | Java |
| 228 | `app/src/main/java/swiftapps/swiftbackup/settings/f.java` | `org.swiftapps.swiftbackup.settings.f` | Java |
| 229 | `app/src/main/java/swiftapps/swiftbackup/settings/g.java` | `org.swiftapps.swiftbackup.settings.g` | Java |
| 230 | `app/src/main/java/swiftapps/swiftbackup/settings/h.java` | `org.swiftapps.swiftbackup.settings.h` | Java |
| 231 | `app/src/main/java/swiftapps/swiftbackup/settings/i.java` | `org.swiftapps.swiftbackup.settings.i` | Java |
| 232 | `app/src/main/java/swiftapps/swiftbackup/settings/j.java` | `org.swiftapps.swiftbackup.settings.j` | Java |
| 233 | `app/src/main/java/swiftapps/swiftbackup/settings/k.java` | `org.swiftapps.swiftbackup.settings.k` | Java |
| 234 | `app/src/main/java/swiftapps/swiftbackup/shortcuts/ShortcutsActivity.java` | `org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity` | Java |
| 235 | `app/src/main/java/swiftapps/swiftbackup/slog/SLogActivity.java` | `org.swiftapps.swiftbackup.slog.SLogActivity` | Java |
| 236 | `app/src/main/java/swiftapps/swiftbackup/tasks/NotificationTaskCancelReceiver.java` | `org.swiftapps.swiftbackup.tasks.NotificationTaskCancelReceiver` | Java |
| 237 | `app/src/main/java/swiftapps/swiftbackup/tasks/PreconditionsActivity.java` | `org.swiftapps.swiftbackup.tasks.PreconditionsActivity` | Java |
| 238 | `app/src/main/java/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary.java` | `org.swiftapps.swiftbackup.tasks.TaskManager$ErrorSummary` | Java |
| 239 | `app/src/main/java/swiftapps/swiftbackup/tasks/TaskService.java` | `org.swiftapps.swiftbackup.tasks.TaskService` | Java |
| 240 | `app/src/main/java/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry.java` | `org.swiftapps.swiftbackup.tasks.fgs.DataSyncFgsRuntimeLedger$Entry` | Java |
| 241 | `app/src/main/java/swiftapps/swiftbackup/tasks/model/SyncOption.java` | `org.swiftapps.swiftbackup.tasks.model.SyncOption` | Java |
| 242 | `app/src/main/java/swiftapps/swiftbackup/tasks/ui/TaskActivity.java` | `org.swiftapps.swiftbackup.tasks.ui.TaskActivity` | Java |
| 243 | `app/src/main/java/swiftapps/swiftbackup/views/LocaleTextView.java` | `org.swiftapps.swiftbackup.views.LocaleTextView` | Java |
| 244 | `app/src/main/java/swiftapps/swiftbackup/views/MAppBarLayout.java` | `org.swiftapps.swiftbackup.views.MAppBarLayout` | Java |
| 245 | `app/src/main/java/swiftapps/swiftbackup/views/MCheckBox.java` | `org.swiftapps.swiftbackup.views.MCheckBox` | Java |
| 246 | `app/src/main/java/swiftapps/swiftbackup/views/NoSwipeViewPager.java` | `org.swiftapps.swiftbackup.views.NoSwipeViewPager` | Java |
| 247 | `app/src/main/java/swiftapps/swiftbackup/views/PreCachingGridLayoutManager.java` | `org.swiftapps.swiftbackup.views.PreCachingGridLayoutManager` | Java |
| 248 | `app/src/main/java/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager.java` | `org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager` | Java |
| 249 | `app/src/main/java/swiftapps/swiftbackup/views/ProviderChipGroup.java` | `org.swiftapps.swiftbackup.views.ProviderChipGroup` | Java |
| 250 | `app/src/main/java/swiftapps/swiftbackup/views/QuickRecyclerView.java` | `org.swiftapps.swiftbackup.views.QuickRecyclerView` | Java |
| 251 | `app/src/main/java/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager.java` | `org.swiftapps.swiftbackup.views.SpeedyLinearLayoutManager` | Java |
| 252 | `app/src/main/java/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch.java` | `org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch` | Java |
| 253 | `app/src/main/java/swiftapps/swiftbackup/views/SwiftListItemCardView.java` | `org.swiftapps.swiftbackup.views.SwiftListItemCardView` | Java |
| 254 | `app/src/main/java/swiftapps/swiftbackup/views/SwiftSegmentConstraintLayout.java` | `org.swiftapps.swiftbackup.views.SwiftSegmentConstraintLayout` | Java |
| 255 | `app/src/main/java/swiftapps/swiftbackup/views/SwiftSegmentLinearLayout.java` | `org.swiftapps.swiftbackup.views.SwiftSegmentLinearLayout` | Java |
| 256 | `app/src/main/java/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup.java` | `org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup` | Java |
| 257 | `app/src/main/java/swiftapps/swiftbackup/views/a.java` | `org.swiftapps.swiftbackup.views.a` | Java |
| 258 | `app/src/main/java/swiftapps/swiftbackup/walls/WallApplyActivity.java` | `org.swiftapps.swiftbackup.walls.WallApplyActivity` | Java |
| 259 | `app/src/main/java/swiftapps/swiftbackup/walls/WallsDashActivity.java` | `org.swiftapps.swiftbackup.walls.WallsDashActivity` | Java |
| 260 | `app/src/main/java/swiftapps/swiftbackup/walls/WallsManageActivity.java` | `org.swiftapps.swiftbackup.walls.WallsManageActivity` | Java |
| 261 | `app/src/main/java/swiftapps/swiftbackup/wifi/PasswordInfo.java` | `org.swiftapps.swiftbackup.wifi.PasswordInfo` | Java |
| 262 | `app/src/main/java/swiftapps/swiftbackup/wifi/WifiActivity.java` | `org.swiftapps.swiftbackup.wifi.WifiActivity` | Java |

## Keputusan

- Kondisi aktual BaRe saat audit: **262 Java source files, 0 Kotlin source files**.
- Inventory ini tidak menyimpulkan bahwa seluruh file tersebut berasal dari Java-origin pada Reference.
- Penentuan Java/Kotlin untuk reconstruction tetap mengikuti audit Reference pada `docs/audit/reference-apk-source-language-audit.md`.
- Tidak ada source Kotlin yang ditambahkan atau dikonversi dalam audit ini.

## Status

**AUDIT COMPLETE — ACTUAL BARE CLASS INVENTORY RECORDED**
