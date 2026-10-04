# External Component Dependency Reconciliation — Reference ZIP

## Scope

Canonical source of truth:
- /mnt/data/SwiftBackup-5.1.0-620-decompiled.zip
- /mnt/data/5.1.0 (620).apk

Target:
- savie/BaRe
- branch rewrite

Reference remains read-only.

## Component inventory

Reference manifest inventory:
- 95 Activities = 71 app-owned + 24 external/dependency
- 10 Services = 3 app-owned + 7 external/dependency
- 10 Receivers = 8 app-owned + 2 external/dependency
- 4 Providers = 2 app-owned + 2 external/dependency
- Total = 119; app-owned = 84; external/dependency = 35

The 71 app-owned Activities are already present in app/; no Activity skeleton regeneration is performed.

## Dependency evidence implemented in this batch

| Dependency | Evidence from canonical ZIP/APK | Target action |
|---|---|---|
| Microsoft MSAL | com/microsoft/identity/client/internal/MsalUtils.java contains SDK version 8.3.2; Reference manifest contains 8 MSAL Activities | com.microsoft.identity.client:msal:8.3.2 |
| pCloud SDK | Reference code emits "pCloud SDK Java 1.11.0"; Reference manifest contains AuthorizationActivity + CustomTabActivity | com.pcloud.sdk:android:1.11.0 |
| AndroidX Credentials | APK META-INF/androidx.credentials_credentials.version = 1.6.0; play-services-auth companion = 1.6.0 | credentials + credentials-play-services-auth |
| Room | APK META-INF/androidx.room_room-runtime.version = 2.8.4; Reference has MultiInstanceInvalidationService | room-runtime |
| ProfileInstaller | APK META-INF/androidx.profileinstaller_profileinstaller.version = 1.4.0; Reference has ProfileInstallReceiver | profileinstaller |
| Billing | APK billing.properties = 8.3.0; Reference has Billing Proxy activities | billing |
| Google Sign-In | APK play-services-auth.properties = 21.5.1; Reference has SignInHubActivity + RevocationBoundService | play-services-auth |
| Android DataTransport | Reference code contains User-Agent "datatransport/3.3.0 android/"; Reference has 2 DataTransport services + 1 receiver | transport-runtime |

## Explicit exclusions

### Firebase

Firebase components are present in the Reference APK, but Firebase is explicitly prohibited by the BaRe handoff. Therefore these are not reintroduced merely to reproduce manifest counts:

- com.google.firebase.auth.internal.GenericIdpActivity
- com.google.firebase.auth.internal.RecaptchaActivity
- com.google.firebase.components.ComponentDiscoveryService
- com.google.firebase.sessions.SessionLifecycleService

Classification:
AUTHORIZED BACKEND/DEPENDENCY DEVIATION per handoff.

### Still version-unresolved

The canonical ZIP proves the following dependency-owned contracts exist, but the exact artifact version is not encoded in the inspected APK/DEX evidence used for this batch:

- AppAuth:
  - net.openid.appauth.RedirectUriReceiverActivity
  - net.openid.appauth.AuthorizationManagementActivity
- TedPermission:
  - com.gun0912.tedpermission.TedPermissionActivity
  - com.gun0912.tedpermission.provider.TedPermissionProvider
- Play Integrity / Play Core:
  - com.google.android.play.core.common.PlayCoreDialogWrapperActivity

These remain BLOCKED/UNKNOWN for version selection rather than receiving guessed versions.

## Guard

This batch:
- did not mutate the Reference ZIP/APK;
- did not create BaRe clones of dependency-owned classes;
- did not build an APK;
- did not install or run the app;
- did not execute runtime/device verification;
- did not access or mutate Supabase.

## Result

Dependency integration has started from the canonical ZIP/APK evidence, while unresolved version contracts remain explicitly blocked instead of being guessed.
