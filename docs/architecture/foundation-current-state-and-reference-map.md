# BΛR☰ Foundation Audit — BareApp, Manifest, dan SwiftApp

**Status:** audit statis / dokumentasi arsitektur  
**Target:** repository `savie/BaRe`, branch `rewrite`  
**Snapshot target yang diperiksa:** `85dcaedd50c1f5b0ad8da9bbd7ab8a9bde239927`  
**Referensi:** SwiftBackup `5.1.0 (620)`, JADX output dari `SwiftBackup-5.1.0-620-decompiled.zip`  
**Tujuan:** menjelaskan lokasi pondasi aplikasi yang sebenarnya dan memisahkan implementasi aktif dari deklarasi, komentar, serta pekerjaan yang belum ada.

> Dokumen ini berasal dari pembacaan source target dan source hasil dekompilasi referensi. Ini bukan klaim feature parity dan bukan hasil build/runtime test.

## 1. Jawaban singkat: pondasi itu di mana?

**Pondasi bukan satu file.** Ada beberapa lapisan dengan tanggung jawab berbeda:

| Lapisan | Tanggung jawab | Bukti utama |
|---|---|---|
| Android manifest | Registrasi komponen Android, permission declaration, intent filter, metadata, dan application class | `app/src/main/AndroidManifest.xml` |
| Application bootstrap | Inisialisasi proses satu kali, default runtime, listener global, dan startup diagnostics | `BareApp.kt` pada BΛR☰; `SwiftApp.java` pada referensi |
| Core/domain | Model dan aturan backup/restore, konfigurasi, operasi, status, hasil, kebijakan | Harus ditelusuri pada source referensi dan dipetakan ke modul target |
| Infrastructure/platform | File access, storage/SAF, root/Shizuku, package manager, archive/native, cloud/database | Berbagai subsystem; tidak otomatis dibuat oleh manifest |
| Execution/lifecycle | Menjalankan operasi, progress/cancel/result, service, schedule, recovery | Service/task/operation implementations |
| Feature/UI | Screen dan interaksi pengguna yang memanggil core dan infrastructure | Activity/Fragment/ViewModel dan wiring terkait |

Analogi: **Manifest adalah daftar pintu dan aturan masuk; `BareApp` adalah prosedur ketika proses baru menyala; core dan infrastructure adalah mesin di dalam rumah.** Memiliki pintu di manifest tidak berarti ruangan atau mesinnya sudah dibangun.

## 2. Apa yang benar-benar dilakukan Manifest?

Manifest menyatakan kepada Android hal-hal seperti:

- application class: `com.bareapps.barebackup.BareApp`;
- Activity yang bisa diluncurkan dan Activity yang menerima intent;
- Service, receiver, provider, permission, intent filter, dan metadata yang dideklarasikan;
- deklarasi permission yang mungkin diminta aplikasi.

Manifest **tidak** dengan sendirinya:
- mengimplementasikan backup atau restore;
- membuat sebuah service memiliki lifecycle/worker logic;
- memberikan permission runtime atau root;
- menyediakan implementasi class yang namanya dideklarasikan;
- membuktikan cloud login, scheduling, archive, atau operasi file berfungsi.

Audit target sebelumnya menemukan banyak nama komponen pada manifest tetapi jauh lebih sedikit file source Kotlin/Java yang tersedia di tree. Jadi nama komponen di manifest harus ditelusuri ke source dan call sites; jangan dihitung sebagai fitur yang selesai hanya karena terdaftar.

## 3. Apa yang benar-benar dilakukan BareApp saat ini?

File target: `app/src/main/java/com/bareapps/barebackup/BareApp.kt`.

### Implementasi yang terlihat pada source target

1. Menyimpan instance aplikasi dan mencatat startup.
2. Membuat notification channels dan memperbarui nama channel menurut system locale.
3. Membatalkan notifikasi lama saat startup.
4. Memasang uncaught-exception handler dan jalur notifikasi/laporan crash.
5. Menginisialisasi shared preferences bernama `${packageName}_preferences`.
6. Mengatur default shell libsu dengan mount-master dan timeout yang dikonfigurasi.
7. Menginisialisasi locale melalui `AppLocaleManager`.
8. Mendaftarkan tracker konektivitas dan mencatat perubahan yang relevan.
9. Menetapkan StrictMode VM policy.

