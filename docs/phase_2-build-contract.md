# Phase 2 — Android Build Contract

**State:** BUILD CONTRACT CREATED — BUILD VERIFICATION BLOCKED

## 1. Purpose
Establish the first executable Android project contract for BaRe without fabricating unresolved Reference dependencies.

## 2. Reference Evidence
The extracted Reference artifact contains META-INF/com/android/build/gradle/app-metadata.properties with androidGradlePluginVersion=9.2.1.

Reference manifest/build baseline:
- package: org.swiftapps.swiftbackup
- versionName: 5.1.0
- versionCode: 620
- minSdk: 26
- targetSdk: 37
- manifest compile baseline: 37

## 3. BaRe Build Contract
Created project files:
- settings.gradle
- build.gradle
- gradle.properties
- app/build.gradle

| Contract item | Value | Classification |
|---|---|---|
| Android Gradle Plugin | 9.2.1 | Reference evidence |
| Gradle | 9.4.1 compatibility target | External compatibility evidence; not Reference APK evidence |
| JDK runtime | 17+ required by AGP 9.2 | External compatibility evidence |
| compileSdk | 37 | Reference evidence |
| minSdk | 26 | Reference evidence |
| targetSdk | 37 | Reference evidence |
| versionName | 5.1.0 | Reference evidence |
| versionCode | 620 | Reference evidence |
| applicationId | org.swiftapps.swiftbackup | Current structural target |
| namespace | org.swiftapps.swiftbackup | Current structural target |
| source language | Java | BaRe hard constraint |

AGP 9.2 compatibility information establishes tooling only; it does not rewrite Reference application behavior.

## 4. Declared Reference-Evidenced AndroidX Families
- AppCompat 1.7.1
- Core 1.18.0
- Fragment 1.8.9
- Credentials 1.6.0
- Credentials Play Services Auth 1.6.0
- ProfileInstaller 1.4.0
- Room Runtime 2.8.4
- Startup Runtime 1.2.0
- Material 1.14.0

These declarations are not yet VERIFIED as sufficient for BaRe compilation. They are build-contract inputs derived from Reference metadata.

## 5. Strong Reference-Matched External Candidates
The following coordinates are now declared in BaRe because their versions have strong Reference-side identity signals:

- com.microsoft.identity.client:msal:8.3.2
- com.android.billingclient:billing:8.3.0
- com.pcloud.sdk:android:1.11.0

Declaration does not mean build verification. Their transitive graph, class resolution, manifest integration, and complete Reference parity remain unverified.

## 6. Remaining External Dependency Boundary
The following Reference-owned families remain unresolved:
- AppAuth
- TedPermission
- Firebase Auth / Firebase Sessions / Database / Crashlytics / Installations
- Google Sign-In
- Google Play Services
- YubiKit
- Play Core / Play Integrity
- Shizuku
- DataTransport

No unresolved Reference version is fabricated for these families.

The 37 manifest entities remain BLOCKED until dependency declaration, exact class resolution, manifest/authority configuration match, relevant behavior verification, and required compatibility identifiers are proven.

## 7. Current Verification Limitation
The current execution environment has Java 21 available, but no gradle executable and no detected Android SDK environment.

Therefore an Android Gradle/APK build cannot honestly be claimed from this environment. The previously recorded javac structural compile remains valid and is not upgraded to Android build evidence.

## 8. Gate
Build contract files: CREATED
Reference toolchain evidence: OBSERVED
AndroidX declarations: DECLARED
3 strong external coordinates: DECLARED — NOT VERIFIED
Remaining external dependency contracts: BLOCKED
Android Gradle build: NOT VERIFIED
APK build: NOT VERIFIED
Runtime: DEFERRED
Phase 2: NOT VERIFIED

## 9. Next Required Work
Resolve the remaining dependency families against the actual Reference artifact, then execute a real Android Gradle build in an environment containing Gradle 9.4.1-compatible execution, Android SDK/API 37, required repositories, and all resolved external dependencies.

Only after class resolution and build success may dependency-owned entity states advance from BLOCKED.
