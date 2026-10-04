# BΛR☰ Tahap 2 — Kerangka Struktural Reference

## 1. Tujuan Tahap 2

Tahap 2 menetapkan **kerangka struktural rekonstruksi BΛR☰** berdasarkan seluruh kontrak yang telah ditetapkan pada Tahap 1 dan `docs/bare.md`.

Tahap 2 bukan tahap implementasi fitur penuh dan bukan tahap verifikasi runtime.

Pertanyaan utama Tahap 2:

> **Apakah seluruh permukaan struktural yang diwajibkan oleh Reference sudah memiliki target BΛR☰, pemetaan, dan status evidence yang jelas?**

Tahap 2 harus mencakup, sesuai roadmap `docs/bare.md`:

- Application
- Activity
- Fragment
- Service
- Receiver
- Provider
- AndroidManifest
- layout dan struktur resource
- navigasi struktural
- dialog
- permission
- intent
- configuration
- dependency/library boundary
- native/ABI boundary
- integration boundary yang diperlukan oleh struktur aplikasi

Tahap 2 **tidak boleh menyatakan parity perilaku, parity UI, parity runtime, parity fitur, parity build, atau parity perangkat** hanya berdasarkan keberadaan skeleton.

---

## 2. Kedudukan Tahap 2 terhadap Tahap 1

Tahap 2 adalah turunan langsung dari:

1. `docs/PHASE_1_INVENTORY.md`
2. `docs/bare.md`
3. Reference Swift Backup 5.1.0 (versionCode 620)

Tahap 2 **tidak berwenang mengubah batas target Tahap 1**.

Batas target yang dibekukan pada Tahap 1:

| Komponen | Reference | Target BΛR☰ |
|---|---:|---:|
| Activity | 95 | **95** |
| Service | 10 | **10** |
| Receiver | 10 | **10** |
| Provider | 4 | **4** |
| **TOTAL** | **119** | **119** |

Aturan mutlak:

> **Setiap komponen yang dideklarasikan oleh Reference AndroidManifest adalah target BΛR☰.**

Tidak ada pengurangan karena:

- dependency
- library
- AndroidX
- Google/Firebase
- vendor SDK
- native library
- compatibility module
- implementasi pihak ketiga

Asal implementasi hanya boleh dicatat sebagai evidence forensik. Asal tersebut **tidak mengubah target**.

---

## 3. Definisi Skeleton pada Tahap 2

Yang dimaksud **skeleton** pada Tahap 2 adalah keberadaan struktur yang diperlukan agar suatu kontrak Reference mempunyai tempat implementasi yang jelas di BΛR☰.

Skeleton dapat berupa:

- implementasi langsung BΛR☰;
- kelas Java yang menjadi pemilik target;
- kelas compatibility/wrapper;
- boundary API/ABI yang dipertahankan;
- dependency yang diintegrasikan sebagai bagian dari target BΛR☰;
- struktur resource yang menjadi pasangan kontrak Reference;
- deklarasi AndroidManifest yang mempertahankan kontrak struktural.

Skeleton **bukan** bukti bahwa behavior sudah benar.

### 3.1. Status yang diperbolehkan

Setiap permukaan struktural harus menggunakan salah satu status:

- **ADA** — evidence struktural sudah ditemukan.
- **SEBAGIAN** — sebagian struktur sudah ada tetapi belum lengkap.
- **BELUM ADA** — target belum memiliki struktur yang diperlukan.
- **UNKNOWN** — evidence belum cukup untuk menyatakan ada/tidak.
- **BLOCKED** — pemeriksaan membutuhkan langkah yang dilarang oleh guardrail proyek.

Tidak boleh mengubah `UNKNOWN`, `BELUM ADA`, atau `BLOCKED` menjadi PASS hanya berdasarkan asumsi.

---

# 4. BATAS STRUKTURAL YANG DIWARISKAN DARI P1

Tahap 2 mewarisi seluruh inventaris P1 berikut.

## 4.1. Komponen AndroidManifest

### Activity — 95 target

Seluruh 95 Activity pada `docs/PHASE_1_INVENTORY.md` tetap menjadi target P2.

Termasuk:

- 71 Activity dari package aplikasi Reference;
- 24 Activity dari boundary dependency/library/eksternal.

24 Activity tersebut **bukan dikeluarkan dari P2**.

### Service — 10 target

Seluruh 10 Service pada P1 menjadi target P2.

Termasuk:

- 3 Service dari package aplikasi Reference;
- 7 Service dari dependency/library.

