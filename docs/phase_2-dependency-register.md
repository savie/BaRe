# Phase 2 — Dependency / Delegation Register

**State:** BLOCKED — BUILD VERIFICATION REQUIRED

## Rule

A Reference dependency is eligible for delegation only when BaRe can prove:
1. dependency declaration;
2. class resolution;
3. package/class match;
4. manifest registration match;
5. authority/configuration match where applicable;
6. relevant runtime behavior;
7. compatibility identifiers where required.

The Reference APK/decompile proves embedded classes, resources, license inventory, and manifest registrations. It does **not** by itself prove BaRe's Gradle graph or build resolution.

## External Manifest Components

| ID | Reference component | Owner family | Reference evidence | BaRe status |
|---|---|---|---|---|
| ACT-072 | `net.openid.appauth.RedirectUriReceiverActivity` | AppAuth | manifest + decompiled class + third-party license inventory | BLOCKED |
| ACT-073 | `com.gun0912.tedpermission.TedPermissionActivity` | TedPermission | manifest + decompiled class + third-party license inventory | BLOCKED |
| ACT-074 | `com.microsoft.identity.client.BrowserTabActivity` | MSAL | manifest + decompiled class + version marker 8.3.2 | BLOCKED |
| ACT-075 | `com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity` | MSAL | manifest + decompiled class + version marker 8.3.2 | BLOCKED |
| ACT-076 | `com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity` | MSAL | manifest + decompiled class + version marker 8.3.2 | BLOCKED |
| ACT-077 | `com.microsoft.identity.client.helper.BrokerHelperActivity` | MSAL | manifest + decompiled class + version marker 8.3.2 | BLOCKED |
| ACT-078 | `com.microsoft.identity.client.CurrentTaskBrowserTabActivity` | MSAL | manifest + decompiled class + version marker 8.3.2 | BLOCKED |
| ACT-079 | `com.microsoft.identity.common.internal.providers.oauth2.SilentAuthorizationActivity` | MSAL | manifest + decompiled class + version marker 8.3.2 | BLOCKED |
| ACT-080 | `com.microsoft.identity.common.internal.broker.BrokerActivity` | MSAL | manifest + decompiled class + version marker 8.3.2 | BLOCKED |
| ACT-081 | `com.microsoft.identity.common.internal.broker.InstallCertActivityLauncher` | MSAL | manifest + decompiled class + version marker 8.3.2 | BLOCKED |
| ACT-082 | `com.google.firebase.auth.internal.GenericIdpActivity` | Firebase Auth | manifest + decompiled class + Reference artifact version evidence | BLOCKED |
| ACT-083 | `com.google.firebase.auth.internal.RecaptchaActivity` | Firebase Auth | manifest + decompiled class + Reference artifact version evidence | BLOCKED |
| ACT-084 | `androidx.credentials.playservices.controllers.identityauth.HiddenActivity` | AndroidX Credentials | manifest + decompiled class + version 1.6.0 | BLOCKED |
| ACT-085 | `androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity` | AndroidX Credentials | manifest + decompiled class + version 1.6.0 | BLOCKED |
| ACT-086 | `com.google.android.gms.auth.api.signin.internal.SignInHubActivity` | Google Sign-In | manifest + decompiled class + Reference artifact version evidence | BLOCKED |
| ACT-087 | `net.openid.appauth.AuthorizationManagementActivity` | AppAuth | manifest + decompiled class + third-party license inventory | BLOCKED |
| ACT-088 | `com.android.billingclient.api.ProxyBillingActivity` | Play Billing | manifest + decompiled class + version 8.3.0 | BLOCKED |
| ACT-089 | `com.android.billingclient.api.ProxyBillingActivityV2` | Play Billing | manifest + decompiled class + version 8.3.0 | BLOCKED |
| ACT-090 | `com.google.android.gms.common.api.GoogleApiActivity` | Google Play Services | manifest + decompiled class + Reference artifact version evidence | BLOCKED |
| ACT-091 | `com.pcloud.sdk.AuthorizationActivity` | pCloud SDK | manifest + decompiled class + version marker 1.11.0 | BLOCKED |
| ACT-092 | `com.pcloud.sdk.CustomTabActivity` | pCloud SDK | manifest + decompiled class + version marker 1.11.0 | BLOCKED |
| ACT-093 | `com.yubico.yubikit.android.ui.OtpActivity` | YubiKit | manifest + decompiled class + YubiKit Android license inventory | BLOCKED |
| ACT-094 | `com.yubico.yubikit.android.ui.YubiKeyPromptActivity` | YubiKit | manifest + decompiled class + YubiKit Android license inventory | BLOCKED |
| ACT-095 | `com.google.android.play.core.common.PlayCoreDialogWrapperActivity` | Play Core | manifest + decompiled class + Reference artifact version evidence | BLOCKED |
| SRV-004 | `com.google.firebase.components.ComponentDiscoveryService` | Firebase | manifest + decompiled class + Reference artifact version evidence | BLOCKED |
| SRV-005 | `androidx.credentials.playservices.CredentialProviderMetadataHolder` | AndroidX Credentials | manifest + decompiled class + version 1.6.0 | BLOCKED |
| SRV-006 | `com.google.android.gms.auth.api.signin.RevocationBoundService` | Google Sign-In | manifest + decompiled class + Reference artifact version evidence | BLOCKED |
| SRV-007 | `com.google.firebase.sessions.SessionLifecycleService` | Firebase Sessions | manifest + decompiled class + version evidence | BLOCKED |
| SRV-008 | `androidx.room.MultiInstanceInvalidationService` | AndroidX Room | manifest + decompiled class + version 2.8.4 | BLOCKED |
| SRV-009 | `com.google.android.datatransport.runtime.backends.TransportBackendDiscovery` | DataTransport | manifest + decompiled class + version 3.3.0 | BLOCKED |
| SRV-010 | `com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService` | DataTransport | manifest + decompiled class + version 3.3.0 | BLOCKED |
| RCV-009 | `androidx.profileinstaller.ProfileInstallReceiver` | AndroidX ProfileInstaller | manifest + decompiled class + version 1.4.0 | BLOCKED |
| RCV-010 | `com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver` | DataTransport | manifest + decompiled class + version 3.3.0 | BLOCKED |
| PRV-001 | `androidx.core.content.FileProvider` | AndroidX Core | manifest + decompiled class + version 1.18.0 | BLOCKED |
| PRV-002 | `rikka.shizuku.ShizukuProvider` | Shizuku | manifest + decompiled class + Shizuku license inventory | BLOCKED |
| PRV-003 | `com.gun0912.tedpermission.provider.TedPermissionProvider` | TedPermission | manifest + decompiled class + third-party license inventory | BLOCKED |
| PRV-004 | `androidx.startup.InitializationProvider` | AndroidX Startup | manifest + decompiled class + version 1.2.0 | BLOCKED |

