# BΛR☰ — Namespace/Brand Inventory (read-only)

**Basis:** `SwiftBackup-5.1.0-620-decompiled.zip`, extracted `output/apktool/` into a temporary workspace. This is an inventory only; no source, reference branch, APK, or implementation file was modified.

## Summary
- Text/config/code files scanned: **15,667**
- Native `.so` files across ABIs: **32**
- Counts below are raw occurrences, not unique identifiers; generated resource XML, repeated descriptors, and comments may inflate totals.

| Search pattern | Occurrences | Files with hits |
|---|---:|---:|
| `org.swiftapps.swiftbackup` | 333 | 115 |
| `org/swiftapps/swiftbackup` | 31,320 | 1,542 |
| `Lorg/swiftapps/swiftbackup/` | 31,320 | 1,542 |
| `com/swiftapps/` | 268 | 27 |
| `SwiftBackup / Swift Backup` | 738 | 87 |
| `SwiftLogger / swiftlogger` | 126 | 36 |
| `SwiftTar / swifttar` | 59 | 10 |
| `SWIFT uppercase` | 3 | 2 |

## High-priority findings
- `org.swiftapps.swiftbackup` appears in the manifest, Smali, resource XML, intent/action strings, OAuth redirect strings, and other configuration. Treat as a controlled package migration, not a blind global replacement.
- The `com/swiftapps/` namespace is a separate native/archive library namespace (`com.swiftapps.sba`), including `SbaSwiftTarNative`. It is not the app package `org.swiftapps.swiftbackup`; changing it requires coordinating the Java/Smali declarations with JNI exports and any owned source for the library.
- `SwiftBackup` branding occurs in default and localized string resources and in Smali class names. UI copy can be handled separately from code identifiers.
- `SwiftLogger` occurs in resource strings/layouts and Smali; determine whether the user-facing logger is renamed, retained as an internal component, or replaced before touching identifiers.
- `SwiftTar` appears in `libsba_archive.so` JNI exports and diagnostic strings. JNI symbol names are ABI contracts; don’t rename them without matching declarations or rebuilding the library.

