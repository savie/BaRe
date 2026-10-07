# STEP 0 — REFERENCE + BASELINE LOCK

**Repository:** `savie/BaRe`  
**Working branch:** `rewrite`  
**Baseline:** `4c486d3b46f0a88dcf91d6b2d1d22a3c64aa84c0`  
**Reference version:** Swift Backup 5.1.0 / versionCode 620  
**Status:** IN PROGRESS

---

## 1. Purpose

STEP 0 menetapkan titik awal rekonstruksi faktual sebelum source repair apa pun dilakukan.

Tujuannya **bukan** membuat application dapat di-compile.

Tujuannya adalah menentukan:

1. apa yang benar-benar terdapat pada Reference;
2. apa yang sudah terdapat pada baseline repository;
3. build information mana yang dapat dibuktikan dari evidence Reference/baseline;
4. build information mana yang hilang atau masih `UNKNOWN`;
5. seperti apa unmodified baseline build failure profile;
6. minimum verified build contract yang diperlukan sebelum STEP 1.

Tidak ada application-source repair yang diizinkan oleh STEP 0.

---

## 2. Lifecycle Position

```
STEP 0
REFERENCE + BASELINE LOCK
        │
        ├─ Reference forensic inventory
        ├─ Reference branch verification
        ├─ baseline verification
        ├─ build environment investigation
        └─ baseline CI/build characterization
        │
        ▼
STEP 0 COMPLETE CONTRACT
        │
        ▼
STEP 1 — SOURCE REPAIR
        │
        ▼
STEP 2 — SYMBOL / CONTRACT RECONSTRUCTION
        │
        ▼
STEP 3 — DEPENDENCY / OWNERSHIP
        │
        ▼
STEP 4 — RESOURCE / R
        │
        ▼
STEP 5 — MANIFEST
        │
        ▼
STEP 6 — BUILD SETUP
        │
        ▼
STEP 7 — FIRST RECONSTRUCTED BUILD
        │
        ▼
STEP 8 — COMPILE REPAIR
        │
        ▼
STEP 9 — APK PACKAGING
        │
        ▼
STEP 10 — APK OUTPUT
        │
        ▼
STEP 11 — RUNTIME / BEHAVIOR VALIDATION
```

STEP 0 adalah gate. STEP 1 tidak boleh dimulai hanya karena dokumentasi STEP 0 sudah ada.

---

## 3. Reference Authority

Canonical Reference evidence:

- local Reference ZIP: `SwiftBackup-5.1.0-620-decompiled.zip`;
- Reference APK: `5.1.0 (620).apk`;
- repository Reference mirror: branch `reference`.

Reference bersifat read-only.

Lapisan evidence berikut dapat digunakan untuk claim yang berbeda:

| Evidence | Primary use |
|---|---|
| JADX/decompiled Java | struktur source dan candidate implementation |
| APKTool/smali | JVM descriptors, constructors, inheritance, bridge/synthetic contracts, bytecode-level facts |
| AndroidManifest | package, SDK, components, permissions, provider/service/activity contracts |
| resources/assets | resource contract dan packaged assets |
| APK metadata | version/build/package evidence |
| Reference branch | reproducible repository mirror |
| local Reference ZIP/APK | forensic source of truth ketika repository mirror tidak lengkap |

Decompiled artifact tidak dianggap sebagai original Gradle project. Namun, ketiadaan original Gradle file **tidak boleh** diasumsikan sampai evidence dari Reference benar-benar diperiksa.

---

## 4. Baseline Lock

Baseline ditetapkan pada:

`4c486d3b46f0a88dcf91d6b2d1d22a3c64aa84c0`

Baseline harus dikarakterisasi tanpa source repair.

Observed baseline build-related facts yang telah diverifikasi:

- `app/build.gradle` exists;
- `compileSdk = 37`;
- `targetSdk = 37`;
- `minSdk = 26`;
- Java source/target compatibility adalah 17;
- application versionCode adalah 620;
- application versionName adalah 5.1.0;
- root `build.gradle` mendeklarasikan Android Gradle Plugin 9.2.1;
- `settings.gradle` mendeklarasikan Google, Maven Central, dan Gradle Plugin Portal repositories;
- `gradle.properties` mengaktifkan AndroidX;
- `app/src/main/AndroidManifest.xml` berisi Reference-derived package/component/configuration data.

