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

Pada namespace `org.swiftapps.swiftbackup` ditemukan **346 class**, dan **127 class** mempunyai evidence Kotlin yang kuat.

Contoh class Swift Backup dengan evidence Kotlin kuat:

- `org.swiftapps.swiftbackup.apkshare.ApkSharePackageMetadata`
- `org.swiftapps.swiftbackup.appconfigs.data.Config`
- `org.swiftapps.swiftbackup.appslist.data.FavoriteApp`
- `org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials`
- `org.swiftapps.swiftbackup.folders.data.BackupResult`
- `org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem`
- `org.swiftapps.swiftbackup.intro.IntroBenefitCardView`
- `org.swiftapps.swiftbackup.model.app.CloudMetadata`
- `org.swiftapps.swiftbackup.model.app.LocalMetadata`
- `org.swiftapps.swiftbackup.settings.MultipleBackupStrategy`
- `org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup`

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