## Native library inventory
| ABI / library | Size | Relevant strings found | JNI symbol examples |
|---|---:|---|---|
| `lib/arm64-v8a/libconceal.so` | 258,816 B | — | `—` |
| `lib/arm64-v8a/libcrashlytics-common.so` | 864,616 B | — | `—` |
| `lib/arm64-v8a/libcrashlytics-handler.so` | 222,056 B | — | `—` |
| `lib/arm64-v8a/libcrashlytics-trampoline.so` | 4,744 B | — | `—` |
| `lib/arm64-v8a/libcrashlytics.so` | 231,960 B | — | `—` |
| `lib/arm64-v8a/libdatastore_shared_counter.so` | 7,112 B | — | `—` |
| `lib/arm64-v8a/libnative-lib.so` | 399,256 B | Java_org_swiftapps_swiftbackup_SwiftApp_ | `Java_org_swiftapps_swiftbackup_SwiftApp_getGoogleAuthAndroidClientId; Java_org_swiftapps_swiftbackup_SwiftApp_getGoogleAuthWebClientId; Java_org_swiftapps_swiftbackup_SwiftApp_isLocalNetworkTcpBlockedByPermission` |
| `lib/arm64-v8a/libsba_archive.so` | 1,357,720 B | Java_com_swiftapps_sba_SbaSwiftTarNative_, SwiftTar | `Java_com_swiftapps_sba_SbaRuntimeNative_version; Java_com_swiftapps_sba_SbaSwiftTarNative_createTarToFdWithWriteStatsRaw; Java_com_swiftapps_sba_SbaSwiftTarNative_listTarEntriesFromFdRaw` |
| `lib/armeabi-v7a/libconceal.so` | 197,992 B | — | `—` |
| `lib/armeabi-v7a/libcrashlytics-common.so` | 534,164 B | — | `—` |
| `lib/armeabi-v7a/libcrashlytics-handler.so` | 126,236 B | — | `—` |
| `lib/armeabi-v7a/libcrashlytics-trampoline.so` | 3,304 B | — | `—` |
| `lib/armeabi-v7a/libcrashlytics.so` | 132,856 B | — | `—` |
| `lib/armeabi-v7a/libdatastore_shared_counter.so` | 4,416 B | — | `—` |
| `lib/armeabi-v7a/libnative-lib.so` | 257,956 B | Java_org_swiftapps_swiftbackup_SwiftApp_ | `Java_org_swiftapps_swiftbackup_SwiftApp_getGoogleAuthAndroidClientId; Java_org_swiftapps_swiftbackup_SwiftApp_getGoogleAuthWebClientId; Java_org_swiftapps_swiftbackup_SwiftApp_isLocalNetworkTcpBlockedByPermission` |
| `lib/armeabi-v7a/libsba_archive.so` | 951,004 B | Java_com_swiftapps_sba_SbaSwiftTarNative_, SwiftTar | `Java_com_swiftapps_sba_SbaRuntimeNative_version; Java_com_swiftapps_sba_SbaSwiftTarNative_createTarToFdWithWriteStatsRaw; Java_com_swiftapps_sba_SbaSwiftTarNative_listTarEntriesFromFdRaw` |
| `lib/x86/libconceal.so` | 256,976 B | — | `—` |
| `lib/x86/libcrashlytics-common.so` | 863,764 B | — | `—` |
| `lib/x86/libcrashlytics-handler.so` | 198,372 B | — | `—` |
| `lib/x86/libcrashlytics-trampoline.so` | 3,576 B | — | `—` |
| `lib/x86/libcrashlytics.so` | 208,744 B | — | `—` |
| `lib/x86/libdatastore_shared_counter.so` | 5,148 B | — | `—` |
| `lib/x86/libnative-lib.so` | 346,992 B | Java_org_swiftapps_swiftbackup_SwiftApp_ | `Java_org_swiftapps_swiftbackup_SwiftApp_getGoogleAuthAndroidClientId; Java_org_swiftapps_swiftbackup_SwiftApp_getGoogleAuthWebClientId; Java_org_swiftapps_swiftbackup_SwiftApp_isLocalNetworkTcpBlockedByPermission` |
| `lib/x86/libsba_archive.so` | 1,581,576 B | Java_com_swiftapps_sba_SbaSwiftTarNative_, SwiftTar | `Java_com_swiftapps_sba_SbaRuntimeNative_version; Java_com_swiftapps_sba_SbaSwiftTarNative_createTarToFdWithWriteStatsRaw; Java_com_swiftapps_sba_SbaSwiftTarNative_listTarEntriesFromFdRaw` |
| `lib/x86_64/libconceal.so` | 271,992 B | — | `—` |
| `lib/x86_64/libcrashlytics-common.so` | 860,232 B | — | `—` |
| `lib/x86_64/libcrashlytics-handler.so` | 210,016 B | — | `—` |
| `lib/x86_64/libcrashlytics-trampoline.so` | 4,600 B | — | `—` |
| `lib/x86_64/libcrashlytics.so` | 219,664 B | — | `—` |
| `lib/x86_64/libdatastore_shared_counter.so` | 6,224 B | — | `—` |
| `lib/x86_64/libnative-lib.so` | 387,280 B | Java_org_swiftapps_swiftbackup_SwiftApp_ | `Java_org_swiftapps_swiftbackup_SwiftApp_getGoogleAuthAndroidClientId; Java_org_swiftapps_swiftbackup_SwiftApp_getGoogleAuthWebClientId; Java_org_swiftapps_swiftbackup_SwiftApp_isLocalNetworkTcpBlockedByPermission` |
| `lib/x86_64/libsba_archive.so` | 1,553,864 B | Java_com_swiftapps_sba_SbaSwiftTarNative_, SwiftTar | `Java_com_swiftapps_sba_SbaRuntimeNative_version; Java_com_swiftapps_sba_SbaSwiftTarNative_createTarToFdWithWriteStatsRaw; Java_com_swiftapps_sba_SbaSwiftTarNative_listTarEntriesFromFdRaw` |