Facts tersebut adalah **baseline facts**, bukan bukti bahwa complete build environment sudah benar atau reproducible.

Pada baseline checkpoint yang telah diperiksa, path berikut tidak ditemukan:

- `gradle/wrapper/gradle-wrapper.properties`
- `.github/workflows/bare-ci.yml`

Ketiadaan tersebut adalah STEP 0 investigation item, bukan izin untuk mengarang replacement.

---

## 5. Reference Forensic Inventory

Inventory minimal harus mencakup:

### Source

- Java source count;
- package ownership;
- application-owned packages;
- embedded/decompiled third-party packages;
- malformed/decompiler-generated Java constructs;
- Kotlin/JVM generated structures represented in Java/smali;
- synthetic/bridge methods;
- constructors;
- generic signatures.

### Bytecode / smali

- class descriptors;
- superclass/interface relationships;
- constructor descriptors;
- method descriptors;
- bridge/synthetic methods;
- field initialization;
- static initialization;
- invoke-direct/invoke-virtual/invoke-interface relationships.

### Resources

- resource directories;
- resource identifiers;
- XML layouts;
- styles/themes;
- drawables;
- values;
- assets;
- generated resource expectations.

### Manifest

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
- exported/enabled state.

### APK/build evidence

- versionCode/versionName;
- package name;
- SDK/build information;
- embedded dependency/version evidence where discoverable;
- native libraries;
- DEX structure;
- signatures or signing-related evidence where relevant.

Information yang belum diketahui tetap `UNKNOWN`; tidak boleh diisi dengan tebakan.

---

## 6. Reference Branch Verification

Branch `reference` adalah mirror/evidence source.

STEP 0 harus membandingkan mirror dengan local Reference artifact bila diperlukan dan mengklasifikasikannya sebagai:

- MATCH;
- PARTIAL;
- DIVERGENCE;
- UNKNOWN.

Branch `reference` tidak otomatis disalin ke `rewrite`.

Branch tersebut digunakan untuk meningkatkan traceability dan reproducibility dari Reference evidence.

---

## 7. Build Environment Investigation

Lakukan investigation sebelum menentukan apa yang harus ditulis.

Required investigation:

| Item | Status |
|---|---|
| Gradle distribution/version | UNKNOWN until proven |
| Gradle wrapper | UNKNOWN / verify Reference evidence |
| AGP version | baseline declares 9.2.1; Reference support/evidence still to verify |
| JDK | baseline source compatibility says Java 17; execution requirement still to verify |
| compileSdk | baseline says 37; verify against Reference |
| targetSdk | baseline says 37; verify against Reference |
| minSdk | baseline says 26; verify against Reference |
| repositories | baseline known; Reference evidence to be checked |
| dependency versions | baseline declarations exist; each must be classified |
| sourceSets | baseline/default behavior must be characterized |
| generated sources | investigate Reference/build evidence |
| packaging options | investigate |
| signing | investigate separately from source reconstruction |
| build variants | investigate |
| resource processing | investigate |
| manifest merge requirements | investigate |

### Rule

Jangan menggunakan salah satu dari asumsi berikut:

> “Gradle must exactly match the original project.”

atau:

> “Reference cannot tell us anything about Gradle.”

Sebaliknya:

> Investigate apakah Reference dan APK evidence cukup untuk merekonstruksi original atau required build configuration. Jika exact configuration tidak dapat dibuktikan, bangun minimum configuration yang didukung oleh evidence dan diverifikasi melalui build behavior.

---

## 8. Baseline CI / Build Characterization

Terdapat dua build milestone yang berbeda:

### A. STEP 0 baseline characterization build

Tujuan:

> menentukan apa yang gagal sebelum reconstruction.

Build ini tidak boleh mencakup STEP 1 source repairs.

Failure classes:

- build-system/configuration;
- missing wrapper/tooling;
- dependency resolution;
- malformed/decompiler Java;
- missing symbol;
- type/generic/constructor contract;
- resource/R;
- manifest;
- packaging;
- other/unknown.

### B. STEP 7 first reconstructed build

Tujuan:

> menentukan apa yang dapat di-build oleh reconstructed tree setelah STEP 1–6.

Hasil kedua build tersebut tidak boleh pernah dicampur.

