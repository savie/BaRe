# STEP 0.1 — REFERENCE FORENSIC EXECUTION

**Repository:** `savie/BaRe`  
**Working branch:** `rewrite`  
**Parent STEP:** `STEP 0 — REFERENCE + BASELINE LOCK`  
**Baseline:** `4c486d3b46f0a88dcf91d6b2d1d22a3c64aa84c0`  
**Status:** EXECUTION

---

## 1. Rule Utama

Reference lokal selalu menjadi **primary evidence source**.

Priority:

1. `SwiftBackup-5.1.0-620-decompiled.zip`
2. `5.1.0 (620).apk`
3. branch `reference` sebagai mirror / reproducibility source
4. historical Git evidence bila diperlukan

Branch `reference` dipakai ketika:

- melakukan migration;
- local Reference tidak cukup;
- perlu cross-check repository mirror;
- perlu reproducibility / traceability.

Untuk audit dan forensic investigation, **local Reference GPT first**. Jangan meminta user melakukan investigasi manual jika evidence lokal tersedia.

Reference tidak boleh dimodifikasi.

---

## 2. Scope

STEP 0.1 mengerjakan seluruh execution work yang diwajibkan oleh STEP 0:

- Reference forensic inventory;
- Reference ↔ mirror verification;
- baseline tree verification;
- build environment investigation;
- dependency/version evidence;
- unmodified baseline build characterization;
- CI characterization;
- UNKNOWN / BLOCKED register;
- minimum verified build contract;
- STEP 0 exit decision.

STEP 0.1 **tidak melakukan source repair**.

---

## 3. Execution Order

```
LOCAL REFERENCE
      ↓
REFERENCE INVENTORY
      ↓
REFERENCE APK / SMALI / RESOURCE CROSS-CHECK
      ↓
REFERENCE MIRROR VERIFICATION
      ↓
BASELINE TREE VERIFICATION
      ↓
BUILD ENVIRONMENT INVESTIGATION
      ↓
DEPENDENCY / VERSION MATRIX
      ↓
UNMODIFIED BASELINE BUILD
      ↓
FAILURE CLASSIFICATION
      ↓
CI CHARACTERIZATION
      ↓
UNKNOWN / BLOCKER REGISTER
      ↓
MINIMUM VERIFIED BUILD CONTRACT
      ↓
STEP 0 EXIT DECISION
      ↓
STEP 1
```

Urutan tidak boleh dibalik hanya untuk membuat build terlihat lebih maju.

---

## 4. Local Reference Inventory

### 4.1 Archive

Periksa local Reference ZIP:

- total files;
- Java files;
- Kotlin-related output bila ada;
- smali files;
- XML;
- resources;
- assets;
- native libraries;
- DEX;
- metadata;
- build/configuration artifacts;
- package directory structure.

Catat path asli dan jumlahnya.

### 4.2 Java

Inventaris:

- package;
- class;
- interface;
- enum;
- annotation;
- abstract class;
- constructors;
- fields;
- methods;
- generic signatures;
- nested classes;
- anonymous classes;
- synthetic/bridge candidates;
- malformed decompiler constructs.

Jangan memperbaiki output JADX.

### 4.3 Smali / Bytecode

Gunakan smali/DEX sebagai authority ketika Java hasil decompilation ambigu.

Periksa:

- class descriptor;
- superclass;
- interfaces;
- constructor descriptor;
- method descriptor;
- field descriptor;
- access flags;
- synthetic;
- bridge;
- invoke-direct;
- invoke-virtual;
- invoke-interface;
- static initialization.

Jika Java dan smali berbeda, tandai divergence dan gunakan bytecode evidence untuk contract-level fact.

### 4.4 Resources / Assets

Inventaris:

- `res/`;
- `assets/`;
- layouts;
- values;
- styles/themes;
- drawables;
- menus;
- XML;
- resource identifiers;
- packaged asset names.

Jangan membuat resource baru pada tahap ini.

### 4.5 Manifest

Extract:

- package/application identity;
- SDK levels;
- permissions;
- activities;
- services;
- receivers;
- providers;
- intent filters;
- metadata;
- authorities;
- exported;
- enabled;
- process/configuration attributes.

### 4.6 APK

Cross-check APK:

- package name;
- versionCode;
- versionName;
- min/target SDK evidence;
- DEX count;
- native ABI/libs;
- embedded dependency evidence;
- signing evidence;
- manifest;
- packaged resources/assets.

---

## 5. Reference Classification