## Files with most app-package references
### `org.swiftapps.swiftbackup`
| File | Occurrences |
|---|---:|
| `AndroidManifest.xml` | 128 |
| `res/layout/app_item.xml` | 12 |
| `res/layout/filter_bottom_dialog.xml` | 10 |
| `res/layout/cloud_info_card_active_folder.xml` | 5 |
| `res/layout/dash_card_summary.xml` | 5 |
| `res/layout/schedule_card.xml` | 5 |
| `res/layout/schedule_fragment_card.xml` | 5 |
| `res/layout/cloud_info_card_storage.xml` | 4 |
| `res/layout/home_search_activity.xml` | 4 |
| `res/layout/intro_activity_sign_in.xml` | 4 |
| `res/xml/settings_apps.xml` | 4 |
| `res/xml/settings_labs.xml` | 4 |
| `res/layout/appbar_with_filters.xml` | 3 |
| `res/layout/cloud_connect_item.xml` | 3 |
| `res/layout/cloud_diagnostics_test_item.xml` | 3 |
| `res/layout/cloud_orphan_file_item.xml` | 3 |
| `res/layout/folders_dash_item.xml` | 3 |
| `res/layout/intro_activity_permissions.xml` | 3 |
| `res/layout/smscalls_backup_restore_item.xml` | 3 |
| `res/xml/settings.xml` | 3 |
| `res/xml/settings_cloud.xml` | 3 |
| `res/layout-w600dp/home_activity.xml` | 2 |
| `res/layout/app_action_item_advanced.xml` | 2 |
| `res/layout/app_actions_dialog.xml` | 2 |
| `res/layout/app_list_activity.xml` | 2 |
| `res/layout/appbar.xml` | 2 |
| `res/layout/blacklist_item.xml` | 2 |
| `res/layout/config_item.xml` | 2 |
| `res/layout/folder_picker_activity.xml` | 2 |
| `res/layout/folders_batch_activity.xml` | 2 |
| `res/layout/folders_dash_activity.xml` | 2 |
| `res/layout/home_activity.xml` | 2 |
| `res/layout/more_list_item.xml` | 2 |
| `res/layout/premium_features_item.xml` | 2 |
| `res/layout/quick_action_item.xml` | 2 |
### `org/swiftapps/swiftbackup`
| File | Occurrences |
|---|---:|
| `smali_classes2/org/swiftapps/swiftbackup/model/app/CloudMetadata.smali` | 826 |
| `smali_classes2/org/swiftapps/swiftbackup/model/app/LocalMetadata.smali` | 653 |
| `smali_classes2/org/swiftapps/swiftbackup/model/firebase/AppSettings.smali` | 355 |
| `smali_classes2/org/swiftapps/swiftbackup/home/schedule/ScheduleService.smali` | 345 |
| `smali_classes2/org/swiftapps/swiftbackup/appconfigs/data/ConfigSettings.smali` | 299 |
| `smali_classes2/org/swiftapps/swiftbackup/cloud/protocols/CloudCredentials.smali` | 262 |
| `smali_classes2/org/swiftapps/swiftbackup/model/provider/CallLogItem.smali` | 261 |
| `smali_classes2/org/swiftapps/swiftbackup/cloud/connect/CsActivity.smali` | 229 |
| `smali_classes2/org/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions.smali` | 215 |
| `smali_classes2/wj3.smali` | 215 |
| `smali_classes2/org/swiftapps/swiftbackup/intro/IntroActivity.smali` | 213 |
| `smali_classes2/org/swiftapps/swiftbackup/home/schedule/data/ScheduleData.smali` | 210 |
| `smali_classes2/g52.smali` | 208 |
| `smali_classes2/org/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders.smali` | 206 |
| `smali_classes2/org/swiftapps/swiftbackup/folders/data/FolderMetadata.smali` | 198 |
| `smali_classes2/org/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels.smali` | 190 |
| `smali_classes2/c40.smali` | 183 |
| `smali_classes2/h47.smali` | 175 |
| `smali_classes2/ek3.smali` | 171 |
| `smali/xw.smali` | 159 |
| `smali_classes2/org/swiftapps/swiftbackup/notice/NoticeItem.smali` | 143 |
| `smali/org/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView.smali` | 142 |
| `smali_classes2/org/swiftapps/swiftbackup/folders/data/Manifest.smali` | 140 |
| `smali_classes2/org/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig.smali` | 139 |
| `smali_classes2/org/swiftapps/swiftbackup/home/search/HomeSearchActivity.smali` | 139 |
| `smali_classes2/org/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs.smali` | 138 |
| `smali_classes2/org/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages.smali` | 138 |
| `smali_classes2/org/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi.smali` | 137 |
| `smali_classes2/org/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers.smali` | 136 |
| `smali_classes2/w20.smali` | 132 |
| `smali_classes2/mu3.smali` | 127 |
| `smali/org/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout.smali` | 124 |
| `smali_classes2/c7.smali` | 118 |
| `smali_classes2/e7.smali` | 118 |
| `smali_classes2/org/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.smali` | 116 |
### `com/swiftapps/`
| File | Occurrences |
|---|---:|
| `smali/com/swiftapps/sba/internal/tar/SbaTarEntryInfo.smali` | 64 |
| `smali/com/swiftapps/sba/SbaSwiftTarNative.smali` | 34 |
| `smali/z85.smali` | 20 |
| `smali/tu0.smali` | 19 |
| `smali/com/swiftapps/sba/SbaLibaegisCryptoNative.smali` | 17 |
| `smali/fp6.smali` | 12 |
| `smali/z07.smali` | 11 |
| `smali/com/swiftapps/sba/SbaZstdNative.smali` | 10 |
| `smali/bw.smali` | 8 |
| `smali_classes2/jj2.smali` | 8 |
| `smali/xh8.smali` | 7 |
| `smali/com/swiftapps/sba/SbaArchiveNative.smali` | 6 |
| `smali/n07.smali` | 6 |
| `smali/q07.smali` | 6 |
| `smali/vz6.smali` | 6 |
| `smali/wz6.smali` | 6 |
| `smali/com/swiftapps/sba/SbaNativeCrypto.smali` | 5 |
| `smali/com/swiftapps/sba/SbaRuntimeNative.smali` | 5 |
| `smali/ge.smali` | 3 |
| `smali/sy6.smali` | 3 |
| `smali_classes2/org/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a.smali` | 3 |
| `smali_classes2/tm3.smali` | 3 |
| `smali/yi0.smali` | 2 |
| `smali/com/swiftapps/sba/internal/progress/SbaNativeProgressListener.smali` | 1 |
| `smali/vq.smali` | 1 |
| `smali_classes2/m27.smali` | 1 |
| `smali_classes2/th5.smali` | 1 |

## Full machine-readable detail
`namespace-hits.csv` contains every scanned text/config file with matches for each listed pattern. It can be used as a checklist for the later migration pass.

## Recommended migration order
1. Establish exact target package: `com.bareapps.barebackup`; record app ID, manifest authorities, OAuth redirect URIs, Firebase client package and signing SHA fingerprints.
2. Migrate manifest/package declarations and references to app-owned classes, then rebuild and launch.
3. Update app-owned provider authorities, permissions, actions, deep links, and resource labels while preserving resource IDs expected by Smali.
4. Validate JNI mappings for `libnative-lib.so` and `libsba_archive.so` against `.method ... native` declarations; don’t mass-replace ELF symbol names.
5. Update UI branding in all locale resources and remaining messages; inspect logs/runtime for residual strings.
6. Only then decouple CI from `rewrite` and move all app-owned config/strings into `bare-implementation/`.