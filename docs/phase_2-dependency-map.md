# Phase 2 — Dependency Artifact Map

**State:** REVERSE-ENGINEERED CANDIDATE MAP — NOT VERIFIED

## Purpose

This register narrows the 37 dependency-owned manifest entities to the artifact families that can plausibly provide the observed Reference classes.

This document separates:

- **REFERENCE EVIDENCE** — observed directly in the Reference APK/decompile;
- **COORDINATE CANDIDATE** — public artifact coordinate found outside the Reference;
- **VERSION MATCH** — public coordinate/version is independently supported by a Reference-side identity signal;
- **BUILD VERIFIED** — BaRe resolves and compiles against the coordinate.

A coordinate candidate is never promoted to Reference truth merely because the class name matches.

## Artifact Map

| Family | Reference classes / evidence | Artifact candidate | Version evidence | State |
|---|---|---|---|---|
| AppAuth | `net.openid.appauth.AuthorizationManagementActivity`, `RedirectUriReceiverActivity` | `net.openid:appauth` | Public candidate 0.11.1; no direct Reference version signal | UNKNOWN |
| TedPermission | `com.gun0912.tedpermission.TedPermissionActivity`, `TedPermissionProvider` | `io.github.ParkSangGwon:tedpermission-normal` | Public candidate 3.4.2; no direct Reference version signal | UNKNOWN |
| MSAL | `com.microsoft.identity.client.*`, internal OAuth/broker activities; `MsalUtils` sends `sdkVersion("8.3.2")` | `com.microsoft.identity.client:msal` | **Reference identity 8.3.2**; public repository confirms 8.3.2 exists | CANDIDATE — VERSION MATCH |
| Firebase Auth | `GenericIdpActivity`, `RecaptchaActivity`, `FirebaseAuth`, `FirebaseAuthRegistrar` | `com.google.firebase:firebase-auth` | No direct Reference version signal | UNKNOWN |
| Firebase Sessions | `SessionLifecycleService`, `FirebaseSessionsRegistrar` | `com.google.firebase:firebase-sessions` | No direct Reference version signal | UNKNOWN |
| Firebase Database | `DatabaseRegistrar` | `com.google.firebase:firebase-database` | No direct Reference version signal | UNKNOWN |
| Firebase Crashlytics | `CrashlyticsRegistrar`, `FirebaseCrashlytics` | `com.google.firebase:firebase-crashlytics` | No direct Reference version signal | UNKNOWN |
| Firebase Installations | `FirebaseInstallationsRegistrar` | `com.google.firebase:firebase-installations` | No direct Reference version signal | UNKNOWN |
| Firebase Common | `FirebaseCommonRegistrar` | Firebase common runtime/transitive family | No direct Reference version signal | UNKNOWN |
| Firebase DataTransport bridge | `com.google.firebase.datatransport.TransportRegistrar` | Firebase/DataTransport transitive graph | No direct Reference version signal | UNKNOWN |
| Google Sign-In | `SignInHubActivity`, `RevocationBoundService`, `GoogleSignInAccount`, `GoogleSignInOptions` | `com.google.android.gms:play-services-auth` | Package/API match; Reference version unresolved | UNKNOWN |
| Google Play Services base/common | `GoogleApiActivity`, `com.google.android.gms.common.*`, tasks | Google Play Services base/tasks families | Reference integer `google_play_services_version=12451000`; integer is not a unique artifact version | UNKNOWN |
| Google FIDO | `com.google.android.gms.fido.common.Transport` | Google Play Services FIDO family | Package/API observed; version unresolved | UNKNOWN |
| Play Billing | `ProxyBillingActivity`, `ProxyBillingActivityV2`, `Purchase`, `PurchaseHistoryRecord`; manifest metadata | `com.android.billingclient:billing` | **Reference metadata 8.3.0**; public artifact 8.3.0 exists | CANDIDATE — VERSION MATCH |
| pCloud | `com.pcloud.sdk.*`; embedded marker `pCloud-SDK-1.11.0` | `com.pcloud.sdk:android` | **Reference identity 1.11.0**; public artifact 1.11.0 exists | CANDIDATE — VERSION MATCH |
| YubiKit UI | `OtpActivity`, `YubiKeyPromptActivity` | `com.yubico.yubikit:android` + relevant UI module(s) | Public current 3.2.0 exists; Reference version unresolved | UNKNOWN |
| Play Core / Play Integrity | `PlayCoreDialogWrapperActivity`, Integrity APIs | `com.google.android.play:core-common` and `com.google.android.play:integrity` family | Package/API evidence; exact Reference versions unresolved | UNKNOWN |
| Shizuku | `rikka.shizuku.ShizukuProvider` | `dev.rikka.shizuku:provider` | Public candidate 13.1.5; no direct Reference version signal | UNKNOWN |
| DataTransport runtime | `TransportBackendDiscovery`, `JobInfoSchedulerService`, `AlarmManagerSchedulerBroadcastReceiver` | `com.google.android.datatransport:transport-runtime` | Package/API evidence; exact Reference version unresolved | UNKNOWN |

