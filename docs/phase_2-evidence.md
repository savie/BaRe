# Phase 2 — Reconstruction Evidence

| Field | Value |
|---|---|
| Phase | P2 — Reference Reconstruction |
| Reference | Swift Backup 5.1.0 / versionCode 620 |
| Current scope | FILE-level audit of `app/src/main/java` only |
| Inventory | 307 BaRe Java files |
| Rule | 1:1 Reference file → BaRe file; no grouping or structural redesign |
| State | IN PROGRESS — FILE AUDIT |

## FILE AUDIT

| # | Reference File | BaRe File | Role / Note | Status |
|---|---|---|---|---|
| 001 | `androidx/core/content/FileProvider.java` | `androidx/core/content/FileProvider.java` | Same Reference/BaRe file path | MATCH |
| 002 | `androidx/credentials/playservices/CredentialProviderMetadataHolder.java` | `androidx/credentials/playservices/CredentialProviderMetadataHolder.java` | Same Reference/BaRe file path | MATCH |
| 003 | `androidx/credentials/playservices/controllers/identityauth/HiddenActivity.java` | `androidx/credentials/playservices/controllers/identityauth/HiddenActivity.java` | Same Reference/BaRe file path | MATCH |
| 004 | `androidx/credentials/playservices/controllers/identitycredentials/IdentityCredentialApiHiddenActivity.java` | `androidx/credentials/playservices/controllers/identitycredentials/IdentityCredentialApiHiddenActivity.java` | Same Reference/BaRe file path | MATCH |
| 005 | `androidx/profileinstaller/ProfileInstallReceiver.java` | `androidx/profileinstaller/ProfileInstallReceiver.java` | Same Reference/BaRe file path | MATCH |
| 006 | `androidx/room/MultiInstanceInvalidationService.java` | `androidx/room/MultiInstanceInvalidationService.java` | Same Reference/BaRe file path | MATCH |
| 007 | `androidx/startup/InitializationProvider.java` | `androidx/startup/InitializationProvider.java` | Same Reference/BaRe file path | MATCH |
| 008 | `com/android/billingclient/api/ProxyBillingActivity.java` | `com/android/billingclient/api/ProxyBillingActivity.java` | Same Reference/BaRe file path | MATCH |
| 009 | `com/android/billingclient/api/ProxyBillingActivityV2.java` | `com/android/billingclient/api/ProxyBillingActivityV2.java` | Same Reference/BaRe file path | MATCH |
| 010 | `com/google/android/datatransport/runtime/backends/TransportBackendDiscovery.java` | `com/google/android/datatransport/runtime/backends/TransportBackendDiscovery.java` | Same Reference/BaRe file path | MATCH |
| 011 | `com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver.java` | `com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver.java` | Same Reference/BaRe file path | MATCH |
| 012 | `com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService.java` | `com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService.java` | Same Reference/BaRe file path | MATCH |
| 013 | `com/google/android/gms/auth/api/signin/RevocationBoundService.java` | `com/google/android/gms/auth/api/signin/RevocationBoundService.java` | Same Reference/BaRe file path | MATCH |
| 014 | `com/google/android/gms/auth/api/signin/internal/SignInHubActivity.java` | `com/google/android/gms/auth/api/signin/internal/SignInHubActivity.java` | Same Reference/BaRe file path | MATCH |
| 015 | `com/google/android/gms/common/api/GoogleApiActivity.java` | `com/google/android/gms/common/api/GoogleApiActivity.java` | Same Reference/BaRe file path | MATCH |
| 016 | `com/google/android/play/core/common/PlayCoreDialogWrapperActivity.java` | `com/google/android/play/core/common/PlayCoreDialogWrapperActivity.java` | Same Reference/BaRe file path | MATCH |
| 017 | `com/google/firebase/auth/internal/GenericIdpActivity.java` | `com/google/firebase/auth/internal/GenericIdpActivity.java` | Same Reference/BaRe file path | MATCH |
| 018 | `com/google/firebase/auth/internal/RecaptchaActivity.java` | `com/google/firebase/auth/internal/RecaptchaActivity.java` | Same Reference/BaRe file path | MATCH |
| 019 | `com/google/firebase/components/ComponentDiscoveryService.java` | `com/google/firebase/components/ComponentDiscoveryService.java` | Same Reference/BaRe file path | MATCH |
| 020 | `com/google/firebase/sessions/SessionLifecycleService.java` | `com/google/firebase/sessions/SessionLifecycleService.java` | Same Reference/BaRe file path | MATCH |
| 021 | `com/gun0912/tedpermission/TedPermissionActivity.java` | `com/gun0912/tedpermission/TedPermissionActivity.java` | Same Reference/BaRe file path | MATCH |
| 022 | `com/gun0912/tedpermission/provider/TedPermissionProvider.java` | `com/gun0912/tedpermission/provider/TedPermissionProvider.java` | Same Reference/BaRe file path | MATCH |
| 023 | `com/microsoft/identity/client/BrowserTabActivity.java` | `com/microsoft/identity/client/BrowserTabActivity.java` | Same Reference/BaRe file path | MATCH |
| 024 | `com/microsoft/identity/client/CurrentTaskBrowserTabActivity.java` | `com/microsoft/identity/client/CurrentTaskBrowserTabActivity.java` | Same Reference/BaRe file path | MATCH |
| 025 | `com/microsoft/identity/client/helper/BrokerHelperActivity.java` | `com/microsoft/identity/client/helper/BrokerHelperActivity.java` | Same Reference/BaRe file path | MATCH |
| 026 | `com/microsoft/identity/common/internal/broker/BrokerActivity.java` | `com/microsoft/identity/common/internal/broker/BrokerActivity.java` | Same Reference/BaRe file path | MATCH |
| 027 | `com/microsoft/identity/common/internal/broker/InstallCertActivityLauncher.java` | `com/microsoft/identity/common/internal/broker/InstallCertActivityLauncher.java` | Same Reference/BaRe file path | MATCH |
| 028 | `com/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity.java` | `com/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity.java` | Same Reference/BaRe file path | MATCH |
| 029 | `com/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity.java` | `com/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity.java` | Same Reference/BaRe file path | MATCH |
| 030 | `com/microsoft/identity/common/internal/providers/oauth2/SilentAuthorizationActivity.java` | `com/microsoft/identity/common/internal/providers/oauth2/SilentAuthorizationActivity.java` | Same Reference/BaRe file path | MATCH |
| 031 | `com/pcloud/sdk/AuthorizationActivity.java` | `com/pcloud/sdk/AuthorizationActivity.java` | Same Reference/BaRe file path | MATCH |
| 032 | `com/pcloud/sdk/CustomTabActivity.java` | `com/pcloud/sdk/CustomTabActivity.java` | Same Reference/BaRe file path | MATCH |
| 033 | `com/swiftapps/sba/SbaArchiveNative.java` | `com/swiftapps/sba/SbaArchiveNative.java` | Same Reference/BaRe file path | MATCH |
| 034 | `com/swiftapps/sba/SbaLibaegisCryptoNative.java` | `com/swiftapps/sba/SbaLibaegisCryptoNative.java` | Same Reference/BaRe file path | MATCH |
| 035 | `com/swiftapps/sba/SbaNativeCrypto.java` | `com/swiftapps/sba/SbaNativeCrypto.java` | Same Reference/BaRe file path | MATCH |
| 036 | `com/swiftapps/sba/SbaRuntimeNative.java` | `com/swiftapps/sba/SbaRuntimeNative.java` | Same Reference/BaRe file path | MATCH |
| 037 | `com/swiftapps/sba/SbaSwiftTarNative.java` | `com/swiftapps/sba/SbaSwiftTarNative.java` | Same Reference/BaRe file path | MATCH |
| 038 | `com/swiftapps/sba/SbaZstdNative.java` | `com/swiftapps/sba/SbaZstdNative.java` | Same Reference/BaRe file path | MATCH |
| 039 | `com/swiftapps/sba/internal/progress/SbaNativeProgressListener.java` | `com/swiftapps/sba/internal/progress/SbaNativeProgressListener.java` | Same Reference/BaRe file path | MATCH |
| 040 | `com/swiftapps/sba/internal/tar/SbaTarEntryInfo.java` | `com/swiftapps/sba/internal/tar/SbaTarEntryInfo.java` | Same Reference/BaRe file path | MATCH |
| 041 | `com/yubico/yubikit/android/ui/OtpActivity.java` | `com/yubico/yubikit/android/ui/OtpActivity.java` | Same Reference/BaRe file path | MATCH |
| 042 | `com/yubico/yubikit/android/ui/YubiKeyPromptActivity.java` | `com/yubico/yubikit/android/ui/YubiKeyPromptActivity.java` | Same Reference/BaRe file path | MATCH |
| 043 | `net/openid/appauth/AuthorizationManagementActivity.java` | `net/openid/appauth/AuthorizationManagementActivity.java` | Same Reference/BaRe file path | MATCH |
| 044 | `net/openid/appauth/RedirectUriReceiverActivity.java` | `net/openid/appauth/RedirectUriReceiverActivity.java` | Same Reference/BaRe file path | MATCH |
| 045 | `org/swiftapps/filesystem/File$FileType.java` | `org/swiftapps/filesystem/File$FileType.java` | Same Reference/BaRe file path | MATCH |
| 046 | `org/swiftapps/filesystem/a.java` | `org/swiftapps/filesystem/RandomAccessFileWriter.java` | Reference counterpart exists as `a.java`; BaRe filename currently differs | FILENAME MISMATCH |
| 047 | `org/swiftapps/rootservice/ShellHelper.java` | `org/swiftapps/rootservice/ShellHelper.java` | Same Reference/BaRe file path | MATCH |
| 048 | `org/swiftapps/rootservice/ShizukuAidlService.java` | `org/swiftapps/rootservice/ShizukuAidlService.java` | Same Reference/BaRe file path | MATCH |
| 049 | `org/swiftapps/swiftbackup/SwiftApp.java` | `org/swiftapps/swiftbackup/SwiftApp.java` | Same Reference/BaRe file path | MATCH |
| 050 | `org/swiftapps/swiftbackup/anonymous/MFirebaseUser.java` | `org/swiftapps/swiftbackup/anonymous/MFirebaseUser.java` | Same Reference/BaRe file path | MATCH |
| 051 | `org/swiftapps/swiftbackup/apkreader/ApkManifestParser.java` | `org/swiftapps/swiftbackup/apkreader/ApkManifestParser.java` | Same Reference/BaRe file path | MATCH |
| 052 | `org/swiftapps/swiftbackup/apkshare/ApkImportActivity.java` | `org/swiftapps/swiftbackup/apkshare/ApkImportActivity.java` | Same Reference/BaRe file path | MATCH |
| 053 | `org/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata.java` | `org/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata.java` | Same Reference/BaRe file path | MATCH |
| 054 | `org/swiftapps/swiftbackup/apkshare/SaiApksMetadata.java` | `org/swiftapps/swiftbackup/apkshare/SaiApksMetadata.java` | Same Reference/BaRe file path | MATCH |
| 055 | `org/swiftapps/swiftbackup/apkshare/a.java` | `org/swiftapps/swiftbackup/apkshare/a.java` | Same Reference/BaRe file path | MATCH |
| 056 | `org/swiftapps/swiftbackup/appconfigs/data/Config.java` | `org/swiftapps/swiftbackup/appconfigs/data/Config.java` | Same Reference/BaRe file path | MATCH |
| 057 | `org/swiftapps/swiftbackup/appconfigs/data/ConfigSettings.java` | `org/swiftapps/swiftbackup/appconfigs/data/ConfigSettings.java` | Same Reference/BaRe file path | MATCH |
| 058 | `org/swiftapps/swiftbackup/appconfigs/data/ConfigsData.java` | `org/swiftapps/swiftbackup/appconfigs/data/ConfigsData.java` | Same Reference/BaRe file path | MATCH |
| 059 | `org/swiftapps/swiftbackup/appconfigs/data/a.java` | `org/swiftapps/swiftbackup/appconfigs/data/a.java` | Same Reference/BaRe file path | MATCH |
| 060 | `org/swiftapps/swiftbackup/appconfigs/data/b.java` | `org/swiftapps/swiftbackup/appconfigs/data/b.java` | Same Reference/BaRe file path | MATCH |
| 061 | `org/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity.java` | `org/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity.java` | Same Reference/BaRe file path | MATCH |
| 062 | `org/swiftapps/swiftbackup/appconfigs/edit/a.java` | `org/swiftapps/swiftbackup/appconfigs/edit/a.java` | Same Reference/BaRe file path | MATCH |
| 063 | `org/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity.java` | `org/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity.java` | Same Reference/BaRe file path | MATCH |
| 064 | `org/swiftapps/swiftbackup/appconfigs/list/a.java` | `org/swiftapps/swiftbackup/appconfigs/list/a.java` | Same Reference/BaRe file path | MATCH |
| 065 | `org/swiftapps/swiftbackup/appconfigs/list/b.java` | `org/swiftapps/swiftbackup/appconfigs/list/b.java` | Same Reference/BaRe file path | MATCH |
| 066 | `org/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity.java` | `org/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity.java` | Same Reference/BaRe file path | MATCH |
| 067 | `org/swiftapps/swiftbackup/appinfo/AppInfoActivity.java` | `org/swiftapps/swiftbackup/appinfo/AppInfoActivity.java` | Same Reference/BaRe file path | MATCH |
| 068 | `org/swiftapps/swiftbackup/appslist/data/FavoriteApp.java` | `org/swiftapps/swiftbackup/appslist/data/FavoriteApp.java` | Same Reference/BaRe file path | MATCH |
| 069 | `org/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper.java` | `org/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper.java` | Same Reference/BaRe file path | MATCH |
| 070 | `org/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout.java` | `org/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout.java` | Same Reference/BaRe file path | MATCH |
| 071 | `org/swiftapps/swiftbackup/appslist/ui/AppListItemLayout.java` | `org/swiftapps/swiftbackup/appslist/ui/AppListItemLayout.java` | Same Reference/BaRe file path | MATCH |
| 072 | `org/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView.java` | `org/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView.java` | Same Reference/BaRe file path | MATCH |
| 073 | `org/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout.java` | `org/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout.java` | Same Reference/BaRe file path | MATCH |
| 074 | `org/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity.java` | `org/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity.java` | Same Reference/BaRe file path | MATCH |
| 075 | `org/swiftapps/swiftbackup/appslist/ui/labels/LabelParams.java` | `org/swiftapps/swiftbackup/appslist/ui/labels/LabelParams.java` | Same Reference/BaRe file path | MATCH |
| 076 | `org/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp.java` | `org/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp.java` | Same Reference/BaRe file path | MATCH |
| 077 | `org/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity.java` | `org/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity.java` | Same Reference/BaRe file path | MATCH |
| 078 | `org/swiftapps/swiftbackup/appslist/ui/labels/LabelsData.java` | `org/swiftapps/swiftbackup/appslist/ui/labels/LabelsData.java` | Same Reference/BaRe file path | MATCH |
| 079 | `org/swiftapps/swiftbackup/appslist/ui/list/AppListActivity.java` | `org/swiftapps/swiftbackup/appslist/ui/list/AppListActivity.java` | Same Reference/BaRe file path | MATCH |
| 080 | `org/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity.java` | `org/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity.java` | Same Reference/BaRe file path | MATCH |
| 081 | `org/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity.java` | `org/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity.java` | Same Reference/BaRe file path | MATCH |
| 082 | `org/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity.java` | `org/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity.java` | Same Reference/BaRe file path | MATCH |
| 083 | `org/swiftapps/swiftbackup/apptasks/AppsWorkingDir.java` | `org/swiftapps/swiftbackup/apptasks/AppsWorkingDir.java` | Same Reference/BaRe file path | MATCH |
| 084 | `org/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy.java` | `org/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy.java` | Same Reference/BaRe file path | MATCH |
| 085 | `org/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy.java` | `org/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy.java` | Same Reference/BaRe file path | MATCH |
| 086 | `org/swiftapps/swiftbackup/apptasks/notifications/a.java` | `org/swiftapps/swiftbackup/apptasks/notifications/a.java` | Same Reference/BaRe file path | MATCH |
| 087 | `org/swiftapps/swiftbackup/apptasks/notifications/b.java` | `org/swiftapps/swiftbackup/apptasks/notifications/b.java` | Same Reference/BaRe file path | MATCH |
| 088 | `org/swiftapps/swiftbackup/apptasks/notifications/c.java` | `org/swiftapps/swiftbackup/apptasks/notifications/c.java` | Same Reference/BaRe file path | MATCH |
| 089 | `org/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.java` | `org/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.java` | Same Reference/BaRe file path | MATCH |
| 090 | `org/swiftapps/swiftbackup/apptasks/sba/a.java` | `org/swiftapps/swiftbackup/apptasks/sba/a.java` | Same Reference/BaRe file path | MATCH |
| 091 | `org/swiftapps/swiftbackup/blacklist/BlacklistActivity.java` | `org/swiftapps/swiftbackup/blacklist/BlacklistActivity.java` | Same Reference/BaRe file path | MATCH |
| 092 | `org/swiftapps/swiftbackup/blacklist/data/BlacklistApp.java` | `org/swiftapps/swiftbackup/blacklist/data/BlacklistApp.java` | Same Reference/BaRe file path | MATCH |
| 093 | `org/swiftapps/swiftbackup/blacklist/data/BlacklistData.java` | `org/swiftapps/swiftbackup/blacklist/data/BlacklistData.java` | Same Reference/BaRe file path | MATCH |
| 094 | `org/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials.java` | `org/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials.java` | Same Reference/BaRe file path | MATCH |
| 095 | `org/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity.java` | Same Reference/BaRe file path | MATCH |
| 096 | `org/swiftapps/swiftbackup/cloud/connect/CsActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/CsActivity.java` | Same Reference/BaRe file path | MATCH |
| 097 | `org/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity.java` | Same Reference/BaRe file path | MATCH |
| 098 | `org/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity.java` | Same Reference/BaRe file path | MATCH |
| 099 | `org/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity.java` | Same Reference/BaRe file path | MATCH |
| 100 | `org/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity.java` | Same Reference/BaRe file path | MATCH |
| 101 | `org/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity.java` | Same Reference/BaRe file path | MATCH |
| 102 | `org/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity.java` | Same Reference/BaRe file path | MATCH |
| 103 | `org/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity.java` | Same Reference/BaRe file path | MATCH |
| 104 | `org/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity.java` | Same Reference/BaRe file path | MATCH |
| 105 | `org/swiftapps/swiftbackup/cloud/connect/YandexSignInActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/YandexSignInActivity.java` | Same Reference/BaRe file path | MATCH |
| 106 | `org/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity.java` | `org/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity.java` | Same Reference/BaRe file path | MATCH |
| 107 | `org/swiftapps/swiftbackup/cloud/connect/common/CloudConnectLayoutManager.java` | `org/swiftapps/swiftbackup/cloud/connect/common/CloudConnectLayoutManager.java` | Same Reference/BaRe file path | MATCH |
| 108 | `org/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity.java` | `org/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity.java` | Same Reference/BaRe file path | MATCH |
| 109 | `org/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile.java` | `org/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile.java` | Same Reference/BaRe file path | MATCH |
| 110 | `org/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data.java` | `org/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data.java` | Same Reference/BaRe file path | MATCH |
| 111 | `org/swiftapps/swiftbackup/cloud/model/CloudResult.java` | `org/swiftapps/swiftbackup/cloud/model/CloudResult.java` | Same Reference/BaRe file path | MATCH |
| 112 | `org/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity.java` | `org/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity.java` | Same Reference/BaRe file path | MATCH |
| 113 | `org/swiftapps/swiftbackup/cloud/orphans/a.java` | `org/swiftapps/swiftbackup/cloud/orphans/a.java` | Same Reference/BaRe file path | MATCH |
| 114 | `org/swiftapps/swiftbackup/cloud/orphans/b.java` | `org/swiftapps/swiftbackup/cloud/orphans/b.java` | Same Reference/BaRe file path | MATCH |
| 115 | `org/swiftapps/swiftbackup/cloud/orphans/c.java` | `org/swiftapps/swiftbackup/cloud/orphans/c.java` | Same Reference/BaRe file path | MATCH |
| 116 | `org/swiftapps/swiftbackup/cloud/protocols/CloudCredentials.java` | `org/swiftapps/swiftbackup/cloud/protocols/CloudCredentials.java` | Same Reference/BaRe file path | MATCH |
| 117 | `org/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult.java` | `org/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult.java` | Same Reference/BaRe file path | MATCH |
| 118 | `org/swiftapps/swiftbackup/cloud/protocols/CloudServiceId.java` | `org/swiftapps/swiftbackup/cloud/protocols/CloudServiceId.java` | Same Reference/BaRe file path | MATCH |
| 119 | `org/swiftapps/swiftbackup/cloud/protocols/TokenCredentials.java` | `org/swiftapps/swiftbackup/cloud/protocols/TokenCredentials.java` | Same Reference/BaRe file path | MATCH |
| 120 | `org/swiftapps/swiftbackup/cloud/protocols/a.java` | `org/swiftapps/swiftbackup/cloud/protocols/a.java` | Same Reference/BaRe file path | MATCH |
| 121 | `org/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials.java` | `org/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials.java` | Same Reference/BaRe file path | MATCH |
| 122 | `org/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata.java` | `org/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata.java` | Same Reference/BaRe file path | MATCH |
| 123 | `org/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata.java` | `org/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata.java` | Same Reference/BaRe file path | MATCH |
| 124 | `org/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession.java` | `org/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession.java` | Same Reference/BaRe file path | MATCH |
| 125 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java` | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java` | Same Reference/BaRe file path | MATCH |
| 126 | `org/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult.java` | `org/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult.java` | Same Reference/BaRe file path | MATCH |
| 127 | `org/swiftapps/swiftbackup/cloud/protocols/mega/lite/SwiftMegaSavedSession.java` | `org/swiftapps/swiftbackup/cloud/protocols/mega/lite/SwiftMegaSavedSession.java` | Same Reference/BaRe file path | MATCH |
| 128 | `org/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials.java` | `org/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials.java` | Same Reference/BaRe file path | MATCH |
| 129 | `org/swiftapps/swiftbackup/common/Const.java` | `org/swiftapps/swiftbackup/common/Const.java` | Same Reference/BaRe file path | MATCH |
| 130 | `org/swiftapps/swiftbackup/common/IgnoredException.java` | `org/swiftapps/swiftbackup/common/IgnoredException.java` | Same Reference/BaRe file path | MATCH |
| 131 | `org/swiftapps/swiftbackup/common/LocaleChangedReceiver.java` | `org/swiftapps/swiftbackup/common/LocaleChangedReceiver.java` | Same Reference/BaRe file path | MATCH |
| 132 | `org/swiftapps/swiftbackup/common/MyAppGlideModule.java` | `org/swiftapps/swiftbackup/common/MyAppGlideModule.java` | Same Reference/BaRe file path | MATCH |
| 133 | `org/swiftapps/swiftbackup/common/NotificationHelper.java` | `org/swiftapps/swiftbackup/common/NotificationHelper.java` | Same Reference/BaRe file path | MATCH |
| 134 | `org/swiftapps/swiftbackup/common/PackageInstallResultReceiver.java` | `org/swiftapps/swiftbackup/common/PackageInstallResultReceiver.java` | Same Reference/BaRe file path | MATCH |
| 135 | `org/swiftapps/swiftbackup/common/V.java` | `org/swiftapps/swiftbackup/common/V.java` | Same Reference/BaRe file path | MATCH |
| 136 | `org/swiftapps/swiftbackup/common/a.java` | `org/swiftapps/swiftbackup/common/a.java` | Same Reference/BaRe file path | MATCH |
| 137 | `org/swiftapps/swiftbackup/compress/Packer.java` | `org/swiftapps/swiftbackup/compress/Packer.java` | Same Reference/BaRe file path | MATCH |
| 138 | `org/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata.java` | `org/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata.java` | Same Reference/BaRe file path | MATCH |
| 139 | `org/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type.java` | `org/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type.java` | Same Reference/BaRe file path | MATCH |
| 140 | `org/swiftapps/swiftbackup/contributor/ContributorRegActivity.java` | `org/swiftapps/swiftbackup/contributor/ContributorRegActivity.java` | Same Reference/BaRe file path | MATCH |
| 141 | `org/swiftapps/swiftbackup/contributor/ContributorRegistration.java` | `org/swiftapps/swiftbackup/contributor/ContributorRegistration.java` | Same Reference/BaRe file path | MATCH |
| 142 | `org/swiftapps/swiftbackup/contributor/a.java` | `org/swiftapps/swiftbackup/contributor/a.java` | Same Reference/BaRe file path | MATCH |
| 143 | `org/swiftapps/swiftbackup/contributor/b.java` | `org/swiftapps/swiftbackup/contributor/b.java` | Same Reference/BaRe file path | MATCH |
| 144 | `org/swiftapps/swiftbackup/contributor/c.java` | `org/swiftapps/swiftbackup/contributor/c.java` | Same Reference/BaRe file path | MATCH |
| 145 | `org/swiftapps/swiftbackup/database/MDatabase.java` | `org/swiftapps/swiftbackup/database/MDatabase.java` | Same Reference/BaRe file path | MATCH |
| 146 | `org/swiftapps/swiftbackup/database/MDatabase_Impl.java` | `org/swiftapps/swiftbackup/database/MDatabase_Impl.java` | Same Reference/BaRe file path | MATCH |
| 147 | `org/swiftapps/swiftbackup/detail/DetailActivity.java` | `org/swiftapps/swiftbackup/detail/DetailActivity.java` | Same Reference/BaRe file path | MATCH |
| 148 | `org/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver.java` | `org/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver.java` | Same Reference/BaRe file path | MATCH |
| 149 | `org/swiftapps/swiftbackup/folders/data/BackupInfo.java` | `org/swiftapps/swiftbackup/folders/data/BackupInfo.java` | Same Reference/BaRe file path | MATCH |
| 150 | `org/swiftapps/swiftbackup/folders/data/BackupResult.java` | `org/swiftapps/swiftbackup/folders/data/BackupResult.java` | Same Reference/BaRe file path | MATCH |
| 151 | `org/swiftapps/swiftbackup/folders/data/BackupStats.java` | `org/swiftapps/swiftbackup/folders/data/BackupStats.java` | Same Reference/BaRe file path | MATCH |
| 152 | `org/swiftapps/swiftbackup/folders/data/BackupType.java` | `org/swiftapps/swiftbackup/folders/data/BackupType.java` | Same Reference/BaRe file path | MATCH |
| 153 | `org/swiftapps/swiftbackup/folders/data/ChainValidationResult.java` | `org/swiftapps/swiftbackup/folders/data/ChainValidationResult.java` | Same Reference/BaRe file path | MATCH |
| 154 | `org/swiftapps/swiftbackup/folders/data/Changes.java` | `org/swiftapps/swiftbackup/folders/data/Changes.java` | Same Reference/BaRe file path | MATCH |
| 155 | `org/swiftapps/swiftbackup/folders/data/FileEntry.java` | `org/swiftapps/swiftbackup/folders/data/FileEntry.java` | Same Reference/BaRe file path | MATCH |
| 156 | `org/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup.java` | `org/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup.java` | Same Reference/BaRe file path | MATCH |
| 157 | `org/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot.java` | `org/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot.java` | Same Reference/BaRe file path | MATCH |
| 158 | `org/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup.java` | `org/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup.java` | Same Reference/BaRe file path | MATCH |
| 159 | `org/swiftapps/swiftbackup/folders/data/FolderItem.java` | `org/swiftapps/swiftbackup/folders/data/FolderItem.java` | Same Reference/BaRe file path | MATCH |
| 160 | `org/swiftapps/swiftbackup/folders/data/FolderMetadata.java` | `org/swiftapps/swiftbackup/folders/data/FolderMetadata.java` | Same Reference/BaRe file path | MATCH |
| 161 | `org/swiftapps/swiftbackup/folders/data/FolderState.java` | `org/swiftapps/swiftbackup/folders/data/FolderState.java` | Same Reference/BaRe file path | MATCH |
| 162 | `org/swiftapps/swiftbackup/folders/data/Manifest.java` | `org/swiftapps/swiftbackup/folders/data/Manifest.java` | Same Reference/BaRe file path | MATCH |
| 163 | `org/swiftapps/swiftbackup/folders/data/ManifestInfo.java` | `org/swiftapps/swiftbackup/folders/data/ManifestInfo.java` | Same Reference/BaRe file path | MATCH |
| 164 | `org/swiftapps/swiftbackup/folders/data/RestoreResult.java` | `org/swiftapps/swiftbackup/folders/data/RestoreResult.java` | Same Reference/BaRe file path | MATCH |
| 165 | `org/swiftapps/swiftbackup/folders/data/a.java` | `org/swiftapps/swiftbackup/folders/data/a.java` | Same Reference/BaRe file path | MATCH |
| 166 | `org/swiftapps/swiftbackup/folders/data/b.java` | `org/swiftapps/swiftbackup/folders/data/b.java` | Same Reference/BaRe file path | MATCH |
| 167 | `org/swiftapps/swiftbackup/folders/data/c.java` | `org/swiftapps/swiftbackup/folders/data/c.java` | Same Reference/BaRe file path | MATCH |
| 168 | `org/swiftapps/swiftbackup/folders/ui/FolderDetailActivity.java` | `org/swiftapps/swiftbackup/folders/ui/FolderDetailActivity.java` | Same Reference/BaRe file path | MATCH |
| 169 | `org/swiftapps/swiftbackup/folders/ui/FolderEditActivity.java` | `org/swiftapps/swiftbackup/folders/ui/FolderEditActivity.java` | Same Reference/BaRe file path | MATCH |
| 170 | `org/swiftapps/swiftbackup/folders/ui/FolderPickerActivity.java` | `org/swiftapps/swiftbackup/folders/ui/FolderPickerActivity.java` | Same Reference/BaRe file path | MATCH |
| 171 | `org/swiftapps/swiftbackup/folders/ui/FoldersDashActivity.java` | `org/swiftapps/swiftbackup/folders/ui/FoldersDashActivity.java` | Same Reference/BaRe file path | MATCH |
| 172 | `org/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity.java` | `org/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity.java` | Same Reference/BaRe file path | MATCH |
| 173 | `org/swiftapps/swiftbackup/home/HomeActivity.java` | `org/swiftapps/swiftbackup/home/HomeActivity.java` | Same Reference/BaRe file path | MATCH |
| 174 | `org/swiftapps/swiftbackup/home/cloud/CloudBackupTag.java` | `org/swiftapps/swiftbackup/home/cloud/CloudBackupTag.java` | Same Reference/BaRe file path | MATCH |
| 175 | `org/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity.java` | `org/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity.java` | Same Reference/BaRe file path | MATCH |
| 176 | `org/swiftapps/swiftbackup/home/schedule/ScheduleService.java` | `org/swiftapps/swiftbackup/home/schedule/ScheduleService.java` | Same Reference/BaRe file path | MATCH |
| 177 | `org/swiftapps/swiftbackup/home/schedule/a.java` | `org/swiftapps/swiftbackup/home/schedule/a.java` | Same Reference/BaRe file path | MATCH |
| 178 | `org/swiftapps/swiftbackup/home/schedule/b.java` | `org/swiftapps/swiftbackup/home/schedule/b.java` | Same Reference/BaRe file path | MATCH |
| 179 | `org/swiftapps/swiftbackup/home/schedule/c.java` | `org/swiftapps/swiftbackup/home/schedule/c.java` | Same Reference/BaRe file path | MATCH |
| 180 | `org/swiftapps/swiftbackup/home/schedule/d.java` | `org/swiftapps/swiftbackup/home/schedule/d.java` | Same Reference/BaRe file path | MATCH |
| 181 | `org/swiftapps/swiftbackup/home/schedule/data/GlobalScheduleError.java` | `org/swiftapps/swiftbackup/home/schedule/data/GlobalScheduleError.java` | Same Reference/BaRe file path | MATCH |
| 182 | `org/swiftapps/swiftbackup/home/schedule/data/ScheduleData.java` | `org/swiftapps/swiftbackup/home/schedule/data/ScheduleData.java` | Same Reference/BaRe file path | MATCH |
| 183 | `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItem.java` | `org/swiftapps/swiftbackup/home/schedule/data/ScheduleItem.java` | Same Reference/BaRe file path | MATCH |
| 184 | `org/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails.java` | `org/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails.java` | Same Reference/BaRe file path | MATCH |
| 185 | `org/swiftapps/swiftbackup/home/schedule/data/a.java` | `org/swiftapps/swiftbackup/home/schedule/data/a.java` | Same Reference/BaRe file path | MATCH |
| 186 | `org/swiftapps/swiftbackup/home/schedule/data/b.java` | `org/swiftapps/swiftbackup/home/schedule/data/b.java` | Same Reference/BaRe file path | MATCH |
| 187 | `org/swiftapps/swiftbackup/home/schedule/data/c.java` | `org/swiftapps/swiftbackup/home/schedule/data/c.java` | Same Reference/BaRe file path | MATCH |
| 188 | `org/swiftapps/swiftbackup/home/schedule/data/d.java` | `org/swiftapps/swiftbackup/home/schedule/data/d.java` | Same Reference/BaRe file path | MATCH |
| 189 | `org/swiftapps/swiftbackup/home/schedule/data/e.java` | `org/swiftapps/swiftbackup/home/schedule/data/e.java` | Same Reference/BaRe file path | MATCH |
| 190 | `org/swiftapps/swiftbackup/home/schedule/data/f.java` | `org/swiftapps/swiftbackup/home/schedule/data/f.java` | Same Reference/BaRe file path | MATCH |
| 191 | `org/swiftapps/swiftbackup/home/schedule/data/g.java` | `org/swiftapps/swiftbackup/home/schedule/data/g.java` | Same Reference/BaRe file path | MATCH |
| 192 | `org/swiftapps/swiftbackup/home/schedule/data/h.java` | `org/swiftapps/swiftbackup/home/schedule/data/h.java` | Same Reference/BaRe file path | MATCH |
| 193 | `org/swiftapps/swiftbackup/home/schedule/data/i.java` | `org/swiftapps/swiftbackup/home/schedule/data/i.java` | Same Reference/BaRe file path | MATCH |
| 194 | `org/swiftapps/swiftbackup/home/schedule/data/j.java` | `org/swiftapps/swiftbackup/home/schedule/data/j.java` | Same Reference/BaRe file path | MATCH |
| 195 | `org/swiftapps/swiftbackup/home/schedule/data/k.java` | `org/swiftapps/swiftbackup/home/schedule/data/k.java` | Same Reference/BaRe file path | MATCH |
| 196 | `org/swiftapps/swiftbackup/home/schedule/data/l.java` | `org/swiftapps/swiftbackup/home/schedule/data/l.java` | Same Reference/BaRe file path | MATCH |
| 197 | `org/swiftapps/swiftbackup/home/schedule/data/m.java` | `org/swiftapps/swiftbackup/home/schedule/data/m.java` | Same Reference/BaRe file path | MATCH |
| 198 | `org/swiftapps/swiftbackup/home/schedule/data/n.java` | `org/swiftapps/swiftbackup/home/schedule/data/n.java` | Same Reference/BaRe file path | MATCH |
| 199 | `org/swiftapps/swiftbackup/home/schedule/data/o.java` | `org/swiftapps/swiftbackup/home/schedule/data/o.java` | Same Reference/BaRe file path | MATCH |
| 200 | `org/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView.java` | `org/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView.java` | Same Reference/BaRe file path | MATCH |
| 201 | `org/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity.java` | `org/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity.java` | Same Reference/BaRe file path | MATCH |
| 202 | `org/swiftapps/swiftbackup/home/search/HomeSearchActivity.java` | `org/swiftapps/swiftbackup/home/search/HomeSearchActivity.java` | Same Reference/BaRe file path | MATCH |
| 203 | `org/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity.java` | `org/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity.java` | Same Reference/BaRe file path | MATCH |
| 204 | `org/swiftapps/swiftbackup/intro/IntroActivity.java` | `org/swiftapps/swiftbackup/intro/IntroActivity.java` | Same Reference/BaRe file path | MATCH |
| 205 | `org/swiftapps/swiftbackup/intro/IntroBenefitCardView.java` | `org/swiftapps/swiftbackup/intro/IntroBenefitCardView.java` | Same Reference/BaRe file path | MATCH |
| 206 | `org/swiftapps/swiftbackup/intro/IntroPermissionCardView.java` | `org/swiftapps/swiftbackup/intro/IntroPermissionCardView.java` | Same Reference/BaRe file path | MATCH |
| 207 | `org/swiftapps/swiftbackup/intro/a.java` | `org/swiftapps/swiftbackup/intro/a.java` | Same Reference/BaRe file path | MATCH |
| 208 | `org/swiftapps/swiftbackup/intro/b.java` | `org/swiftapps/swiftbackup/intro/b.java` | Same Reference/BaRe file path | MATCH |
| 209 | `org/swiftapps/swiftbackup/intro/c.java` | `org/swiftapps/swiftbackup/intro/c.java` | Same Reference/BaRe file path | MATCH |
| 210 | `org/swiftapps/swiftbackup/intro/d.java` | `org/swiftapps/swiftbackup/intro/d.java` | Same Reference/BaRe file path | MATCH |
| 211 | `org/swiftapps/swiftbackup/intro/e.java` | `org/swiftapps/swiftbackup/intro/e.java` | Same Reference/BaRe file path | MATCH |
| 212 | `org/swiftapps/swiftbackup/jobs/AlarmReceiver.java` | `org/swiftapps/swiftbackup/jobs/AlarmReceiver.java` | Same Reference/BaRe file path | MATCH |
| 213 | `org/swiftapps/swiftbackup/jobs/BootReceiver.java` | `org/swiftapps/swiftbackup/jobs/BootReceiver.java` | Same Reference/BaRe file path | MATCH |
| 214 | `org/swiftapps/swiftbackup/locale/LocaleActivity.java` | `org/swiftapps/swiftbackup/locale/LocaleActivity.java` | Same Reference/BaRe file path | MATCH |
| 215 | `org/swiftapps/swiftbackup/manage/ManageSpaceActivity.java` | `org/swiftapps/swiftbackup/manage/ManageSpaceActivity.java` | Same Reference/BaRe file path | MATCH |
| 216 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity.java` | `org/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity.java` | Same Reference/BaRe file path | MATCH |
| 217 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity.java` | `org/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity.java` | Same Reference/BaRe file path | MATCH |
| 218 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/a.java` | `org/swiftapps/swiftbackup/messagescalls/backuprestore/a.java` | Same Reference/BaRe file path | MATCH |
| 219 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/b.java` | `org/swiftapps/swiftbackup/messagescalls/backuprestore/b.java` | Same Reference/BaRe file path | MATCH |
| 220 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/c.java` | `org/swiftapps/swiftbackup/messagescalls/backuprestore/c.java` | Same Reference/BaRe file path | MATCH |
| 221 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/d.java` | `org/swiftapps/swiftbackup/messagescalls/backuprestore/d.java` | Same Reference/BaRe file path | MATCH |
| 222 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/e.java` | `org/swiftapps/swiftbackup/messagescalls/backuprestore/e.java` | Same Reference/BaRe file path | MATCH |
| 223 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/f.java` | `org/swiftapps/swiftbackup/messagescalls/backuprestore/f.java` | Same Reference/BaRe file path | MATCH |
| 224 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/g.java` | `org/swiftapps/swiftbackup/messagescalls/backuprestore/g.java` | Same Reference/BaRe file path | MATCH |
| 225 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/h.java` | `org/swiftapps/swiftbackup/messagescalls/backuprestore/h.java` | Same Reference/BaRe file path | MATCH |
| 226 | `org/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity.java` | `org/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity.java` | Same Reference/BaRe file path | MATCH |
| 227 | `org/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity.java` | `org/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity.java` | Same Reference/BaRe file path | MATCH |
| 228 | `org/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity.java` | `org/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity.java` | Same Reference/BaRe file path | MATCH |
| 229 | `org/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity.java` | `org/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity.java` | Same Reference/BaRe file path | MATCH |
| 230 | `org/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity.java` | `org/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity.java` | Same Reference/BaRe file path | MATCH |
| 231 | `org/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity.java` | `org/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity.java` | Same Reference/BaRe file path | MATCH |
| 232 | `org/swiftapps/swiftbackup/messagescalls/defaulthandler/ComposeSmsActivity.java` | `org/swiftapps/swiftbackup/messagescalls/defaulthandler/ComposeSmsActivity.java` | Same Reference/BaRe file path | MATCH |
| 233 | `org/swiftapps/swiftbackup/messagescalls/defaulthandler/HeadlessSmsSendService.java` | `org/swiftapps/swiftbackup/messagescalls/defaulthandler/HeadlessSmsSendService.java` | Same Reference/BaRe file path | MATCH |
| 234 | `org/swiftapps/swiftbackup/messagescalls/defaulthandler/MmsReceiver.java` | `org/swiftapps/swiftbackup/messagescalls/defaulthandler/MmsReceiver.java` | Same Reference/BaRe file path | MATCH |
| 235 | `org/swiftapps/swiftbackup/messagescalls/defaulthandler/SmsReceiver.java` | `org/swiftapps/swiftbackup/messagescalls/defaulthandler/SmsReceiver.java` | Same Reference/BaRe file path | MATCH |
| 236 | `org/swiftapps/swiftbackup/model/StorageInfoLocal.java` | `org/swiftapps/swiftbackup/model/StorageInfoLocal.java` | Same Reference/BaRe file path | MATCH |
| 237 | `org/swiftapps/swiftbackup/model/app/AppCloudBackup.java` | `org/swiftapps/swiftbackup/model/app/AppCloudBackup.java` | Same Reference/BaRe file path | MATCH |
| 238 | `org/swiftapps/swiftbackup/model/app/AppCloudBackups.java` | `org/swiftapps/swiftbackup/model/app/AppCloudBackups.java` | Same Reference/BaRe file path | MATCH |
| 239 | `org/swiftapps/swiftbackup/model/app/AppSpecialDataPayload.java` | `org/swiftapps/swiftbackup/model/app/AppSpecialDataPayload.java` | Same Reference/BaRe file path | MATCH |
| 240 | `org/swiftapps/swiftbackup/model/app/CloudMetadata.java` | `org/swiftapps/swiftbackup/model/app/CloudMetadata.java` | Same Reference/BaRe file path | MATCH |
| 241 | `org/swiftapps/swiftbackup/model/app/LocalMetadata.java` | `org/swiftapps/swiftbackup/model/app/LocalMetadata.java` | Same Reference/BaRe file path | MATCH |
| 242 | `org/swiftapps/swiftbackup/model/firebase/AppSettings.java` | `org/swiftapps/swiftbackup/model/firebase/AppSettings.java` | Same Reference/BaRe file path | MATCH |
| 243 | `org/swiftapps/swiftbackup/model/firebase/WallsCloudDetails.java` | `org/swiftapps/swiftbackup/model/firebase/WallsCloudDetails.java` | Same Reference/BaRe file path | MATCH |
| 244 | `org/swiftapps/swiftbackup/model/firebase/WifiCloudDetails.java` | `org/swiftapps/swiftbackup/model/firebase/WifiCloudDetails.java` | Same Reference/BaRe file path | MATCH |
| 245 | `org/swiftapps/swiftbackup/model/provider/CallLogItem.java` | `org/swiftapps/swiftbackup/model/provider/CallLogItem.java` | Same Reference/BaRe file path | MATCH |
| 246 | `org/swiftapps/swiftbackup/notice/NoticeItem.java` | `org/swiftapps/swiftbackup/notice/NoticeItem.java` | Same Reference/BaRe file path | MATCH |
| 247 | `org/swiftapps/swiftbackup/notice/NoticeListActivity.java` | `org/swiftapps/swiftbackup/notice/NoticeListActivity.java` | Same Reference/BaRe file path | MATCH |
| 248 | `org/swiftapps/swiftbackup/notice/NoticeViewActivity.java` | `org/swiftapps/swiftbackup/notice/NoticeViewActivity.java` | Same Reference/BaRe file path | MATCH |
| 249 | `org/swiftapps/swiftbackup/password/PasswordStrategyActivity.java` | `org/swiftapps/swiftbackup/password/PasswordStrategyActivity.java` | Same Reference/BaRe file path | MATCH |
| 250 | `org/swiftapps/swiftbackup/password/UserPasswordActivity.java` | `org/swiftapps/swiftbackup/password/UserPasswordActivity.java` | Same Reference/BaRe file path | MATCH |
| 251 | `org/swiftapps/swiftbackup/premium/NoGmsPremium.java` | `org/swiftapps/swiftbackup/premium/NoGmsPremium.java` | Same Reference/BaRe file path | MATCH |
| 252 | `org/swiftapps/swiftbackup/premium/PremiumActivity.java` | `org/swiftapps/swiftbackup/premium/PremiumActivity.java` | Same Reference/BaRe file path | MATCH |
| 253 | `org/swiftapps/swiftbackup/settings/AppSwipeActionsActivity.java` | `org/swiftapps/swiftbackup/settings/AppSwipeActionsActivity.java` | Same Reference/BaRe file path | MATCH |
| 254 | `org/swiftapps/swiftbackup/settings/FolderBackupStrategy.java` | `org/swiftapps/swiftbackup/settings/FolderBackupStrategy.java` | Same Reference/BaRe file path | MATCH |
| 255 | `org/swiftapps/swiftbackup/settings/FolderRestoreStrategy.java` | `org/swiftapps/swiftbackup/settings/FolderRestoreStrategy.java` | Same Reference/BaRe file path | MATCH |
| 256 | `org/swiftapps/swiftbackup/settings/LicensesActivity.java` | `org/swiftapps/swiftbackup/settings/LicensesActivity.java` | Same Reference/BaRe file path | MATCH |
| 257 | `org/swiftapps/swiftbackup/settings/MSwitchPreference.java` | `org/swiftapps/swiftbackup/settings/MSwitchPreference.java` | Same Reference/BaRe file path | MATCH |
| 258 | `org/swiftapps/swiftbackup/settings/MultipleBackupStrategy.java` | `org/swiftapps/swiftbackup/settings/MultipleBackupStrategy.java` | Same Reference/BaRe file path | MATCH |
| 259 | `org/swiftapps/swiftbackup/settings/MultipleBackupsActivity.java` | `org/swiftapps/swiftbackup/settings/MultipleBackupsActivity.java` | Same Reference/BaRe file path | MATCH |
| 260 | `org/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity.java` | `org/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity.java` | Same Reference/BaRe file path | MATCH |
| 261 | `org/swiftapps/swiftbackup/settings/SettingsActivity.java` | `org/swiftapps/swiftbackup/settings/SettingsActivity.java` | Same Reference/BaRe file path | MATCH |
| 262 | `org/swiftapps/swiftbackup/settings/SettingsDetailActivity.java` | `org/swiftapps/swiftbackup/settings/SettingsDetailActivity.java` | Same Reference/BaRe file path | MATCH |
| 263 | `org/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData.java` | `org/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData.java` | Same Reference/BaRe file path | MATCH |
| 264 | `org/swiftapps/swiftbackup/settings/a.java` | `org/swiftapps/swiftbackup/settings/a.java` | Same Reference/BaRe file path | MATCH |
| 265 | `org/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem.java` | `org/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem.java` | Same Reference/BaRe file path | MATCH |
| 266 | `org/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity.java` | `org/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity.java` | Same Reference/BaRe file path | MATCH |
| 267 | `org/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity.java` | `org/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity.java` | Same Reference/BaRe file path | MATCH |
| 268 | `org/swiftapps/swiftbackup/settings/b.java` | `org/swiftapps/swiftbackup/settings/b.java` | Same Reference/BaRe file path | MATCH |
| 269 | `org/swiftapps/swiftbackup/settings/c.java` | `org/swiftapps/swiftbackup/settings/c.java` | Same Reference/BaRe file path | MATCH |
| 270 | `org/swiftapps/swiftbackup/settings/d.java` | `org/swiftapps/swiftbackup/settings/d.java` | Same Reference/BaRe file path | MATCH |
| 271 | `org/swiftapps/swiftbackup/settings/e.java` | `org/swiftapps/swiftbackup/settings/e.java` | Same Reference/BaRe file path | MATCH |
| 272 | `org/swiftapps/swiftbackup/settings/f.java` | `org/swiftapps/swiftbackup/settings/f.java` | Same Reference/BaRe file path | MATCH |
| 273 | `org/swiftapps/swiftbackup/settings/g.java` | `org/swiftapps/swiftbackup/settings/g.java` | Same Reference/BaRe file path | MATCH |
| 274 | `org/swiftapps/swiftbackup/settings/h.java` | `org/swiftapps/swiftbackup/settings/h.java` | Same Reference/BaRe file path | MATCH |
| 275 | `org/swiftapps/swiftbackup/settings/i.java` | `org/swiftapps/swiftbackup/settings/i.java` | Same Reference/BaRe file path | MATCH |
| 276 | `org/swiftapps/swiftbackup/settings/j.java` | `org/swiftapps/swiftbackup/settings/j.java` | Same Reference/BaRe file path | MATCH |
| 277 | `org/swiftapps/swiftbackup/settings/k.java` | `org/swiftapps/swiftbackup/settings/k.java` | Same Reference/BaRe file path | MATCH |
| 278 | `org/swiftapps/swiftbackup/shortcuts/ShortcutsActivity.java` | `org/swiftapps/swiftbackup/shortcuts/ShortcutsActivity.java` | Same Reference/BaRe file path | MATCH |
| 279 | `org/swiftapps/swiftbackup/slog/SLogActivity.java` | `org/swiftapps/swiftbackup/slog/SLogActivity.java` | Same Reference/BaRe file path | MATCH |
| 280 | `org/swiftapps/swiftbackup/tasks/NotificationTaskCancelReceiver.java` | `org/swiftapps/swiftbackup/tasks/NotificationTaskCancelReceiver.java` | Same Reference/BaRe file path | MATCH |
| 281 | `org/swiftapps/swiftbackup/tasks/PreconditionsActivity.java` | `org/swiftapps/swiftbackup/tasks/PreconditionsActivity.java` | Same Reference/BaRe file path | MATCH |
| 282 | `org/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary.java` | `org/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary.java` | Same Reference/BaRe file path | MATCH |
| 283 | `org/swiftapps/swiftbackup/tasks/TaskService.java` | `org/swiftapps/swiftbackup/tasks/TaskService.java` | Same Reference/BaRe file path | MATCH |
| 284 | `org/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry.java` | `org/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry.java` | Same Reference/BaRe file path | MATCH |
| 285 | `org/swiftapps/swiftbackup/tasks/model/SyncOption.java` | `org/swiftapps/swiftbackup/tasks/model/SyncOption.java` | Same Reference/BaRe file path | MATCH |
| 286 | `org/swiftapps/swiftbackup/tasks/ui/TaskActivity.java` | `org/swiftapps/swiftbackup/tasks/ui/TaskActivity.java` | Same Reference/BaRe file path | MATCH |
| 287 | `org/swiftapps/swiftbackup/views/LocaleTextView.java` | `org/swiftapps/swiftbackup/views/LocaleTextView.java` | Same Reference/BaRe file path | MATCH |
| 288 | `org/swiftapps/swiftbackup/views/MAppBarLayout.java` | `org/swiftapps/swiftbackup/views/MAppBarLayout.java` | Same Reference/BaRe file path | MATCH |
| 289 | `org/swiftapps/swiftbackup/views/MCheckBox.java` | `org/swiftapps/swiftbackup/views/MCheckBox.java` | Same Reference/BaRe file path | MATCH |
| 290 | `org/swiftapps/swiftbackup/views/NoSwipeViewPager.java` | `org/swiftapps/swiftbackup/views/NoSwipeViewPager.java` | Same Reference/BaRe file path | MATCH |
| 291 | `org/swiftapps/swiftbackup/views/PreCachingGridLayoutManager.java` | `org/swiftapps/swiftbackup/views/PreCachingGridLayoutManager.java` | Same Reference/BaRe file path | MATCH |
| 292 | `org/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager.java` | `org/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager.java` | Same Reference/BaRe file path | MATCH |
| 293 | `org/swiftapps/swiftbackup/views/ProviderChipGroup.java` | `org/swiftapps/swiftbackup/views/ProviderChipGroup.java` | Same Reference/BaRe file path | MATCH |
| 294 | `org/swiftapps/swiftbackup/views/QuickRecyclerView.java` | `org/swiftapps/swiftbackup/views/QuickRecyclerView.java` | Same Reference/BaRe file path | MATCH |
| 295 | `org/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager.java` | `org/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager.java` | Same Reference/BaRe file path | MATCH |
| 296 | `org/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch.java` | `org/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch.java` | Same Reference/BaRe file path | MATCH |
| 297 | `org/swiftapps/swiftbackup/views/SwiftListItemCardView.java` | `org/swiftapps/swiftbackup/views/SwiftListItemCardView.java` | Same Reference/BaRe file path | MATCH |
| 298 | `org/swiftapps/swiftbackup/views/SwiftSegmentConstraintLayout.java` | `org/swiftapps/swiftbackup/views/SwiftSegmentConstraintLayout.java` | Same Reference/BaRe file path | MATCH |
| 299 | `org/swiftapps/swiftbackup/views/SwiftSegmentLinearLayout.java` | `org/swiftapps/swiftbackup/views/SwiftSegmentLinearLayout.java` | Same Reference/BaRe file path | MATCH |
| 300 | `org/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup.java` | `org/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup.java` | Same Reference/BaRe file path | MATCH |
| 301 | `org/swiftapps/swiftbackup/views/a.java` | `org/swiftapps/swiftbackup/views/a.java` | Same Reference/BaRe file path | MATCH |
| 302 | `org/swiftapps/swiftbackup/walls/WallApplyActivity.java` | `org/swiftapps/swiftbackup/walls/WallApplyActivity.java` | Same Reference/BaRe file path | MATCH |
| 303 | `org/swiftapps/swiftbackup/walls/WallsDashActivity.java` | `org/swiftapps/swiftbackup/walls/WallsDashActivity.java` | Same Reference/BaRe file path | MATCH |
| 304 | `org/swiftapps/swiftbackup/walls/WallsManageActivity.java` | `org/swiftapps/swiftbackup/walls/WallsManageActivity.java` | Same Reference/BaRe file path | MATCH |
| 305 | `org/swiftapps/swiftbackup/wifi/PasswordInfo.java` | `org/swiftapps/swiftbackup/wifi/PasswordInfo.java` | Same Reference/BaRe file path | MATCH |
| 306 | `org/swiftapps/swiftbackup/wifi/WifiActivity.java` | `org/swiftapps/swiftbackup/wifi/WifiActivity.java` | Same Reference/BaRe file path | MATCH |
| 307 | `rikka/shizuku/ShizukuProvider.java` | `rikka/shizuku/ShizukuProvider.java` | Same Reference/BaRe file path | MATCH |

## FILE AUDIT RESULT

| Metric | Result |
|---|---:|
| BaRe Java files inspected | 307 |
| Same-path Reference counterparts | 306 |
| Filename mismatch against Reference | 1 |
| Unmapped BaRe Java files | 0 |
| File-level UNKNOWN | 0 |
| File-level BLOCKED | 0 |

## FILE-LEVEL MISMATCH

| Reference File | BaRe File | Status |
|---|---|---|
| `org/swiftapps/filesystem/a.java` | `org/swiftapps/filesystem/RandomAccessFileWriter.java` | FILENAME MISMATCH — BaRe must follow Reference filename |

## FILE-LEVEL GATE

| Requirement | State |
|---|---|
| Every current `app/src/main/java` file has a Reference counterpart | PASS |
| 1:1 Reference → BaRe file rows recorded | PASS |
| No files grouped into a new replacement file | PASS |
| File audit scope complete | PASS — 307 rows |
| Class/function audit | NOT STARTED — OUT OF CURRENT SCOPE |
| Runtime/build verification | NOT STARTED — OUT OF CURRENT SCOPE |