## Newly Confirmed Third-Party Inventory

Reference `res/raw/third_party_license_metadata` identifies these families explicitly:
- Yubico YubiKit Android
- Yubico YubiKit Core
- Yubico YubiKit Piv
- Shizuku API - aidl
- Shizuku API - API
- Shizuku API - provider
- Shizuku API - shared
- TedPermission
- TedPermission-Normal
- AppAuth for Android

This is strong evidence that these families are embedded/used in the Reference distribution. The metadata does **not** expose their exact versions.

## Outside-Reference Candidate Coordinates

Public Maven evidence confirms candidate coordinates exist:
- AppAuth: `net.openid:appauth:0.11.1`. citeturn0search2
- TedPermission Normal: `io.github.ParkSangGwon:tedpermission-normal`, with published versions including 3.4.2. citeturn0search3
- Shizuku provider: `dev.rikka.shizuku:provider:13.1.5`; the matching API artifact is also published at 13.1.5. citeturn0search0turn0search1
- YubiKit has separate Android/Core/Piv artifact families. citeturn0search4

These remain **candidate coordinates only**. They are not promoted to Reference versions.

## YubiKit Version Fingerprint

Reference YubiKit UI classes expose the same public conceptual API family documented by YubiKit Android 2.x/3.x, including `YubiKeyPromptActivity`, `OtpActivity`, and the ARG_* prompt contract. Public documentation confirms this API family exists in 2.1.0, 2.4.0, 2.8.2, and 3.2.0. citeturn2search0turn2search1turn2search2turn2search3

This narrows the family but does **not** identify the exact Reference version. Keep UNKNOWN.

## Current Decision

Do not fabricate missing coordinates/versions for:
- AppAuth version
- TedPermission version
- YubiKit version/modules
- Shizuku version
- unresolved Firebase transitive/common/installations modules

The 37 entity states remain BLOCKED until BaRe proves dependency resolution and build.
