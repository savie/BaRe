# Phase 2 — Dependency / Delegation Register

**State:** BLOCKED — BUILD CONTRACT REQUIRED

## Rule

A Reference dependency is eligible for delegation only when BaRe can prove:
1. dependency declaration;
2. class resolution;
3. package/class match;
4. manifest registration match;
5. authority/configuration match where applicable;
6. relevant runtime behavior;
7. compatibility identifiers where required.

The Reference APK/decompile proves embedded classes and manifest registrations. It does **not** by itself prove BaRe's Gradle dependency graph.

## External Manifest Components

| ID | Reference component | Owner family | Reference evidence | BaRe status |
|---|---|---|---|---|
| ACT-072 | `net.openid.appauth.RedirectUriReceiverActivity` | AppAuth | manifest + decompiled class | BLOCKED |
| ACT-073 | `com.gun0912.tedpermission.TedPermissionActivity` | TedPermission | manifest + decompiled class | BLOCKED |
| ACT-074 | `com.microsoft.identity.client.BrowserTabActivity` | MSAL | manifest + decompiled class | BLOCKED |
| ACT-075 | `com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity` | MSAL | manifest + decompiled class | BLOCKED |
| ACT-076 | `com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity` | MSAL | manifest + decompiled class | BLOCKED |
| ACT-077 | `com.microsoft.identity.client.helper.BrokerHelperActivity` | MSAL | manifest + decompiled class | BLOCKED |
| ACT-078 | `com.microsoft.identity.client.CurrentTaskBrowserTabActivity` | MSAL | manifest + decompiled class | BLOCKED |
| ACT-079 | `com.microsoft.identity.common.internal.providers.oauth2.SilentAuthorizationActivity` | MSAL | manifest + decompiled class | BLOCKED |
| ACT-080 | `com.microsoft.identity.common.internal.broker.BrokerActivity` | MSAL | manifest + decompiled class | BLOCKED |
| ACT-081 | `com.microsoft.identity.common.internal.broker.InstallCertActivityLauncher` | MSAL | manifest + decompiled class | BLOCKED |
| ACT-082 | `com.google.firebase.auth.internal.GenericIdpActivity` | Firebase Auth | manifest + decompiled class | BLOCKED |
| ACT-083 | `com.google.firebase.auth.internal.RecaptchaActivity` | Firebase Auth | manifest + decompiled class | BLOCKED |
| ACT-084 | `androidx.credentials.playservices.controllers.identityauth.HiddenActivity` | AndroidX Credentials | manifest + decompiled class | BLOCKED |
| ACT-085 | `androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity` | AndroidX Credentials | manifest + decompiled class | BLOCKED |
| ACT-086 | `com.google.android.gms.auth.api.signin.internal.SignInHubActivity` | Google Sign-In | manifest + decompiled class | BLOCKED |
| ACT-087 | `net.openid.appauth.AuthorizationManagementActivity` | AppAuth | manifest + decompiled class | BLOCKED |
| ACT-088 | `com.android.billingclient.api.ProxyBillingActivity` | Play Billing | manifest + decompiled class | BLOCKED |
| ACT-089 | `com.android.billingclient.api.ProxyBillingActivityV2` | Play Billing | manifest + decompiled class | BLOCKED |
| ACT-090 | `com.google.android.gms.common.api.GoogleApiActivity` | Google Play Services | manifest + decompiled class | BLOCKED |
| ACT-091 | `com.pcloud.sdk.AuthorizationActivity` | pCloud SDK | manifest + decompiled class | BLOCKED |
| ACT-092 | `com.pcloud.sdk.CustomTabActivity` | pCloud SDK | manifest + decompiled class | BLOCKED |
| ACT-093 | `com.yubico.yubikit.android.ui.OtpActivity` | YubiKit | manifest + decompiled class | BLOCKED |
| ACT-094 | `com.yubico.yubikit.android.ui.YubiKeyPromptActivity` | YubiKit | manifest + decompiled class | BLOCKED |
| ACT-095 | `com.google.android.play.core.common.PlayCoreDialogWrapperActivity` | Play Core | manifest + decompiled class | BLOCKED |
| SRV-004 | `com.google.firebase.components.ComponentDiscoveryService` | Firebase | manifest + decompiled class | BLOCKED |
| SRV-005 | `androidx.credentials.playservices.CredentialProviderMetadataHolder` | AndroidX Credentials | manifest + decompiled class | BLOCKED |
| SRV-006 | `com.google.android.gms.auth.api.signin.RevocationBoundService` | Google Sign-In | manifest + decompiled class | BLOCKED |
| SRV-007 | `com.google.firebase.sessions.SessionLifecycleService` | Firebase Sessions | manifest + decompiled class | BLOCKED |
| SRV-008 | `androidx.room.MultiInstanceInvalidationService` | AndroidX Room | manifest + decompiled class | BLOCKED |
| SRV-009 | `com.google.android.datatransport.runtime.backends.TransportBackendDiscovery` | DataTransport | manifest + decompiled class | BLOCKED |
| SRV-010 | `com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService` | DataTransport | manifest + decompiled class | BLOCKED |
| RCV-009 | `androidx.profileinstaller.ProfileInstallReceiver` | AndroidX ProfileInstaller | manifest + decompiled class | BLOCKED |
| RCV-010 | `com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver` | DataTransport | manifest + decompiled class | BLOCKED |
| PRV-001 | `androidx.core.content.FileProvider` | AndroidX Core | manifest + decompiled class | BLOCKED |
| PRV-002 | `rikka.shizuku.ShizukuProvider` | Shizuku | manifest + decompiled class | BLOCKED |
| PRV-003 | `com.gun0912.tedpermission.provider.TedPermissionProvider` | TedPermission | manifest + decompiled class | BLOCKED |
| PRV-004 | `androidx.startup.InitializationProvider` | AndroidX Startup | manifest + decompiled class | BLOCKED |

