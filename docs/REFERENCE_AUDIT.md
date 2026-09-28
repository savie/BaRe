# Reference Audit — Swift Backup 5.1.0 (620)

## Source artifact

Audited directly from the supplied decompiled Reference artifact:

- `SwiftBackup-5.1.0-620-decompiled.zip`
- JADX source tree
- APKTool decoded resource tree
- APKTool AndroidManifest
- APKTool `apktool.yml`

## Verified Reference identity

- Package: `org.swiftapps.swiftbackup`
- Application class: `org.swiftapps.swiftbackup.SwiftApp`
- Version name: `5.1.0`
- Version code: `620`
- Reference APK filename: `5.1.0 (620).apk`
- APKTool minSdk: `26`
- APKTool targetSdk: `37`
- Manifest compileSdkVersion: `37`

## Source inventory

| Artifact | Count |
|---|---:|
| JADX Java sources (all packages) | 12,611 |
| JADX Java sources under `org.swiftapps.swiftbackup` | 259 |
| APKTool smali files | 11,752 |
| Android activities | 95 |
| Android activities under Reference package | 71 |
| Android services | 10 |
| Android services under Reference package | 3 |
| Android receivers | 10 |
| Android receivers under Reference package | 8 |
| Android providers | 4 |
| Android providers under Reference package | 0 |

The JADX tree also contains decompiled dependency/library sources. The Reference application's own package is substantially smaller than the total decompiled Java count.

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

The decoded resource tree includes many AndroidX/Material/library resources in addition to application resources.

## Manifest baseline

The Reference manifest declares storage, notification, SMS, contacts, call-log, network, biometric, billing, wallpaper, boot, package-management, usage-statistics, foreground-service, alarm, shortcut, and related permissions.

Reference application configuration includes:

- `allowBackup=false`
- `allowClearUserData=false`
- `largeHeap=true`
- `requestLegacyExternalStorage=true`
- `supportsRtl=true`
- `enableOnBackInvokedCallback=true`
- `android:name="org.swiftapps.swiftbackup.SwiftApp"`
- `android:theme="@style/SwiftTheme"`
- `android:icon="@mipmap/ic_launcher"`
- `android:localeConfig="@xml/locales_config"`
- `android:networkSecurityConfig="@xml/network_security_config"`

The launcher Activity is:

`org.swiftapps.swiftbackup.intro.IntroActivity`

The primary post-intro Activity is:

`org.swiftapps.swiftbackup.home.HomeActivity`

## Major Reference feature/package evidence

The Reference package contains, among others:

- `intro`
- `home`
- `appslist`
- `appconfigs`
- `detail`
- `apkshare`
- `folders`
- `messagescalls`
- `cloud`
- `settings`
- `premium`
- `tasks`
- `password`
- `wifi`
- `walls`
- `database`
- `jobs`
- `notice`
- `blacklist`
- `contributor`
- `apptasks`
- `slog`

Concrete Reference classes verified include:

- `SwiftApp`
- `IntroActivity`
- `HomeActivity`
- `TaskService`
- `ScheduleService`
- `CallsBackupRestoreActivity`
- `MessagesBackupRestoreActivity`
- `SettingsActivity`
- `PremiumActivity`
- `FolderBackup` related data classes
- `BackupResult`
- `RestoreResult`

## UI evidence

Reference contains dedicated intro layouts:

- `intro_activity.xml`
- `intro_activity_permissions.xml`
- `intro_activity_sign_in.xml`
- `intro_benefit_card_view.xml`
- `intro_permission_card_view.xml`
- `intro_skip_sign_in_button.xml`
- `intro_storage_setup_failure_dialog.xml`

Reference contains dedicated home layouts:

- `home_activity.xml`
- `home_appbar.xml`
- `home_search_activity.xml`
- `home_search_result_item.xml`
- `home_search_app_result_item.xml`
- `home_search_folder_result_item.xml`
- `home_search_quick_action_item.xml`

## Important reconstruction rule

The Reference internal package is `org.swiftapps.swiftbackup`.

Per the handoff, Swift-specific internal identifiers must not be globally renamed merely because they contain the word Swift. Each identifier must be analyzed by function/dependency.

The BaRe application identity/branding changes are handled separately as Authorized Deviations.

## Current parity implication

The previous Phase 1 blocker — inaccessible Reference artifact — is **RESOLVED** for the supplied local source artifact.

Reference inventory can now proceed from actual evidence.

Remaining Phase 1 work:

1. Complete component-to-source mapping.
2. Complete resource-to-screen mapping.
3. Complete navigation/workflow mapping.
4. Complete dependency/integration mapping.
5. Record explicit Authorized Deviations.
6. Establish the first reconstruction implementation gate.

No Reference-dependent item should be marked MATCH until its corresponding BaRe implementation has been verified.
