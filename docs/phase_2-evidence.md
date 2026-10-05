# Phase 2 — Evidence Ledger

**State:** IN PROGRESS — DEPENDENCY MAP EXPANDED / BUILD NOT VERIFIED

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
- Observed: androidGradlePluginVersion=9.2.1; compileSdk 37; minSdk 26; targetSdk 37; versionName 5.1.0; versionCode 620.
- Result: MATCH for captured Reference build metadata.
- State: IMPLEMENTED / EVIDENCE RECORDED.

### PH2-BUILD-CONTRACT-001
- Claim: BaRe has an explicit Android Gradle project contract.
- Observed: settings.gradle, build.gradle, gradle.properties, and app/build.gradle created.
- Result: DECLARED, not verified.
- State: IMPLEMENTED.

### PH2-DEPENDENCY-001
- Claim: 37 external manifest components can be validly delegated.
- Expected: dependency declared, class resolves, manifest contract matches, configuration/authority matches, behavior verifiable.
- Observed: Reference identity has now been expanded, but BaRe has no real Android Gradle build execution in the current environment.
- Result: BLOCKED.
- State: BLOCKED.

### PH2-ENVIRONMENT-001
- Claim: Android Gradle build can be executed in the current environment.
- Observed: Java 21 is available; no gradle executable and no detected Android SDK environment.
- Result: BLOCKED.
- State: BLOCKED.
- Limitation: no Android Gradle/APK build evidence can be claimed from this environment.

### PH2-DEPENDENCY-IDENTITY-002
- Claim: Additional external dependency identity can be extracted from the Reference artifact.
- Observed:
  - Play Billing 8.3.0
  - MSAL 8.3.2
  - pCloud SDK 1.11.0
  - Firebase Auth 24.1.0
  - Firebase Sessions 3.0.6
  - Firebase Database 22.0.1
  - Firebase Crashlytics 20.0.6
  - Google Sign-In 21.5.1
  - Google Play Services Base 18.5.0
  - Google Play Services Basement 18.9.0
  - Google Play Services Tasks 18.4.0
  - Google Play Services Auth Base 18.0.10
  - Google Play Services FIDO 21.0.0
  - Google Play Services Identity Credentials 16.0.0-alpha08
  - Google Play Services Auth BlockStore 16.4.0
  - Google Play Services Auth API Phone 18.0.2
  - Google ID 1.1.1
  - Play Core Common 2.0.3
  - Play Integrity 1.3.0
  - DataTransport Runtime 3.3.0
  - Firebase Auth interop 20.0.0
  - Firebase Database Collection 18.0.1
  - Firebase Encoders 17.0.0 / Proto 16.0.0
  - Firebase Measurement Connector 20.0.1
  - Recaptcha 18.6.1
- Source: Reference unknown/*.properties plus Reference JADX source/runtime markers.
- Result: MATCH for Reference-side identity evidence.
- State: EVIDENCE RECORDED.
- Limitation: this still does not prove the original complete Gradle declaration/BOM or every transitive dependency version.

### PH2-DEPENDENCY-USAGE-003
- Claim: Dependency families are actually referenced by Reference source, not only present in the manifest.
- Source: Reference JADX Java source imports and embedded implementation.
- Observed:
  - Firebase Auth, Database, Crashlytics, Sessions, Installations, Components and Firebase/DataTransport registrars.
  - Google Play Services Auth/Sign-In, Common, Tasks, FIDO and Identity Credentials.
  - Play Billing, pCloud, Play Core/Integrity, DataTransport, YubiKit, AppAuth, TedPermission, Shizuku.
- Result: MATCH for Reference-side usage evidence.
- State: EVIDENCE RECORDED.
- Limitation: package usage alone does not prove unresolved exact coordinates.

### PH2-DEPENDENCY-METADATA-004
- Claim: Reference contains embedded artifact identity metadata beyond META-INF version files.
- Source: Reference apktool unknown/*.properties and decompiled implementation strings.
- Observed: explicit artifact version files for Billing, Firebase Auth, GMS families, Google ID, Integrity, Play Core Common, and Recaptcha; explicit runtime/source version markers for Firebase Sessions, Firebase Database, Firebase Crashlytics and DataTransport Runtime.
- Result: MATCH.
- State: EVIDENCE RECORDED.

## Current Gate

83/120 entities represented
37/120 entities dependency-blocked
Reference dependency identity: SUBSTANTIALLY EXPANDED
BaRe dependency declarations: EXPANDED
structural compile: PASS
Android build: NOT VERIFIED
APK build: NOT VERIFIED
runtime: DEFERRED

Phase 2 remains NOT VERIFIED until class resolution, manifest/delegation verification, and an actual Android project build succeed.
