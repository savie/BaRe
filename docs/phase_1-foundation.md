# Phase 1 — Foundation / Reference Baseline

**State:** VERIFIED — REFERENCE BASELINE LOCKED

## 1. Purpose

Phase 1 establishes the Reference baseline that later reconstruction phases must consume.

Phase 1 does **not** claim that BaRe has been implemented, compiled, installed, launched or verified.

## 2. Inputs

- Reference APK: `/mnt/data/5.1.0 (620).apk`
- Reference decompile: `/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`
- Canonical contract: `docs/bare.md`

## 3. Reference Identity

Candidate baseline to be evidence-locked:

| Property | Reference target |
|---|---|
| Package | `org.swiftapps.swiftbackup` |
| Application | `org.swiftapps.swiftbackup.SwiftApp` |
| Version name | `5.1.0` |
| Version code | `620` |
| minSdk | 26 |
| targetSdk | 37 |
| Manifest compile baseline | NOT ASSERTED — not required for Phase 1 gate |

## 4. Manifest Baseline

Candidate inventory:

| Component | Count |
|---|---:|
| Activity | 95 |
| Service | 10 |
| Receiver | 10 |
| Provider | 4 |
| **Manifest total** | **119** |
| Application class | **1** |
| **Phase 2 entity target** | **120** |

Important:

`119` is a **Reference target inventory**, not proof of implementation.

## 5. Manifest Contract

Candidate Reference values to evidence-lock:

- application class: `org.swiftapps.swiftbackup.SwiftApp`
- theme: `@style/SwiftTheme`
- launcher: `org.swiftapps.swiftbackup.intro.IntroActivity`
- primary post-intro: `org.swiftapps.swiftbackup.home.HomeActivity`
- allowBackup: false
- allowClearUserData: false
- largeHeap: true
- requestLegacyExternalStorage: true
- supportsRtl: true
- enableOnBackInvokedCallback: true

All remaining manifest attributes, permissions, intents, authorities, exported state and metadata remain in scope and must be inventoried.

## 6. Resource Baseline

Candidate Reference counts:

| Type | Count |
|---|---:|
| layout | 341 |
| layout-land | 2 |
| layout-sw600dp | 2 |
| layout-w600dp | 1 |
| layout-watch | 2 |
| drawable | 445 |
| drawable-anydpi | 2 |
| drawable-anydpi-v31 | 1 |
| menu | 44 |
| xml | 18 |
| raw | 12 |
| font | 7 |
| anim | 41 |
| animator | 42 |
| color | 199 |

Counts are inventory targets, not implementation claims.

## 7. Component Inventory Rule

All 119 manifest components are reconstruction targets, including components supplied by:
- application code
- AndroidX
- Google/Firebase
- vendor SDK
- OAuth SDK
- native/library dependencies
- compatibility modules

Ownership affects implementation strategy, not target count.

## 8. Ownership Classification

Every component must be classified:

- INTERNAL
- PLATFORM
- THIRD-PARTY
- DEPENDENCY
- UNKNOWN

The classification must be evidence-based.

## 9. Reference → BaRe Mapping

Each target receives a stable mapping ID.

Minimum fields:

| ID | Type | Reference FQCN/Resource | Evidence | BaRe Target | State | Result |
|---|---|---|---|---|---|---|
| ... | ... | ... | ... | ... | PLANNED | ... |

No target may be silently dropped.

## 10. Phase 1 Work

1. Inspect APK and decompiled Reference.
2. Lock application identity.
3. Lock complete manifest inventory.
4. Lock complete resource inventory.
5. Classify ownership.
6. Record dependencies and external components.
7. Extract contract-relevant attributes.
8. Create Reference → BaRe mapping.
9. Record UNKNOWN/BLOCKED items.
10. Freeze the baseline for Phase 2.

## 11. Outputs

Phase 1 must produce:
- Reference baseline
- complete manifest inventory
- resource inventory
- ownership classification
- dependency inventory
- mapping register
- evidence register
- UNKNOWN/BLOCKED register

## 12. Exit Criteria

Phase 1 can become VERIFIED only when:

- [ ] Reference identity is evidence-backed.
- [ ] 119 manifest components are evidence-backed.
- [ ] Application class is evidence-backed.
- [ ] Manifest contract is recorded.
- [ ] Resource baseline is evidence-backed.
- [ ] Ownership classification exists for every component.
- [ ] Mapping exists for every target.
- [ ] Critical claims have evidence.
- [ ] UNKNOWN/BLOCKED items are explicitly recorded.
- [ ] No unsupported MATCH claim exists.

## 13. Phase Gate

Allowed states:

`PLANNED / IMPLEMENTED / TESTED / VERIFIED / UNKNOWN / BLOCKED`

Phase 1 is **not PASS** merely because the inventory is written.

Phase 2 may start only when Phase 1 has a sufficiently complete Reference contract and no unresolved blocker that prevents evidence-backed Reference reconstruction.


## 14. Evidence-Locked Reference Results

Evidence source:
- APK: `5.1.0 (620).apk`
- Decompiled manifest: `output/apktool/AndroidManifest.xml`
- Decompiled sources: `output/jadx/sources/`
- Apktool metadata: `output/apktool/apktool.yml`

Observed and verified:
- package = `org.swiftapps.swiftbackup`
- Application = `org.swiftapps.swiftbackup.SwiftApp`
- versionName = `5.1.0`
- versionCode = `620`
- minSdkVersion = `26`
- targetSdkVersion = `37`
- Activities = `95`
- Services = `10`
- Receivers = `10`
- Providers = `4`
- Manifest components = `119`
- Application + manifest components = `120`
- launcher = `org.swiftapps.swiftbackup.intro.IntroActivity`
- theme = `@style/SwiftTheme`
- allowBackup = `false`
- allowClearUserData = `false`
- largeHeap = `true`
- requestLegacyExternalStorage = `true`
- supportsRtl = `true`
- enableOnBackInvokedCallback = `true`

Source-presence / ownership observation:
- Reference source representation found for all 119 manifest components.
- 82 components are under `org.swiftapps.swiftbackup.*`.
- 37 components are outside that package and are therefore treated as external/dependency-owned for Phase 1 mapping.
- This ownership classification is a reconstruction aid; it is not a runtime or dependency-contract verification.

Resource baseline verified for the canonical top-level resource directories:
- layout 341
- layout-land 2
- layout-sw600dp 2
- layout-w600dp 1
- layout-watch 2
- drawable 445
- drawable-anydpi 2
- drawable-anydpi-v31 1
- menu 44
- xml 18
- raw 12
- font 7
- anim 41
- animator 42
- color 199

Additional qualifier-specific resource directories exist in the Reference and are not collapsed into the counts above.

## 15. Phase 1 Gate Result

**VERIFIED / PASS — REFERENCE BASELINE LOCKED**

This PASS applies only to the Reference baseline and Phase 1 evidence.

It does **not** mean:
- BaRe source exists;
- BaRe compiles;
- BaRe APK exists;
- BaRe runtime works;
- parity is verified.

Phase 2 may consume this locked baseline.