---

## 9. CI Rule

CI adalah verification mechanism, bukan repair mechanism.

Baseline CI harness harus minimal dan reproducible.

CI dapat menetapkan:

- JDK;
- Gradle execution;
- dependency resolution;
- assemble target;
- logs/artifacts;
- failure classification.

CI tidak boleh secara diam-diam memperbaiki Java source.

Jika CI prerequisite tidak tersedia, catat sebagai STEP 0 finding dan investigasikan terhadap Reference/baseline evidence sebelum menambahkannya.

---

## 10. STEP 0 Outputs

STEP 0 selesai hanya ketika output berikut tersedia:

1. Reference inventory;
2. Reference branch verification;
3. baseline tree verification;
4. build environment evidence matrix;
5. baseline dependency/version evidence matrix;
6. baseline CI/build characterization;
7. baseline failure classification;
8. open-question/UNKNOWN register;
9. minimum verified build contract;
10. explicit STEP 0 exit decision.

---

## 11. STEP 0 Exit Contract

STEP 0 dapat berpindah ke STEP 1 hanya ketika:

- Reference inputs sudah locked;
- baseline commit sudah locked;
- hubungan Reference mirror sudah dipahami;
- build environment facts sudah diklasifikasikan sebagai proven/inferred/unknown;
- missing build infrastructure sudah diinvestigasi;
- baseline build/CI sudah dikarakterisasi;
- failure classes sudah dicatat;
- tidak ada source repair yang digunakan untuk menyembunyikan baseline failures;
- unresolved blockers sudah didokumentasikan secara eksplisit;
- tim dapat membedakan baseline failures dari future reconstruction failures.

---

## 12. Prohibited Actions in STEP 0

Jangan:

1. memperbaiki enum declarations;
2. mengganti types dengan `Object` agar compile;
3. mengarang constructors;
4. menambahkan bridge methods tanpa Reference evidence;
5. menghapus/mengisolasi methods karena gagal dalam decompilation;
6. melakukan mass-cast generic values;
7. mengubah library ownership untuk membungkam compiler errors;
8. mendesain ulang APIs atau lifecycle behavior;
9. melakukan branding/premium/backend migration;
10. menyatakan phase PASS karena sebuah document sudah ditulis.

Build-harness changes hanya diizinkan jika merupakan bagian dari environment characterization/reproducibility dan didukung evidence secara terpisah.

---

## 13. Evidence Classification

Gunakan:

- **FACT** — terbukti secara langsung;
- **REFERENCE-BACKED** — terbukti dari Reference evidence;
- **INFERRED** — diinferensikan secara teknis dari beberapa evidence points;
- **UNKNOWN** — evidence tidak mencukupi;
- **BLOCKED** — tidak dapat melanjutkan karena evidence/tooling yang diperlukan tidak tersedia.

Jangan menaikkan `UNKNOWN` menjadi `FACT` hanya karena sebuah value bersifat konvensional.

---

## 14. Historical Material

Reconstruction history dan audit material sebelumnya dapat dipertahankan sebagai forensic evidence.

Historical implementation patches tidak otomatis menjadi bagian dari lifecycle baru.

Prior lineage diperlakukan sebagai:

```
history
  ↓
forensic evidence
  ↓
KEEP / REWORK / DROP
  ↓
new reconstruction
```

Audit sebelumnya mengidentifikasi `c81558abdb09` sebagai first proven source regression terhadap Reference. Temuan tersebut adalah historical evidence; temuan itu tidak mengizinkan cherry-picking old repair lineage.

---

## 15. Current State

**Phase:** STEP 0 — IN PROGRESS

**Baseline:** LOCKED at `4c486d3b46f0a88dcf91d6b2d1d22a3c64aa84c0`

**Reference:** LOCKED conceptually; forensic inventory pending completion.

**Reference mirror:** branch `reference` exists and is an evidence source.

**Build environment:** PARTIALLY KNOWN.

**Gradle:** PARTIALLY KNOWN. Baseline berisi AGP 9.2.1 dan application build configuration, tetapi wrapper/reproducibility masih memerlukan investigation.

**CI:** NOT YET CHARACTERIZED at this new baseline checkpoint.

**Source repair:** NOT STARTED.

**STEP 1:** BLOCKED until STEP 0 exit contract is satisfied.
