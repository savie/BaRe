# Phase 2 — Evidence Ledger

**State:** IN PROGRESS — DEPENDENCY FINGERPRINTING EXPANDED / BUILD NOT VERIFIED

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
- Observed: Reference identity has been substantially expanded, but BaRe has no real Android Gradle build execution in the current environment.
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
- Observed: Billing 8.3.0; MSAL 8.3.2; pCloud 1.11.0; Firebase Auth 24.1.0; Firebase Sessions 3.0.6; Firebase Database 22.0.1; Firebase Crashlytics 20.0.6; GMS Auth 21.5.1; GMS Base 18.5.0; GMS Basement 18.9.0; GMS Tasks 18.4.0; GMS Auth Base 18.0.10; GMS FIDO 21.0.0; GMS Identity Credentials 16.0.0-alpha08; GMS Auth BlockStore 16.4.0; GMS Auth API Phone 18.0.2; Google ID 1.1.1; Play Core Common 2.0.3; Play Integrity 1.3.0; DataTransport Runtime 3.3.0; Firebase Auth interop 20.0.0; Firebase Database Collection 18.0.1; Firebase Encoders 17.0.0 / Proto 16.0.0; Firebase Measurement Connector 20.0.1; Recaptcha 18.6.1.
- Source: Reference unknown/*.properties plus Reference JADX source/runtime markers.
- Result: MATCH for Reference-side identity evidence.
- State: EVIDENCE RECORDED.
- Limitation: this does not prove the original complete Gradle declaration/BOM or every transitive dependency version.

### PH2-DEPENDENCY-USAGE-003
- Claim: Dependency families are actually referenced by Reference source, not only present in the manifest.
- Source: Reference JADX Java source imports and embedded implementation.
- Observed: Firebase, Google Play Services, Billing, pCloud, Play Core/Integrity, DataTransport, YubiKit, AppAuth, TedPermission and Shizuku families.
- Result: MATCH for Reference-side usage evidence.
- State: EVIDENCE RECORDED.

### PH2-DEPENDENCY-LICENSE-005
- Claim: Reference third-party license inventory independently confirms several remaining external families.
- Source: Reference res/raw/third_party_license_metadata.
- Observed: Yubico YubiKit Android/Core/Piv; Shizuku API aidl/API/provider/shared; TedPermission/TedPermission-Normal; AppAuth for Android.
- Result: MATCH for embedded third-party inventory.
- State: EVIDENCE RECORDED.
- Limitation: license inventory does not expose exact versions.

### PH2-DEPENDENCY-FINGERPRINT-006
- Claim: Public API documentation can narrow YubiKit family compatibility.
- Source: external YubiKit JavaDoc.
- Observed: Reference YubiKeyPromptActivity/OtpActivity matches the YubiKit Android UI family documented across 2.x and 3.2.0; the API alone does not uniquely identify the Reference version.
- Result: FAMILY MATCH / VERSION UNKNOWN.
- State: UNKNOWN for exact Reference version.

### PH2-DEPENDENCY-CANDIDATE-007
- Claim: Public coordinates exist for remaining unresolved families.
- Source: Maven Central / public YubiKit documentation.
- Observed: AppAuth 0.11.1, TedPermission-Normal 3.4.2, Shizuku provider/API 13.1.5; YubiKit Android/Core/Piv artifact families.
- Result: CANDIDATE ONLY.
- State: UNKNOWN for Reference parity.
- Rule: these are not promoted to Reference versions without direct version evidence.

### PH2-DEPENDENCY-METADATA-004
- Claim: Reference contains embedded artifact identity metadata beyond META-INF version files.
- Source: Reference apktool unknown/*.properties and decompiled implementation strings.
- Observed: explicit artifact version files for Billing, Firebase Auth, GMS families, Google ID, Integrity, Play Core Common, and Recaptcha; explicit runtime/source version markers for Firebase Sessions, Firebase Database, Firebase Crashlytics and DataTransport Runtime; explicit third-party license inventory for AppAuth/TedPermission/YubiKit/Shizuku.
- Result: MATCH.
- State: EVIDENCE RECORDED.

## Current Gate

83/120 entities represented
37/120 entities dependency-blocked
Reference dependency identity: SUBSTANTIALLY EXPANDED
Remaining unresolved exact-version families: AppAuth, TedPermission, YubiKit, Shizuku, selected Firebase transitive/common/installations modules
BaRe dependency declarations: EXPANDED
structural compile: PASS
Android build: NOT VERIFIED
APK build: NOT VERIFIED
runtime: DEFERRED

Phase 2 remains NOT VERIFIED until class resolution, manifest/delegation verification, and an actual Android project build succeed.