Daftar ini menjelaskan bootstrap yang benar-benar tampak di target source. Detail perilaku masih perlu runtime verification; audit ini tidak menjalankan build atau tes.

### Hal yang hanya dijelaskan sebagai mapping/TODO di komentar

Komentar di `BareApp.kt` mendokumentasikan hasil penelusuran terhadap referensi, tetapi komentar bukan implementasi. Antara lain:

- filesystem abstraction referensi (`q63`, `cy0`, `m70`) dan transisi Java-file/root-file/SAF;
- pemanggilan native reference dan JNI;
- lifecycle Firebase Auth/session, Crashlytics, dan Realtime Database;
- event bus untuk perubahan paket aplikasi;
- rekonsiliasi ledger service foreground data-sync;
- lifecycle MSAL/OneDrive;
- formatter startup dan pemetaan coroutine referensi.

Jangan menganggap pekerjaan tersebut selesai karena uraian detailnya sudah ada di komentar. Sebagian justru ditandai TODO karena komponen target yang diperlukan belum ada atau dependency-nya belum tersedia.

## 4. Apa yang dilakukan SwiftApp di referensi?

Referensi: `output/jadx/sources/org/swiftapps/swiftbackup/SwiftApp.java`, class `org.swiftapps.swiftbackup.SwiftApp extends Application`. Ini adalah hasil dekompilasi JADX; nama helper obfuscated perlu ditafsirkan dari call sites dan tidak boleh disalin mentah sebagai desain target.

Urutan berikut diringkas dari `SwiftApp.onCreate()`:

| Urutan sumber | Tanggung jawab referensi | Status pemetaan BΛR☰ |
|---:|---|---|
| 1 | Membuat enam notification channel untuk backup/restore, normal, completion sukses/error/silent, dan crash | Bootstrap target membuat channel; kesetaraan detail channel perlu diverifikasi |
| 2 | Membatalkan notifikasi yang ada | Ada pada target |
| 3 | Memasang crash handler, menyimpan error, mengirim crash notification, dan memfilter beberapa kelas crash | Handler ada pada target; detail kebijakan referensi tidak otomatis setara |
| 4 | Menginisialisasi shared preferences dan editor bersama | Inisialisasi preferences ada pada target |
| 5 | Memanggil `bs4.b()`, yang pada source mapping terkait preferensi `use_saf` dan mode akses file | Belum ada port penuh filesystem/SAF referensi |
| 6 | Menetapkan default libsu shell builder | Target mengatur libsu; shell access bukan pengganti filesystem abstraction |
| 7 | Inisialisasi dan sinkronisasi locale | Target memakai `AppLocaleManager`; ada perbedaan pre-API 33 yang sudah dicatat di komentar |
| 8 | Memanggil `System.loadLibrary("native-lib")` | Tidak boleh disalin tanpa library/JNI target yang cocok |
| 9 | Menambahkan listener lifecycle user/session | Target belum memiliki implementasi lifecycle yang setara dan diaudit |
| 10 | Menginisialisasi listener konektivitas Firebase Realtime Database | Dependency/implementasi target belum tersedia sesuai audit saat ini |
| 11 | Mendaftarkan receiver perubahan package dan mem-post event lokal | Target belum membuktikan event-bus inventory setara |
| 12 | Menutup sesi stale dalam data-sync FGS runtime ledger | Manifest target memiliki deklarasi service, tetapi implementasi lifecycle service belum tersedia pada snapshot yang diaudit |
| 13 | Meluncurkan coroutine untuk log status aplikasi dan diagnostik startup/exit | Target punya beberapa diagnostik, tetapi bukan bukti formatter dan urutan referensi setara |
| 14 | Menginisialisasi client MSAL/OneDrive sesuai preference auth agent dan cache token | Belum ada cloud client/MSAL implementation yang dipetakan sebagai setara |
| 15 | Mendaftarkan tracker perubahan konektivitas | Tracker konektivitas dasar ada pada target |
| 16 | Menghubungkan adapter logging ke filesystem abstraction | Belum ada abstraction filesystem referensi yang bisa dihubungkan |
| 17 | Menetapkan pemetaan direktori trash melalui filesystem abstraction | Belum ada pemetaan penuh yang setara |
| 18 | Mengaktifkan StrictMode VM policy | Ada pada target |

