# Reference APK Source Language Audit

## Tujuan

Dokumen ini menjadi dasar penentuan bahasa implementasi BaRe agar mengikuti bahasa yang dapat dibuktikan dari Swift Backup 5.1.0 (620). Audit dilakukan terhadap seluruh class pada APK Reference, bukan hanya `org/swiftapps/swiftbackup`.

## Canonical

- Reference: Swift Backup 5.1.0 / versionCode 620.
- APK: `5.1.0 (620).apk`.
- Scope: seluruh class pada `classes.dex` dan `classes2.dex`.
- Evidence utama: DEX/Smali hasil ekstraksi APK; hasil JADX dipakai sebagai evidence pendukung.
- Hasil `.java` dari JADX tidak dianggap sebagai bukti source asli Java.
- Klasifikasi bahasa yang tidak dapat dibuktikan diberi `UNKNOWN`.

## Hasil Audit

Total class yang terdeteksi: **14.217**.

| Ownership | Class | Kotlin strong evidence |
|---|---:|---:|
| Other | 11.090 | 0 |
| Third-party Library | 936 | 0 |
| Google/Android Library | 920 | 0 |
| Microsoft Library | 751 | 0 |
| Swift Backup | 346 | **127** |
| AndroidX | 162 | 0 |
| Android/Java Platform | 11 | 0 |
| Kotlin Runtime/Coroutine | 1 | 1 |

### Swift Backup

Audit diperdalam terhadap **346 class** pada namespace `org.swiftapps.swiftbackup`, satu per satu. Class tidak lagi dibagi hanya menjadi Kotlin vs non-Kotlin.

| Classifier | Jumlah | Keputusan |
|---|---:|---|
| **Kotlin** | **127** | Evidence compiler/runtime Kotlin kuat |
| **Java** | **0** | Belum ada signature bytecode yang cukup decisif untuk membuktikan Java-origin |
| **UNKNOWN** | **219** | Tidak cukup evidence untuk membedakan Java vs Kotlin secara aman |

### Evidence Kotlin pada 127 class

Classifier Kotlin tidak hanya bergantung pada `kotlin.Metadata`. Dari hasil DEX/decompile lokal ditemukan pola compiler/runtime Kotlin pada **118 source outputs** yang mencakup **127 class** Swift Backup, termasuk:

- `DefaultConstructorMarker` pada **69 source outputs**
- Kotlin `Companion` / companion-object artifacts pada **79 source outputs**
- delegated-property artifact seperti `$delegate`
- Kotlin `Intrinsics`
- Kotlin function/lambda/runtime types
- nested/synthetic classes yang merupakan bagian dari output compiler Kotlin

Contoh yang terkonfirmasi kuat:

- `org.swiftapps.swiftbackup.settings.MultipleBackupStrategy`
- `org.swiftapps.swiftbackup.model.app.CloudMetadata`
- `org.swiftapps.swiftbackup.model.app.LocalMetadata`
- `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem`
- `org.swiftapps.swiftbackup.appslist.ui.AppItemContentLayout`
- `org.swiftapps.swiftbackup.intro.IntroBenefitCardView`
- `org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials`
- `org.swiftapps.swiftbackup.folders.data.BackupResult`

### Java classifier

Tidak ada class dari 346 class yang dinaikkan menjadi **Java** hanya karena:

- JADX menghasilkan file `.java`
- tidak ditemukan `DefaultConstructorMarker`
- tidak ditemukan `kotlin.Metadata`

Setelah compilation menjadi DEX, source Java dan Kotlin dapat menghasilkan bytecode yang sangat mirip. Karena itu evidence negatif saja tidak cukup untuk menyatakan Java-origin.

Contoh `org.swiftapps.swiftbackup.apkshare.a` tidak menunjukkan artefak Kotlin yang menentukan dan bentuk bytecode/decompile konsisten dengan Java-style implementation, tetapi tetap dicatat **UNKNOWN**, bukan dipaksa Java.

### UNKNOWN

**219 class** masih UNKNOWN. Ini bukan berarti 219 class tersebut Kotlin, dan bukan berarti 219 class tersebut Java.

UNKNOWN dipertahankan supaya keputusan bahasa BaRe tidak dibuat dari asumsi.

### Keputusan bahasa BaRe

Untuk reconstruction:

1. **Kotlin (127)** → Kotlin diperbolehkan dan menjadi pilihan utama bila faithful reconstruction lebih mudah/akurat.
2. **Java (0 proven)** → belum ada class yang diwajibkan Java berdasarkan audit bytecode ini.
3. **UNKNOWN (219)** → Java atau Kotlin masih boleh dipilih berdasarkan semantic reconstruction berikutnya; bahasa tidak boleh ditentukan hanya dari output JADX.
4. Source BaRe yang sudah ada **tidak dimass-convert**.
5. Target baru mengikuti evidence Reference dan kebutuhan faithful reconstruction.

## Evidence Kotlin

Evidence compiler/runtime yang dipakai untuk klasifikasi kuat antara lain:

- `kotlin/jvm/internal/DefaultConstructorMarker`
- referensi `kotlin/coroutines/*`
- referensi `kotlinx/coroutines/*`
- pola synthetic class yang konsisten dengan hasil compiler Kotlin, bila didukung evidence lain.

`DefaultConstructorMarker` ditemukan pada **306 class** di seluruh APK dan **127 class** di namespace Swift Backup.

## Java vs Kotlin

Audit ini **tidak mengubah semua class tanpa marker Kotlin menjadi Java**.

Alasannya: setelah compilation menjadi DEX, source Java dan Kotlin sama-sama kehilangan source asli. Tidak adanya `DefaultConstructorMarker` bukan bukti cukup bahwa class tersebut ditulis dengan Java.

Karena itu:

- `Kotlin (strong evidence)` → boleh dan sebaiknya dipertimbangkan sebagai Kotlin pada BaRe.
- `UNKNOWN` → belum boleh dipaksakan menjadi Java atau Kotlin.
- Class yang sudah ada di BaRe sebagai Java **tidak perlu mass-convert**.
- Target reconstruction berikutnya dapat memakai Java atau Kotlin berdasarkan evidence class tersebut.

## Keputusan untuk BaRe

Constraint **Java-only** tidak lagi dipakai sebagai aturan absolut.

Aturan reconstruction menjadi:

> **Java/Kotlin diperbolehkan; bahasa implementasi mengikuti evidence Reference dan dipilih untuk faithful reconstruction.**

Audit ini hanya menentukan bahasa implementasi. Audit ini tidak membuktikan semantic equivalence, dependency contract, build compatibility, atau runtime parity.

## Status

**AUDIT COMPLETE — LANGUAGE DECISION BASIS ESTABLISHED**

Class yang masih `UNKNOWN` harus tetap diperlakukan sebagai UNKNOWN sampai evidence tambahan ditemukan.
