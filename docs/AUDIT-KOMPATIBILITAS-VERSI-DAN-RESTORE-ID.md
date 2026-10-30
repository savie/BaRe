# Audit Kompatibilitas Versi dan Restore BΛR☰

> **Status dokumen:** Audit statis parsial — belum siap dijadikan persetujuan patch.
>
> **Branch yang diaudit:** `Working`  
> **Repository:** `savie/BaRe`  
> **Area implementasi:** `bare-implementation/` (Apktool/smali/resource) dan `tools/libsba-archive/` (library native SBA milik BΛR☰).  
> **Bahasa:** Indonesia. Istilah teknis dan *Canonical names* dipertahankan dalam bentuk aslinya.

---

## 1. Tujuan dan target

Target versi APK berikutnya:

- `versionName = 1.4.6`
- `versionCode = 146`

Target kompatibilitas yang sedang diaudit:

- APK BΛR☰ versi 146 dapat memulihkan backup lama yang dibuat mulai versi aplikasi 100 (`v1.0.0 (100))), sepanjang format dan komponen backup tersebut memang didukung.
- Cakupan harus meliputi **local restore** dan **cloud restore**.
- Audit harus membedakan minimum versi aplikasi dari versi format archive.

Pernyataan kompatibilitas yang berbeda dan **tidak otomatis dijamin**:

- Backup yang dibuat oleh APK 146 dapat dipulihkan oleh APK lama versi 100. Ini adalah arah kompatibilitas terbalik dan perlu pembuktian terpisah. Khususnya, parser lama mungkin tidak memahami format SBA yang lebih baru.

## 2. Batas audit dan prinsip kerja

Audit ini berdasarkan inspeksi statis source JADX, smali, konfigurasi Apktool, changelog, dan source native yang tersedia di repository. Audit ini **bukan** hasil uji restore end-to-end.

Tidak ada source atau konfigurasi implementasi yang diubah dalam tahap audit ini.

Prinsip:

1. Jangan menyamakan label versi visual dengan versi aplikasi yang dibaca Android.
2. Jangan menyamakan `versionCode` aplikasi dengan versi header SBA.
3. Jangan menghapus atau menurunkan version gate sebelum semua jalur restore dan format data dipetakan.
4. Bedakan bukti statis, inferensi, dan hasil uji runtime.
5. Keberhasilan compile atau unit test native tidak membuktikan kompatibilitas setiap backup historis.

## 3. Metadata versi APK saat ini

File `bare-implementation/apktool.yml` saat audit masih memuat:

```yaml
version: 3.0.3
apkFileName: 5.1.0 (620).apk
versionInfo:
  versionCode: 620
  versionName: 5.1.0
```

Catatan:

- `version: 3.0.3` adalah versi Apktool, bukan versi aplikasi.
- `versionInfo.versionCode` dan `versionInfo.versionName` adalah metadata versi aplikasi yang perlu diselaraskan dengan target build.
- AndroidManifest hasil decode perlu diperiksa bersama hasil APK final; jangan hanya mengandalkan perubahan nama file atau string About.
- String pada `res/raw/changelog.txt` dan resource visual tidak mengubah `PackageInfo.versionCode`.

**Belum dilakukan:** perubahan metadata untuk 1.4.6 (146), build, dan pemeriksaan manifest APK hasil build.

## 4. Temuan version requirement pada metadata

### 4.1 LocalMetadata

File implementasi:

- `bare-implementation/smali_classes2/com/bareapps/barebackup/model/app/LocalMetadata.smali`
- Pembanding hasil JADX: `reference/jadx/sources/org/swiftapps/swiftbackup/model/app/LocalMetadata.java`

Temuan:

- `SB_VERSION_CODE_REQUIRED = 580` (smali literal `0x244L`).
- `SB_VERSION_NAME_REQUIRED = "v5.0.0"`.
- Method berikut menetapkan requirement versi 580 pada komponen terkait:
  - `updateApkDetails()`
  - `updateSplitsDetails()`
  - `updateSharedLibsDetails()`
  - `updateDataDetails()`
  - `updateExtDataDetails()`
  - `updateMediaDetails()`
  - `updateExpansionDetails()`
- `getSBVersionCodesRequired()` menyusun daftar requirement komponen untuk metadata lokal.

Implikasi: metadata lokal yang dibuat oleh jalur tersebut membawa requirement 580 per komponen. Namun temuan ini sendiri **belum membuktikan** bahwa local restore memeriksa daftar itu atau menolak restore dengan mekanisme yang sama seperti cloud.

### 4.2 CloudMetadata

File implementasi:

- `bare-implementation/smali_classes2/com/bareapps/barebackup/model/app/CloudMetadata.smali`
- Pembanding hasil JADX: `reference/jadx/sources/org/swiftapps/swiftbackup/model/app/CloudMetadata.java`

Temuan:

- Ada field `minSBVersionCodeRequired` untuk minimum global.
- `getSBVersionCodesRequired()` mengembalikan minimum global ditambah requirement komponen APK, splits, shared libraries, data, external data, media, dan expansion.
- Method `prepareForFirebaseUpload()` menjalankan:
  ```java
  this.minSBVersionCodeRequired = hasBackups() ? 580L : null;
  ```
- Method `updateApkDetails()`, `updateSplitsDetails()`, `updateSharedLibsDetails()`, `updateDataDetails()`, `updateExtDataDetails()`, `updateMediaDetails()`, dan `updateExpansionDetails()` masing-masing mengisi requirement komponen 580 dan nama requirement `v5.0.0`.

Implikasi: cloud metadata mempunyai **dua lapisan requirement** yang perlu diaudit bersama: minimum global dan minimum per komponen. Menurunkan hanya satu field tidak cukup jika field requirement lainnya masih lebih tinggi.

### 4.3 Jalur pembuatan dan upload cloud

Pembanding JADX:

- `reference/jadx/sources/defpackage/vl.java` — AppBackupTask mengisi LocalMetadata melalui method update detail komponen.
- `reference/jadx/sources/defpackage/c40.java` — AppUploadTask mengisi CloudMetadata per komponen dan kemudian memanggil `prepareForFirebaseUpload()` sebelum metadata diunggah.

Temuan statis: CloudMetadata tidak sekadar menerima angka dari LocalMetadata; method update CloudMetadata menetapkan requirement-nya sendiri, lalu `prepareForFirebaseUpload()` menetapkan minimum global.

## 5. Temuan pemeriksaan saat cloud restore

File terkait:

- `bare-implementation/smali/nm6.smali`
- `bare-implementation/smali/xw.smali`
- Pembanding JADX: `reference/jadx/sources/defpackage/nm6.java`
- Pemanggil yang ditemukan: `bare-implementation/smali_classes2/c40.smali` / `reference/jadx/sources/defpackage/c40.java`

Method pemeriksa:

```java
nm6.a(List<Long> requiredVersionCodes, callback)
```

Perilaku yang terinspeksi:

1. Jika list null/kosong atau tidak berisi nilai positif, pemeriksaan mengembalikan `true`.
2. Membaca `versionCode` aplikasi BΛR☰ yang terpasang.
3. Membandingkan nilai requirement dengan versi aplikasi terpasang.
4. Jika ada requirement lebih tinggi, callback menerima pesan bahwa versi BΛR☰ yang lebih tinggi diperlukan dan pemeriksaan mengembalikan `false`.
5. Perbandingan menggunakan **versionCode**, bukan versionName.

Pemanggil yang ditemukan berada pada jalur cloud AppDownloadTask, sebelum proses restore/download lanjutan diteruskan.

Hasil pencarian repository saat audit menemukan satu call site `nm6.a()` pada `c40.smali`. Ini mendukung kesimpulan bahwa gate tersebut digunakan pada jalur cloud app restore yang terinspeksi. Ini **tidak membuktikan** tidak ada pemeriksaan kompatibilitas lain pada jalur lain.

## 6. Local restore: version gate ditemukan

**Koreksi terhadap pembacaan awal:** local restore ternyata memakai gate `nm6.a()` juga. Kesimpulan sebelumnya yang menyatakan call site hanya ada pada cloud adalah tidak lengkap dan telah diganti berdasarkan inspeksi lanjutan.

File implementasi:

- `bare-implementation/smali/xw.smali`
- Pembanding JADX: `reference/jadx/sources/defpackage/xw.java`
- Method: `xw.d(qv)` — AppRestoreTask.
- Getter metadata lokal: `xw.f()`, yang mengembalikan `LocalMetadata`.

Bukti alur smali pada `xw.smali`:

1. Baca field `xw.i`, yang ditetapkan dari keberadaan `AppCloudBackup` pada constructor.
2. Jika `xw.i == false` (jalur local), ambil `LocalMetadata` melalui `xw.f()`.
3. Jika metadata tersedia, panggil `LocalMetadata.getSBVersionCodesRequired()`; jika tidak tersedia, kirim null.
4. Buat callback `hj`, lalu panggil `nm6.a(list, callback)`.
5. Jika hasil false, alur melompat ke label akhir dan tidak melanjutkan proses restore app tersebut.
6. Jika true, lanjut ke pemeriksaan/restore APK dan bagian data yang dipilih.

Call site berada di sekitar baris smali 1752–1823 pada file yang diaudit.

Dengan demikian, dua jalur gate yang terkonfirmasi adalah:

| Jalur | Sumber requirement | Pemanggil gate | Lokasi |
|---|---|---|---|
| Local app restore | `LocalMetadata.getSBVersionCodesRequired()` | `nm6.a()` | `xw.smali`, method `d(qv)` |
| Cloud app restore | `CloudMetadata.getSBVersionCodesRequired()` | `nm6.a()` | `c40.smali`, AppDownloadTask |

Kedua jalur memakai helper pembanding versi yang sama, tetapi mengambil metadata dari model yang berbeda.

### Cakupan pemeriksaan

Getter LocalMetadata menyusun tujuh nilai requirement komponen:
- APK
- splits
- shared libraries
- data
- external data
- media
- expansion

Getter CloudMetadata menyusun delapan nilai:
- minimum global
- APK
- splits
- shared libraries
- data
- external data
- media
- expansion

Helper `nm6.a()` memeriksa seluruh nilai positif dalam list yang diberikan. Ia tidak menerima daftar komponen yang dipilih sebagai argumen. Karena itu, secara statis sebuah requirement tinggi dari bagian backup yang tidak dipilih pun dapat menyebabkan seluruh task app restore ditolak. Perlu uji runtime untuk mengonfirmasi perilaku UI dan pemilihan komponen yang relevan.

### Metadata hilang/null

`nm6.a()` mengembalikan true jika list null/kosong atau tidak memiliki requirement positif. Ini berarti metadata lokal/cloud lama yang tidak menyimpan field requirement dapat lolos dari pemeriksaan versi ini. Itu hanya berarti gate tidak menolaknya; parser archive, password, integritas, dan extractor tetap dapat menolak atau gagal.

## 7. Pemetaan tipe archive dan jalur format lama/baru

Pembanding JADX:
- `reference/jadx/sources/org/swiftapps/swiftbackup/compress/Packer.java`
- `reference/jadx/sources/defpackage/mz6.java`
- `reference/jadx/sources/defpackage/xw.java`

Method `Packer.b(q63)` mendeteksi tipe archive. Temuan statis:
- Tipe 6 ditetapkan ketika `mz6.m(file)` mengenali SBA dan metadata SBA dapat dibaca.
- Tipe 6 mengambil daftar entry dan status enkripsi dari SBA metadata.
- Jalur non-SBA mendeteksi format arsip lama, termasuk 7-Zip dan ZIP.
- Pada format 7-Zip, kode mengklasifikasikan varian tertentu sebagai tipe 3 atau 5.
- ZIP diklasifikasikan sebagai tipe 1 atau 2 berdasarkan karakteristik entry (termasuk apakah entry berupa TAR).

Pada AppRestoreTask, kelas task tiap komponen memeriksa `i40.a`:
- Jika tipe archive 6, jalur restore memakai helper SBA (misalnya `mz6.f()` / listing dan extraction SBA).
- Untuk tipe selain 6, jalur legacy menggunakan `Packer.a()` dan extractor legacy.

Ini bukti bahwa source memiliki jalur pemrosesan SBA baru dan jalur legacy yang berbeda. Namun, belum ada bukti bahwa setiap versi backup 100–579 menggunakan satu tipe tertentu; pemetaan versi pembuat backup ke tipe archive perlu fixture historis.

### Implikasi

- Parser SBA version 1/2 bukan satu-satunya parser restore aplikasi.
- Backup lama dapat memakai ZIP, TAR, 7-Zip, atau kontainer legacy lainnya yang dideteksi oleh Packer.
- Mengubah version gate tidak mengubah deteksi tipe archive maupun kemampuan extractor.
- Target restore versi 100 harus diuji terhadap setiap format historis yang ditemukan, bukan hanya SBA.


## 8. Format archive SBA

Parser referensi:

- `reference/jadx/sources/defpackage/z07.java`
- Smali terkait: `bare-implementation/smali/z07.smali`

Temuan statis pada parser:

- Magic header: `SBA1`.
- Header archive versi 1 menggunakan panjang 96 byte.
- Header archive versi 2 menggunakan panjang 144 byte.
- Parser menerima versi 1 dan 2, dan menolak versi di luar rentang tersebut.
- Footer menggunakan magic `SAF1`, divalidasi CRC32, dan versi footer harus cocok dengan versi header.

Library native BΛR☰:

- Lokasi: `tools/libsba-archive/`
- README menjelaskan validasi header/footer SBA1/SBA2, TAR, Zstandard, Argon2id, AEGIS, index/footer, integritas, dan ekstraksi aman.
- README juga memperingatkan bahwa compile dan unit test tidak membuktikan kompatibilitas byte-for-byte untuk setiap archive historis; round-trip di perangkat dan validasi restore tetap dibutuhkan.

**Pemisahan konsep:**

- SBA archive version adalah versi format data.
- `versionCode` adalah versi aplikasi Android.
- Mengubah minimum aplikasi ke 100 tidak membuat parser otomatis mampu membaca format archive yang tidak didukung.
- Dukungan parser terhadap SBA1/SBA2 tidak dengan sendirinya membuktikan bahwa setiap bagian backup versi 100–620 menggunakan format tersebut atau dapat dipulihkan.

## 9. Bukti kompatibilitas dari changelog

File: `bare-implementation/res/raw/changelog.txt`

Changelog versi 5.1.0 (620) menyatakan:

- Backup yang dibuat dengan 5.1.0 tidak dapat dipulihkan menggunakan versi BΛR☰ yang lebih lama.
- Backup yang dibuat oleh versi lama masih dapat dipulihkan pada 5.1.0.

Ini adalah pernyataan kompatibilitas satu arah:

- Backup lama → aplikasi 5.1.0: didukung menurut changelog.
- Backup 5.1.0 → aplikasi lama: tidak didukung menurut changelog.

Changelog tidak menetapkan batas minimum spesifik 100 dan tidak membuktikan kompatibilitas setiap versi perantara.

## 10. Matriks status saat ini

| Area | Temuan | Status |
|---|---|---|
| Metadata APK | Saat ini 5.1.0 (620), target 1.4.6 (146) | Perlu perubahan setelah audit |
| LocalMetadata | Requirement komponen ditetapkan 580 | Terbukti statis |
| CloudMetadata | Requirement global dan per komponen ditetapkan 580 | Terbukti statis |
| Cloud version gate | `nm6.a()` membandingkan requirement dengan installed versionCode | Terbukti statis |
| Local version gate | LocalMetadata → nm6.a() pada AppRestoreTask (xw.d) | Terbukti statis |
| SBA parser | Menerima archive version 1 dan 2 | Terbukti statis |
| Backup lama versi 100–579 | Changelog hanya memberi klaim umum backup lama; belum ada fixture lintas versi | Belum terbukti per versi |
| Restore end-to-end | Belum diuji dengan perangkat dan fixture historis | Belum diuji |
| Backup APK 146 ke APK 100 | Tidak dijamin; format baru dapat tidak kompatibel | Tidak boleh diasumsikan |

## 11. Risiko jika langsung mengganti angka 580 menjadi 100

1. Jika hanya mengubah `apktool.yml`, metadata requirement di LocalMetadata dan CloudMetadata tetap 580.
2. Jika hanya mengubah minimum global cloud, requirement komponen masih dapat menyebabkan penolakan.
3. Jika hanya menurunkan requirement metadata, format archive yang tidak dikenal parser tetap gagal diproses.
4. Local restore bisa mempunyai validasi lain yang belum terpetakan.
5. Backup yang dibuat oleh versi baru dapat tetap tidak kompatibel dengan versi aplikasi lama.
6. String visual seperti About/changelog bukan pengganti metadata versi Android dan bukan pengganti requirement backup.

Karena itu, belum ada rekomendasi untuk mengganti semua literal 580 secara massal.

## 12. Rencana audit lanjutan

Urutan kerja berikutnya:

### A. Selesaikan local restore
- Telusuri pembacaan metadata lokal dari file backup.
- Temukan semua pemakaian `getSBVersionCodesRequired()` milik LocalMetadata.
- Petakan restore tiap komponen: APK, splits, shared libraries, data, external data, media, expansion, dan special data jika relevan.
- Identifikasi format kontainer tiap komponen dan fallback untuk metadata lama.

### B. Selesaikan cloud restore
- Telusuri deserialisasi CloudMetadata untuk backup lama.
- Audit fallback untuk field requirement yang hilang/null.
- Pastikan gate global dan requirement komponen dipahami urutan evaluasinya.
- Petakan ekstraksi setiap komponen setelah gate lolos.

### C. Pemetaan format lintas versi
- Identifikasi format yang digunakan backup sebelum SBA1/SBA2 atau sebelum perubahan 5.1.0.
- Inspeksi fixture backup historis jika tersedia.
- Buat matriks versi pembuat backup × versi parser × komponen.
- Jangan menetapkan batas 100 sebelum ada bukti format dan parser yang sesuai.

### D. Validasi build dan runtime setelah patch disetujui
- Verifikasi manifest APK final: `versionName 1.4.6`, `versionCode 146`.
- Verifikasi seluruh requirement metadata yang dihasilkan untuk backup lokal dan cloud.
- Uji restore fixture dari versi 100 dan versi perantara yang tersedia.
- Uji cloud restore dan local restore secara terpisah.
- Uji backup baru serta perilaku kompatibilitas arah sebaliknya.
- Catat perangkat, Android version, sumber backup, komponen, hasil, dan log.

## 13. Aturan kelanjutan lintas sesi

Sebelum melanjutkan pekerjaan:

1. Baca dokumen ini terlebih dahulu.
2. Periksa branch dan commit repository terbaru; jangan menganggap source tidak berubah sejak audit ini.
3. Pertahankan pemisahan direktori:
   - `bare-implementation/`: smali, manifest, resources, Apktool build.
   - `tools/libsba-archive/`: implementasi native SBA milik BΛR☰.
4. Jangan mengedit file selama status pekerjaan masih audit.
5. Catat temuan baru dengan klasifikasi **Bukti statis**, **Inferensi**, atau **Hasil uji runtime**.
6. Perbarui matriks status dan bagian rencana audit sebelum mengklaim kompatibilitas.
7. Jangan menganggap versi aplikasi 146 sebagai batas kemampuan parser. Yang menentukan adalah kode dan format yang benar-benar tersedia dalam build.

---

## 14. Referensi source yang diperiksa

- `bare-implementation/apktool.yml`
- `bare-implementation/AndroidManifest.xml`
- `bare-implementation/res/raw/changelog.txt`
- `bare-implementation/smali/nm6.smali`
- `bare-implementation/smali/z07.smali`
- `bare-implementation/smali_classes2/c40.smali`
- `bare-implementation/smali_classes2/com/bareapps/barebackup/model/app/LocalMetadata.smali`
- `bare-implementation/smali_classes2/com/bareapps/barebackup/model/app/CloudMetadata.smali`
- `reference/jadx/sources/defpackage/nm6.java`
- `reference/jadx/sources/defpackage/xw.java`
- `reference/jadx/sources/org/swiftapps/swiftbackup/compress/Packer.java`
- `reference/jadx/sources/defpackage/mz6.java`
- `reference/jadx/sources/defpackage/z07.java`
- `reference/jadx/sources/defpackage/vl.java`
- `reference/jadx/sources/defpackage/c40.java`
- `reference/jadx/sources/org/swiftapps/swiftbackup/model/app/LocalMetadata.java`
- `reference/jadx/sources/org/swiftapps/swiftbackup/model/app/CloudMetadata.java`
- `tools/libsba-archive/README.md`
- `tools/libsba-archive/src/sba1_format.cpp`

**Catatan referensi:** JADX adalah hasil dekompilasi untuk membantu penelusuran. Untuk perubahan implementasi, validasi instruksi smali aktual di `bare-implementation/` dan source native aktual di `tools/libsba-archive/`.
