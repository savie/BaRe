# Phase 2 — Evidence Ledger

**State:** IN PROGRESS — BUILD CONTRACT CREATED / NOT VERIFIED

## Executed Evidence

### PH2-INHERITANCE-001
- Claim: Internal Activity inheritance is reconstructed from Reference evidence.
- Source: Decompiled JADX Java sources.
- Observed: 71 internal Activities map to the observed Reference superclass chain, including il0, sa1, er6, dt, je5, x01, oo8, fq5, and direct android.app.Activity.
- Result: MATCH for implemented internal skeleton.
- State: IMPLEMENTED.

### PH2-APPLICATION-001
- Claim: Reference Application class is represented.
- Observed: org.swiftapps.swiftbackup.SwiftApp skeleton exists.
- Result: MATCH.
- State: IMPLEMENTED.

### PH2-SOURCE-001
- Claim: All 82 internal manifest components have Java skeleton representation.
- Observed: 82 internal components plus Application are represented in source.
- Result: MATCH.
- State: IMPLEMENTED.

### PH2-STRUCTURAL-COMPILE-001
- Claim: Implemented Java skeleton is syntactically/type structurally compilable against its declared platform/base contracts.
- Method: javac with explicit compile-only Android/AndroidX contract stubs.
- Observed: compilation PASS.
- Result: MATCH for structural compile.
- State: COMPILED.
- Limitation: this is not an Android Gradle/APK build.

### PH2-TOOLCHAIN-001
- Claim: Reference Android build toolchain baseline is known.
- Source: Reference META-INF/com/android/build/gradle/app-metadata.properties.
- Observed: androidGradlePluginVersion=9.2.1.
- Additional Reference baseline: compileSdk 37, minSdk 26, targetSdk 37, versionName 5.1.0, versionCode 620.
- Result: MATCH for captured Reference build metadata.
- State: IMPLEMENTED / EVIDENCE RECORDED.

### PH2-BUILD-CONTRACT-001
- Claim: BaRe has an explicit Android Gradle project contract.
- Observed: settings.gradle, build.gradle, gradle.properties, and app/build.gradle created.
- Declared Reference-evidenced dependency families: AppCompat 1.7.1, Core 1.18.0, Fragment 1.8.9, Credentials 1.6.0, Credentials Play Services Auth 1.6.0, ProfileInstaller 1.4.0, Room Runtime 2.8.4, Startup Runtime 1.2.0, Material 1.14.0.
- Result: DECLARED, not verified.
- State: IMPLEMENTED.

### PH2-DEPENDENCY-001
- Claim: 37 external manifest components can be validly delegated.
- Expected: dependency declared, class resolves, manifest contract matches, configuration/authority matches, behavior verifiable.
- Observed: 37 components remain without a proven BaRe dependency declaration/class-resolution contract.
- Result: BLOCKED.
- State: BLOCKED.

### PH2-ENVIRONMENT-001
- Claim: Android Gradle build can be executed in the current environment.
- Observed: Java 21 is available; no gradle executable and no detected Android SDK environment.
- Result: BLOCKED.
- State: BLOCKED.
- Limitation: no Android Gradle/APK build evidence can be claimed from this environment.

## Current Gate

83/120 entities represented
37/120 entities dependency-blocked
Reference toolchain evidence: PASS
BaRe build contract: CREATED
AndroidX declarations: DECLARED
structural compile: PASS
Android build: NOT VERIFIED
APK build: NOT VERIFIED
runtime: DEFERRED

Phase 2 remains NOT VERIFIED until dependency delegation is proven and an actual Android project build succeeds.

### PH2-DEPENDENCY-IDENTITY-002
- Claim: Additional external dependency identity can be extracted from the Reference artifact.
- Observed:
  - Play Billing manifest metadata: 8.3.0.
  - MSAL SDK marker in MsalUtils: 8.3.2.
  - pCloud SDK marker: 1.11.0.
  - Google Play Services compatibility integer: 12451000.
- Result: MATCH for Reference-side identity evidence.
- State: EVIDENCE RECORDED.
- Limitation: these signals do not by themselves prove the complete Gradle coordinate graph or all transitive versions.

### PH2-DEPENDENCY-WEB-001
- Claim: Public Maven coordinates exist for selected dependency families.
- Source: external web research.
- Observed: AppAuth 0.11.1, Shizuku provider 13.1.5, MSAL 8.3.2, Play Billing 8.3.0, pCloud Android 1.11.0, TedPermission 3.4.2, and YubiKit Android publications.
- Result: CANDIDATE ONLY, except MSAL/Billing/pCloud where the public coordinate version agrees with a Reference-side identity signal.
- State: UNKNOWN for Reference parity; MSAL/Billing/pCloud are CANDIDATE — VERSION MATCH.
- Rule: public availability does not prove BaRe class resolution or complete Reference transitive parity.

### PH2-DEPENDENCY-USAGE-003
- Claim: Dependency families are actually referenced by Reference source, not only present in the manifest.
- Source: Reference JADX Java source imports.
- Observed:
  - AppAuth: net.openid.appauth.*
  - TedPermission: com.gun0912.tedpermission.*
  - MSAL: com.microsoft.identity.*
  - Firebase: Auth, Components, Crashlytics, Database, Installations, Sessions and Firebase/DataTransport registrar packages
  - Google Play Services: Auth/Sign-In, Common, Tasks, FIDO and Identity Credentials
  - Play Billing: com.android.billingclient.api.*
  - pCloud: com.pcloud.sdk.*
  - YubiKit: com.yubico.yubikit.*
  - Play Core: com.google.android.play.core.*
  - DataTransport: com.google.android.datatransport.*
- Result: MATCH for Reference-side usage evidence.
- State: EVIDENCE RECORDED.
- Limitation: package usage identifies API families but does not alone prove exact Gradle modules or versions.
