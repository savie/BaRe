# BΛR☰ Phase 1 — Reference Inventory

## Authority

- Reference: Swift Backup 5.1.0
- Version code: 620
- Target repository: savie/BaRe
- Implementation branch: rewrite
- Baseline authority: docs/bare.md
- Reference snapshot: `reference/` tree on branch `rewrite`

## Inventory status

**PHASE 1 — COMPLETE (100% evidence inventory).**

The Reference JADX/APKTool snapshot is present in the `rewrite` branch and was audited directly. Phase 1 is considered complete when the baseline identity, source/resource inventory, manifest baseline, component inventory, major feature/package domains, reconstruction deviations, and implementation gate are explicitly recorded.

| Domain | Status | Evidence |
|---|---|---|
| Reference identity | COMPLETE | Package, application class, version 5.1.0 / 620 verified |
| Reference source/class structure | COMPLETE | JADX + Smali snapshot inventoried |
| Reference package structure | COMPLETE | `org.swiftapps.swiftbackup` package domains recorded |
| AndroidManifest | COMPLETE | APKTool manifest audited |
| Activities | COMPLETE | 95 total / 71 Reference-package activities |
| Fragments / UI classes | COMPLETE | Major UI domains and reconstruction boundaries mapped; unresolved behavior remains UNKNOWN |
| Services | COMPLETE | 10 total / 3 Reference-package services |
| Receivers | COMPLETE | 10 total / 8 Reference-package receivers |
| Providers | COMPLETE | 4 total, all dependency/library providers; 0 Reference-package providers |
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

## Full Reference manifest component inventory

The Phase 1 manifest inventory records all Android manifest component declarations, not only the application-owned subset used by the Phase 2 skeleton gate.

| Component | Total Reference manifest | Application-owned (org.swiftapps.swiftbackup.*) | Dependency/library/integration |
|---|---:|---:|---:|
| Activities | 95 | 71 | 24 |
| Services | 10 | 3 | 7 |
| Receivers | 10 | 8 | 2 |
| Providers | 4 | 0 | 4 |

### Activities not included in the application-owned Phase 2 skeleton — 24

| # | Reference manifest Activity | Classification |
|---:|---|---|
| 1 | net.openid.appauth.RedirectUriReceiverActivity | Dependency/library |
| 2 | com.gun0912.tedpermission.TedPermissionActivity | Dependency/library |
| 3 | com.microsoft.identity.client.BrowserTabActivity | Dependency/library |
| 4 | com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity | Dependency/library |
| 5 | com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity | Dependency/library |
| 6 | com.microsoft.identity.client.helper.BrokerHelperActivity | Dependency/library |
| 7 | com.microsoft.identity.client.CurrentTaskBrowserTabActivity | Dependency/library |
| 8 | com.microsoft.identity.common.internal.providers.oauth2.SilentAuthorizationActivity | Dependency/library |
| 9 | com.microsoft.identity.common.internal.broker.BrokerActivity | Dependency/library |
| 10 | com.microsoft.identity.common.internal.broker.InstallCertActivityLauncher | Dependency/library |
| 11 | com.google.firebase.auth.internal.GenericIdpActivity | Dependency/library |
| 12 | com.google.firebase.auth.internal.RecaptchaActivity | Dependency/library |
| 13 | androidx.credentials.playservices.controllers.identityauth.HiddenActivity | Dependency/library |
| 14 | androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity | Dependency/library |
| 15 | com.google.android.gms.auth.api.signin.internal.SignInHubActivity | Dependency/library |
| 16 | net.openid.appauth.AuthorizationManagementActivity | Dependency/library |
| 17 | com.android.billingclient.api.ProxyBillingActivity | Dependency/library |
| 18 | com.android.billingclient.api.ProxyBillingActivityV2 | Dependency/library |
| 19 | com.google.android.gms.common.api.GoogleApiActivity | Dependency/library |
| 20 | com.pcloud.sdk.AuthorizationActivity | Dependency/library |
| 21 | com.pcloud.sdk.CustomTabActivity | Dependency/library |
| 22 | com.yubico.yubikit.android.ui.OtpActivity | Dependency/library |
| 23 | com.yubico.yubikit.android.ui.YubiKeyPromptActivity | Dependency/library |
| 24 | com.google.android.play.core.common.PlayCoreDialogWrapperActivity | Dependency/library |

### Services not included in the application-owned Phase 2 skeleton — 7

| # | Reference manifest Service | Classification |
|---:|---|---|
| 1 | com.google.firebase.components.ComponentDiscoveryService | Dependency/library |
| 2 | androidx.credentials.playservices.CredentialProviderMetadataHolder | Dependency/library |
| 3 | com.google.android.gms.auth.api.signin.RevocationBoundService | Dependency/library |
| 4 | com.google.firebase.sessions.SessionLifecycleService | Dependency/library |
| 5 | androidx.room.MultiInstanceInvalidationService | Dependency/library |
| 6 | com.google.android.datatransport.runtime.backends.TransportBackendDiscovery | Dependency/library |
| 7 | com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService | Dependency/library |

### Receivers not included in the application-owned Phase 2 skeleton — 2

| # | Reference manifest Receiver | Classification |
|---:|---|---|
| 1 | androidx.profileinstaller.ProfileInstallReceiver | Dependency/library |
| 2 | com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver | Dependency/library |

### Providers not included in the application-owned Phase 2 skeleton — 4

| # | Reference manifest Provider | Classification |
|---:|---|---|
| 1 | androidx.core.content.FileProvider | Dependency/library |
| 2 | rikka.shizuku.ShizukuProvider | Dependency/library |
| 3 | com.gun0912.tedpermission.provider.TedPermissionProvider | Dependency/library |
| 4 | androidx.startup.InitializationProvider | Dependency/library |

### Inventory boundary

The 24 Activities, 7 Services, 2 Receivers, and 4 Providers above are recorded Reference manifest components, but are not application-owned BaRe Phase 2 skeleton components. Their exclusion from the Phase 2 application-owned skeleton is an ownership classification only; it does not by itself declare any capability or integration surface irrelevant to later reconstruction. Any capability dependency exposed through these components remains subject to Phase 3, Phase 4, and Phase 5 reconciliation.

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

All evidence/inventory gates are closed.

Phase 1 does **not** claim runtime parity, feature parity, or build parity. Those belong to later phases.

Phase 1 is now frozen as the baseline for Phase 2 and subsequent vertical reconstruction.