### Receiver — 10 target

Seluruh 10 Receiver pada P1 menjadi target P2.

Termasuk:

- 8 Receiver dari package aplikasi Reference;
- 2 Receiver dari dependency/library.

### Provider — 4 target

Seluruh 4 Provider pada P1 menjadi target P2.

Termasuk:

- `androidx.core.content.FileProvider`
- `rikka.shizuku.ShizukuProvider`
- `com.gun0912.tedpermission.provider.TedPermissionProvider`
- `androidx.startup.InitializationProvider`

Provider tidak boleh dikeluarkan dari target hanya karena implementation class berasal dari library.

---

## 4.2. Baseline resource Reference

P2 juga mewarisi inventaris resource P1:

| Resource | Reference |
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

Jumlah tersebut adalah **baseline Reference**, bukan klaim jumlah implementasi BΛR☰ saat ini.

P2 harus menjaga agar inventaris resource tidak hilang dari batas rekonstruksi.

---

## 4.3. Baseline Application dan Manifest

Reference:

- Application class: `org.swiftapps.swiftbackup.SwiftApp`
- Theme: `@style/SwiftTheme`
- Launcher: `org.swiftapps.swiftbackup.intro.IntroActivity`
- Primary post-intro Activity: `org.swiftapps.swiftbackup.home.HomeActivity`
- `allowBackup=false`
- `allowClearUserData=false`
- `largeHeap=true`
- `requestLegacyExternalStorage=true`
- `supportsRtl=true`
- `enableOnBackInvokedCallback=true`

Selain atribut di atas, seluruh:

- permission
- intent
- provider authority
- service contract
- receiver filter
- activity export state
- metadata
- configuration

tetap merupakan bagian dari kontrak struktural Reference.

Perbedaan yang diizinkan hanya berasal dari `docs/bare.md`.

---

# 5. APPLICATION SKELETON

## 5.1. Kontrak Reference

Reference memiliki:

`org.swiftapps.swiftbackup.SwiftApp`

## 5.2. Target BΛR☰

BΛR☰ memiliki:

`com.bare.BaReApp`

Evidence statis menunjukkan kelas `BaReApp` sudah ada dan Manifest BΛR☰ menunjuk ke:

`android:name=".BaReApp"`

Perubahan identitas Application tersebut termasuk perubahan identitas internal yang diizinkan oleh handoff.

### Status

**ADA — structural owner ditemukan.**

### Batas klaim

Keberadaan `BaReApp` hanya membuktikan skeleton Application.

P2 tidak menyatakan bahwa seluruh lifecycle, initialization order, service initialization, dependency initialization, atau runtime behavior Reference sudah parity.

---

# 6. ACTIVITY SKELETON

## 6.1. Target

**95 Activity Reference = 95 target BΛR☰.**

Daftar canonical lengkap tetap berada pada `docs/PHASE_1_INVENTORY.md`, bagian Target Activity.

Tidak boleh menggunakan daftar 71 Activity sebagai batas target.

## 6.2. Evidence saat ini

Manifest BΛR☰ secara statis telah mendeklarasikan:

- **71 / 95 Activity**
- **24 / 95 Activity belum terdaftar**

Dengan demikian:

**Status Activity skeleton: SEBAGIAN**

71 Activity yang sudah terdaftar merupakan evidence struktural, bukan bukti parity penuh.

24 Activity yang belum terdaftar tetap merupakan target terbuka P2.

## 6.3. Activity dependency/library

Activity berikut tetap target walaupun berasal dari dependency/library:

- AppAuth
- TedPermission
- Microsoft Identity
- Firebase Auth
- AndroidX Credentials
- Google Play Services
- Billing
- pCloud
- Yubico
- Play Core
- dan seluruh Activity dependency lain yang tercantum pada P1

Target untuk permukaan tersebut harus mempunyai mekanisme BΛR☰ yang eksplisit:

- implementasi langsung,
- integrasi dependency,
- compatibility boundary,
- atau mekanisme setara yang mempertahankan kontrak Reference.

Tidak boleh diberi status “bukan target”.

---

# 7. FRAGMENT SKELETON

## 7.1. Mengapa Fragment wajib masuk P2

`docs/bare.md` secara eksplisit mendefinisikan P2 sebagai:

> **REFERENCE SKELETON — Application / Activity / Fragment / Service / etc.**

Karena itu Fragment tidak boleh dihilangkan hanya karena Fragment tidak dihitung dalam 119 AndroidManifest components.