## Reference Version Evidence

The decompiled Reference contains version metadata for several dependency families, including:

- AndroidX AppCompat 1.7.1
- AndroidX Core 1.18.0
- AndroidX Credentials 1.6.0
- AndroidX Fragment 1.8.9
- AndroidX ProfileInstaller 1.4.0
- AndroidX Room 2.8.4
- AndroidX Startup 1.2.0
- Material 1.14.0
- Kotlin Coroutines 1.11.0

These values are Reference evidence only. They are **not** copied into BaRe as Gradle declarations until the actual build contract is established.

## Current Decision

Do not fabricate missing coordinates/versions for:
- AppAuth
- TedPermission
- MSAL
- Firebase
- Google Sign-In
- Play Billing
- pCloud SDK
- YubiKit
- Play Core
- Shizuku
- DataTransport

**P2 blocker:** BaRe needs an explicit Android build/dependency contract before these 37 entities can transition from BLOCKED to DELEGATED/VERIFIED.


## Newly Extracted Reference-Side Identity Evidence

The Reference artifact contains additional identity signals beyond the earlier META-INF version files:

- Play Billing manifest metadata: `com.google.android.play.billingclient.version = 8.3.0`.
- MSAL client code sends `sdkVersion("8.3.2")` in `com.microsoft.identity.client.internal.MsalUtils`.
- pCloud SDK code contains the marker `pCloud-SDK-1.11.0`.
- Google Play Services manifest resource `google_play_services_version = 12451000` is present. This is an embedded compatibility integer, not by itself a unique published artifact version, so it is not converted to a Gradle version.

These are stronger Reference-side signals and may be used to narrow exact dependency resolution, but they still do not prove every transitive dependency coordinate.

## Outside-Reference Candidate Coordinates

Web research identifies valid published coordinates for several families, for example AppAuth `net.openid:appauth:0.11.1`, Shizuku provider `dev.rikka.shizuku:provider:13.1.5`, and current YubiKit Android artifacts. These are **external candidates only** and are not treated as Reference versions without a direct match to the Reference artifact.

Likewise, current MSAL and Google Play Services publications exist, but current publication versions are not evidence that the Reference APK used them.

Therefore the entity states remain BLOCKED until the Reference-to-coordinate match is proven.
