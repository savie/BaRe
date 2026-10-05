# Phase 2 — Dependency Artifact Map

**State:** REVERSE-ENGINEERED REFERENCE MAP — BUILD NOT VERIFIED

## Purpose

This register narrows the 37 dependency-owned manifest entities to artifact families and versions supported by the Reference APK/decompile.

Classification:
- REFERENCE EVIDENCE — observed directly in Reference files.
- VERSION MATCH — Reference-side version identity is explicit enough to identify a published artifact.
- COORDINATE CANDIDATE — plausible public coordinate, but Reference parity is not proven.
- BUILD VERIFIED — BaRe resolves and compiles against the coordinate.

## Artifact Map

| Family | Reference evidence | Artifact coordinate | Reference version | State |
|---|---|---|---|---|
| AppAuth | net.openid.appauth.* | net.openid:appauth | unresolved | UNKNOWN |
| TedPermission | com.gun0912.tedpermission.* | io.github.ParkSangGwon:tedpermission-normal | unresolved | UNKNOWN |
| MSAL | MsalUtils emits sdkVersion("8.3.2") | com.microsoft.identity.client:msal | 8.3.2 | VERSION MATCH |
| Firebase Auth | FirebaseAuth, registrar, auth activities | com.google.firebase:firebase-auth | 24.1.0 | VERSION MATCH |
| Firebase Sessions | FirebaseSessionsRegistrar, SessionLifecycleService; runtime log | com.google.firebase:firebase-sessions | 3.0.6 | VERSION MATCH |
| Firebase Database | DatabaseRegistrar; runtime error string | com.google.firebase:firebase-database | 22.0.1 | VERSION MATCH |
| Firebase Crashlytics | FirebaseCrashlytics, registrar; HTTP/API markers | com.google.firebase:firebase-crashlytics | 20.0.6 | VERSION MATCH |
| Firebase Installations | FirebaseInstallationsRegistrar | com.google.firebase:firebase-installations | unresolved | UNKNOWN |
| Firebase Common / Components | common/components registrars | Firebase common/components families | unresolved | UNKNOWN |
| Firebase DataTransport bridge | com.google.firebase.datatransport.TransportRegistrar | Firebase/DataTransport graph | unresolved bridge version | UNKNOWN |
| Google Sign-In | SignInHubActivity, RevocationBoundService, Sign-In APIs | com.google.android.gms:play-services-auth | 21.5.1 | VERSION MATCH |
| GMS Auth Base | GMS auth internals | com.google.android.gms:play-services-auth-base | 18.0.10 | VERSION MATCH |
| GMS Tasks | com.google.android.gms.tasks.* | com.google.android.gms:play-services-tasks | 18.4.0 | VERSION MATCH |
| GMS Base | GoogleApiActivity, common API | com.google.android.gms:play-services-base | 18.5.0 | VERSION MATCH |
| GMS Basement | common runtime | com.google.android.gms:play-services-basement | 18.9.0 | VERSION MATCH |
| Google FIDO | com.google.android.gms.fido.* | com.google.android.gms:play-services-fido | 21.0.0 | VERSION MATCH |
| Google Identity Credentials | com.google.android.gms.identitycredentials.* | com.google.android.gms:play-services-identity-credentials | 16.0.0-alpha08 | VERSION MATCH |
| Google Auth BlockStore | auth blockstore APIs present | com.google.android.gms:play-services-auth-blockstore | 16.4.0 | VERSION MATCH |
| Google Auth API Phone | auth phone APIs present | com.google.android.gms:play-services-auth-api-phone | 18.0.2 | VERSION MATCH |
| Google ID | Google ID APIs present | com.google.android.libraries.identity.googleid:googleid | 1.1.1 | VERSION MATCH |
| Play Billing | manifest metadata + billing APIs | com.android.billingclient:billing | 8.3.0 | VERSION MATCH |
| pCloud | pCloud-SDK-1.11.0 | com.pcloud.sdk:android | 1.11.0 | VERSION MATCH |
| YubiKit | com.yubico.yubikit.* | YubiKit Android/Core/Piv families | unresolved | UNKNOWN |
| Play Core Common | PlayCoreDialogWrapperActivity | com.google.android.play:core-common | 2.0.3 | VERSION MATCH |
| Play Integrity | com.google.android.play.core.integrity.* | com.google.android.play:integrity | 1.3.0 | VERSION MATCH |
| Shizuku | rikka.shizuku.ShizukuProvider; API 13 protocol marker | dev.rikka.shizuku:provider | unresolved | UNKNOWN |
| DataTransport Runtime | transport runtime services; User-Agent datatransport/3.3.0 | com.google.android.datatransport:transport-runtime | 3.3.0 | VERSION MATCH |

## Additional Reference Artifact Metadata

The extracted Reference unknown/*.properties files directly expose artifact versions for:
- billing 8.3.0
- core-common 2.0.3
- firebase-auth 24.1.0
- firebase-auth-interop 20.0.0
- firebase-database-collection 18.0.1
- firebase-encoders 17.0.0
- firebase-encoders-proto 16.0.0
- firebase-measurement-connector 20.0.1
- googleid 1.1.1
- integrity 1.3.0
- play-services-auth 21.5.1
- play-services-auth-api-phone 18.0.2
- play-services-auth-base 18.0.10
- play-services-auth-blockstore 16.4.0
- play-services-base 18.5.0
- play-services-basement 18.9.0
- play-services-fido 21.0.0
- play-services-identity-credentials 16.0.0-alpha08
- play-services-tasks 18.4.0
- recaptcha 18.6.1

Additional source/runtime identity:
- Firebase Sessions 3.0.6
- Firebase Database 22.0.1
- Firebase Crashlytics 20.0.6
- DataTransport Runtime 3.3.0
- MSAL 8.3.2
- pCloud SDK 1.11.0

These are Reference-side observations, not merely current public versions.

## Important Limitation

The Reference contains embedded dependency metadata, but that does not automatically reconstruct the complete original Gradle declaration/BOM.

In particular, exact versions remain unresolved for:
- AppAuth
- TedPermission
- Firebase Installations/Common/Components and some Firebase transitive modules
- YubiKit Android/Core/Piv
- Shizuku
- any dependency whose identity is only implied by another module

Do not fill these gaps from current Maven versions.

## Verification Gate

A dependency row may transition from BLOCKED only after BaRe proves:
1. exact dependency declaration;
2. successful class resolution;
3. package/class identity match;
4. manifest registration match;
5. authority/metadata/configuration match;
6. transitive compatibility;
7. Android Gradle build success.

Therefore this map substantially reduces UNKNOWN scope but does not close the P2 build gate.