Urutan ini adalah **urutan source referensi**, bukan instruksi agar seluruh logika dimasukkan ke `BareApp`. Banyak langkah seharusnya tetap dimiliki subsystem khusus dan hanya diinisialisasi/dihubungkan dari bootstrap.

### Native library: batas penting

Referensi memanggil `System.loadLibrary("native-lib")` dari `SwiftApp` dan mendeklarasikan native method yang package/class-specific. BΛR☰ tidak boleh memanggil library referensi dengan asumsi otomatis kompatibel. Native binary, JNI symbol, ABI, dan perilaku yang diperlukan harus diaudit sebagai pekerjaan tersendiri; jangan mengklaim fungsi native tersedia hanya dari deklarasi method.

## 5. Peta pondasi BΛR☰ sekarang

| Area | Yang ada pada snapshot | Yang belum boleh diklaim |
|---|---|---|
| Application bootstrap | `BareApp.kt` dengan channel, crash handling, preferences, shell default, locale, konektivitas, StrictMode | Seluruh startup SwiftBackup sudah setara |
| Manifest | Banyak deklarasi komponen/permission/intent filter | Semua komponen terdaftar mempunyai implementasi atau berfungsi |
| Locale | `AppLocaleManager.kt` dan receiver terkait | Perilaku sama persis pada semua API level |
| Storage selection | `StorageSwitchActivity.kt`, `SelectedStorageState.kt`; UI pemilihan volume dan grant SAF | Filesystem abstraction lengkap dengan root-PFD/SAF bridge dan semua fallback |
| Root shell | `ShellHelper.kt` berbasis libsu | Akses file root end-to-end atau root-service archive sudah ada |
| SBA/root service | Dokumentasi kontrak ada di `docs/reference-mapping/sba-rootservice-contract.md` | Binder service, request/result parcelables, native wrappers, atau create/extract sudah diimplementasikan |
| Cloud/auth | Dependency tertentu dapat hadir di Gradle; manifest memiliki callback/intent filter | Lifecycle akun, MSAL/OneDrive, provider remote, dan backend berfungsi |
| Task/schedule | Ada deklarasi komponen dan folder placeholder pada snapshot audit | Worker/service lifecycle, scheduling, cancel/recovery, atau runtime ledger bekerja |
| Feature/UI | Beberapa screen memiliki source; banyak nama komponen lain hanya terlihat dari manifest/tree | Fitur selesai hanya karena ada resource, screen, atau deklarasi |

Snapshot target yang dipakai untuk inventaris source sebelumnya memiliki 11 file Kotlin/Java aplikasi dan banyak `.gitkeep` sebagai placeholder. Angka itu adalah hitungan pada snapshot audit tersebut, bukan jaminan kondisi branch saat ini jika branch berubah setelahnya.

## 6. Arsitektur yang sebaiknya dipertahankan

Jangan mengubah `BareApp` menjadi tempat seluruh fitur. Tanggung jawab yang disarankan:

- **`BareApp`** — composition root/bootstrap: konfigurasi process-wide, registrasi listener global yang memang sudah ada, dan inisialisasi dependency.
- **Core/domain** — kontrak operasi, model status/result, aturan backup/restore, validasi domain; tidak bergantung pada Activity.
- **Platform/infrastructure** — file abstraction, Android package/storage APIs, SAF, libsu/Shizuku, database, provider cloud, archive/native.
- **Execution** — operation/task lifecycle, progress, cancellation, result persistence, retry/recovery, foreground service dan scheduling.
- **Feature/UI** — mengumpulkan input pengguna, menampilkan state, meminta operasi melalui core/use case, dan merender hasil.
- **Manifest** — hanya konfigurasi Android yang diperlukan untuk komponen nyata yang sudah ada.