Setiap finding diberi status:

| Status | Meaning |
|---|---|
| FACT | terbukti langsung |
| REFERENCE-BACKED | terbukti dari local Reference |
| INFERRED | hasil inferensi teknis |
| UNKNOWN | evidence belum cukup |
| BLOCKED | evidence/tooling tidak tersedia |

Tidak boleh mengubah UNKNOWN menjadi FACT karena value terlihat umum atau konvensional.

---

## 6. Reference Mirror Check

Bandingkan local Reference dengan branch `reference`.

Periksa minimal:

- package structure;
- source presence;
- manifest;
- resources;
- assets;
- smali/DEX-derived structure bila mirror menyediakannya;
- version/build identity;
- file count dan critical paths.

Classify:

- MATCH;
- PARTIAL;
- DIVERGENCE;
- UNKNOWN.

Local Reference tetap authority bila mirror berbeda.

---

## 7. Baseline Verification

Lock:

```
4c486d3b46f0a88dcf91d6b2d1d22a3c64aa84c0
```

Verify:

- branch `rewrite`;
- commit SHA;
- working tree state;
- `app/build.gradle`;
- root `build.gradle`;
- `settings.gradle`;
- `gradle.properties`;
- AndroidManifest;
- source tree;
- resources;
- wrapper presence/absence;
- CI workflow presence/absence.

Tidak boleh memperbaiki source selama verification.

---

## 8. Build Environment Investigation

Investigate, do not assume:

- Gradle distribution/version;
- Gradle wrapper;
- AGP;
- JDK;
- Android SDK;
- compileSdk;
- targetSdk;
- minSdk;
- repositories;
- dependency versions;
- sourceSets;
- generated sources;
- build variants;
- packaging;
- signing;
- resource processing;
- manifest merge;
- external/native build requirements.

Known baseline facts dari STEP 0 tetap dipertahankan:

- compileSdk 37;
- targetSdk 37;
- minSdk 26;
- Java 17;
- versionCode 620;
- versionName 5.1.0;
- AGP 9.2.1;
- AndroidX enabled.

Known facts tersebut tidak otomatis berarti environment reproducible.

---

## 9. Dependency / Ownership Matrix

Untuk setiap dependency atau imported package:

1. identify;
2. locate evidence;
3. determine ownership;
4. determine version evidence;
5. determine whether Reference-backed;
6. classify certainty.

Ownership:

- application-owned;
- third-party;
- Android/platform;
- generated;
- UNKNOWN.

Jangan memindahkan ownership untuk menghilangkan compile error.

---

## 10. Unmodified Baseline Build

Build baseline **tanpa source repair**.

Tujuan hanya:

> mengetahui baseline failure profile.

Catat:

- exact command;
- environment;
- Gradle/JDK;
- dependency resolution;
- first failure;
- complete failure chain;
- generated output;
- exit code;
- timestamp/context yang relevan.

Jangan memperbaiki error sebelum failure profile tercatat.

---

## 11. Failure Classification

Setiap failure masuk ke satu atau lebih category:

- build-system/configuration;
- wrapper/tooling;
- dependency resolution;
- malformed/decompiler Java;
- missing symbol;
- type;
- generic;
- constructor;
- resource/R;
- manifest;
- packaging;
- native/toolchain;
- UNKNOWN.

Bedakan:

```
BASELINE FAILURE
vs
RECONSTRUCTION FAILURE
```

Baseline failure tidak boleh disalahatribusi sebagai source regression baru.

---

## 12. CI Characterization

Periksa CI hanya sebagai verification layer.

Record:

- workflow existence;
- runner;
- JDK;
- Gradle invocation;
- dependency resolution;
- assemble target;
- artifact output;
- failure logs;
- environment assumptions.

CI tidak boleh memiliki hidden source repair.

Jika CI prerequisite belum ada:

- catat;
- cari evidence Reference/baseline;
- classify UNKNOWN/BLOCKED;
- jangan mengarang konfigurasi original.

---

## 13. Historical Evidence

Historical commits boleh diperiksa hanya untuk forensic context.

Gunakan sebagai:

```
history
  ↓
evidence
  ↓
KEEP / REWORK / DROP
```

Historical patch tidak otomatis menjadi reconstruction patch.

Temuan historical regression tetap dipisahkan dari current baseline characterization.

---

## 14. Evidence Register

Untuk setiap finding catat minimum:

| Field | Isi |
|---|---|
| ID | identifier |
| Source | local ZIP / APK / mirror / baseline / history |
| Path | file/path/commit |
| Finding | apa yang ditemukan |
| Classification | FACT / REFERENCE-BACKED / INFERRED / UNKNOWN / BLOCKED |
| Confidence | HIGH / MEDIUM / LOW |
| Action | KEEP / VERIFY / BLOCK |
| Notes | constraint penting |

Tidak perlu membuat dokumen evidence terpisah; register menjadi bagian dari execution record STEP 0.1.

---

## 15. Minimum Verified Build Contract

Sebelum STEP 1, harus dapat ditentukan:

- Reference identity;
- baseline identity;
- required SDK levels;
- Java/JDK requirement;
- Gradle/AGP evidence atau explicit UNKNOWN;
- dependency evidence;
- source/resource structure;
- manifest contract;
- baseline build command;
- baseline failure profile;
- CI execution contract;
- known blockers.

Jika suatu item tidak dapat dibuktikan, tandai explicit UNKNOWN/BLOCKED.

---

## 16. Exit Gate

STEP 0.1 selesai jika:

- [ ] local Reference inventory selesai;
- [ ] APK/DEX/smali/resource/manifest cross-check selesai;
- [ ] Reference mirror classified;
- [ ] baseline commit verified;
- [ ] build environment classified;
- [ ] dependency/ownership evidence classified;
- [ ] untouched baseline build executed atau BLOCKED dengan alasan;
- [ ] baseline failures classified;
- [ ] CI characterized atau BLOCKED dengan alasan;
- [ ] UNKNOWN/BLOCKED register lengkap;
- [ ] minimum verified build contract tersedia;
- [ ] tidak ada source repair;
- [ ] STEP 0 exit decision dibuat.

---

## 17. Hard Stop Conditions

STOP dan jangan masuk STEP 1 jika:

- local Reference belum diperiksa;
- baseline belum verified;
- failure profile belum dipisahkan dari reconstruction;
- build environment dibuat berdasarkan tebakan;
- dependency ownership dipindahkan hanya karena compile error;
- Java source sudah diperbaiki sebelum characterization selesai;
- UNKNOWN penting ditutup tanpa evidence.

---

## 18. STEP 0.1 Output

Output STEP 0.1 cukup:

1. **Reference evidence inventory**
2. **Baseline/build characterization**
3. **Evidence register**
4. **UNKNOWN/BLOCKED register**
5. **Minimum verified build contract**
6. **STEP 0 exit decision**

Tidak membuat dokumen STEP 0 tambahan lain kecuali diperlukan oleh lifecycle berikutnya.

---

## 19. Current Execution State

**STEP 0 document:** LOCKED — jangan diubah.

**STEP 0.1:** ACTIVE.

**Reference priority:** LOCAL FIRST.

**Reference mirror:** SECONDARY / migration / cross-check.

**Source repair:** FORBIDDEN.

**Next lifecycle gate:** STEP 0 EXIT → STEP 1.


---

## 20. Execution Result — Checkpoint 1

**Execution status:** PARTIAL / BLOCKED at build characterization.

### Verified

- Local Reference ZIP is readable and contains JADX + APKTool outputs.
- Local Reference contains **12,611 Java**, **14,217 smali**, **2,560 XML**, and **64 native .so** files.
- Reference APK contains **2 DEX**, **32 native-library entries**, manifest, resources.arsc, and AGP metadata.
- Reference APK metadata proves:
  - package `org.swiftapps.swiftbackup`;
  - versionName `5.1.0`;
  - versionCode `620`;
  - minSdk `26`;
  - targetSdk `37`;
  - Android Gradle Plugin `9.2.1`.
- Reference APK / APKTool metadata independently agrees on the same SDK/version identity.
- Baseline Java tree contains **12,611 Java files**.
- After path normalization, all **12,611 baseline Java blobs match the Reference JADX Java blobs exactly**.
- Reference/baseline assets match exactly.
- Reference/baseline resource tree has **1,508 common files**; only `values/strings.xml` differs in content.
- Manifest semantic inventory matches for:
  - 34 permissions;
  - 95 activities;
  - 10 services;
  - 10 receivers;
  - 4 providers.
- Application-owned source inventory is **263 Java files**:
  - `org.swiftapps.swiftbackup`;
  - `org.swiftapps.rootservice`;
  - `org.swiftapps.filesystem`.