## Reference-Side Usage Evidence

The Reference JADX source imports the following external families directly:

- AppAuth: `net.openid.appauth.*`
- TedPermission: `com.gun0912.tedpermission.*`
- MSAL: `com.microsoft.identity.*`
- Firebase: Auth, Components, Crashlytics, Database, Installations, Sessions and Firebase/DataTransport registrar packages
- Google Play Services: Auth/Sign-In, Common, Tasks, FIDO, Identity Credentials
- Play Billing: `com.android.billingclient.api.*`
- pCloud: `com.pcloud.sdk.*`
- YubiKit: `com.yubico.yubikit.*`
- Play Core: `com.google.android.play.core.*`
- DataTransport: `com.google.android.datatransport.*`

This proves Reference-side usage. It does not prove the exact Gradle graph.

## Strongest Version Matches

### MSAL

Reference source contains `sdkVersion("8.3.2")` in `com.microsoft.identity.client.internal.MsalUtils`.

External publication data confirms `com.microsoft.identity.client:msal:8.3.2` exists. Therefore the version is a strong Reference identity match, but BaRe class resolution is still unverified.

### Play Billing

Reference manifest metadata:

`com.google.android.play.billingclient.version = 8.3.0`

External publication data confirms:

`com.android.billingclient:billing:8.3.0`

This is a strong version/coordinate match candidate. Build resolution is still unverified.

### pCloud

Reference source contains the marker:

`pCloud-SDK-1.11.0`

External publication data confirms:

`com.pcloud.sdk:android:1.11.0`

This is a strong version/coordinate match candidate. Build resolution is still unverified.

## Do Not Promote Yet

The following remain unresolved even if public coordinates exist:

- AppAuth version
- TedPermission version
- Firebase module versions and complete BOM/module graph
- Google Sign-In / Play Services exact versions
- YubiKit exact Reference version and exact module set
- Play Core / Play Integrity exact Reference versions
- Shizuku exact Reference version
- DataTransport exact Reference version

## Verification Gate

A dependency row may transition from **BLOCKED** only after BaRe proves:

1. exact dependency declaration;
2. successful class resolution;
3. package/class identity match;
4. manifest component registration match;
5. authority/metadata/configuration match where applicable;
6. transitive dependency compatibility;
7. Android Gradle build success.

Therefore this map improves the investigation but **does not close the P2 dependency gate**.

## Next Action

Use the strongest matches first:

1. MSAL 8.3.2
2. Play Billing 8.3.0
3. pCloud Android 1.11.0

Then resolve the remaining families from Reference-side package usage, manifest metadata, embedded version markers, and published artifact metadata without substituting current versions for unresolved Reference versions.