Ini adalah batas tanggung jawab yang direkomendasikan untuk menjaga coupling tetap terkendali, bukan klaim bahwa semua paket/lapisan tersebut sudah ada di repo.

## 7. Urutan pekerjaan yang direkomendasikan

1. **Buat inventory current-state yang bisa ditelusuri.** Untuk setiap komponen manifest: file implementasi, superclass/interface, call sites, dependencies, dan state-nya (implemented/configured/planned/unknown).
2. **Petakan domain dan kontrak.** Mulai dari operasi nyata: request → validasi → eksekusi → progress → cancel → result/error → recovery. Jangan mulai dari screen atau nama class.
3. **Tetapkan filesystem/storage boundary.** Petakan normal access, root/libsu, Shizuku, SAF URI grant, descriptor opening, dan fallback sebagai satu sistem; jangan membuat helper duplikat berdasarkan nama.
4. **Putuskan strategi archive/native SBA.** Referensi memiliki wrapper dan native library sendiri. Dokumentasikan asal binary, ABI, JNI compatibility, serta batas lisensi/keamanan sebelum port service.
5. **Bangun task/service lifecycle yang sungguh dipakai.** Baru setelah service punya call sites dan transisi status nyata, hubungkan scheduler dan runtime ledger.
6. **Sambungkan feature/UI ke core.** Tombol, permission prompt, dan resource harus mengarah ke operasi nyata dengan state loading/success/error/cancel.
7. **Verifikasi per alur.** Tetapkan tes untuk happy path, permission denied, no root/Shizuku, storage removed/full, archive invalid/password salah, cancel, process death, dan partial failure. Laporkan hanya yang benar-benar dijalankan.

## 8. Aturan pembuktian status

Gunakan status secara konsisten:

- **Implemented (static):** ada source logic dan call site yang relevan.
- **Configured:** dependency/manifest/configuration tersedia, belum membuktikan perilaku.
- **Planned/TODO:** hanya komentar, placeholder, atau dokumentasi rencana.
- **Runtime-tested:** tes atau eksekusi perangkat telah dijalankan dan hasilnya tercatat.
- **Verified parity:** alur dan edge cases yang relevan telah dibandingkan terhadap kontrak referensi dan lolos verifikasi yang ditentukan.
- **Unknown:** bukti yang tersedia belum cukup.

Tidak ada build, test, CI, atau verifikasi runtime yang dijalankan sebagai bagian dari audit dokumentasi ini.

## 9. Referensi source yang ditelusuri

- BΛR☰: `app/src/main/java/com/bareapps/barebackup/BareApp.kt`
- BΛR☰: `app/src/main/AndroidManifest.xml`
- BΛR☰: `app/src/main/java/com/bareapps/barebackup/locale/AppLocaleManager.kt`
- BΛR☰: `app/src/main/java/com/bareapps/barebackup/storage/SelectedStorageState.kt`
- BΛR☰: `app/src/main/java/com/bareapps/barebackup/home/storageswitch/StorageSwitchActivity.kt`
- BΛR☰: `app/src/main/java/com/bareapps/rootservice/ShellHelper.kt`
- BΛR☰: `docs/reference-mapping/sba-rootservice-contract.md`
- Referensi: `output/jadx/sources/org/swiftapps/swiftbackup/SwiftApp.java`
- Referensi: `output/jadx/sources/org/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity.java`
- Referensi: `output/jadx/sources/org/swiftapps/rootservice/ShizukuAidlService.java`
- Referensi: `output/jadx/sources/defpackage/fp6.java` dan Binder/model types terkait

Referensi dekompilasi diperlakukan sebagai bukti statis. Jika nama helper terobfuscate atau kontrol alurnya tidak jelas, kontrak harus ditelusuri melalui caller/callee dan parcel/native boundary sebelum diimplementasikan.
