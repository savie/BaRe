# Phase 1 — Evidence & Baseline Register

**Purpose:** evidence ledger for the Foundation phase.

This document is an evidence artifact, not an implementation status report.

## 1. Evidence Record

Use one record per material claim:

| Field | Required |
|---|---|
| Evidence ID | yes |
| Claim | yes |
| Expected | yes |
| Source | yes |
| Location | yes |
| Observed | yes |
| Result | yes |
| State | yes |
| Notes | optional |

Template:

```
Evidence ID:
Claim:
Expected:
Source:
Location:
Observed:
Result:
State:
Notes:
```

## 2. Required Evidence Groups

### Identity
- package
- versionName
- versionCode
- SDK baseline
- Application class

### Manifest
- all Activities
- all Services
- all Receivers
- all Providers
- launcher
- primary post-intro activity
- application flags
- permissions
- intent filters
- provider authorities
- service/receiver attributes

### Resources
- resource category counts
- resource ownership where relevant
- variant/resource qualifier inventory

### Dependencies
- library/component origin
- class availability
- relevant contract

## 3. Classification

Evidence result must use:

`MATCH / AUTHORIZED DEVIATION / UNAUTHORIZED DEVIATION / UNKNOWN / BLOCKED`

Do not use MATCH when only the Reference side has been observed.

## 4. Baseline Lock

The baseline becomes LOCKED only after:
1. required evidence is collected;
2. unresolved UNKNOWN/BLOCKED items are documented;
3. mapping is complete enough for Phase 2;
4. the Phase 1 gate is explicitly marked VERIFIED.

Until then:

```
PHASE 1 = NOT VERIFIED
```


## 5. Executed Evidence

### PH1-IDENTITY-001
- Claim: Reference package is `org.swiftapps.swiftbackup`.
- Expected: APK manifest package equals target Reference package.
- Source: decompiled `AndroidManifest.xml`.
- Observed: `org.swiftapps.swiftbackup`.
- Result: MATCH.
- State: VERIFIED.

### PH1-IDENTITY-002
- Claim: Reference Application class is `org.swiftapps.swiftbackup.SwiftApp`.
- Expected: application android:name equals target class.
- Observed: exact match.
- Result: MATCH.
- State: VERIFIED.

### PH1-VERSION-001
- Claim: Reference is version 5.1.0 / versionCode 620.
- Expected: versionName 5.1.0 and versionCode 620.
- Source: `apktool.yml`.
- Observed: exact match.
- Result: MATCH.
- State: VERIFIED.

### PH1-SDK-001
- Claim: SDK baseline is min 26 / target 37.
- Source: `apktool.yml`.
- Observed: minSdkVersion 26, targetSdkVersion 37.
- Result: MATCH.
- State: VERIFIED.

### PH1-MANIFEST-001
- Claim: Reference contains 119 manifest components.
- Expected: 95 Activities + 10 Services + 10 Receivers + 4 Providers.
- Observed: exact counts from decompiled manifest.
- Result: MATCH.
- State: VERIFIED.

### PH1-MANIFEST-002
- Claim: launcher is `org.swiftapps.swiftbackup.intro.IntroActivity`.
- Observed: MAIN + LAUNCHER intent filter on that Activity.
- Result: MATCH.
- State: VERIFIED.

### PH1-MANIFEST-003
- Claim: Reference application manifest flags match the documented baseline.
- Observed: allowBackup=false, allowClearUserData=false, largeHeap=true, requestLegacyExternalStorage=true, supportsRtl=true, enableOnBackInvokedCallback=true.
- Result: MATCH.
- State: VERIFIED.

### PH1-RESOURCE-001
- Claim: canonical resource directory counts match the baseline.
- Observed: layout 341; layout-land 2; layout-sw600dp 2; layout-w600dp 1; layout-watch 2; drawable 445; drawable-anydpi 2; drawable-anydpi-v31 1; menu 44; xml 18; raw 12; font 7; anim 41; animator 42; color 199.
- Result: MATCH.
- State: VERIFIED.

### PH1-OWNERSHIP-001
- Claim: all 119 manifest components have source representation in the decompiled source tree.
- Observed: 119/119 source paths resolve.
- Result: MATCH.
- State: VERIFIED.

### PH1-OWNERSHIP-002
- Claim: package ownership split is 82 internal / 37 external-dependency-owned.
- Observed: 82 names under `org.swiftapps.swiftbackup.*`; 37 outside that namespace.
- Result: MATCH.
- State: VERIFIED.

## 6. Phase 1 Evidence Summary

| Evidence Group | Result | State |
|---|---|---|
| Identity | MATCH | VERIFIED |
| Version / SDK | MATCH | VERIFIED |
| Manifest inventory | MATCH | VERIFIED |
| Launcher / application contract | MATCH | VERIFIED |
| Resource baseline | MATCH | VERIFIED |
| Component source presence | MATCH | VERIFIED |
| Ownership classification | MATCH | VERIFIED |

**Phase 1 Evidence State: VERIFIED**