119 adalah **batas komponen Manifest**, sedangkan Fragment adalah **permukaan struktur internal aplikasi**.

## 7.2. Evidence BΛR☰

Source Java BΛR☰ saat ini sudah memiliki Fragment, antara lain:

- `DashboardFragment`
- `CloudFragment`
- `ScheduleFragment`
- `AccountFragment`
- `AppSwipeActionsFragment`
- `SettingsFragment`
- `SettingsLabsFragment`
- `SettingsCloudFragment`
- dan Fragment lain pada source tree BΛR☰

Evidence tersebut membuktikan bahwa skeleton Fragment sudah ada.

Namun P2 **belum memiliki inventaris lengkap Reference-vs-BΛR☰ untuk seluruh Fragment**.

### Status

**SEBAGIAN / UNKNOWN untuk parity inventory Fragment.**

### Aturan berikutnya

Sebelum menyatakan skeleton Fragment lengkap, harus tersedia:

1. inventaris Fragment Reference;
2. inventaris Fragment BΛR☰;
3. mapping Reference → BΛR☰;
4. klasifikasi setiap gap;
5. evidence source untuk setiap mapping.

Tidak boleh mengarang jumlah Fragment Reference.

---

# 8. SERVICE SKELETON

## 8.1. Target

**10 / 10 Service adalah target.**

Canonical list berada pada P1.

## 8.2. Evidence saat ini

Manifest BΛR☰ telah mendeklarasikan:

- `TaskService`
- `ScheduleService`
- `HeadlessSmsSendService`

Sehingga status statis:

**3 / 10 Service**

**7 / 10 Service belum terdaftar.**

### Status

**SEBAGIAN**

`TaskService` sendiri telah memiliki source Java BΛR☰.

Keberadaan source class tidak berarti lifecycle dan behavior Service sudah parity.

Service dependency/library tetap target.

---

# 9. RECEIVER SKELETON

## 9.1. Target

**10 / 10 Receiver adalah target.**

## 9.2. Evidence saat ini

Manifest BΛR☰ telah mendeklarasikan 8 Receiver:

- `AlarmReceiver`
- `LocaleChangedReceiver`
- `BootReceiver`
- `NotificationTaskCancelReceiver`
- `PackageInstallResultReceiver`
- `ShortcutPinnedReceiver`
- `SmsReceiver`
- `MmsReceiver`

Sehingga:

- **8 / 10 ada secara struktural**
- **2 / 10 belum terdaftar**

Dua Receiver dependency/library tetap target:

- `androidx.profileinstaller.ProfileInstallReceiver`
- `com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver`

### Status

**SEBAGIAN**

---

# 10. PROVIDER SKELETON

## 10.1. Target

**4 / 4 Provider adalah target.**

## 10.2. Evidence saat ini

Manifest BΛR☰ saat ini memiliki:

- `rikka.shizuku.ShizukuProvider`
- `androidx.core.content.FileProvider`

Sehingga:

- **2 / 4 ada secara struktural**
- **2 / 4 belum terdaftar**

Provider yang masih terbuka:

- `com.gun0912.tedpermission.provider.TedPermissionProvider`
- `androidx.startup.InitializationProvider`

### Status

**SEBAGIAN**

Tidak boleh menggunakan angka 0 Provider sebagai target.

---

# 11. ANDROIDMANIFEST SKELETON

P2 memperlakukan AndroidManifest sebagai kontrak struktural, bukan sekadar daftar nama class.

Yang harus dipetakan terhadap Reference:

- Application identity
- Application class
- theme
- label
- icon
- launcher
- Activity
- Service
- Receiver
- Provider
- authority
- permission
- intent-filter
- exported
- enabled
- launchMode
- parentActivityName
- foregroundServiceType
- metadata
- queries
- application flags
- konfigurasi lain

## Status saat ini

Manifest BΛR☰ sudah memiliki baseline identitas BΛR☰ dan sebagian besar komponen internal.

Namun karena masih terdapat:

**35 / 119 target Manifest components yang belum terdaftar**

maka Manifest skeleton:

**SEBAGIAN — BELUM LENGKAP**

Perbedaan Manifest yang bersifat dependency/toolchain hanya boleh diklasifikasikan setelah evidence tersedia. Jangan menebak.

---

# 12. RESOURCE SKELETON

Resource Reference merupakan bagian dari batas P2 karena P1 menetapkan baseline:

- 341 layout
- 7 varian/qualifier layout tambahan sesuai inventory P1
- 448 drawable-family entries pada baseline P1
- 44 menu
- 18 xml
- 12 raw
- 7 font
- 41 anim
- 42 animator
- 199 color

P2 tidak boleh menyederhanakan resource menjadi “UI nanti”.

Struktur resource mencakup:

- layout
- layout qualifier
- drawable
- vector
- menu
- values
- styles
- themes
- color
- font
- anim
- animator
- raw
- xml
- konfigurasi resource lain

### Status

P1 memberikan baseline Reference, tetapi P2 ini **belum menyatakan parity resource lengkap**.

Status:

**UNKNOWN / SEBAGIAN**

Audit resource lengkap harus menggunakan inventory Reference canonical dan inventory target BΛR☰, bukan asumsi berdasarkan jumlah file yang terlihat.

---

# 13. NAVIGASI, DIALOG, INTENT, PERMISSION, CONFIGURATION

Permukaan berikut merupakan bagian dari skeleton struktural karena Reference menjadikannya bagian dari kontrak aplikasi:

### Navigasi

- Activity → Activity
- Activity → Fragment
- Fragment → Fragment
- parent/child Activity relation
- launcher flow
- deep-link / external entry point

### Dialog

- dialog owner
- dialog resource
- dialog entry point
- callback boundary
- permission dialog boundary

### Intent

- action
- category
- data
- MIME type
- extras
- explicit/implicit target
- result contract

### Permission

- Manifest permission
- runtime permission surface
- permission-dependent entry point

### Configuration

- application configuration
- metadata
- resource configuration
- storage configuration
- external integration configuration

### Status

**BELUM DINYATAKAN LENGKAP PADA P2**

P2 hanya boleh menyatakan mapping yang telah mempunyai evidence.

Behavior dan runtime verification tetap berada di fase berikutnya sesuai roadmap.

---

# 14. NATIVE / LIBRARY / EXTERNAL SKELETON

P1 menetapkan bahwa permukaan native/library/external tetap target.

P2 karena itu harus mempertahankan boundary berikut sebagai bagian dari skeleton:

- SBA native runtime
- native `.so` ABI
- OAuth / identity
- billing
- cloud SDK
- Shizuku
- AndroidX provider/service/receiver/activity
- dependency lain yang memunculkan kontrak Manifest atau application structure

## SBA native

Evidence BΛR☰ menunjukkan:

- exact Reference `libsba_archive.so` tersedia untuk ABI yang relevan;
- native payload ditempatkan pada `native-compat/src/main/jniLibs`;
- terdapat compatibility boundary `SbaRuntimeNative`.

### Status

**ADA — structural/native boundary evidence**

P2 tidak menyatakan native behavior sudah runtime-verified.

## Dependency component boundary

Untuk dependency component yang menjadi target P1, mekanisme target harus dicatat secara eksplisit.

Bentuk mekanisme boleh:

- dependency integration;
- wrapper;
- compatibility implementation;
- preserved ABI/API boundary;
- equivalent BaRe-owned implementation.

Tetapi status target tetap ada.

---

# 15. PEMETAAN IDENTITAS REFERENCE → BΛR☰

Perubahan identitas berikut adalah bagian dari deviation yang diizinkan:

| Reference | BΛR☰ | Klasifikasi |
|---|---|---|
| `org.swiftapps.swiftbackup` | `com.bare` | AUTHORIZED |
| `SwiftApp` | `BaReApp` | AUTHORIZED |
| Swift Backup branding | BΛR☰ / BaRe | AUTHORIZED |
| SwiftTheme | BaReTheme | AUTHORIZED branding/identity surface |
| Premium entitlement | gratis | AUTHORIZED |
| Firebase backend | Supabase jika memang diwajibkan handoff | AUTHORIZED |

Perubahan lain tidak otomatis sah.

Setiap perbedaan yang belum terbukti harus:

- AUTHORIZED DEVIATION
- UNAUTHORIZED DEVIATION
- atau UNKNOWN

---

# 16. BATAS YANG TIDAK BOLEH DILAKUKAN PADA P2

Tahap 2 **tidak melakukan**:

- build
- assemble
- packaging APK
- CI execution
- install APK
- runtime device test
- emulator test
- live Supabase execution
- live Supabase mutation
- Auth execution
- klaim runtime PASS
- klaim feature parity
- klaim behavior parity

Jika pemeriksaan membutuhkan salah satu langkah tersebut:

**STATUS = BLOCKED**

Jangan memalsukan hasil.

---

# 17. KRITERIA PENERIMAAN P2