- JADX contains **125 files marked with “Method not decompiled”**. These are forensic source findings, not repair targets in STEP 0.
- Local Reference contains **3,545 synthetic markers** and **248 bridge markers** in JADX output; smali also contains corresponding synthetic/bridge evidence.
- Baseline declares **26 implementation dependencies**.
- Reference embedded metadata independently exposes multiple dependency versions and confirms AGP 9.2.1.

### Reference Mirror Classification

**PARTIAL / STRUCTURALLY MATCHED**

The `reference` branch stores the Reference payload under a `reference/` tree rather than the baseline Android source layout.

Critical mapped checks:

- JADX Java: **12,611 / 12,611 exact blob match**;
- assets: **5 / 5 exact blob match**;
- resources: **1,508 common**, with only `values/strings.xml` differing;
- manifest component sets match semantically.

Therefore the mirror is usable for traceability/cross-check, but local Reference remains primary.

### Build Environment

Known:

- AGP: **9.2.1** — Reference-backed;
- compileSdk: **37**;
- targetSdk: **37**;
- minSdk: **26**;
- Java source/target: **17**;
- repositories: Google + Maven Central + Gradle Plugin Portal;
- baseline dependency declarations: **26**.

Not proven:

- original Gradle distribution version;
- Gradle wrapper;
- reproducible original JDK execution environment;
- complete dependency closure;
- original signing configuration.

### Baseline Build Characterization

**BLOCKED.**

Reason:

- baseline has no `gradlew`;
- baseline has no `gradle/wrapper/gradle-wrapper.properties`;
- no system `gradle` executable is available in the execution environment;
- therefore an untouched Gradle baseline build cannot be honestly executed at this checkpoint.

No source repair was performed to bypass this blocker.

### CI Characterization

**NOT PRESENT at baseline checkpoint.**

No `.github/workflows/` files are present in the locked baseline tree.

Therefore CI execution contract remains **UNKNOWN**, not inferred.

### Current UNKNOWN / BLOCKED

1. exact Gradle distribution/version;
2. reproducible JDK execution environment;
3. complete dependency closure;
4. untouched baseline build failure profile;
5. baseline CI workflow/runner contract;
6. original signing configuration.

### STEP 0.1 Decision

**STEP 0.1 cannot exit yet.**

The Reference and baseline forensic portions are sufficiently characterized, but the minimum build characterization gate is blocked by missing Gradle/wrapper/tooling.

**Source repair remains FORBIDDEN.**


## 21. Follow-up Execution — Build Contract Recovery

### Resource Authority

`app/src/main/res/values/strings.xml` is **VALID / LOCKED** against:

- Reference APKTool: `reference/apktool/res/values/strings.xml`
- Baseline: `app/src/main/res/values/strings.xml`

Both have identical blob SHA `b21e2bf1b1bb620570cddd1371ceffb8a1a104`.

JADX resource output is not selected as the reconstruction authority for this resource because its textual representation differs from APKTool output (escaping/layout), while APKTool is the direct decoded APK resource representation.

### Build Environment — Newly Recovered Evidence

Historical CI evidence from the pre-reset lineage establishes:

- JDK: Temurin **17**;
- Gradle execution: **9.4.1**;
- CI task: `gradle :app:assembleDebug --no-daemon`;
- stable debug signing secret: `BARE_DEBUG_KEYSTORE_B64`;
- signing path passed to Gradle as `BARE_SIGNING_KEYSTORE`;
- signing uses Android debug-key convention;
- no dynamic version increment is used;
- APK version remains baseline/Reference:
  - versionCode **620**;
  - versionName **5.1.0**.

The CI workflow has now been restored to `.github/workflows/bare-ci.yml`.

The corresponding CI signing configuration has also been restored in `app/build.gradle` so the workflow environment variable is consumed.

### Version Identity Check

Reference and baseline agree:

- package: `org.swiftapps.swiftbackup`;
- versionName: `5.1.0`;
- versionCode: `620`;
- minSdk: `26`;
- targetSdk: `37`;
- compileSdk: `37`;
- Java source/target: **17**;
- AGP: **9.2.1**.

CI Gradle **9.4.1** is a build-execution fact recovered from historical project CI, not an APK-embedded Reference fact.

### Remaining Build Gate

The original baseline still has no Gradle wrapper. The recovered CI contract therefore uses the historically established Gradle **9.4.1** setup action.

An actual clean `assembleDebug` run remains pending until GitHub Actions executes the restored workflow. No source repair has been performed.

**STEP 0.1 remains BUILD-CHARACTERIZATION PENDING, not SOURCE-REPAIR READY.**