P2 baru dapat dinyatakan lengkap jika seluruh kategori struktural berikut memiliki evidence dan mapping yang memadai:

| Area | Target / Kontrak | Status saat ini |
|---|---|---|
| Application | Reference Application → BΛR☰ Application | **ADA** |
| Activity | 95 / 95 | **SEBAGIAN — 71 / 95** |
| Fragment | seluruh Fragment Reference yang relevan | **UNKNOWN / SEBAGIAN** |
| Service | 10 / 10 | **SEBAGIAN — 3 / 10** |
| Receiver | 10 / 10 | **SEBAGIAN — 8 / 10** |
| Provider | 4 / 4 | **SEBAGIAN — 2 / 4** |
| Manifest | seluruh struktur Manifest Reference | **SEBAGIAN** |
| Resource | seluruh baseline resource P1 | **UNKNOWN / SEBAGIAN** |
| Navigation | contract struktural Reference | **BELUM LENGKAP** |
| Dialog | contract struktural Reference | **BELUM LENGKAP** |
| Intent | contract struktural Reference | **BELUM LENGKAP** |
| Permission | contract struktural Reference | **BELUM LENGKAP** |
| Configuration | contract struktural Reference | **BELUM LENGKAP** |
| Native / ABI | SBA + boundary native Reference | **ADA — boundary** |
| Library / external | seluruh target dependency/external | **SEBAGIAN** |

---

# 18. HASIL GERBANG TAHAP 2

## STATUS: **BELUM LULUS / SKELETON BELUM LENGKAP**

Alasan utama:

1. 24 / 95 Activity target belum terdaftar.
2. 7 / 10 Service target belum terdaftar.
3. 2 / 10 Receiver target belum terdaftar.
4. 2 / 4 Provider target belum terdaftar.
5. Inventaris lengkap Fragment Reference → BΛR☰ belum tersedia pada evidence P2.
6. Audit penuh struktur resource Reference → BΛR☰ belum dinyatakan selesai.
7. Mapping lengkap navigation/dialog/intent/permission/configuration belum selesai.
8. Dependency/library/external target boundary belum seluruhnya memiliki mekanisme target yang terdokumentasi.

Dengan demikian:

**P2 tidak boleh dinyatakan COMPLETE.**

---

# 19. TARGET P2 BERIKUTNYA

Urutan kerja setelah dokumen ini:

1. Lengkapi inventaris Fragment Reference.
2. Lengkapi mapping Fragment Reference → BΛR☰.
3. Lengkapi 24 Activity yang belum memiliki skeleton.
4. Lengkapi 7 Service yang belum memiliki skeleton.
5. Lengkapi 2 Receiver yang belum memiliki skeleton.
6. Lengkapi 2 Provider yang belum memiliki skeleton.
7. Audit struktur Manifest terhadap seluruh 119 target.
8. Audit resource Reference → BΛR☰.
9. Audit navigation/dialog/intent/permission/configuration sebagai kontrak struktural.
10. Audit mekanisme target seluruh dependency/library/external surface.
11. Re-evaluasi gate P2 berdasarkan evidence baru.

Tidak ada langkah di atas yang boleh diganti dengan klaim build/runtime.

---

# 20. ATURAN PARITY UNTUK FASE BERIKUTNYA

Setelah P2 selesai, seluruh fase berikutnya tetap menggunakan:

**Reference → BΛR☰ = 1:1 + Authorized Deviations**

P2 tidak boleh digunakan untuk menghapus target.

Khusus dependency/library:

> **“Berasal dari library” bukan alasan untuk mengeluarkan komponen dari target.**

P2 hanya menentukan struktur dan ownership/mechanism target.

Behavior, UI fidelity, feature parity, runtime, dan verification dilakukan pada fase yang sesuai dengan roadmap `docs/bare.md`.

---

## 21. SUMBER KEWENANGAN

Dokumen ini harus dibaca bersama:

1. `docs/bare.md` — kewenangan dan aturan rekonstruksi.
2. `docs/PHASE_1_INVENTORY.md` — batas target canonical.
3. Reference Swift Backup 5.1.0 (620) — source of truth.
4. `docs/audits/APP_IMPLEMENTATION_AUDIT_REWRITE_2026-10-04.md` — bukti audit implementasi yang telah dilakukan.

Jika terjadi konflik:

**Reference evidence + `docs/bare.md` + P1 target boundary** menjadi acuan klasifikasi.

P2 tidak boleh mengubah target P1 secara sepihak.
