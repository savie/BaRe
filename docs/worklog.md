## 2026-09-24 — A3 continuation: local Account sign-in boundary

- User said **Lanjut GO** after reporting Android Build #934 in progress for the Account database commit.
- Added local Account credential persistence fields (`password_salt`, `password_verifier`) with schema version 2 and migration from version 1.
- Added `LocalAccountRepository` for local register/sign-in/sign-out and active-account lookup.
- Passwords are handled as `CharArray`, cleared after use, and only a PBKDF2-HMAC-SHA256 verifier plus random salt is persisted.
- This remains LOCAL-only authentication. It does not create a cloud session or claim cloud authentication/provider connectivity.
- Existing Account/cloud metadata boundary remains separate from local backup storage.

### VERIFICATION
- Implementation: **IMPLEMENTED / CI NOT YET VERIFIED**.
- Android Build #934 supplied by user: **IN PROGRESS**, therefore not yet treated as green/verified.

## 2026-09-24 — A3: Cloud Sync metadata boundary

### USER AUTHORIZATION
- User said **GO** to continue A3 from the verified Install Status checkpoint.

### INSPECT / DESIGN
- Actual Apps inventory currently has local installed/backup data only; Cloud Sync UI existed but was disabled.
- Account implementation currently exposes only LOCAL identity storage; no verified authenticated Account/provider record exists yet.
- v1.0 requirement remains: Account is a separate boundary, provider implementation is LOCAL, and cloud backend is not claimed as implemented.
- Reference cloud semantics require a separate cloud data source; local backup directories must not be reclassified as cloud.

### IMPLEMENTATION
- Added `CloudSyncState` with `UNKNOWN`, `SYNCED`, and `NOT_SYNCED`.
- Added `AccountLocalDatabase` as the v1.0 local Account persistence boundary using Android SQLite.
- Added a provider-neutral `cloud_sync_metadata` table keyed by Account + package.
- Added `CloudSyncMetadataStore` to read/replace verified provider metadata without performing network I/O.
- Apps inventory now reads Cloud Sync state only through the Account-local database boundary.
- When no authenticated Account/provider metadata exists, inventory remains `UNKNOWN`; it is **not** inferred as `NOT_SYNCED`.
- Added persistent Cloud Sync filter state and enabled the `All` chip. `Synced` / `Not synced` become actionable only when verified source-backed states exist.
- No cloud upload/download/network behavior was added.
- No local backup record was converted into cloud state.

### VERIFICATION STATE
- Source changes: **IMPLEMENTED / NOT YET CI VERIFIED**.
- Runtime Account sign-in: **NOT IMPLEMENTED / UNVERIFIED**.
- Runtime cloud provider transfer: **NOT IMPLEMENTED / UNVERIFIED**.
- Cloud Sync filter with real provider metadata: **UNVERIFIED** until an authenticated Account/provider produces records.

### NEXT
- Verify CI/build for this source change.
- Then wire the existing Account sign-in lifecycle to the local Account database without storing plaintext credentials.
- After an authenticated provider boundary exists, adapt the Reference cloud metadata model into `cloud_sync_metadata` and verify `Synced` / `Not synced` behavior.
- Keep actual cloud transfer and integrity verification separate from this metadata/filter increment.

## 2026-09-24 — A3: Install Status

### IMPLEMENTATION
- Menambahkan isInstalled pada AppItem.
- Inventory sekarang menggabungkan installed apps dengan package yang hanya memiliki local backup records, sehingga Install Status memiliki source data nyata.
- Backup-only apps menggunakan local backup metadata untuk count/size/time, protected/notes, dan installer package; tidak dibuat menjadi cloud data.
- Filter All / Installed / Not installed diaktifkan dan dipersist.

### VERIFICATION
- Source implementation: COMMITTED, CI/runtime verification PENDING.
- Fallback nama backup-only tanpa label metadata: package name; ini limitation yang eksplisit.

### NEXT
- Verify CI/build.
- Verify runtime Install Status.
- Setelah itu lanjut A3 Cloud Sync dengan Account sebagai boundary terpisah; Account provider v1.0 tetap local, bukan Supabase/cloud.

# BaRe v1.0 — Worklog

Worklog adalah catatan kesinambungan pekerjaan BaRe. **Setiap pekerjaan engineering yang berdampak harus dicatat di sini setelah pekerjaan tersebut dilakukan**, termasuk audit, rekonsiliasi, perubahan dokumentasi, implementasi, test, verifikasi, deployment, dan recovery.

## 2026-09-24 — A3: Boundary Account Local dan Dependency Metadata

### USER DECISION / REQUIREMENT
- Untuk BaRe v1.0, **Account tetap menjadi boundary/concept tersendiri**, termasuk flow sign-in/account, tetapi provider implementation v1.0 bersifat **LOCAL**.
- Data dan identity Account v1.0 berada pada **database/local persistence**; capability yang membutuhkan Account mengambil state/data dari local account store tersebut.
- Bentuk provider dipertahankan agar evolusi berikutnya dapat menjadi:
  `Account → Local / Cloud` tanpa mengubah seluruh application flow.
- Recovery Account v1.0 menggunakan mekanisme recovery lokal yang sama.
- **Supabase/cloud backend belum menjadi implementation v1.0** dan tidak boleh diklaim sudah cloud.
- Implikasi untuk A3: **Cloud Sync bukan next dependency**. A3 menyelesaikan dependency metadata lokal untuk Protected backups dan Backups with notes terlebih dahulu. Cloud Sync dikerjakan setelah itu dengan model/data source cloud dari Reference, bukan dengan memalsukan local backup sebagai cloud.

### A3 Progress
- System app subfilters: IMPLEMENTED; CI #904 VERIFIED.
- Backup status + backup-date/backup-size sorting: IMPLEMENTED; CI #908/#909 VERIFIED.
- Multiple backups: IMPLEMENTED; CI #911/#912 VERIFIED.
- Google Play install-source filters: IMPLEMENTED; CI #913 VERIFIED.
- Older/newer backup APK relation: IMPLEMENTED; CI #918 VERIFIED.
- Protected backups / backup notes: dependency metadata LOCAL sekarang diimplementasikan; **CI/runtime verification PENDING**.
- Cloud Sync: **PENDING**, menunggu metadata/local dependency dan kemudian adaptasi Reference cloud model/data source.
- Install Status: **PENDING**; Reference memiliki `isInstalled()`, sedangkan BaRe saat ini masih inventory installed-app oriented sehingga perlu adaptasi inventory terhadap backup/non-installed app records.
- Date used: **PARTIAL**; menggunakan usage access/UsageStats dan belum dianggap parity penuh.
- App size semantic: **PENDING A4**; belum diperlakukan sebagai selesai hanya karena sorting sudah tersedia.

### Implementasi Metadata yang Baru
- Menambahkan model metadata lokal BaRe-native `AppBackupMetadata` dengan schema version, package/version, backup time, installer package, protected flag, dan note.
- Metadata disimpan sebagai `metadata.json` di setiap local app-backup version directory dan ditulis secara atomic melalui staging file.
- Backup completion sekarang melakukan metadata commit sebelum mengembalikan `Completed`.
- Inventory membaca metadata lokal untuk menyediakan predicate Protected backups dan Backups with notes.
- Metadata Reference Swift Backup tidak disalin sebagai implementation format; Reference hanya menjadi evidence untuk semantic kebutuhan metadata.

### Verification State
- Source changes: IMPLEMENTED pada branch `v1.0/rebaseline`.
- CI/build setelah perubahan metadata: **PENDING**.
- Runtime behavior Protected/Notes: **UNVERIFIED**.
- Existing green verification #918 tetap menjadi checkpoint terakhir sebelum perubahan metadata.

### Berikutnya
- Jalankan CI/build untuk perubahan metadata.
- Jika green, lanjutkan verification predicate/filter behavior Protected + Notes.
- Setelah dependency metadata terverifikasi, baru lanjut discovery/design/implementation Cloud Sync berdasarkan Reference cloud model/data source dan BaRe Account-local boundary.

## 2026-09-17 — Rekonsiliasi Batas Repository

### Pekerjaan Saat Ini
Merekonsiliasi batas dokumentasi antara `Varnexis-Workspace` dan `BaRe` setelah ditemukan overlap dan reference audit sebelumnya dibuat langsung di repo BaRe tanpa konteks governance workspace.

### Keputusan yang Diterapkan
- `BaRe` menjadi rumah canonical untuk dokumentasi produk dan kebenaran teknis project.
- Struktur dokumentasi BaRe disederhanakan menjadi satu folder `docs/`.
- `docs/` berisi hanya:
  - `product.md`
  - `architecture.md`
  - `capability_matrix.md`
  - `reference.md`
  - `worklog.md`
- `README.md` tetap di root BaRe.
- Tidak membuat folder/file contract terpisah. Implementasi capability mengikuti `product.md`, `architecture.md`, dan `capability_matrix.md` sesuai kebutuhan nyata.
- Governance tidak diduplikasi di BaRe; README menunjuk langsung ke `Varnexis-Workspace/GOVERNANCE` sebagai sumber governance.
- Varnexis-Workspace mempertahankan koordinasi lifecycle/state/requirements/decisions/governance dan project registry, bukan salinan technical project docs.

### Selesai Dikerjakan
- Memindahkan secara Git-tree `reference.md` BaRe ke `docs/reference.md` tanpa mengubah blob audit.
- Memindahkan Product, Architecture, dan Capability Matrix dari `Varnexis-Workspace/PROJECTS/bare/` ke `BaRe/docs/` dengan penyederhanaan matrix agar tidak mensyaratkan contract file terpisah.
- Memindahkan worklog canonical ke `BaRe/docs/worklog.md`.
- Menambahkan penjelasan governance dan boundary dua repository ke root `README.md` BaRe.
- Membersihkan duplicate project documents dari `Varnexis-Workspace/PROJECTS/bare/`.
- Memperbarui registry BaRe di Varnexis-Workspace agar menunjuk ke BaRe sebagai source untuk implementasi, tests, konfigurasi khusus project, dan documentation.

### Verifikasi
- BaRe branch target: `v1.0/rebaseline`.
- Reference blob dipertahankan dengan SHA `03d3a7f182bc28ca5eae8ae313a5c6d109eb318f`.
- Structural intent: satu `docs/` untuk lima dokumen project; VERIFIED melalui Git tree setelah commit.
- Isi reference audit: dipertahankan dari blob existing; verifikasi runtime APK reference tetap NOT PERFORMED.
- Build/runtime tidak dijalankan oleh pekerjaan rekonsiliasi ini.

### Belum Dikerjakan / Tidak Diubah
- Tidak ada implementasi capability baru.
- Tidak ada refactor `MainActivity.kt`.
- Tidak ada perubahan CI/build pipeline.
- Tidak ada device install/update.
- Tidak ada verifikasi runtime baru.

### Berikutnya
- Lanjutkan implementasi dari kondisi aktual di BaRe dengan membaca `README.md` dan `docs/*` serta governance yang ditunjuk README.
- Setelah setiap pekerjaan consequential berikutnya, update worklog ini.

## 2026-09-17 — Fondasi UX/UI

### Pekerjaan Saat Ini
UX/UI foundation — shell seluruh produk.

### Selesai Dikerjakan
- Menetapkan pola kerja UX/UI seluruh produk, bukan antrean vertical slice.
- Membentuk Android Compose application permukaan awal pada branch `v1.0/rebaseline`.
- Surface mencakup Home dan area product utama dari baseline BaRe.
- Menetapkan jalur build deterministik minimal melalui GitHub Actions tanpa menambah workflow lain yang belum diperlukan.
- Menetapkan kebijakan update APK ke device/emulator sebagai in-place update (`adb install -r`), bukan uninstall lalu install.
- Jika package/signature tidak kompatibel, proses harus gagal dan tidak melakukan uninstall otomatis.
- Menambahkan fallback signing hanya ketika percobaan in-place pertama gagal: stable debug keystore diverifikasi fingerprint-nya, APK dibangun ulang dengan key tersebut, lalu dicoba kembali menggunakan `adb install -r`.

### Verifikasi
- Repository structure: OBSERVED.
- UX struktur source: OBSERVED.
- Build CI: VERIFIED pada GitHub Actions run #116 untuk branch `v1.0/rebaseline`.
- Run #116 menghasilkan artifact `BaRe-v1.0-build-116` dengan SHA-256 `1119627cd816856640260f46dd64fd1168c75410945f8459310a80d6a78723c2`.
- Run #116 tidak melakukan device install/update karena `install_apk=false`; device runtime update path tetap BELUM TERVERIFIKASI.
- Stable signing workflow: IMPLEMENTED; runtime device update BELUM TERVERIFIKASI.

### Pelajaran Bootstrap yang Dipertahankan
- Provider/capability isolation.
- Capability resolution sebelum execution.
- Staging `.partial` → atomic commit → verifikasi.
- Manifest + SHA-256 integrity evidence.
- Timeout, cleanup, dan fail-closed pada boundary yang berisiko.
- Per-component result agar `SUCCESS` tidak menyamarkan partial/failed state.
- Execution mode tidak dibawa menjadi semantic domain contract.

## 2026-09-17 — Penyaringan Path CI

### Pekerjaan Saat Ini
Mengurangi trigger GitHub Actions untuk perubahan dokumentasi yang tidak membutuhkan build Android.

### Keputusan yang Diterapkan
- Perubahan `docs/**` tidak memicu workflow build pada `push` ke `v1.0/rebaseline`.
- Perubahan `README.md` di root tidak memicu workflow build pada `push` ke `v1.0/rebaseline`.
- Perubahan `docs/**` tidak memicu workflow build pada `pull_request` ke `v1.0/rebaseline`.
- Perubahan `README.md` di root tidak memicu workflow build pada `pull_request` ke `v1.0/rebaseline`.
- Semua path lain tetap dapat memicu CI.
- Jika satu perubahan mencampur `docs/**`/`README.md` dengan path non-ignored, CI tetap dapat terpicu.
- `workflow_dispatch` tetap tersedia untuk eksekusi manual.

### Selesai Dikerjakan
- Menambahkan `paths-ignore` untuk `docs/**` dan `README.md` pada trigger `push` dan `pull_request` di `.github/workflows/android-build.yml`.

### Verifikasi
- Workflow source sebelum perubahan: trigger `push` dan `pull_request` hanya dibatasi branch `v1.0/rebaseline`, tanpa `paths-ignore`.
- Perubahan workflow berhasil ditulis ke branch `v1.0/rebaseline` dalam commit `92451bd356043e249e2a306afd487ba2170f2538`.
- Struktur filter yang diterapkan sesuai intent: hanya `docs/**` dan `README.md` di-ignore; path implementasi/konfigurasi lainnya tidak di-ignore.
- Runtime verifikasi berupa docs-only push/PR belum dilakukan; perilaku aktual GitHub Actions setelah perubahan masih UNVERIFIED.

### Belum Dikerjakan / Tidak Diubah
- Tidak mengubah build steps, signing, APK artifact, atau device install/update path.
- Tidak meng-ignore `.github/**`, `app/**`, Gradle files, atau source files.

### Berikutnya
- Lanjutkan implementasi dari kondisi aktual.
- Jika diperlukan, verifikasi runtime path filtering dengan perubahan docs-only dan/atau mixed docs + code.
- Setelah setiap pekerjaan consequential berikutnya, update worklog ini.

## 2026-09-17 — Rekonsiliasi Baseline Dokumentasi

### Pekerjaan Saat Ini
Reconcile `product.md`, `architecture.md`, dan `capability_matrix.md` berdasarkan audit dokumentasi setelah repository boundary rekonsiliasi. `reference.md` tidak diubah; worklog ini menerima record pekerjaan rekonsiliasi.

### Perubahan
- `product.md`: memperjelas explicit v1.0 exclusions, product acceptance criteria, dan aturan penundaan scope agar capability supported tidak hanya berarti menu/screen tersedia.
- `architecture.md`: memperjelas dependency direction, persistence ownership, canonical lifecycle/state, recovery/idempotency, serta archive/data migration/versioning.
- `capability_matrix.md`: menambahkan implementasi/verifikasi state, evidence model, pembedaan platform limitation vs implementasi limitation, dan canonical mapping `Capability → Journey → Evidence`.
- Tidak membuat contract file/folder baru.
- Tidak mengubah source implementasi atau UX shell.

### Verifikasi
- Tiga dokumen berhasil diperbarui pada branch `v1.0/rebaseline`.
- Perubahan tetap berada pada batas dokumentasi `docs/`.
- Tidak ada klaim bahwa implementasi capability di belakang FE menjadi implemented/verified; matrix secara eksplisit mempertahankan distinction antara UX shell, implementasi, runtime test, dan verifikasi.
- Tidak ada runtime/device verifikasi baru dari rekonsiliasi ini.

### Belum Dikerjakan / Tidak Diubah
- Tidak ada implementasi capability baru.
- Tidak ada refactor source code.
- Tidak ada perubahan archive format atau persistence implementasi.
- Tidak ada runtime test/install device.

### Berikutnya
- Gunakan acceptance/evidence model baru ketika implementasi capability berikutnya dikerjakan.
- Update worklog setelah pekerjaan consequential berikutnya.

## 2026-09-17 — Selaras dengan Reference Onboarding & Navigation

### Pekerjaan Saat Ini
Mengubah UX shell agar mengikuti pola dasar dan alur reference, dengan penyederhanaan BaRe sesuai arahan user.

### Keputusan yang Diterapkan
- Primary navigation tetap tepat 4 tab: `Home`, `Apps`, `Schedules`, `Account`.
- Empat tab menggunakan horizontal pager sehingga tab dapat diganti dengan swipe kanan/kiri selain tap pada bottom navigation.
- Submenu tidak lagi membutuhkan tombol `Back to Home` di bagian bawah.
- Android system back dan top-bar back mengembalikan user dari submenu ke context sebelumnya.
- Startup tidak langsung membuka backup/restore. Flow UI dimulai dari `Welcome → Login → Access Method → Main App`.
- Access Method menyediakan pilihan `Non-root` dan `Root`; pilihan tersebut diperlakukan sebagai pemilihan mekanisme, bukan bukti privilege/capability tersedia.

### Implementasi
- Reworked `MainActivity.kt` menjadi onboarding + four-tab shell + submenu navigation.
- Menambahkan `BackHandler` untuk Android back.
- Menambahkan `HorizontalPager` untuk swipe antar empat tab.
- Menambahkan login/setup permukaan dan access-method selection.
- Menjaga capability runtime tetap tidak diklaim; implementasi authentication dan root capability belum diimplementasikan/verified.

### Verifikasi
- Source change berhasil ditulis ke branch `v1.0/rebaseline` pada commit `7817aca2ec54d4ad1059fbd9a4a26369065104ef`.
- Build/verifikasi runtime setelah perubahan ini: UNVERIFIED.
- Perilaku Android back aktual, gesture pager, login di belakang FE, dan deteksi root belum diuji pada device/runtime.

### Belum Dikerjakan / Tidak Diubah
- Belum mengimplementasikan implementasi backup/restore di belakang FE.
- Belum mengimplementasikan authentication nyata.
- Belum mengimplementasikan root/non-root capability detection/execution.
- Belum mengubah archive, provider storage, persistence, implementasi scheduler, atau provider cloud.

## 2026-09-18 — Rekonsiliasi Governance Dokumentasi Reference

### Pekerjaan Saat Ini
Memperbaiki `docs/reference.md` agar mengikuti README dan Governance: authority, status dokumen, precedence sumber, bahasa evidence, dan boundary antara interpretasi turunan reference dengan keputusan canonical BaRe.

### Perubahan
- Menetapkan `reference.md` sebagai `current` **Reference / Discovery Artifact**.
- Menjelaskan hierarki authority: Varnexis-Workspace Governance, canonical BaRe documentation/source/tests, runtime evidence, lalu reference evidence.
- Menegaskan aturan **tidak silently merge** ketika sumber berbeda atau conflict.
- Menambahkan klasifikasi klaim: FACT/OBSERVED/VERIFIED, INFERRED/DERIVED, PROPOSAL, Keputusan/REQUIREMENT, UNKNOWN/UNVERIFIED/BLOCKED.
- Memperbaiki stale repository-state klaim agar menunjuk ke HEAD `1705452dc77482dd5573d023d091491ec4864319` yang terobservasi saat perubahan ini.
- Memperjelas bahwa current FE shell sudah ada, sedangkan implementasi capability di belakang FE/runtime tetap belum terverifikasi.
- Tidak mengubah reference evidence atau menaikkan status runtime menjadi verified.

### Verifikasi
- Branch target terobservasi: `v1.0/rebaseline`.
- HEAD sebelum perubahan: `1705452dc77482dd5573d023d091491ec4864319`.
- `docs/reference.md` berhasil diperbarui pada commit hasil perubahan.
- Runtime reference APK tetap NOT PERFORMED.
- Tidak ada implementasi capability baru yang diklaim.

### Belum Dikerjakan / Tidak Diubah
- Tidak melakukan eksekusi runtime terhadap Swift Backup.
- Tidak mengubah product/architecture/capability decisions.
- Tidak mengklaim kesetaraan atau capability runtime BaRe.

### Verifikasi Lanjutan
- Setelah pemeriksaan ulang, ditemukan satu stale repository-state reference di `docs/reference.md`; record tersebut dikoreksi.
- commit akhir dokumentasi reference: `e5a78abd2b8f800b5b379215e178e70fc3066207`.
- SHA blob `MainActivity.kt` saat itu yang terobservasi: `b3e244d252958b401e8e5d5ac5c5f45036d7e757`.
- Status runtime tetap UNVERIFIED; perubahan ini hanya documentation rekonsiliasi.
## 2026-09-18 — BaRe Rekonsiliasi Kondisi Aktual

### Pekerjaan Saat Ini
Pemeriksaan kondisi aktual setelah audit Swift Backup untuk memastikan posisi BaRe saat ini sebelum memilih implementasi berikutnya.

### Teramati
- Source implementasi pada app/src/main/java/com/savie/bare/ saat ini hanya MainActivity.kt.
- MainActivity.kt berisi onboarding, pemilihan Non-root/Root, four-tab navigation, submenu, dan placeholder UI.
- Placeholder UI belum merupakan implementasi implementasi capability di belakang FE.
- Belum ditemukan implementasi source terpisah untuk provider, domain, application/use case, storage, archive, persistence, implementasi scheduler, provider cloud, diagnostics backend, atau capability execution.
- Tidak ditemukan app/src/test atau app/src/androidTest pada branch saat pemeriksaan.
- Workflow CI saat ini memiliki jalur build, signing verifikasi, artifact upload, dan optional adb install -r; device update belum menjadi runtime-verified state.

### Hasil Rekonsiliasi
- Shell UX seluruh produk: OBSERVED / IMPLEMENTED AS UI SHELL.
- Backend capability v1.0: NOT IMPLEMENTED / UNVERIFIED dari source aktual yang diperiksa.
- CAP-01 sampai CAP-17 belum boleh dinaikkan ke IMPLEMENTED, RUNTIME_TESTED, atau VERIFIED hanya berdasarkan screen/menu.
- Rantai acceptance produk masih terputus pada implementasi/runtime evidence.
- Tidak ada perubahan implementasi source pada pemeriksaan ini.

### Hambatan Saat Ini
CI build setelah perubahan UX pada commit 7817aca2ec54d4ad1059fbd9a4a26369065104ef tercatat di worklog sebelumnya sebagai UNVERIFIED dan sebelumnya dilaporkan gagal pada :app:compileDebugKotlin. Status aktual terbaru belum dapat dinyatakan berhasil tanpa run baru.

### Berikutnya
Sebelum memilih fitur capability, selesaikan baseline build/verifikasi runtime terhadap shell aktual, lalu gunakan hasilnya untuk menentukan fondasi bersama pertama yang benar-benar dibutuhkan. Hard reset belum dilakukan.

## 2026-09-18 — Perluasan Mockup FE

### Pekerjaan Saat Ini
Membangun mockup FE lengkap berbasis evidence/reference Swift yang sudah direkonsiliasi, dengan tujuan mengunci permukaan dan alur UI terlebih dahulu sebelum implementasi capability di belakang FE.

### Keputusan yang Diterapkan
- Fase ini memprioritaskan FE mockup; tombol/aksi tidak dianggap sebagai implementasi capability di belakang FE.
- Struktur sementara boleh terpusat di MainActivity.kt untuk mempercepat iterasi visual; pemecahan file dilakukan setelah bentuk FE stabil.
- Alur reference dipakai sebagai baseline discovery, sementara implementasi tetap BaRe.
- Detail login dan layout Home yang belum ditentukan user diperlakukan sebagai mockup awal yang dapat direvisi; tidak dianggap final product decision.

### Implementasi
- Memperluas onboarding menjadi Welcome → Sign in → Backup storage → Access method → Main App.
- Menambahkan empat tab utama Home, Apps, Schedules, Account.
- Menambahkan permukaan Apps, app detail, app konfigurasi, Folders, Messages, Call Logs, Wi-Fi, Wallpapers, Storage, Cloud sync, Management, Diagnostics, Settings, Import/Export, Task, Schedule, dan Search.
- Menambahkan state/permukaan mockup untuk empty, disconnected, task lifecycle, verifikasi state, app parts, management, dan provider diagnostics.
- Tidak menambahkan implementasi authentication, backup/restore execution, storage mutation, cloud transfer, deteksi root, scheduler execution, atau capability runtime.

### Verifikasi
- Source change committed pada `facb6c5de42aa3b6e385b4c9765a0254334aed30`.
- GitHub Actions run #121 terpicu untuk commit tersebut.
- Saat pencatatan ini dibuat, job `build` masih `in_progress` pada langkah `Assemble debug APK`; hasil build akhir belum dapat dinyatakan VERIFIED.
- Install device/runtime tidak dijalankan oleh commit ini.

### Berikutnya
Review visual/mockup dengan user. Jika bentuk FE belum sesuai, revisi permukaan/state terlebih dahulu; jika sudah sesuai, baru bekukan FE baseline dan lanjut ke contract capability/lapisan implementasi di belakang FE secara bertahap.

## 2026-09-18 — R1-R3 refactor struktural FE dan persiapan verifikasi

### Pernyataan Pengguna
Pengguna mengotorisasi pengerjaan of R1-R3 sekaligus agar FE mockup dapat langsung masuk fase visual verifikasi/editing sebelum FE baseline dikunci.

### Keputusan
- MainActivity.kt menjadi Android titik masuk saja.
- App-level state/navigation dipisahkan ke app/.
- Compose theme dipisahkan ke ui/theme/.
- Reusable UI primitives dipisahkan ke ui/components/.
- Permukaan produk dipisahkan berdasarkan feature di feature/.
- Mock data/state tetap bersifat FE mockup dan belum menjadi implementasi capability.
- styles.xml dipertahankan sebagai bootstrap window Android; styling komponen visual menjadi tanggung jawab Compose theme.
- Ditambahkan dukungan Compose Preview untuk mempercepat visual verifikasi.
- Tidak membuat abstraction/domain/provider dummy hanya demi memenuhi struktur folder; mengikuti boundary architecture berdasarkan kebutuhan nyata.

### Implementasi
Refactor v1.0/rebaseline memecah:
- MainActivity.kt menjadi titik masuk minimal.
- app/AppState.kt untuk navigation/domain-neutral app state model dan mock app model.
- app/BaReApp.kt untuk app shell, onboarding orchestration, navigation, dan tab shell.
- ui/theme/Theme.kt untuk Compose theme.
- ui/components/Common.kt untuk shared reusable UI components.
- feature/onboarding/OnboardingScreens.kt
- feature/home/HomeScreen.kt
- feature/apps/AppsScreens.kt
- feature/schedules/SchedulesScreen.kt
- feature/account/AccountScreen.kt
- feature/misc/MiscScreens.kt
- ui/PreviewScreens.kt untuk preview FE inti.
- app/build.gradle.kts mendapat dependency Compose Preview.
- res/values/styles.xml dibatasi sebagai bootstrap window Android dan diselaraskan dengan shell Compose gelap.
- Shared list/status components mendapat content description untuk accessibility.

### Verifikasi
- Source refactor committed ke branch v1.0/rebaseline.
- Kesetaraan perilaku ditargetkan terhadap FE mockup sebelum refactor.
- GitHub Actions runtime/build verifikasi untuk commit final belum tersedia pada saat pencatatan ini; status build karenanya tetap UNVERIFIED.
- Device/runtime visual verifikasi belum dilakukan.

### Kondisi Saat Ini
FE_STRUCTURED / MOCKUP / BUILD_UNVERIFIED / R4_NOT_LOCKED

### Berikutnya
Lanjutkan review visual dan edit mockup berdasarkan masukan pengguna. Setelah FE disepakati, bekukan baseline FE (R4), lalu mulai capability foundation/implementasi.

## 2026-09-18 — R1-R3 lanjutan: resource, ikon, dan perapian branding

### Pernyataan Pengguna
Pengguna menjelaskan that bahasa default APK tetap bahasa Inggris dan bahasa tambahan dapat ditambahkan melalui resource `strings.xml`. Pengguna juga meminta ikon Material bawaan yang umum dan sesuai serta logo bertema backup sebagai pengganti placeholder kepala Android.

### Keputusan
- Bahasa UI default: bahasa Inggris.
- Teks UI dipindahkan ke Android string resources agar bahasa/locale tambahan dapat ditambahkan tanpa mengubah struktur screen.
- Gunakan ikon Material bawaan yang sesuai dengan fungsi permukaan; hindari ikon `Info` generik jika tersedia ikon umum yang lebih spesifik.
- Logo Welcome menggunakan ikon backup bawaan, bukan visual robot/kepala Android.
- Scope tetap R1–R3; R4 masih belum dikunci dan implementasi capability penuh belum dimulai.

### Implementasi
- Menambahkan `app/src/main/res/values/strings.xml` dengan resource UI default bahasa Inggris saat ini.
- Memindahkan onboarding, app shell, Home, Apps, Schedules, Account, shared components, dan permukaan mockup lainnya untuk menggunakan string resources.
- Mengubah label tab aplikasi menjadi ID resource dan menyelesaikannya pada boundary UI Compose.
- Mengubah label/deskripsi access method menjadi ID resource.
- Mengganti beberapa ikon generik dengan ikon bawaan yang lebih spesifik, termasuk SMS, Call, Wi-Fi, Wallpaper, BugReport, Tune, dan ImportExport jika sesuai.
- Mengganti perlakuan logo satu huruf pada Welcome dengan ikon Backup bawaan.
- Mempertahankan `styles.xml` sebagai bootstrap window Android; Compose tetap menjadi pemilik theme komponen visual.

### Verifikasi
- Branch Git `v1.0/rebaseline` tetap berada di atas baseline R1–R3 sebelumnya dan memuat perubahan resource/ikon.
- Verifikasi build lokal dicoba tetapi terhambat karena environment eksekusi tidak dapat me-resolve `github.com`; status build tetap UNVERIFIED.
- Status CI untuk commit resource/ikon terbaru belum ditetapkan oleh workflow yang sesuai; tidak ada klaim success.
- Verifikasi visual device/runtime masih tertunda.

### Kondisi Saat Ini
FE_STRUCTURED / MOCKUP / BUILD_UNVERIFIED / R4_NOT_LOCKED

### Berikutnya
Lanjutkan review dan editing mockup. Jangan bekukan R4 sebelum pengguna menyetujui permukaan FE.


## 2026-09-18 — Rekonsiliasi Pembahasan dan Keputusan Authentication

### Temuan Audit
Pencatatan sebelumnya terlalu jauh mengoreksi status authentication dengan menganggap seluruh pembahasan masih DISCUSSION. Itu tidak tepat untuk poin yang memang sudah dinaikkan pengguna menjadi keputusan.

Pembahasan tetap menjadi ruang untuk menyempurnakan detail, tetapi keputusan yang sudah disetujui pengguna menjadi arah yang harus dipertahankan dan menjadi dasar implementasi ketika pekerjaan tersebut diotorisasi.

### Keputusan yang Sudah Ditetapkan
- BaRe memiliki dua tipe identity: LOCAL dan ACCOUNT.
- LOCAL adalah identity lokal BaRe, bukan anonymous server account.
- ACCOUNT adalah satu identity account, baik authentication dilakukan melalui Email maupun Google.
- Setelah logout account, user kembali ke permukaan pemilihan identity/authentication dan dapat memilih Local, account yang sama, atau account lain.
- Session expiry tidak mematikan capability lokal. Session expiry hanya membatasi capability yang membutuhkan session account/authentication yang valid.
- Authentication dipisahkan melalui provider boundary; session dan credential merupakan concern yang berbeda.
- UI tidak boleh menyimpan password/token secara langsung. Penanganan credential berada di belakang boundary authentication/session dan secure persistence.
- Kegagalan authentication harus memiliki error semantics yang eksplisit.
- Login/session state harus dipersistenkan secara aman.
- Logout dan session expiry harus memiliki jalur pemulihan.
- Scope authentication saat ini dibatasi pada identity/session/account access. Security backup/restore, encryption archive, device binding, otorisasi restore lintas device, dan recovery-key design tetap dibuka untuk fase security/backup berikutnya.

### Usulan / Terbuka
- Detail LocalIdentity/AccountIdentity, identity ID, lokasi persistence, perilaku uninstall/reset, implementasi provider, kebijakan session expiry, dan teknologi secure credential masih perlu dirancang dan diverifikasi.
- Mekanisme internal Swift Backup untuk perilaku account/device/reset yang teramati tetap UNKNOWN; tidak digunakan sebagai implementasi BaRe.

### Verifikasi
- Rekonsiliasi dilakukan terhadap actual docs/worklog.md pada branch v1.0/rebaseline.
- Tidak ada perubahan implementasi authentication pada pekerjaan dokumentasi ini.
- Tidak ada klaim bahwa authentication, backup/restore, storage, cloud, scheduler, atau capability runtime sudah implemented/verified.

## 2026-09-18 — Penetapan R1–R6 dan Cara Kerja per Scope Terkecil

### Keputusan
Mulai titik ini pekerjaan BaRe hanya menggunakan enam tahap:

1. **R1 — Refactor Struktural**
2. **R2 — Perapian FE**
3. **R3 — Verifikasi FE**
4. **R4 — Pembekuan FE**
5. **R5 — Implementasi Capability**
6. **R6 — Final**

Tidak membuat nama tahap tambahan di antara R1–R6. Pekerjaan di dalam R3 dan R5 dipecah berdasarkan **scope terkecil yang bisa ditutup dengan jelas**, bukan berdasarkan pembagian baru.

R3 dan R5 boleh berjalan paralel selama boundary dan dependensinya jelas. R4 tetap merupakan gerbang pembekuan FE dan bukan blocker untuk R5. R6 adalah tahap final setelah scope produk yang diperlukan selesai dan seluruh hasil penting sudah diverifikasi.

### Scope Terkecil Saat Ini — Welcome sampai Home
Jalur yang sedang dikerjakan:

`Welcome → Login / Local Setup → Storage / Access Setup → Home`

Status setiap bagian harus ditandai secara terpisah:

| Bagian | FE | Capability di belakang FE | Status |
|---|---|---|---|
| Welcome | Ada | Belum | FE ada, capability belum |
| Login / Local Setup | Ada sebagai mockup | Authentication belum diimplementasikan | FE ada, capability belum |
| Storage / Access Setup | Ada sebagai mockup | Storage/access capability belum diimplementasikan | FE ada, capability belum |
| Home | Ada | Backup/restore dan capability lain belum diimplementasikan | FE ada, capability belum |

Artinya jalur Welcome sampai Home **sudah jelas secara FE**, tetapi belum boleh dianggap selesai secara produk karena bagian di belakang FE masih belum diimplementasikan dan diverifikasi.

### Cara Kerja Berikutnya
Kita tutup scope terkecil satu per satu.

Contoh:`Welcome`
→ bentuk FE dibereskan  
→ state/flow jelas  
→ capability yang benar-benar dibutuhkan diidentifikasi  
→ implementasi bila sudah masuk R5  
→ test  
→ verifikasi  
→ tandai status

Lalu lanjut ke:

`Login / Local Setup`

kemudian:

`Storage / Access Setup`

kemudian:

`Home`

Tidak perlu menunggu seluruh R3 selesai untuk mulai mengerjakan bagian R5 yang sudah cukup jelas. Sebaliknya, jangan membangun capability yang belum punya kebutuhan nyata dari scope yang sedang ditutup.

### Batas R5
R5 berarti **implementasi capability di belakang FE** yang memang dibutuhkan oleh scope produk.

Untuk kondisi sekarang, lapisan yang mungkin tersentuh adalah:
- Domain;
- Application / Use Case;
- Capability;
- Provider;
- Android / privilege / storage / network;
- Persistence;
- Storage / Archive;
- Operation;
- Verification;
- Diagnostics.

Daftar tersebut adalah area implementasi, **bukan tahap baru**.

Remote/server/backend terpisah belum otomatis diperlukan. Jika suatu capability nantinya membutuhkan service remote, dependency tersebut dibuka pada saat scope capability itu memang dikerjakan.

### Kondisi Saat Ini
`R1_IMPLEMENTED / R2_IMPLEMENTED / R3_IN_PROGRESS / R4_NOT_LOCKED / R5_READY_TO_WORK_BY_SMALLEST_SCOPE / R6_NOT_STARTED`

### Verifikasi
- Keputusan R1–R6 dicatat dalam worklog.
- Tidak ada tahap tambahan yang dibuat.
- R3 belum dinyatakan 100% VERIFIED.
- R4 belum dikunci.
- R5 boleh mulai secara paralel berdasarkan scope terkecil yang sudah jelas.
- Tidak ada claim capability runtime sudah implemented atau verified hanya karena FE sudah tersedia.

### Berikutnya
1. Bereskan dan tutup scope **Welcome → Home** dari sisi FE.
2. Tandai dengan jelas mana yang sudah ada dan mana yang belum di setiap bagian.
3. Ambil bagian pertama yang capability-nya sudah cukup jelas untuk dikerjakan dalam R5.
4. Kerjakan R3 dan R5 secara paralel per scope terkecil.
5. Jangan membuat tahap baru.
6. Setelah seluruh scope yang diperlukan selesai dan diverifikasi, masuk R6 — Final.

R4 tetap menjadi gerbang pembekuan FE. R6 menjadi satu-satunya tahap final.


## 2026-09-18 — Scope Welcome: Pilihan Identity Local / Account

### Pekerjaan
Menutup scope terkecil **Welcome** berdasarkan keputusan authentication yang sudah ditetapkan.

### Keputusan yang Dipakai
- Welcome sekarang menjadi titik pemilihan identity:
  - **LOCAL** — menggunakan BaRe secara lokal pada device.
  - **ACCOUNT** — menggunakan identity account BaRe.
- **ACCOUNT** tetap satu tipe identity walaupun metode authentication nantinya Email atau Google.
- Pemilihan identity di Welcome belum dianggap sebagai bukti authentication atau persistence sudah bekerja.

### Implementasi
- Menambahkan `IdentityType.LOCAL` dan `IdentityType.ACCOUNT` pada app state.
- Welcome sekarang menyediakan dua jalur eksplisit: Local dan Account.
- Jalur Local menuju **Storage / Local Setup**.
- Jalur Account menuju **Login**.
- Permukaan Login menampilkan jalur Email/password, Google, dan create account sebagai FE; authentication backend/provider belum diimplementasikan.
- Tidak membuat identity ID, persistence, session, credential storage, atau provider implementation baru karena detail tersebut masih terbuka dan belum diperlukan untuk menutup FE Welcome.

### Status
- Welcome FE: IMPLEMENTED.
- Welcome identity selection state: IMPLEMENTED sebagai state UI.
- Local identity persistence: BELUM DIIMPLEMENTASIKAN.
- Account authentication/provider: BELUM DIIMPLEMENTASIKAN.
- Runtime verification: UNVERIFIED.
- R4: belum dikunci.

### Verifikasi
- Perubahan source berhasil ditulis ke branch `v1.0/rebaseline`.
- Commit terkait:
  - `399f1a38afc4a5238cb5e43c315591f8904a8cb4`
  - `56152a0a21b0891676d211f79c1bdc6b6b0bd3fe`
  - `393787643b71e173094b547479b5a1247ca73b86`
  - `862c8a99be4137d98f9844d3d66ba996e1c607a2`- Build dan runtime device belum dijalankan setelah perubahan ini; status keseluruhan tetap UNVERIFIED.

### Berikutnya
Lanjut ke **Login / Local Setup** dengan scope terkecil. Untuk Local, tentukan dan implementasikan hanya fondasi yang benar-benar dibutuhkan untuk melanjutkan ke Storage / Access Setup. Untuk Account, pertahankan boundary authentication/provider dan jangan mengarang detail credential/session yang belum diputuskan.


## 2026-09-18 — Lanjutan Welcome: Local Setup dan Sign Up

### Pekerjaan
Menutup gap FE yang ditemukan dari runtime BaRe pada CI #194: jalur Local sebelumnya langsung menuju Backup Storage, sedangkan jalur Account belum memiliki halaman Sign Up yang nyata.

### Keputusan yang Diterapkan
- Jalur LOCAL memiliki langkah **Local Setup** sebelum Backup Storage.
- Jalur ACCOUNT tetap menuju **Sign In**.
- Tombol **Continue with local setup** di halaman Sign In dihapus karena pilihan Local/Account sudah dilakukan di Welcome.
- **Create account** memiliki halaman **Sign Up** sendiri.
- Setelah Local Setup, Sign In, atau Sign Up pada FE mockup, alur berlanjut ke Backup Storage.
- Tidak menambahkan detail identity persistence, authentication provider, credential storage, session policy, atau backend account karena capability tersebut belum diimplementasikan pada scope ini.

### Implementasi
- Menambahkan StartScreen.LOCAL_SETUP.
- Menambahkan StartScreen.SIGN_UP.
- Menambahkan LocalSetupScreen.
- Menambahkan SignUpScreen dengan Email, Password, Confirm password, dan Create account.
- Menghubungkan Welcome → Local Setup untuk LOCAL.
- Menghubungkan Welcome → Sign In untuk ACCOUNT.
- Menghubungkan Sign In → Sign Up melalui Create account.
- Menghubungkan Local Setup → Backup Storage.
- Menghubungkan Sign Up → Backup Storage.
- Memperbaiki Back navigation Backup Storage agar kembali ke Local Setup untuk identity LOCAL dan kembali ke Sign In untuk identity ACCOUNT.
- Menambahkan resource string untuk Local Setup dan Sign Up.

### Verifikasi
- Source BaReApp.kt, OnboardingScreens.kt, dan strings.xml telah di-fetch ulang setelah perubahan dan struktur flow yang ditargetkan terobservasi pada branch v1.0/rebaseline.
- Commit implementasi terakhir: f284aabdb3bae79ad87ea99ced1043e62828391c.
- GitHub Actions run #197 untuk commit tersebut terobservasi in_progress saat pencatatan ini dibuat.
- Build akhir belum dapat dinyatakan VERIFIED sampai run selesai.
- Runtime CI #194 yang menjadi dasar temuan adalah evidence dari perangkat pengguna; implementasi baru ini belum diuji pada perangkat pengguna.

### Status
- Local Setup FE: IMPLEMENTED.
- Sign Up FE: IMPLEMENTED.
- Login/Sign In FE: IMPLEMENTED.
- Authentication/account creation capability: BELUM DIIMPLEMENTASIKAN.
- Local identity persistence: BELUM DIIMPLEMENTASIKAN.
- Build terbaru: UNVERIFIED / CI IN PROGRESS.
- R4: belum dikunci.

### Berikutnya
Tunggu hasil CI terbaru. Jika build berhasil, lakukan verifikasi runtime jalur:
Welcome → Local Setup → Backup Storage
dan
Welcome → Sign In → Create account → Sign Up → Backup Storage.
Setelah jalur ini stabil, lanjutkan scope Backup Storage tanpa membuat tahap baru.


## 2026-09-18 — Audit Fondasi Identity Local dan Jalur Account

### Pekerjaan
Inspeksi kondisi aktual setelah verifikasi runtime pengguna pada APK build/CI #199 dan diskusi pembentukan satu BaRe Identity untuk jalur LOCAL dan ACCOUNT.

### Teramati
- Runtime build #199 telah digunakan pengguna untuk memeriksa alur Welcome, Local Setup, Sign In, dan Sign Up. Screenshot menunjukkan alur FE dapat dinavigasi sesuai scope yang sedang dikerjakan.
- Source saat ini sudah memiliki `IdentityType.LOCAL` dan `IdentityType.ACCOUNT`.
- `BaReApp.kt` masih menyimpan `identityType`, email login, dan email sign-up sebagai state Compose sementara; belum ada pemuatan atau penyimpanan identity dari persistence.
- `LoginScreen` saat ini menggunakan field password kosong dengan callback kosong, sehingga password belum benar-benar ditangkap oleh state. `SignUpScreen` memiliki masalah yang sama untuk password dan confirm password.
- Belum ada dependency database/persistence pada `app/build.gradle.kts` selain dependency aplikasi/UI yang sedang digunakan. Belum ditemukan implementasi persistence untuk identity.
- `AndroidManifest.xml` tidak menunjukkan storage/database component khusus; manifest masih berupa bootstrap activity/application.
- Tidak ditemukan `app/src/test` atau `app/src/androidTest` pada branch saat inspeksi.
- Architecture BaRe sudah menetapkan Persistence sebagai shared foundation dan menetapkan bahwa domain tidak mengetahui detail database/file format; implementation harus mengikuti kebutuhan nyata.

### Temuan
- FE onboarding sudah cukup untuk menjadi permukaan kerja, tetapi Local belum membentuk atau me-resolve BaRe Identity secara persistent.
- Local belum dapat dinyatakan benar-benar hidup karena state identity masih in-memory UI.
- Password/credential input pada FE auth belum lengkap dan belum boleh dianggap authentication capability.
- Belum ada alasan teknis untuk mengikat Local ke backend atau Supabase. Local dapat dibangun dengan persistence device terlebih dahulu.
- Account tetap perlu dipertahankan sebagai jalur produk. Implementasi backend/provider belum ditentukan dan tidak perlu dipaksa ke Supabase pada scope ini.
- Model yang perlu dipertahankan adalah satu **BaRe Identity** dengan `IdentityType.LOCAL` atau `IdentityType.ACCOUNT`; perbedaan provider/persistence tidak boleh membuat model data inti Local dan Account menjadi dua schema domain yang berbeda.

### Batas Scope
Scope tetap berada di R3–R4–R5:
- R3: verifikasi dan perapian behavior FE yang diperlukan.
- R4: pembekuan FE setelah kontrak identity/auth dan desain UI cukup stabil.
- R5: implementasi capability Local Identity dan persistence yang benar-benar dibutuhkan untuk jalur Local sampai Home.
Tidak membuat tahap baru.

### Belum Diputuskan
- Nama/teknologi persistence Local.
- Struktur field final BaRe Identity.
- Pemisahan data biasa, secret/credential, dan session.
- Provider/backend Account.
- Apakah Account pada akhirnya membutuhkan backend, dan jika membutuhkan, provider apa.
- Detail lifecycle uninstall/reset/migrasi yang belum diperlukan untuk menutup Local scope pertama.

### Kondisi Saat Ini
`FE_FLOW_RUNTIME_OBSERVED / LOCAL_IDENTITY_NOT_PERSISTED / AUTH_FE_INCOMPLETE / ACCOUNT_PROVIDER_OPEN / R3_IN_PROGRESS / R4_NOT_LOCKED / R5_NEXT`

### Berikutnya
Inspect kebutuhan data minimum untuk satu BaRe Identity dan persistence Local, lalu rancang implementation paling sederhana yang tetap kompatibel dengan Account tanpa mengunci provider/backend. Setelah kontrak cukup jelas, implementasikan Local secara nyata dan verifikasi persistence melalui restart aplikasi.


## 2026-09-18 — Desain Minimum BaRe Identity dan Persistence Local

### Hasil Audit
Inspeksi source, architecture, product, dan capability matrix menunjukkan bahwa scope pertama tidak membutuhkan backend atau database server untuk membuat LOCAL identity hidup.

### Kontrak Minimum yang Dipakai
Untuk menutup scope Local secara nyata, BaRe hanya membutuhkan:
- satu **BaRe Identity** yang memiliki identifier stabil pada installation/state Local;
- `IdentityType.LOCAL` untuk membedakan jalur Local dari Account;
- penanda identity aktif/current agar startup dapat memulihkan context;
- metadata minimum yang memang dibutuhkan UI/operation, tanpa memasukkan credential atau session Account ke model Local.

### Batas Data
- Identity biasa dipisahkan dari secret/credential.
- Password/token tidak menjadi field pada model Local Identity.
- Session Account tidak disimpan di model Local Identity.
- Data artifact/backup tidak diduplikasi sebagai identity metadata kecuali benar-benar menjadi authoritative state.
- Provider Account tetap berada di luar scope Local dan belum dikunci ke backend/provider tertentu.

### Pilihan Implementation
Untuk scope pertama, gunakan persistence device sederhana dan reversible, bukan langsung database/server. Teknologi final belum dinaikkan sebagai keputusan sebelum implementasi dan verifikasi menunjukkan kebutuhan tambahannya.

Prinsipnya:
`UI → application/state → persistence implementation`

Model identity tidak mengetahui detail persistence.

### Lifecycle Minimum Local
```
First launch
  ↓
tidak ada current identity
  ↓
Local Setup
  ↓
buat/resolve Local Identity
  ↓
persist
  ↓
Storage / Access Setup
  ↓
Home
  ↓
startup berikutnya
  ↓
load current Local Identity
```

Jika persistence tidak dapat dibaca atau state tidak valid, sistem tidak boleh diam-diam menganggap identity berhasil dipulihkan. State harus masuk error/recovery path yang jelas.

### Dampak
- Tidak perlu Supabase untuk Local.
- Tidak perlu membuat schema database besar.
- Tidak perlu membuat Account backend sebelum Local bisa diverifikasi.
- Persistence boundary tetap kompatibel dengan Account karena provider/auth/session dapat ditambahkan di belakang boundary yang sama nanti.

### Status
- Kontrak minimum identity: **DESIGNED / belum runtime verified**.
- Pilihan persistence konkret: **PROPOSAL / belum final**.
- Local identity implementation: **BELUM DIIMPLEMENTASIKAN**.
- Account provider/backend: **UNKNOWN / OPEN**.
- Runtime persistence test: **BELUM DILAKUKAN**.

### Berikutnya
Implementasikan persistence Local paling sederhana yang memenuhi lifecycle di atas, lalu uji minimal: buat Local Identity → masuk Home → restart app → identity/context tetap terbaca. Tambahkan test failure untuk state persistence yang invalid bila implementation sudah tersedia.


## 2026-09-18 — Implementasi Persistence Local Minimum

### Implementasi
Local Identity sekarang memiliki persistence device minimum tanpa backend/server:
- `BaReIdentity` menyimpan `identityId` stabil dan `IdentityType`.
- `LocalIdentityStore` menggunakan Android `SharedPreferences` sebagai implementation persistence awal yang sederhana dan reversible.
- Saat Local Setup dilanjutkan, identity dibuat bila belum ada lalu disimpan.
- Status penyelesaian setup disimpan terpisah dari identity.
- Saat startup berikutnya, identity Local yang tersimpan dipulihkan.
- Jika setup sudah selesai, aplikasi masuk ke Home; jika identity ada tetapi setup belum selesai, aplikasi melanjutkan ke Storage Setup.
- Credential/password/token tidak masuk ke persistence Local.

### Batas
- Ini hanya persistence Local Identity dan continuity onboarding.
- Tidak ada Supabase.
- Tidak ada database server.
- Account authentication/provider belum diimplementasikan.
- Belum ada runtime proof bahwa state benar-benar bertahan setelah proses aplikasi dihentikan dan dibuka kembali.

### Status
- Local Identity implementation: **IMPLEMENTED / BUILD VERIFICATION PENDING**.
- Persistence technology: **IMPLEMENTED CHOICE — SharedPreferences** untuk scope minimum ini.
- Runtime restart persistence: **UNVERIFIED**.
- Account provider/session: **OPEN / NOT IMPLEMENTED**.

### Verifikasi Berikutnya
Build CI pada commit source terbaru, lalu runtime test:
1. Fresh install / data bersih.
2. Pilih Local.
3. Lanjut sampai Home.
4. Tutup aplikasi sepenuhnya.
5. Buka kembali.
6. Pastikan tidak kembali ke Welcome dan Local Identity tetap terbaca.
7. Uji juga restart sebelum setup selesai untuk memastikan aplikasi kembali ke Storage Setup, bukan menganggap onboarding selesai.


## 2026-09-18 — Perbaikan Input Password Auth

### Temuan
Field password dan confirm password sebelumnya memakai nilai kosong dengan callback kosong, sehingga input memang tidak dapat diketik.

### Perbaikan
- Login sekarang memiliki state password dan callback perubahan.
- Sign Up sekarang memiliki state password dan confirm password serta callback perubahan.
- Field password memakai `PasswordVisualTransformation` agar nilai tidak tampil sebagai plaintext.
- Perubahan ini hanya memperbaiki input UI/state; authentication Account tetap **NOT IMPLEMENTED** dan belum ada credential yang disimpan atau dikirim ke provider.

### Status
- Password input editable: **IMPLEMENTED / BUILD VERIFICATION PENDING**.
- Credential handling: **NOT IMPLEMENTED**.
- Account authentication/provider: **OPEN / NOT IMPLEMENTED**.


## 2026-09-18 — Fix Package ID, Password Visibility, dan Auth Form Validation

**Scope:** Login / Sign Up FE, application identity, dan validasi form.

**User-reported observation:** Build #205 sudah green. Setelah aplikasi dijalankan, ditemukan persistence file `bare_identity.xml` pada `data/data/com.savie.bare/shared_prefs`. User juga meminta application ID menjadi `com.bare`, password memiliki kontrol show/hide, serta email dan password tidak boleh diterima secara asal.

**Implementation:**
- Mengubah Android `applicationId` dari `com.savie.bare` menjadi `com.bare`. Namespace source `com.savie.bare` dipertahankan untuk membatasi scope perubahan pada application identifier.
- Menambahkan tombol show/hide password pada Login dan Sign Up, menggunakan `Visibility` / `VisibilityOff`.
- Menambahkan validasi email dengan format minimum `x@x.x`; form ditolak bila format tidak valid.
- Menambahkan minimum password length 8 karakter.
- Menambahkan validasi confirm password agar harus sama dengan password saat Sign Up.
- Tombol Sign In / Create Account hanya melanjutkan bila form valid.
- Tidak menambahkan fake authentication atau menyimpan raw password. Account authentication tetap belum terhubung ke backend/provider.

**Verification status:** Source change sudah di-commit. Build/CI setelah perubahan ini masih perlu diverifikasi; keberhasilan build sebelumnya (#205) tidak dianggap sebagai bukti untuk commit baru.

**Governance note:** Perubahan dibatasi pada tiga scope yang diminta: application ID, password visibility, dan form validation. Tidak mengubah `master`.


## 2026-09-18 — Full Rename Android Package / Namespace ke `com.bare`

**User authorization:** User explicitly authorized full rename agar identifier akun/owner tidak ikut terbawa ke APK.

**Scope:** Android `applicationId`, Gradle `namespace`, seluruh source Kotlin package/import dari `com.savie.bare` menjadi `com.bare` pada source app yang aktif.

**Implementation:**
- `applicationId` tetap `com.bare`.
- Gradle `namespace` diubah menjadi `com.bare`.
- Package declaration dan import source Kotlin diubah dari `com.savie.bare...` menjadi `com.bare...`.
- Tidak mengubah backend/authentication, persistence model, atau behavior capability lain.
- Tidak mengubah `master`; target tetap `v1.0/rebaseline`.

**Migration note:** Install lama dengan application identity `com.savie.bare` tidak otomatis berbagi data dengan `com.bare`; data lama berada di identity Android yang berbeda. Migrasi data lama belum dilakukan.

**Verification status:** Source/Gradle rename sudah committed. Build CI setelah rename belum diverifikasi pada saat entry ini dibuat. Runtime package/data-directory verification juga belum dilakukan.


## 2026-09-18 — Full Rename Android Package / Namespace ke `com.bare`

### Pernyataan Pengguna
Pengguna secara eksplisit mengotorisasi **GO** untuk melakukan full rename agar nama akun/owner tidak lagi menjadi bagian dari identity package/source BaRe.

### Pekerjaan Saat Ini
Melakukan full rename application identity dan source package BaRe dari `com.savie.bare` menjadi `com.bare` pada branch `v1.0/rebaseline`.

### Perubahan
- Android `applicationId` menggunakan `com.bare`.
- Gradle `namespace` diubah dari `com.savie.bare` menjadi `com.bare`.
- Package declaration Kotlin diubah dari `com.savie.bare...` menjadi `com.bare...`.
- Import Kotlin internal diubah mengikuti package baru.
- Referensi package aplikasi pada mock data ikut diselaraskan menjadi `com.bare`.
- Tidak mengubah behavior capability, authentication, persistence model, atau scope produk lainnya.
- `master` tidak disentuh; seluruh pekerjaan tetap pada `v1.0/rebaseline`.

### Dampak / Migration Note
Application identity Android berubah dari `com.savie.bare` menjadi `com.bare`. Install/data lama pada identity `com.savie.bare` tidak otomatis menjadi data untuk `com.bare`. Migrasi data lama belum dilakukan dan belum diotorisasi sebagai scope terpisah.

### Verifikasi
- Source package rename: **IMPLEMENTED / COMMITTED**.
- Gradle namespace rename: **IMPLEMENTED / COMMITTED**.
- Android application ID: **com.bare / IMPLEMENTED**.
- Build CI setelah full rename: **UNVERIFIED** pada saat pencatatan ini.
- Runtime install dan verifikasi package/data directory `com.bare`: **UNVERIFIED**.

### Commit Trail
Perubahan rename source/namespace dilakukan pada commit bertahap selama pekerjaan ini; commit terakhir untuk dokumentasi rename adalah commit yang mencatat state setelah implementation.

### Berikutnya
- Tunggu/cek CI untuk memastikan full package rename tetap compile.
- Jika build green, lakukan runtime verification pada APK baru dan pastikan Android identity/data path menggunakan `com.bare`.
- Jangan melakukan migrasi data dari `com.savie.bare` tanpa scope dan authorization terpisah.

## 2026-09-18 — Runtime Verification: CI Build Terakhir dan Auth Form

### Pekerjaan
Verifikasi runtime pengguna terhadap APK CI terakhir setelah full rename Android package ke `com.bare` dan perbaikan form authentication.

### Observasi Pengguna
- APK CI terakhir sudah di-install dan diverifikasi pada device.- Dari sisi behavior yang diperiksa, tidak ada perubahan yang terlihat selain nama aplikasi.
- Password pada field authentication sudah dapat digunakan sesuai input yang diharapkan.- Form authentication menolak interaksi lanjut ketika format email tidak valid.
- Password dengan panjang kurang dari 8 karakter tidak dapat melanjutkan authentication flow.

### Verifikasi
- APK terakhir: **RUNTIME VERIFIED BY USER** untuk scope observasi di atas.
- Full rename/application identity `com.bare`: terverifikasi pada APK yang di-install sebagai bagian dari verifikasi pengguna.
- Email format validation: **VERIFIED BY USER**.
- Minimum password length 8: **VERIFIED BY USER**.
- Tidak ada perubahan behavior lain yang teramati dalam scope verifikasi ini.
- Authentication backend/provider tetap **NOT IMPLEMENTED / OUT OF SCOPE** pada pekerjaan ini; verifikasi hanya mencakup FE validation dan behavior yang terlihat pada device.

### Scope Boundary
- Backend tidak dimasuki.
- Tidak ada perubahan database, provider, session, credential handling, atau authentication service.
- Tidak ada perubahan product capability lain.

### Kondisi Saat Ini
`RUNTIME_FE_VERIFIED / PACKAGE_RENAME_VERIFIED / AUTH_FORM_VALIDATION_VERIFIED / BACKEND_NOT_ENTERED`

### Berikutnya
Lanjutkan dari kondisi aktual ini. Backend/authentication provider tetap terpisah dan tidak menjadi bagian dari verifikasi ini sampai ada scope dan authorization tersendiri.

## 2026-09-18 — Diskusi Refinement Onboarding UX/UI

### Pekerjaan Saat Ini
Review dan refinement arah visual/copy onboarding berdasarkan runtime mockup yang sudah diverifikasi pengguna. Pekerjaan ini masih berada pada tahap **diskusi/design exploration** dan belum menjadi implementation change.

### Hasil Diskusi
- **Local Setup** tidak perlu dipertahankan sebagai halaman penuh. Local Identity tetap menjadi fondasi logical flow, tetapi UI diarahkan untuk menggunakan compact confirmation setelah user memilih **Use BaRe locally**.
- Confirmation Local diarahkan menjadi bottom sheet yang ringkas, dengan copy kandidat:
  - Set up BaRe on this device
  - Your BaRe setup stays on this device.
  - You can connect an account later.
  - action: Not now / Continue.
- Setelah Continue, logical flow tetap: initialize/resolve Local Identity → persist → lanjut ke Backup Storage. User tidak perlu melihat detail internal tersebut sebagai halaman tersendiri.
- **Welcome** diposisikan sebagai screen dengan brand hierarchy paling kuat: logo/wordmark dominan, `B Λ R E` sebagai treatment typography brand, dan `SAVE OUR DAY` sebagai tagline candidate.
- Seluruh penulisan brand `BaRe` di aplikasi diarahkan menggunakan treatment typography/wordmark yang konsisten dengan referensi `B Λ R E`; logo tidak harus berupa image asset untuk setiap penggunaan.
- Welcome copy diarahkan singkat dan natural. Kandidat yang sedang dibahas: `Back up, restore, and manage your apps and data.`. Tidak perlu menjejalkan seluruh daftar capability pada Welcome; detail fitur dapat dijelaskan di dalam produk.
- Hierarki action Welcome: **Use BaRe locally** sebagai primary action dan **Use BaRe account** sebagai secondary action.
- **Create account** dan **Sign in** secara umum sudah diterima sebagai arah visual/copy diskusi sebelumnya.
- **Forgot password** dipahami sebagai dedicated flow/screen terpisah: Sign in → Forgot password → input email → send reset link → password reset destination mengikuti authentication architecture/provider saat nanti diimplementasikan. Mockup flow boleh disiapkan tanpa mengunci provider/destination sekarang.
- **Color direction**: monochrome-first. Dark dan Light menggunakan semantic color roles dengan foundation black/gray/white pada masing-masing theme.
- Accent belum diputuskan. Jika diperlukan nanti, accent akan ditambahkan sebagai semantic token/contextual state sehingga tidak membutuhkan redesign besar pada screen yang sudah ada.

### Batas Scope
- Ini **DISKUSI / DESIGN PROPOSAL**, bukan requirement final dan bukan authorization implementation.
- Tidak ada perubahan source, UI, persistence, authentication, backend, atau capability runtime dari entry ini.
- Backend tetap tidak dimasuki.
- Local Identity persistence yang sudah implemented tetap dipertahankan; yang dibahas hanya cara mengekspos flow tersebut pada UX.

### Status
`ONBOARDING_UX_REFINEMENT_DISCUSSION / LOCAL_SETUP_PAGE_CANDIDATE_REMOVAL / WELCOME_COPY_OPEN / MONOCHROME_THEME_DIRECTION / BACKEND_NOT_ENTERED`

### Berikutnya
Jika user mengunci arah Welcome/copy/layout dan confirmation sebagai decision, baru lanjut ke implementation change pada FE. Setelah implementation, lakukan build → runtime verification → update worklog kembali dengan evidence aktual.

## 2026-09-18 — Implementation: Onboarding UX/UI Refinement

### Authorization
User memberikan **GO** untuk mengeksekusi design direction yang sudah dibahas. Scope tetap FE/onboarding; backend tidak masuk.

### Implementasi
- Welcome dirombak menjadi brand-first layout dengan logo mark, `B Λ R E` sebagai text treatment, tagline `SAVE OUR DAY`, copy singkat `Back up, restore, and manage your apps and data.`, primary CTA **Use BaRe locally**, dan secondary action **Use BaRe account**.
- Local Setup page dihapus dari navigation flow. Local Identity tetap digunakan; pemilihannya sekarang membuka compact bottom-sheet confirmation.
- Confirmation local menggunakan copy `Set up BaRe on this device` dan penjelasan bahwa setup tetap di device serta account dapat dihubungkan kemudian. `Continue` menjalankan local identity initialization/persistence lalu menuju Backup Storage; `Not now` menutup confirmation dan tetap di Welcome.
- Authentication copy untuk Sign in/Create account dirapikan agar lebih natural dan konsisten. Sign in ditambah `Forgot password?`.
- Ditambahkan dedicated Forgot Password mockup flow: email → validation → `Send reset link` → confirmation `Check your email`. Flow masih mockup dan belum mengirim email karena authentication backend belum terhubung.
- Theme direction diimplementasikan sebagai monochrome-first dark palette dan semantic light palette foundation. Current runtime tetap menggunakan dark palette; light palette disiapkan untuk theme switch berikutnya.
- Accent color sengaja belum ditambahkan; semantic status color tetap menjadi ruang evolusi berikutnya.
- Logo mark pada Welcome diimplementasikan sebagai vector drawing berdasarkan reference logo yang diberikan pengguna; brand name tetap berupa text, bukan gambar.

### Verifikasi Teknis
- Source tree dan references setelah perubahan di-inspect kembali.
- Search repository tidak menemukan lagi references `LOCAL_SETUP`, `account_cloud_description`, `choose_identity`, atau string local setup lama.
- GitHub Actions Android Build untuk commit terbaru masih **IN_PROGRESS** saat entry ini dicatat; build/runtime belum boleh dianggap VERIFIED.

### Scope Boundary
- Tidak ada backend, database, authentication provider, session, credential service, atau cloud integration yang diubah.
- Tidak ada perubahan capability backup/restore/runtime provider.
- `master` tidak disentuh; active branch tetap `v1.0/rebaseline`.

### Status
`ONBOARDING_UX_IMPLEMENTED / LOCAL_SETUP_PAGE_REMOVED / LOCAL_CONFIRMATION_IMPLEMENTED / FORGOT_PASSWORD_FLOW_MOCKUP / MONOCHROME_THEME_FOUNDATION / CI_PENDING / BACKEND_NOT_ENTERED`

### Berikutnya
Menunggu CI build selesai, lalu APK hasil build perlu dipasang dan dilakukan runtime verification pada device. Fokus verification: Welcome layout, local confirmation + persistence transition, Sign in/Create account, Forgot Password mockup flow, dan visual monochrome.


## 2026-09-18 — Cleanup: Canonical PNG Logo dan CI Build Fix

### Authorization
User memberikan **GO** untuk merapikan asset logo yang tidak diperlukan, mengganti redraw logo Welcome dengan asset PNG canonical, dan membereskan CI yang sedang merah.

### Perubahan
- BaReMark Canvas redraw dihapus dari OnboardingScreens.kt; Welcome sekarang memakai res/drawable-nodpi/bare_logo.png sebagai asset logo asli.
- ContentScale.Fit digunakan agar PNG tidak dipaksa crop/stretch. PNG tidak diberi tint berbasis theme, sehingga switching Light/Dark tidak mengubah warna internal asset.
- Import Compose yang hanya dibutuhkan oleh redraw lama dibersihkan.
- bare_header.png dihapus karena tidak memiliki consumer yang teridentifikasi pada source/runtime path saat cleanup ini dilakukan.
- bare_logo_foreground.xml dipertahankan karena masih direferensikan oleh adaptive launcher icon; asset ini bukan kandidat aman untuk dihapus.
- Preview LoginScreen diperbaiki dengan menambahkan onForgotPassword setelah signature berubah.

### CI Root Cause
Run #256 (35361253664) gagal pada :app:compileDebugKotlin, bukan pada signing atau resource packaging. Error yang terverifikasi dari log:
- unresolved reference Stroke dan penggunaan redraw di OnboardingScreens.kt;
- LoginPreview tidak mengirim parameter onForgotPassword.

### Scope Boundary
- Backend tidak disentuh.
- master tidak disentuh; perubahan hanya pada v1.0/rebaseline.

### Status
LOGO_CANONICAL_PNG / UNUSED_HEADER_ASSET_REMOVED / PREVIEW_SIGNATURE_FIXED / CI_FIX_COMMITTED / CI_REVERIFICATION_PENDING

### Berikutnya
CI terbaru harus diverifikasi setelah commit cleanup. Jika build sukses, lanjut runtime verification Welcome + theme behavior pada device.


> CI verification trigger: this worklog update intentionally creates a normal push event after the atomic cleanup commit so the Android Build workflow evaluates the exact cleaned tree.


## 2026-09-18 — Refinement: Welcome Branding dan Mockup Disclosure

### Authorization
User memberikan **GO** untuk refinement Welcome berdasarkan runtime screenshots.

### Perubahan
- Hanya label disclosure `Mockup only — authentication is not connected.` di bagian bawah Sign in, Create account, dan Forgot Password dihapus. Screen/flow mockup tetap dipertahankan untuk review UI.
- Display brand pada UI diseragamkan menjadi `B Λ R E` pada copy user-facing yang relevan; technical identifiers/path tidak diubah.
- Welcome wordmark `B Λ R E` diperbesar dan diperlebar; tagline diubah dari spaced characters menjadi `SAVE OUR DAY` dengan tracking yang lebih proporsional.
- Logo Welcome menggunakan PNG transparan yang dibersihkan dari background hitam; asset diperkecil dan dioptimalkan agar tidak membawa kotak background dan tidak membebani APK seperti asset sebelumnya.
- Logo diperbesar sehingga visual width mendekati wordmark/tagline.
- Welcome description dibuat centered dengan max-width lebih sempit agar wrapping menjadi dua baris yang lebih seimbang.

### Status
`WELCOME_BRANDING_REFINED / MOCKUP_DISCLOSURE_REMOVED / CANONICAL_LOGO_TRANSPARENT / CI_PENDING`

### Verification
CI dan runtime verification menunggu build baru. Fokus runtime: logo tanpa kotak hitam, proporsi logo/wordmark/tagline, description wrapping, dan keberadaan screen mockup tanpa disclosure text.


> CI trigger for branding refinement: push event requested so the Android Build workflow evaluates commit `64bd354ed21336b071ddd0cf2ff94e28c391ab89`.


## 2026-09-18 — Refinement: Welcome Composition dan Adaptive Launcher Icon

### Authorization
User memberikan **GO** setelah runtime verification build #258.

### Perubahan
- Welcome logo diperkecil sedikit dan diberi kompensasi horizontal agar pusat visual lingkaran `O` menjadi anchor, bukan bounding box PNG.
- Wordmark `B Λ R E` mempertahankan ukuran tetapi dinaikkan ke weight Medium agar lebih berisi.
- Welcome description diubah menjadi `Back up, restore, manage your apps and data.` dan tetap centered dengan wrapping dua baris.
- Jarak description terhadap tagline diperbesar sedikit agar berada lebih proporsional di antara tagline dan CTA.
- Launcher tidak lagi memakai legacy drawable/layer-list yang menghasilkan icon putih/abu pada device.
- Launcher sekarang memakai adaptive icon dengan background dark BaRe dan foreground dari canonical `bare_logo.png`.
- `bare_logo_foreground.xml` dan `bare_launcher_icon.xml` yang sudah tidak direferensikan dihapus.
- Manifest launcher label sekarang mengambil `@string/app_name`, sehingga display name konsisten dengan `B Λ R E`.

### Scope Boundary
Backend tidak disentuh. Perubahan hanya UI/branding/resource/manifest pada `v1.0/rebaseline`.

### Status
`WELCOME_COMPOSITION_REFINED / WORDMARK_MEDIUM / LAUNCHER_ADAPTIVE_ICON_REWORKED / OBSOLETE_ICON_ASSETS_REMOVED / CI_PENDING`

### Verification
CI harus membuktikan resource packaging dan APK artifact. Runtime berikutnya fokus pada: visual center logo `O`, wordmark weight, description wrapping/vertical position, dan launcher icon appearance.


## 2026-09-18 — Refinement: Welcome Runtime Feedback #267

### Authorization
User memberikan **GO** untuk mengeksekusi feedback runtime terhadap build #267.

### Observed Runtime Feedback
- Adaptive launcher icon: ukuran foreground logo dinilai masih terlalu besar pada launcher/package presentation; tampilan pada **App Info** dinilai sudah sesuai.
- Welcome logo: perlu digeser sedikit ke kanan agar visual balance lebih natural.
- Wordmark **B Λ R E**: sudah sesuai dan tidak diubah.
- Tagline **SAVE OUR DAY**: sudah sesuai dan tidak diubah.
- Welcome description: user meminta dua baris eksplisit:
  `Back up, restore, manage`
  `your apps and data`
  tanpa wrapping otomatis yang menghasilkan susunan berbeda.
- Posisi description: perlu diturunkan lebih jauh; target visual adalah baris pertama baru berada kurang-lebih pada posisi baris kedua sebelumnya.
- Disclosure `Mockup only...`: sudah hilang sesuai feedback sebelumnya; screen mockup tetap dipertahankan.

### Implementation
- Welcome logo horizontal offset diubah dari **6dp** menjadi **10dp**.
- Jarak tagline → description dinaikkan dari **38dp** menjadi **70dp**.
- `welcome_description` diberi explicit newline agar selalu menjadi dua baris sesuai copy yang diminta.
- Adaptive launcher foreground diberi inset **16dp** pada tiap sisi dan bitmap menggunakan `gravity="fill"` agar visual logo lebih kecil di dalam adaptive icon.
- Tidak mengubah canonical `bare_logo.png`.
- Tidak mengubah wordmark atau tagline.
- Backend/authentication/provider tidak disentuh.

### Verification Status
- Source changes: **IMPLEMENTED / COMMITTED**.
- CI untuk commit perubahan terbaru: **PENDING**.- Runtime verification pada device: **PENDING**.

### Next Runtime Check
Fokus verifikasi pengguna:
1. Launcher icon sudah lebih kecil tanpa mengubah tampilan App Info secara tidak diinginkan.
2. Welcome logo sudah cukup ke kanan.
3. Description tepat dua baris dan turun ke posisi yang diinginkan.
4. B Λ R E dan SAVE OUR DAY tetap seperti build #267.



## 2026-09-18 — Refinement: Launcher 8dp dan Welcome Logo +30dp

### Authorization
User memberikan **GO** langsung berdasarkan runtime build #270.

### User Direction
- Launcher icon masih dinilai terlalu besar; user memilih **8dp** sebagai titik uji berikutnya untuk mencari ukuran final di rentang 8–16dp.
- Welcome logo sebelumnya +10dp tidak terlihat cukup berbeda; user meminta offset yang lebih besar sebagai baseline visual. Dipilih **+30dp** sebagai test point tengah antara +20dp dan +40dp.

### Implementation
- Adaptive launcher foreground inset: **16dp → 8dp** pada seluruh sisi.
- Welcome logo horizontal offset: **+10dp → +30dp**.
- Ukuran logo Welcome, wordmark **B Λ R E**, tagline **SAVE OUR DAY**, dan canonical `bare_logo.png` tidak diubah.
- Backend/authentication/provider tetap tidak disentuh.

### Verification Status
- Source changes: **IMPLEMENTED / COMMITTED**.
- CI: **PENDING** untuk commit terbaru.
- Runtime: **PENDING**.

### Next Runtime Check
Bandingkan build berikutnya terhadap #270:
1. Launcher foreground apakah sudah cukup kecil pada launcher.
2. Welcome logo +30dp apakah sudah terlihat jelas pergeserannya.
3. Jika +30dp terlalu jauh, gunakan hasil ini sebagai baseline untuk memilih titik antara +10dp dan +30dp; jika masih kurang, lanjutkan menuju +40dp.


## 2026-09-19 — Refinement: Welcome +25dp dan Launcher Explicit Scaling

### Authorization
User memberikan **GO** untuk:
- Welcome logo **+25dp**.
- Launcher icon foreground **60% scaling target**.

### Implementation
- Welcome logo horizontal offset: **+30dp → +25dp**.
- Adaptive launcher foreground tidak lagi mengandalkan inset sebagai mekanisme utama.
- Foreground logo diubah ke explicit centered sizing dengan target sekitar **60%** dari adaptive icon area.
- Canonical `bare_logo.png`, App Info presentation target, wordmark, tagline, dan backend tidak diubah.

### Verification Status
- Source changes: **IMPLEMENTED / COMMITTED**.
- CI: **PENDING**.
- Runtime: **PENDING**.

### Next Runtime Check
- Bandingkan ukuran launcher icon terhadap build #272.
- Verifikasi Welcome logo pada +25dp.
- Jika launcher 60% terlalu kecil/besar, gunakan hasil runtime sebagai calibration point berikutnya.


## 2026-09-19 — Fix: Launcher Scaling Resource

### Incident
CI run #274 gagal pada `processDebugResources` karena `android:width="65%"` dan `android:height="65%"` tidak valid untuk atribut dimension pada `layer-list/item`.

### Root Cause
Persentase tidak didukung oleh atribut `width/height` pada resource drawable tersebut.

### Fix
- Menghapus pendekatan percentage dimension yang invalid.
- Menggunakan valid drawable insets **22dp** pada seluruh sisi untuk menghasilkan area foreground sekitar **60%** dari area adaptive icon.
- Canonical `bare_logo.png` tetap tidak diubah.
- Welcome +25dp tetap dipertahankan.

### Verification
- CI failure #274: **ROOT CAUSE CONFIRMED** dari log AAPT.
- Fix commit: **IMPLEMENTED**.
- CI terbaru: **PENDING**.
- Runtime: **PENDING**.


## 2026-09-19 — Launcher Scaling: Switch to ScaleDrawable

### Decision
Pendekatan inset tidak digunakan sebagai mekanisme scaling final. User meminta solusi scaling yang logis dan deterministic.

### Research / Basis
Android menyediakan ScaleDrawable dengan atribut scaleWidth dan scaleHeight dalam persentase, serta scaleGravity=center. Dokumentasi Android juga menyediakan contoh resmi penggunaan <scale> untuk mengecilkan drawable secara persentase.

### Implementation
- bare_launcher_foreground.xml diubah dari inset-based drawable menjadi root <scale>.
- Width scaling: 60%.
- Height scaling: 60%.
- Gravity: center.
- Level: 10000 agar ScaleDrawable berada pada maximum scale yang ditentukan.
- Canonical bare_logo.png tetap tidak diubah.
- Welcome logo +25dp tetap.

### Verification Status
- Source: IMPLEMENTED.
- CI: PENDING.
- Runtime: PENDING.

### Note
Build #274 sebelumnya gagal karena width=65% / height=65% digunakan pada atribut dimension layer-list/item; itu memang resource syntax yang salah. Pendekatan baru menempatkan persentase pada atribut scaleWidth/scaleHeight yang memang didukung oleh ScaleDrawable.

## 2026-09-19 — Implementasi Fondasi Backup Storage dan Access Capability

### Authorization
User memberikan **GO** untuk melanjutkan fondasi backup storage dan audit penerapan capability **Root/Non-root** dari baseline bootstrap ke struktur BaRe pada branch aktif.

### User Direction
- Backup storage harus selalu menampilkan **Internal storage**.
- Path internal mengikuti pola backup reference dengan folder BaRe:
  `/storage/emulated/0/BaRe/accounts/<16-digit dari Identity ID>/backups/*`.
- External storage hanya ditampilkan ketika hardware/storage removable benar-benar terhubung dan mounted, misalnya USB OTG atau MMC; jika tidak ada, tidak ditampilkan.
- Root dan Non-root diaudit dari implementation yang sudah valid pada branch bootstrap dan dapat diterapkan ke BaRe dengan perbedaan struktur/file/package.
- Branch kerja tetap **`v1.0/rebaseline`**. `master` tidak disentuh.

### Implementasi
- Menambahkan `BackupStorageRepository` untuk menginspeksi Internal, removable External, dan Remote placeholder.
- Internal storage diarahkan ke:
  `/storage/emulated/0/BaRe/accounts/<identity-folder>/backups`.
- Removable storage dideteksi melalui Android `StorageManager.storageVolumes`; hanya volume removable yang berstatus mounted yang dimasukkan. Primary external storage tidak diduplikasi sebagai External.
- Remote tetap direpresentasikan sebagai unavailable placeholder; belum ada cloud/provider implementation.
- Menambahkan `RootCapabilityProvider` dengan probe aktual melalui `su -c id` dan root APK copy melalui `pm path` + privileged file read.
- Menambahkan `NonRootCapabilityProvider` menggunakan Android app-visible package APIs untuk membaca base/split APK dan melakukan staging copy.
- Menambahkan `AccessCapabilityResolver` untuk membedakan capability availability berdasarkan mekanisme akses yang dipilih.
- Storage Setup UI diubah dari static mockup menjadi membaca hasil inspection storage aktual.
- Access Method Continue sekarang melakukan capability resolution sebelum setup ditandai complete dan masuk ke Main App.
- Implementasi tetap berada di package namespace BaRe (`com.bare`).

### Status Truth
- Source implementation: **IMPLEMENTED / COMMITTED**.
- Storage runtime behavior: **UNVERIFIED**.
- Root runtime probe/execution: **UNVERIFIED**.
- Non-root runtime execution terhadap target backup workflow: **UNVERIFIED**.
- External removable hardware detection: **UNVERIFIED** pada device.
- CI/build setelah implementation ini: **PENDING / UNVERIFIED**.
- Identity-folder mapping 16 karakter dari Identity ID adalah **IMPLEMENTATION ASSUMPTION** sampai format canonical Identity ID tersebut diverifikasi terhadap requirement/source yang authoritative.
- Remote/cloud execution: **NOT IMPLEMENTED / OUT OF SCOPE** pada pekerjaan ini.

### Scope Boundary
- Tidak menyentuh backend, database, authentication provider, account/session, atau cloud transfer.
- Tidak mengubah `master`.
- Tidak mengklaim backup/restore end-to-end sudah bekerja.
- Tidak mengklaim Root/Non-root capability sudah runtime-verified hanya karena provider dan resolver sudah ada.

### Berikutnya
- Verifikasi CI terhadap source aktual.
- Jika build green, lakukan runtime verification pada device untuk Internal storage path, kondisi External tanpa hardware, serta Root/Non-root capability resolution.
- Setelah evidence runtime tersedia, rekonsiliasi status capability matrix dan worklog berdasarkan hasil aktual.


## 2026-09-19 — Cloud Account Gate dan Existing Auth Flow

### Authorization
User menyetujui alur Cloud yang sudah dibahas dan memberikan arahan implementation: desain mengikuti UI BaRe yang sudah ada, dibuat modern/kekinian tetapi minimalis, default APK tetap English, dan tidak membuat halaman login baru karena Sign in/Create account/Forgot password sudah tersedia pada onboarding.

### Keputusan
- Cloud tetap mengikuti journey product: Connect Provider → Prepare Storage → Upload/Download/Sync → Verify → Maintain Metadata.
- Account menjadi prerequisite untuk masuk ke penggunaan cloud provider.
- Account authentication menggunakan screen authentication BaRe yang sudah ada.
- Jika user membuka Cloud dari sesi local, BaRe mengarahkan ke existing Sign in; setelah flow auth selesai, user dikembalikan ke Cloud.
- Tidak membuat duplicate login/account screen khusus Cloud.
- Copy Cloud ditulis dalam English sebagai default APK.
- Visual Cloud dibuat lebih ringkas dengan hierarchy Material yang sudah dipakai BaRe; tidak menambahkan gaya/branding yang keluar dari existing UI baseline.
- Provider cloud tetap belum diimplementasikan; perubahan ini hanya memperbaiki UX flow/gate.

### Implementasi
- BaReApp.kt menambahkan return state agar existing Sign in/Create account dapat kembali ke Screen.CLOUD setelah authentication flow.
- Saat authentication flow Cloud selesai, session UI mempertahankan IdentityType.ACCOUNT untuk navigasi berikutnya dalam runtime session.
- Routing dari Account → Cloud memeriksa identity type; local identity diarahkan ke existing Sign in, account identity langsung membuka Cloud.
- CloudScreen diperbarui menjadi account-aware dengan entry card yang lebih compact dan provider list tetap mempertahankan surface yang sudah ada.
- String baru ditambahkan dalam English untuk cloud account gate dan connected state.

### Status Truth
- UX routing source: IMPLEMENTED / UNVERIFIED.
- Existing authentication screen reuse: IMPLEMENTED / UNVERIFIED.
- Cloud provider connection/transfer: NOT IMPLEMENTED.
- Authentication backend/session persistence: NOT IMPLEMENTED / OUT OF SCOPE pada pekerjaan ini.
- Runtime visual/navigation: UNVERIFIED.
- CI setelah perubahan Cloud: PENDING / UNVERIFIED.

### Scope Boundary
- Tidak membuat screen login baru.
- Tidak mengubah existing Sign in/Create account/Forgot password UI.
- Tidak mengimplementasikan provider Google Drive, WebDAV, atau Generic Remote.
- Tidak menyentuh backup artifact, storage provider implementation, database, atau backend.
- master tidak disentuh; seluruh perubahan berada di v1.0/rebaseline.

### Berikutnya
- Verifikasi CI compile/resource packaging.
- Jika green, runtime test: Account/local → Cloud → existing Sign in → kembali ke Cloud; account path → Cloud langsung.
- Setelah runtime evidence tersedia, update status worklog berdasarkan hasil aktual.


## 2026-09-19 — Verifikasi Final Cloud Flow: CI Green

### Perbaikan- Memperbaiki syntax Kotlin yang masih menyisakan literal escaped newline pada `BaReApp.kt`.
- Memperbaiki `RootCapabilityProvider.runSu()` agar menggunakan block body sehingga `return` tidak melanggar aturan Kotlin expression body.
- Tidak mengubah scope Cloud atau membuat authentication screen baru.
### Evidence
- CI run **#297** gagal pada `:app:compileDebugKotlin`; log menunjukkan syntax error di `BaReApp.kt`, unresolved `accessResolver`, serta error expression body pada `RootCapabilityProvider.kt`.
- CI run **#298** masih gagal karena literal escaped newline di `BaReApp.kt` belum benar-benar terhapus dari source.
- Commit perbaikan akhir: `34374130469d248f8857b175fae90c30acf9569f`.
- CI run **#299** untuk commit tersebut: **COMPLETED / SUCCESS**.
- Job `build`: **SUCCESS**; `:app:assembleDebug` berhasil melewati tahap build dan workflow selesai sukses.

### Status Truth
- Cloud account-gated routing: **IMPLEMENTED / CI VERIFIED**.
- Existing auth screen reuse: **IMPLEMENTED / CI VERIFIED**.
- Cloud provider connection/transfer: **NOT IMPLEMENTED**.
- Runtime navigation/visual Cloud: **UNVERIFIED** karena belum ada device evidence pada pekerjaan ini.
- Authentication backend/session persistence: **NOT IMPLEMENTED / OUT OF SCOPE**.

### Next
- Lanjut runtime verification pada device untuk journey local/account → Cloud → existing auth → kembali ke Cloud.
- Setelah runtime evidence tersedia, rekonsiliasi status runtime capability dan lanjut ke provider cloud sesuai scope product.

## 2026-09-19 — Verifikasi Runtime Access Method dan Review Backup Storage

### Evidence Runtime
- Pengguna melakukan verifikasi langsung pada device terhadap alur onboarding **Backup storage → Access method**.
- **Internal storage** tampil dengan path BaRe berbasis Identity ID dan menjadi pilihan aktif pada runtime.
- **External removable storage** tidak tampil ketika tidak ada hardware removable yang terhubung; ini sesuai behavior yang diharapkan untuk kondisi device tersebut.
- **Root** dan **Non-root** dilaporkan berfungsi aman pada runtime device oleh pengguna. Evidence ini dicatat sebagai **USER-OBSERVED**, bukan pengganti automated/runtime test evidence dari engineer.

### Temuan
- Pada kondisi identity **local**, surface **Cloud/Remote storage** pada Backup storage belum tampil sebagai opsi yang dapat dipilih untuk memulai account-gated Cloud flow.
- Ini tidak sesuai intent yang sudah ditetapkan: Cloud tetap visible, tetapi eksekusinya harus melewati existing Account authentication; local identity tidak boleh membuat Cloud menghilang.

### Status Truth
- CI build: **VERIFIED — run #299 SUCCESS** untuk commit 34374130469d248f8857b175fae90c30acf9569f.
- Internal storage UI: **USER-OBSERVED**.
- External removable visibility pada kondisi tanpa hardware: **USER-OBSERVED**.
- Root/Non-root runtime: **USER-OBSERVED / NOT INDEPENDENTLY VERIFIED**.
- Cloud visibility + account gate pada Backup storage: **IMPLEMENTATION GAP IDENTIFIED**.

### Next
- Perbaiki Backup storage agar Cloud tetap visible pada local identity.
- Tap Cloud dari local identity harus mengarahkan ke **existing Sign in/Create account**, bukan local setup dan bukan membuat login screen baru.
- Setelah auth flow selesai, user kembali ke Cloud provider surface.
- Pertahankan External storage conditional berdasarkan hardware mounted.

## 2026-09-19 — Fix: Cloud Tetap Visible pada Backup Storage

### Authorization
Pengguna mengonfirmasi bahwa **Cloud harus tetap tampil** pada Backup storage meskipun sesi saat ini menggunakan local identity. Jika Cloud dipilih dari local identity, flow harus menuju authentication yang sudah ada, bukan membuat local identity dan bukan membuat screen login baru.

### Temuan
- Root/Non-root dan Internal/External behavior telah dilaporkan berfungsi aman pada runtime device oleh pengguna.
- Cloud sebelumnya dirender sebagai Remote storage yang disabled pada Backup storage, sehingga tidak dapat menjadi entry point ke account-gated Cloud flow.
- Penyebabnya bukan karena Cloud secara product harus hilang untuk local identity; implementation UI sebelumnya memang membuat card Remote/Cloud non-interactive.

### Perubahan
- Cloud storage sekarang tetap visible pada Backup storage.
- Cloud storage sekarang dapat dipilih/ditekan.
- Dari local identity, tap Cloud mengarahkan ke existing Sign in flow melalui state return-to-cloud.
- Dari account identity, tap Cloud langsung membuka Cloud surface.
- Tidak membuat login/account screen baru.
- External removable storage tetap conditional berdasarkan volume removable yang benar-benar mounted.
- Internal storage tetap menjadi opsi utama dengan path BaRe yang sudah ada.

### Verifikasi
- CI run **#301** untuk commit `44a795be5d17a016dd8d724375b8fc0623d738ea`: **COMPLETED / SUCCESS**.
- Perubahan source Cloud visibility/account routing: **CI VERIFIED**.
- Runtime device verification untuk tap Cloud → existing auth → kembali ke Cloud: **PENDING / UNVERIFIED**.

### Status Truth
- Backup storage Cloud visibility: **IMPLEMENTED / CI VERIFIED**.
- Local → existing authentication → Cloud: **IMPLEMENTED / CI VERIFIED, runtime UNVERIFIED**.
- Account → Cloud: **IMPLEMENTED / CI VERIFIED, runtime UNVERIFIED**.
- Cloud provider connection/transfer: **NOT IMPLEMENTED**.

## 2026-09-19 — External Storage Tetap Visible Saat Tidak Terhubung

### Authorization
Pengguna memberikan **GO** untuk mengubah behavior External storage sesuai intent: opsi External tetap dibuat sebagai UI state ketika tidak ada USB OTG/MMC, dengan `available = false` dan status **Not connected**.

### Perubahan
- `BackupStorageRepository` sekarang selalu mengembalikan satu entry External ketika tidak ada removable storage yang mounted.
- Entry disconnected menggunakan state `available = false` dan `writable = false`; tidak dianggap sebagai storage yang siap dipakai.
- Ketika removable storage terdeteksi dan mounted, entry External menggunakan volume aktual dan path backup pada volume tersebut.
- Storage Setup menampilkan **External storage** tetap pada kondisi disconnected dengan subtitle **Not connected**.
- Card External yang disconnected tidak dapat dipilih/ditetapkan sebagai repository.
- Cloud tetap visible sebagai entry terpisah dan tidak dipengaruhi oleh ada/tidaknya external hardware.

### Incident dan Recovery
- CI run **#304** gagal pada resource merge karena duplicate `external_storage` string.
- Root cause dikonfirmasi dari AAPT/resource merger.
- Duplicate resource dihapus tanpa mengubah behavior yang diminta.

### Verifikasi
- CI run **#305** untuk commit `93b98382bd0efb4ef340a1e92758e51e65ec85ee`: **COMPLETED / SUCCESS**.
- External disconnected UI behavior: **CI VERIFIED** untuk source/build.
- Runtime device untuk kondisi tanpa USB OTG/MMC: **USER-OBSERVED sebelumnya bahwa External tidak tampil; behavior baru belum runtime-verified**.
- Runtime detection saat USB OTG/MMC dipasang: **UNVERIFIED**.

### Status Truth
- External option model: **IMPLEMENTED / CI VERIFIED**.
- Disconnected state: **IMPLEMENTED / CI VERIFIED**.
- Mounted removable detection: **IMPLEMENTED / CI VERIFIED, runtime UNVERIFIED**.
- Cloud visibility/account gate: **IMPLEMENTED / CI VERIFIED, runtime UNVERIFIED**.

### Berikutnya
- Install APK hasil build terbaru ke device.
- Verifikasi External tetap tampil sebagai **Not connected** tanpa USB/MMC.
- Hubungkan USB OTG/MMC dan verifikasi state berubah menjadi storage yang dapat dipilih serta path backup terbentuk sesuai volume.

## 2026-09-19 — Runtime Verification #305: Internal dan External Storage

### Evidence Runtime
- Pengguna melakukan test langsung pada device menggunakan build **#305**.
- **Internal storage: PASS** — path BaRe tampil dan repository internal dapat digunakan sebagai pilihan.
- **External storage tanpa hardware: PASS** — External storage tetap tampil sebagai **Not connected**.
- **External storage dengan hardware: PASS** — setelah storage removable terhubung, volume terdeteksi dan tampil sebagai storage eksternal dengan path BaRe pada volume tersebut.
- Evidence runtime di atas berasal dari screenshot/device observation pengguna.

### Cloud
- Cloud flow tidak diverifikasi pada sesi ini.
- Cloud sengaja ditunda karena authentication/account flow belum menjadi capability yang siap untuk runtime verification.
- Tidak ada perubahan implementation Cloud pada pekerjaan ini.

### Status Truth
- Internal storage: **RUNTIME TESTED / USER-OBSERVED PASS**.
- External disconnected state: **RUNTIME TESTED / USER-OBSERVED PASS**.
- External mounted removable storage: **RUNTIME TESTED / USER-OBSERVED PASS**.
- Cloud: **DEFERRED / UNVERIFIED**.

### Berikutnya
- Lanjutkan capability berikutnya yang tidak bergantung pada authentication/cloud.
- Cloud/account flow dapat digarap kembali ketika authentication/account foundation sudah menjadi prioritas.

## 2026-09-19 — Design Decision: Flow Header dan Actual Storage Information

### User Decision / Authorization
Pengguna menyetujui dan memberikan **GO** untuk menerapkan refinement pada flow onboarding/account tanpa menyentuh Home atau 4 tab utama.

### Keputusan
- Seluruh flow menggunakan top bar dengan format **← Title**.
- `Backup storage` harus menampilkan informasi **actual runtime**, bukan mockup: free/total storage, usage, progress bar, dan folder location untuk storage yang tersedia.
- External storage tetap visible saat tidak terhubung dan menampilkan state aktual `Not connected`; saat removable storage terhubung, kapasitas dan path berasal dari volume aktual.
- Cloud tetap visible dan menggunakan state account/provider yang sesuai; detail kapasitas hanya ditampilkan bila data provider benar-benar tersedia.
- `Access method` menggunakan product-facing copy. Runtime capability yang sudah proven tetap dipertahankan; kondisi non-root perlu dijelaskan dengan copy yang lebih jelas dan tidak menggunakan wording internal/developer seperti `mockup-only`.
- Home dan 4 tab utama **out of scope** untuk perubahan ini.

### Scope Boundary
Perubahan ini hanya mencakup Welcome → account flow → Backup storage → Access method serta komponen pendukung yang diperlukan. Tidak ada perubahan Home atau navigasi 4 tab utama.

### Verification Target
Setelah implementation, build/CI harus diverifikasi. Runtime storage information wajib dibuktikan dari device sebelum dianggap runtime verified; tidak boleh menggunakan nilai mockup.

## 2026-09-19 — Verification: Flow Header, Actual Storage Capacity, dan Access Copy

### Implementation
- Flow screens `Sign in`, `Reset password`, `Create account`, `Backup storage`, dan `Access method` sekarang menggunakan top bar **← Title**.
- `Backup storage` sekarang menggunakan data kapasitas aktual dari storage root: free space, total space, usage percentage, progress bar, dan folder location.
- Internal dan mounted removable storage tidak lagi memakai nilai kapasitas mockup.
- External storage yang tidak terhubung tetap ditampilkan sebagai `Not connected` dan tidak dapat dipilih.
- Cloud storage tetap visible sebagai pilihan terpisah.
- Copy `Access method`, `Non-root`, dan `Root` diperbarui menjadi product-facing wording; wording `mockup-only` dihapus dari root description.
- Home dan 4 tab utama tidak diubah.

### Verification
- CI run **#308** pada commit `21fe5875b66b27f61c00d337b439e86b5e8af88c`: **COMPLETED / SUCCESS**.
- Build source verification: **CI VERIFIED**.
- Runtime verification untuk tampilan baru capacity/progress bar dan top bar: **UNVERIFIED** sampai APK terbaru dipasang dan diuji di device.
- Runtime Internal/External storage sebelumnya sudah **USER-OBSERVED PASS** pada build #305; perubahan UI/capacity terbaru tetap membutuhkan runtime re-test.

## 2026-09-19 — Design Lock dan Implementasi Home Dashboard Compact

### Authorization
Pengguna memberikan **GO** setelah mengunci arah Home: header brand centered mengikuti Welcome, identity cukup Local/Account, storage actual dengan progress, access status, backup/schedule status, enam backup areas tanpa heading, empat quick actions, dan entry **More Apps Actions** yang untuk sementara mengikuti Apps tab sampai flow Apps secondary actions difinalkan.

### Keputusan yang Diterapkan
- Header 4 main tabs tetap menggunakan search di kanan; brand `B Λ R E` + `SAVE OUR DAY` dipusatkan seperti Welcome. Tidak menambahkan profile/avatar di header.
- Identity pada Home hanya menunjukkan `LOCAL` atau `ACCOUNT`; account menampilkan email sesi bila tersedia. Tap identity diarahkan ke bottom **Account** tab.
- Internal storage pada dashboard harus menggunakan actual free/total/usage dan progress bar; tap diarahkan ke flow **Backup storage**.
- Access status menampilkan Root/Non-root dan menjadi entry ke flow **Access method**.
- Last Backup dan Next Backup/Schedule ditampilkan sebagai status compact. Tidak membuat timestamp backup/schedule palsu; state yang belum memiliki evidence harus tetap ditampilkan sebagai no-data/disabled.
- Backup areas langsung berupa icon + feature dalam grid 3×2 tanpa heading terpisah: Apps, Messages, Call logs, Folders, Wi-Fi, Wallpapers.
- Quick actions dibatasi empat: Backup apps, Restore apps, Backup folders, Restore data.
- Icon harus semantik sesuai fungsi dan konsisten dengan icon language BaRe.
- **More Apps Actions** tetap sebagai konsep secondary Apps flow. Untuk fase ini entry diarahkan ke tab Apps; detail secondary actions menunggu Apps flow/capability selesai.
- Target layout: dashboard + quick actions dapat terlihat dalam satu viewport pada device target, tanpa vertical scrolling sebagai pola utama Home.

### Scope Boundary
- Home implementation dan routing yang sudah jelas masuk scope.
- Tidak membuat secondary Apps actions baru.
- Tidak membuat fake backup history, fake scheduler execution, atau fake cloud state.
- `master` tidak disentuh; target tetap `v1.0/rebaseline`.

### Verification Target
- CI/build harus membuktikan source compile dan resource integrity.
- Runtime berikutnya harus memeriksa centered header, compact one-screen Home, actual storage progress, identity routing, access routing, six feature entries, dan four quick actions.
- Last/next backup state harus direkonsiliasi lagi setelah backup/scheduler capability mempunyai runtime evidence nyata.

## 2026-09-19 — Implementasi Home Dashboard Compact

### Implementasi
- Mengganti Home mockup lama yang panjang menjadi dashboard compact satu-viewport dengan satu dashboard surface dan empat Quick Actions.
- Header main shell sekarang menampilkan `B Λ R E` + `SAVE OUR DAY` centered dan search tetap di kanan.
- Identity status di Home hanya menampilkan `Local` atau email account sesi; tap diarahkan ke tab **Account**.
- Internal storage memakai actual filesystem capacity dari `BackupStorageRepository`, dengan free space, total space, usage percentage, dan progress bar.
- Access method yang dipilih dipersist melalui `LocalIdentityStore` agar status Root/Non-root dapat dipulihkan pada startup.
- Access status di Home menjadi entry ke existing **Access method** flow.
- Storage status menjadi entry ke existing **Backup storage** flow, dengan return path yang mempertahankan context Main App saat user menekan Back.
- Backup areas menjadi grid 3×2 langsung di dashboard tanpa heading terpisah: Apps, Messages, Call logs, Folders, Wi-Fi, Wallpapers.
- Quick Actions menjadi empat action: Backup apps, Restore apps, Backup folders, Restore data.
- Icon dipilih berdasarkan fungsi masing-masing feature/action dan tetap menggunakan Material icon language yang konsisten.
- **More Apps Actions** sementara diarahkan ke tab Apps; secondary Apps flow belum dibuat sampai Apps flow/capability selesai.

### Truth / Limitation
- Home tidak membuat fake timestamp untuk Last Backup atau Next Backup.
- Karena backup execution dan scheduler execution belum mempunyai runtime capability/evidence, Home saat ini menampilkan `No backups yet` dan `Not scheduled` sebagai state no-data/disabled yang jujur.
- Last/Next Backup belum dapat dinaikkan menjadi functional runtime state sampai backup history dan scheduler capability mempunyai source-of-truth dan execution evidence.
- Account identity/email saat ini masih berasal dari session UI; account backend/session persistence belum implemented.

### Verification
- Source changes committed pada branch `v1.0/rebaseline`.
- GitHub Actions status untuk commit final belum tersedia melalui connector pada saat pencatatan ini; build karena itu **UNVERIFIED**.
- Device/runtime Home verification belum dilakukan.
- Tidak ada perubahan pada `master`.

## 2026-09-19 — Debug APK Build Fix: Home Icon Compatibility

### Incident
Build channel dilaporkan merah setelah implementasi Home Dashboard. Karena workflow status untuk commit sebelumnya tidak dapat dibaca melalui connector pada sesi ini, source dilakukan static inspection terhadap dependency `material-icons-extended` dan penggunaan icon pada Home.

### Fix
- Mengganti icon Home yang paling berisiko terhadap availability/version mismatch:
  - Access `Security` → `Settings`
  - Backup → `CloudUpload`
  - Restore → `CloudDownload`
  - Wallpapers → `Image`
- Tidak mengubah layout, routing, storage logic, atau product scope Home.
- Tidak mengubah `master`.

### Verification Truth
- Source fix: **IMPLEMENTED / COMMITTED**.
- Local/connector build execution: **NOT AVAILABLE** pada sesi ini.
- GitHub Actions result untuk commit fix: **PENDING / UNVERIFIED**.
- Target verifikasi: `:app:assembleDebug` harus SUCCESS.


## 2026-09-19 — Debug Build Recovery: Home Compose Compatibility

### Incident
Build channel masih dilaporkan merah setelah fix icon sebelumnya. Exact CI log belum tersedia melalui connector, sehingga diagnosis langsung dari failed job masih **BLOCKED**.

### Fix
- Menyederhanakan LinearProgressIndicator Home ke overload `progress: Float` yang lebih konservatif terhadap Material3 version compatibility.
- Mengganti icon Restore data ke `Icons.Default.Download` untuk mengurangi dependency terhadap symbol yang berpotensi mismatch.
- Scope tetap terbatas pada build compatibility; tidak mengubah routing atau product behavior yang lain.

### Verification Truth
- Source fix: **IMPLEMENTED / COMMITTED** pada `ab28cbf1e45ede700359afd827acc7b804afd238`.
- Local build: **BLOCKED** karena environment tidak memiliki akses network/dependency cache.
- GitHub Actions build result: **UNVERIFIED**.
- Target: `:app:assembleDebug` SUCCESS.


## 2026-09-19 — Debug Build Fix: Home Preview Contract

### Evidence
CI log menunjukkan `:app:compileDebugKotlin FAILED` karena `PreviewScreens.kt` masih memanggil `HomeScreen {}` dengan contract lama. Compiler melaporkan tujuh parameter baru belum diberikan.

### Fix
- Memperbarui `HomePreview` agar menyediakan `identityType`, `accountEmail`, `accessMethod`, `onOpen`, `onOpenTab`, `onOpenAccessMethod`, dan `onOpenStorage`.
- Tidak mengubah runtime Home behavior.

### Verification Truth
- Source fix: **IMPLEMENTED / COMMITTED** pada `869613f8f9c16994b30e5a8e61afdff0db884b99`.
- CI rerun: **PENDING / UNVERIFIED**.
- Target: `:app:assembleDebug` SUCCESS.

## 2026-09-19 — Visual Refinement Home #318

### Authorization
Pengguna memberikan **GO** setelah review desain Home #318 dan rekonsiliasi dengan Design Lock Home yang sudah ada. Perubahan ini merupakan visual refinement; tidak mengubah content, flow, capability scope, atau product decision yang sudah dikunci.

### Keputusan yang Diterapkan
- Dashboard tetap satu **card/surface besar**; tidak membuat nested card untuk tiap bagian.
- Dashboard memiliki grouping visual internal untuk Identity/Access, Storage, Backup status, dan feature launcher menggunakan hierarchy typography, spacing, dan divider yang subtle.
- Brand B Λ R E pada main shell dibuat lebih berisi dengan weight yang lebih kuat, sementara SAVE OUR DAY tetap ringan dan restrained.
- Storage progress dibuat lebih subtle; primary storage value tetap lebih dominan daripada progress bar.
- Backup status tetap jujur sebagai No backups yet / Not scheduled dan dibuat lebih understated.
- Format waktu BaRe tidak menetapkan AM/PM sendiri; saat actual time tersedia, formatting harus mengikuti system/device time convention.
- Enam backup-area icon diperkecil dan diperlakukan sebagai satu kesatuan icon + label.
- Iconography Home dan primary navigation dimodernisasi ke Material outlined icon language untuk tampilan yang lebih minimalis dan konsisten.
- Quick Actions dibuat lebih compact tanpa menghilangkan breathing room; empat action tetap sama.
- Vertical spacing dipertahankan cukup longgar agar Home tetap one-viewport tanpa dipaksa menjadi cramped.
- More Apps Actions tetap menjadi secondary Apps entry dan belum membuat detail backup/restore Apps baru.
- Bottom navigation hanya dipoles pada icon language dan branding; struktur empat tab tetap.
- Tidak menambahkan decorative content, fake state, atau warna baru di luar visual language yang sudah ada.
### Implementasi
- feature/home/HomeScreen.kt: refinement dashboard spacing/hierarchy, subtle divider, storage bar, compact status, feature-grid icon sizing, Quick Actions sizing, dan More Apps secondary affordance.
- app/BaReApp.kt: main-shell B Λ R E weight/spacing refinement dan outlined Search icon.
- app/AppState.kt: primary bottom-navigation icons dipindahkan ke outlined icon language.

### Verification
- Source changes committed pada v1.0/rebaseline:
  - Home refinement: c97ed15b2a963743f1db4aed66e6b375de6b8e76.
  - Main shell branding/navigation: 7e2f5a50970e090fdf38a2c039ee09fc68f3ec69.
  - Primary navigation iconography: 38bb0ee18318d5f992d12cecd7ebad0eeb6e4484.
- GitHub Actions run **#319** untuk Home refinement: **IN_PROGRESS** saat pencatatan.
- GitHub Actions run **#320** untuk main-shell/icon refinement: **IN_PROGRESS** saat pencatatan.
- Build/runtime visual result: **UNVERIFIED** sampai CI selesai dan APK terbaru diuji pada device.
- master tidak disentuh.

### Berikutnya
- Tunggu CI run #319/#320 dan rekonsiliasi hasil build.
- Jika CI green, install APK hasil terbaru dan lakukan visual runtime verification Home pada device target.
- Bandingkan hasil aktual terhadap Design Lock dan change set ini sebelum menyatakan visual refinement verified.

## 2026-09-19 — Home Visual Refinement #2: Typography, Layers, Actions, dan Icon System

### Authorization
Pengguna memberikan **GO** untuk mengeksekusi langsung refinement Home berdasarkan review runtime screenshot dan Design Lock sebelumnya sampai CI green.

### Keputusan yang Diterapkan
- Brand main shell diselaraskan dengan karakter Welcome: B Λ R E menggunakan 42sp / Medium dengan letter spacing yang sama; SAVE OUR DAY menggunakan 17sp / Light dengan letter spacing yang sama.
- Home sekarang memiliki judul **Dashboard** sebelum surface utama agar struktur halaman konsisten dan tidak terasa seperti kumpulan card tanpa konteks.
- Dashboard tetap **satu card/surface besar**.
- Internal dashboard diberi layer separation yang eksplisit namun tetap tanpa nested card: Identity / Access, Storage, Backup status, Features.
- Identity / Access menggunakan dua kolom dengan slot icon dan typography yang konsisten agar Local/Root tidak terlihat timpang.
- Typography Home dinaikkan ke scale yang lebih konsisten dengan Welcome; body value dan Quick Actions menggunakan body scale yang lebih jelas, tanpa memaksa font mengecil hanya demi viewport.
- Storage progress dibuat lebih tipis dan subdued.
- Quick Actions direstrukturisasi secara visual: tinggi 56dp, radius 12dp, tonal surface yang lebih ringan, icon + label sebagai satu unit, empat action tetap sama.
- Enam feature icons dan empat bottom-navigation icons menggunakan custom lightweight vector iconography di source, tanpa dependency/icon asset tambahan.
- Custom vectors dibuat sebagai ImageVector sehingga tidak menambah library atau asset package baru.
- Search tetap menggunakan Material outlined search karena symbol tersebut sudah sesuai dengan visual language yang dibutuhkan.
- Bottom navigation tetap empat tab dan hanya visual icon language yang berubah; routing/tab structure tidak berubah.
- More Apps Actions tetap secondary entry ke Apps.

### Implementation
- app/src/main/java/com/bare/ui/BareIcons.kt
- app/src/main/java/com/bare/feature/home/HomeScreen.kt
- app/src/main/java/com/bare/app/AppState.kt
- app/src/main/java/com/bare/app/BaReApp.kt
- app/src/main/res/values/strings.xml

### Verification
- CI run **#330** pada commit b0bd1006c5a8be4ebbc9c3f1d0ec09134f5697b7: **COMPLETED / SUCCESS**.
- :app:assembleDebug: **SUCCESS**.
- APK artifact BaRe-v1.0-build-330: tersedia dan tidak expired.
- Signing/artifact verification pada workflow: **SUCCESS**.
- Runtime visual verification: source/build verified; device screenshot baru setelah refinement ini belum tersedia, sehingga visual runtime final tetap **UNVERIFIED** sampai APK #330 diuji pada device.
- master tidak disentuh.
## 2026-09-19 — Home Visual Weight Correction

### Authorization
Pengguna memberikan **GO** untuk koreksi terakhir berdasarkan screenshot build #330.

### Perubahan
- Header dikembalikan ke proporsi sebelumnya; hanya weight B Λ R E yang diperkuat, tanpa memperbesar tinggi/lebar karakter. Tagline dikembalikan ke treatment ringan sebelumnya.
- Quick Actions menggunakan ukuran heading yang sama dengan Dashboard.
- Account status, Access, Internal storage, Last backup, Next backup, iconography, dan More Apps Actions dinaikkan ke foreground/weight yang lebih tegas.
- Feature dan Quick Action icons diberi foreground yang konsisten.

### Verification
- CI run **#333** pada commit `0ad03d14cb5e94553244fb6a8cf420bf2b711ee9`: **COMPLETED / SUCCESS**.
- `:app:assembleDebug`: **SUCCESS**.
- `master` tidak disentuh.
- Screenshot runtime setelah koreksi ini belum tersedia; visual runtime final masih **UNVERIFIED** sampai APK #333 diuji pada device.
## 2026-09-19 — Audit Semantik BaRe Identity ID dan Lifecycle Persistence

### Authorization
Pengguna meminta audit fondasi penentuan BaRe ID sebelum melanjutkan area Apps, khususnya continuity setelah uninstall/reinstall, factory reset, dan pergantian ROM.

### Kondisi Aktual yang Diverifikasi
- `BaReIdentity.identityId` saat ini dibuat dengan `UUID.randomUUID()` pada `LocalIdentityStore.createLocalIdentity()`.
- Identity tersebut dipersist menggunakan `SharedPreferences` dengan preference name `bare_identity`.
- Identity yang sama dipulihkan pada restart aplikasi selama app data masih tersedia.
- `AndroidManifest.xml` saat ini menetapkan `android:allowBackup="false"`, sehingga Android Auto Backup tidak menjadi mekanisme continuity untuk identity ini.
- Karena persistence berada pada app-private data, uninstall menghapus state tersebut; reinstall dapat membuat UUID baru.
- Factory reset / wipe data atau pergantian ROM yang menghapus data pengguna juga tidak dapat mempertahankan UUID tersebut.
- `BackupStorageRepository` menggunakan `identityId` untuk membentuk folder `/storage/emulated/0/BaRe/accounts/<identity-folder>/backups`; perubahan identity ID setelah reinstall berpotensi membuat backup lama berada pada folder identity lama dan tidak otomatis direkonsiliasi dengan identity baru.
- Worklog sebelumnya memang mencatat bahwa detail perilaku uninstall/reset masih terbuka, tetapi implementasi SharedPreferences kemudian dilakukan tanpa menutup lifecycle continuity tersebut.

### Temuan Utama
- `identityId` saat ini secara semantik adalah **Local Installation/State Identity**, bukan bukti identitas device fisik.
- Nama/kontrak `BaRe Identity` saat ini terlalu luas bila `identityId` diperlakukan sebagai ID yang harus tetap sama melewati uninstall, factory reset, atau pergantian ROM.
- Tidak ada satu ID aplikasi biasa yang dapat dijadikan jaminan identitas device lintas semua kondisi tersebut. Android sendiri membedakan lifecycle identifier dan menyarankan menghindari hardware identifier yang tidak dapat di-reset. `ANDROID_ID`, misalnya, dapat berubah setelah factory reset dan perubahan signing key. citeturn1search0turn1search2
- Untuk continuity lintas uninstall/reinstall, diperlukan mekanisme restore/transfer identity; persistence app-private saja tidak cukup. Android menyediakan mekanisme backup/restore, tetapi mekanisme tersebut harus dirancang dan diverifikasi sebagai recovery path, bukan diasumsikan sebagai identity hardware. citeturn0search1turn0search4
- Untuk factory reset atau pergantian ROM, continuity tidak boleh bergantung pada ID device semata. Diperlukan durable external anchor seperti account identity, exported/imported recovery identity, atau backup/restore yang memang membawa identity state.

### Kontrak yang Perlu Dikunci Sebelum Implementasi Berikutnya
- **BaRe Identity ID** = identifier logical identity yang harus tetap sama selama continuity identity berhasil dipulihkan.
- **Installation ID** = identifier instalasi/runtime lokal yang boleh berubah setelah reinstall dan tidak boleh dipakai sebagai canonical identity.
- **Device identifier** = identifier platform/device-scoped bila diperlukan untuk telemetry/security; bukan canonical BaRe Identity dan tidak boleh dipakai untuk menjanjikan continuity lintas reset/ROM.
- **Recovery/Continuity Anchor** = mekanisme yang menghubungkan installation baru dengan BaRe Identity lama setelah state lokal hilang.
- Local identity dan Account identity tetap satu model logical identity, tetapi lifecycle recovery-nya berbeda.

### Gap / Belum Diputuskan
- Belum diputuskan apakah Local Identity dapat dipulihkan melalui Android backup/restore, export/import identity bundle, external storage, recovery key, atau kombinasi beberapa mekanisme.
- Belum ada aturan eksplisit untuk uninstall → reinstall.- Belum ada aturan eksplisit untuk clear app data.
- Belum ada aturan eksplisit untuk factory reset.
- Belum ada aturan eksplisit untuk flash/ganti ROM pada device yang sama.
- Belum ada aturan untuk mendeteksi identity baru yang menemukan backup folder lama dan meminta recovery/import, bukan membuat folder identity baru tanpa penjelasan.- Belum ada contract/versioning untuk identity metadata dan migration.
- Mapping 16 karakter `identityId` ke folder backup masih tercatat sebagai implementation assumption dan belum menjadi format identity canonical yang diverifikasi.

### Status Truth
`LOCAL_IDENTITY_UUID_PERSISTED / INSTALLATION_SCOPED / CROSS_REINSTALL_NOT_SUPPORTED / CROSS_RESET_NOT_SUPPORTED / IDENTITY_LIFECYCLE_CONTRACT_OPEN / RECOVERY_DESIGN_REQUIRED`

### Keputusan Engineering Saat Ini
Tidak melakukan perubahan source pada audit ini. Sebelum melanjutkan capability Apps, identity lifecycle dan recovery contract harus ditutup terlebih dahulu agar artifact/backup path tidak terikat pada ID instalasi yang dapat berubah tanpa mekanisme rekonsiliasi.

## 2026-09-19 — Diskusi Boundary Local Identity: Device Continuity

### Status Diskusi
Pembahasan lanjutan setelah audit BaRe Identity dan referensi Swift Backup. **Belum menjadi contract, requirement final, atau implementasi.** Catatan ini hanya menjaga arah diskusi agar tidak hilang.

### Arah yang Diinginkan Pengguna
Untuk mode **LOCAL**, boundary continuity yang diharapkan adalah **device yang sama**:
- LOCAL tetap persistent pada device yang sama.
- Update APK seharusnya mempertahankan LOCAL identity/state.
- Uninstall → install kembali di device yang sama diharapkan dapat mempertahankan LOCAL identity/state.
- Format ulang / factory reset pada device yang sama diharapkan sebisa mungkin tetap dapat memulihkan LOCAL identity/state.
- Ganti/flash ROM pada device yang sama diharapkan sebisa mungkin tetap dapat memulihkan LOCAL identity/state.
- Pindah ke device lain dianggap boundary yang berbeda dan recovery/migration menjadi lebih kompleks; belum ditentukan mekanismenya.

### Batas Desain yang Sedang Dibahas
- BaRe LOCAL tidak akan mengikuti alur Swift Backup secara langsung. Swift hanya menjadi reference/discovery material.
- APK signing identity tidak digunakan sebagai pembentuk canonical LOCAL ID.
- Jangan mengunci canonical LOCAL identity pada application signing/build identity karena perubahan release/update/signing dapat memutus continuity.
- Nilai hard-code yang saat ini ada di implementasi BaRe juga belum dianggap solusi final.
- BaRe ID, Device ID, Installation ID, dan Account ID tetap perlu dipisahkan secara semantik; mekanisme final belum diputuskan.
- Target continuity harus dibedakan dari mekanisme persistence: persistence biasa cukup untuk restart/update, sedangkan uninstall/reset/ROM membutuhkan recovery evidence yang lebih durable.

### Truth Status
- **USER INTENT:** LOCAL diharapkan persistent selama boundary device yang sama.
- **PROPOSAL:** Device-bound continuity/recovery mechanism untuk LOCAL.
- **UNKNOWN:** mekanisme teknis yang mampu memenuhi continuity setelah uninstall, format/factory reset, dan ROM replacement tanpa account/server.
- **UNKNOWN:** identifier/device evidence apa yang aman, stabil, dan tersedia pada seluruh lifecycle target.
- **NOT AUTHORIZED:** perubahan source atau pemilihan algoritma final identity.
- **NO SOURCE CHANGE:** diskusi ini tidak mengubah implementation.

### Catatan Penting
Harapan "device yang sama selalu persistent" adalah **target continuity**, bukan bukti bahwa Android menyediakan satu identifier universal yang otomatis bertahan pada seluruh kondisi tersebut. Karena itu mekanisme final harus diuji terhadap lifecycle nyata: restart, update APK, uninstall/reinstall, clear data, factory reset/format, dan ROM replacement.

## 2026-09-19 — Swift Backup App-Backup Encryption Reference untuk BaRe Identity Recovery

### Authorization

Pengguna memberikan **GO** untuk memasukkan hasil audit artifact backup app Swift Backup ke `docs/reference.md` dan implikasi yang relevan terhadap BaRe ke `docs/worklog.md`.

### Evidence

Artifact yang dianalisis:

- `backup_swift_com.bare.zip`
- `SwiftBackup-5.1.0-620-decompiled.zip`
- `data_org.swiftapps.swiftbackup.zip`

Artifact `com.bare.dat` terbukti secara static memiliki container `SBA1` v2 dengan encryption method AEGIS-256, KDF Argon2id, salt/key-check/nonce material, parameter KDF, dan authentication material untuk index.

Source decompile menunjukkan:

- KDF SBA menggunakan Argon2id.
- AEGIS-256 menggunakan derived key 32 byte.
- Archive memiliki key-check; key yang tidak cocok ditolak sebagai invalid archive key.
- Standard password strategy membentuk password material secara deterministic dari internal identity context, termasuk Firebase UID dan package context pada source yang diaudit.
- Swift juga menyediakan user-password strategy.

### Kesimpulan untuk BaRe

Temuan ini memperkuat arah **portable encrypted recovery artifact** untuk LOCAL identity continuity:

```text
BaRe ID
  │
  ├── logical identity
  │
  └── Recovery Package
        ├── encrypted identity/recovery payload
        ├── KDF metadata
        ├── integrity/authentication
        └── key-check
```

Recovery package dapat ditempatkan pada `/storage/emulated/0/BaRe/` untuk kemudian dipindahkan user ke media/storage lain sebelum uninstall, factory reset, format, atau ROM replacement. File tersebut **bukan trust anchor dalam bentuk plaintext**; identity dan secret material harus terlindungi oleh encryption/authentication.

### Boundary yang Dipertahankan

- BaRe ID bukan encryption key.
- BaRe ID bukan Installation ID.
- Device Continuity evidence bukan recovery secret.
- Recovery Package bukan canonical identity; recovery package adalah mechanism untuk membuktikan/memulihkan continuity.
- APK signing identity bukan fondasi canonical LOCAL ID.
- Swift tetap hanya reference; implementation BaRe tidak menyalin proprietary implementation Swift.

### Status Truth

- Swift artifact crypto structure: **OBSERVED_STATIC / VERIFIED_STATIC**.
- Swift standard password derivation path: **OBSERVED_STATIC** dari decompiled source.
- Portable encrypted recovery artifact sebagai BaRe direction: **PROPOSAL / REFERENCE-DERIVED**.
- Final BaRe cryptographic construction: **UNDECIDED**.
- Keystore/backup/recovery lifecycle pada device target: **UNVERIFIED**.
- BaRe source implementation: **NOT CHANGED** pada pekerjaan ini.
- `master`: **NOT TOUCHED**.

### Next Verification

Sebelum implementation final, lifecycle proof tetap diperlukan untuk:

1. restart;
2. APK update;
3. uninstall → reinstall;
4. clear app data;
5. factory reset/format;
6. ROM replacement;
7. recovery package export/import;
8. wrong-secret rejection;
9. corrupted/tampered recovery package rejection;
10. recovery identity reconciliation dengan backup directory lama.



## 2026-09-19 — Audit Mode R3–R4–R5: Reconciliation Identity, Storage, Foundation, dan Verification

### Authorization
Pengguna memberikan **GO** untuk audit mode R3–R4–R5. Audit dilakukan tanpa implementasi source, tanpa memilih cryptographic construction final, dan tanpa mengunci phase artificial. R3–R4–R5 diperlakukan sebagai area yang saling beririsan; urutan kerja selanjutnya ditentukan dari dependency dan evidence aktual.

### Scope
Audit mencakup:
- worklog canonical;
- product / architecture / capability matrix;
- source aktual branch `v1.0/rebaseline`;
- identity lifecycle;
- storage boundary;
- recovery/continuity;
- archive/security dependency;
- verification gaps;
- consistency antara dokumentasi dan source aktual.

### Current Repository State — OBSERVED
- Repository: `savie/BaRe`.
- Target branch: `v1.0/rebaseline`.
- `master` tidak disentuh.
- Current source tree sudah lebih maju daripada catatan audit 2026-09-18 yang menyatakan source implementation hanya `MainActivity.kt`. Source aktual sekarang memiliki `app/`, `capability/`, `feature/`, `storage/`, dan `ui/` di bawah `app/src/main/java/com/bare/`.
- Karena itu, catatan "source hanya MainActivity.kt" harus diperlakukan sebagai **stale historical observation**, bukan kondisi aktual terbaru.

### Identity — OBSERVED / VERIFIED STATIC
- `LocalIdentityStore` masih membuat `identityId` menggunakan `UUID.randomUUID()`.
- Identity disimpan pada SharedPreferences `bare_identity`.
- Identity dapat dipulihkan selama app-private data masih tersedia.
- `IdentityType.LOCAL` dan `IdentityType.ACCOUNT` sudah dipisahkan secara semantic pada source/UI.
- Tidak ada evidence source bahwa LOCAL identity saat ini memiliki recovery mechanism durable lintas uninstall/reset/ROM.
- APK signing identity tidak digunakan oleh source saat ini sebagai pembentuk `identityId`.
- Status lifecycle canonical masih terbuka: installation persistence != durable continuity.

### Storage — OBSERVED
- `BackupStorageRepository` membentuk path internal:
  `/storage/emulated/0/BaRe/accounts/<derived-identity-folder>/backups`.
- Folder namespace masih diturunkan dari 16 karakter alphanumeric awal `identityId`.
- Repository saat ini terutama **menginspeksi** storage/capacity/path; audit ini tidak menemukan implementation recovery artifact atau encrypted identity package.
- Manifest menetapkan `android:allowBackup="false"`.
- `targetSdk=35`.
- Tidak ada evidence pada manifest bahwa aplikasi saat ini memiliki broad storage permission.
- Kemampuan nyata untuk membuat/mengubah file publik pada `/storage/emulated/0/BaRe/` masih harus diverifikasi melalui runtime pada target Android/device; jangan menganggap `root.canWrite()` sebagai proof bahwa arbitrary public-path write akan berhasil.

### Recovery / Continuity — OPEN
Target continuity yang dicatat dari user tetap:
- restart → same LOCAL;
- APK update → same LOCAL;
- uninstall/reinstall pada device yang sama → recover same LOCAL;
- factory reset/format pada device yang sama → recover same LOCAL bila recovery evidence tersedia;
- ROM replacement pada device yang sama → recover same LOCAL bila recovery evidence tersedia;
- device lain → boundary berbeda.

Belum ada implementation proof untuk lifecycle di atas.

### Recovery Artifact — PROPOSAL, NOT CONTRACT
Audit Swift Backup memperkuat arah portable encrypted recovery artifact, tetapi:
- final artifact format BaRe belum diputuskan;
- final KDF belum diputuskan;
- final encryption/authentication construction belum diputuskan;
- recovery secret lifecycle belum diputuskan;
- user unlock/password/recovery authority belum diputuskan;
- import/reconciliation behavior belum diputuskan;
- versioning/migration belum diputuskan.

Karena dependency tersebut belum tertutup, **belum boleh membuat artifact implementation dan menyebutnya final**.

### R3–R4–R5 Reconciliation
Label R3/R4/R5 belum didefinisikan sebagai canonical phase contract pada dokumen project; karena itu audit ini tidak mengarang mapping formal.

Namun evidence worklog menunjukkan overlap nyata:
- **R3-area:** structural FE/app boundary sudah dilakukan.
- **R4-area:** FE baseline masih memiliki verification/lock history dan tidak boleh disamakan dengan backend capability verification.
- **R5-area:** capability/shared foundation membutuhkan identity, storage, archive, security, persistence, operation/result, dan verification semantics yang belum seluruhnya terkunci.

Ini diperlakukan sebagai **working classification**, bukan decision baru.

### Critical Dependencies Found
1. Canonical identity semantics harus jelas sebelum backup namespace/recovery reconciliation dikunci.
2. Recovery mechanism harus jelas sebelum continuity lintas destructive lifecycle dapat diklaim.
3. Storage write mechanism harus diverifikasi pada target Android sebelum menentukan artifact path/API.
4. Recovery secret model harus jelas sebelum memilih KDF/encryption implementation.
5. Archive/version/integrity semantics harus selaras dengan recovery package agar migration dan corruption handling tidak terpisah.
6. Runtime test harness/evidence perlu tersedia karena repository belum memiliki proof lifecycle untuk identity/recovery.

### Verification Gaps
Belum terbukti:
- restart identity continuity;
- APK update identity continuity;
- uninstall/reinstall recovery;
- clear-data recovery;
- factory-reset/format recovery;
- ROM replacement recovery;
- creation of actual public recovery file;
- import/recovery of identity from artifact;
- wrong-secret rejection;
- tamper/corruption rejection;
- old backup directory reconciliation after identity recovery;
- artifact atomic write/partial-file recovery;
- runtime storage permission/write behavior on target Android.

### Engineering Conclusion
**Current state: AUDIT / OPEN DESIGN, NOT READY FOR FINAL RECOVERY IMPLEMENTATION.**

Tidak ada source change pada audit ini.

Urutan kerja berikutnya tidak dibuat sebagai Phase 1/2/3 artificial. Setelah open dependencies cukup tertutup, pekerjaan dilakukan langsung berdasarkan highest-priority dependency:
`Safety/Security → Blocker → Prerequisite → Correctness → Verification Gap → Maintainability → Optimization`.

### Next Action Candidate
Candidate paling dekat bukan langsung "buat file recovery", melainkan menutup dependency yang menentukan apakah file tersebut benar-benar portable dan recoverable:
1. audit/verify storage write boundary pada target Android;
2. close identity/recovery semantics;
3. close recovery secret/key lifecycle;
4. baru pilih artifact format dan implementation;
5. runtime-test lifecycle dan recovery;
6. reconcile backup namespace setelah recovery.

Status: **NO SOURCE CHANGE / NO FINAL CRYPTO DECISION / AUDIT RECORDED**.

## 2026-09-19 — GO 1–5: Implementasi Recovery Core, Storage Boundary, Reconciliation, dan Verification Harness

### Authorization
Pengguna memberikan **GO 1–5** untuk menjalankan batch pekerjaan recovery/identity dari hasil audit R3–R4–R5. Scope dijalankan langsung berdasarkan dependency aktual; tidak membuat phase artificial baru.

### Pekerjaan yang Dikerjakan

#### 1. Storage boundary
- Recovery artifact tidak melakukan arbitrary direct write ke /storage/emulated/0/BaRe/ dari aplikasi target Android 10+.
- Boundary implementation menggunakan Android Document Tree URI yang diberikan user/app flow.
- RecoveryStorageBoundaryResolver menandai mode portable recovery sebagai DOCUMENT_TREE.
- Artifact filename default: bare-recovery-v1.bare.
- Write path menggunakan .partial → write → read-back decode/verify → rename ke nama final.
- Jika finalize gagal, partial artifact dihapus bila provider mengizinkan.

#### 2. Identity + recovery semantics
- LocalIdentityStore tetap menggunakan UUID sebagai identifier logical LOCAL yang dibuat saat identity belum ada.
- Recovery package hanya boleh membawa IdentityType.LOCAL.
- Recovery restore tidak boleh diam-diam menimpa LOCAL identity yang sudah berbeda.
- Jika identity lokal belum ada, payload recovery dapat menjadi sumber untuk memulihkan identity lama.
- Jika identity lokal sudah ada dan sama, restore bersifat idempotent.
- Jika identity lokal sudah ada tetapi berbeda, restore ditolak sebagai conflict.
- Setup-complete dan access-method metadata ikut dipulihkan sebagai metadata lifecycle, bukan secret.

#### 3. Recovery secret / key lifecycle
- Recovery password diperlakukan sebagai user-held recovery secret; tidak disimpan oleh recovery codec.
- Artifact memakai KDF PBKDF2-HMAC-SHA-256 dengan parameter versioned dan 310.000 iterations.
- Encryption/authentication memakai AES-256-GCM.
- Salt 16 byte dan nonce 12 byte dibuat random per artifact.
- Header hanya berisi metadata format/KDF/salt/nonce; identity ID tidak ditulis plaintext.
- GCM authenticated data mengikat header terhadap ciphertext.
- Wrong password dan tampering menyebabkan decode gagal.
- Construction ini adalah BaRe implementation decision untuk current recovery core, bukan salinan proprietary Swift implementation.

#### 4. Recovery artifact implementation
File baru:
- app/src/main/java/com/bare/recovery/RecoveryPackageCodec.kt
- app/src/main/java/com/bare/recovery/RecoveryArtifactRepository.kt
- app/src/main/java/com/bare/recovery/RecoveryStorageBoundary.kt

LocalIdentityStore sekarang memiliki:
- toRecoveryPayload()
- restoreFromRecovery(...)

Recovery codec menggunakan container version BREC v1 dan payload terenkripsi.

RecoveryArtifactRepository mendukung:
- export ke Document Tree;
- read-back verification;
- atomic-ish .partial → rename final;
- import/decode dari artifact URI.

#### 5. Verification + reconciliation
Test baru:
- round-trip encode/decode;
- wrong-password rejection;
- tamper rejection;
- cleartext-header check agar identity tidak berada di header plaintext.

app/build.gradle.kts menambahkan JUnit 4.13.2 untuk unit test.

Identity reconciliation sekarang conflict-safe:
- no current identity → restore;
- same identity → idempotent;
- different current identity → reject.

### Status Truth

- Recovery core source: IMPLEMENTED.
- Identity export/import semantics: IMPLEMENTED STATIC.
- Wrong-secret rejection: UNIT TEST IMPLEMENTED; CI RESULT PENDING.
- Tamper rejection: UNIT TEST IMPLEMENTED; CI RESULT PENDING.
- Artifact write/read-back path: IMPLEMENTED STATIC.
- Public /storage/emulated/0/BaRe/ runtime creation: UNVERIFIED.
- Document Tree grant/runtime behavior: UNVERIFIED.
- Actual uninstall → reinstall recovery: UNVERIFIED.
- Actual clear-data recovery: UNVERIFIED.
- Actual factory reset/format recovery: UNVERIFIED.
- Actual ROM replacement recovery: UNVERIFIED.
- Runtime import/recovery UI flow: NOT WIRED YET.
- Existing backup directory reconciliation after real recovery: STATIC SEMANTICALLY COMPATIBLE because restored identity produces the same identity-derived namespace, but runtime discovery/reconciliation is UNVERIFIED.
- master: NOT TOUCHED.

### Important Engineering Boundary
Batch 1–5 berhasil menutup core implementation dependency, tetapi tidak mengubah static implementation menjadi runtime proof. Device lifecycle tetap membutuhkan APK install/update/reinstall/reset/ROM evidence. Tidak boleh menyatakan end-to-end recovery VERIFIED sebelum evidence tersebut tersedia.

### Commit Trail
- Recovery codec: e43e4ba9c5507108c1c4e17ae9bd4569dfa9cdf7
- Artifact repository: 2ac84a0215f873c2b2dfc7accc43bd959e318108
- Storage boundary: 2b116dd3d4ee68d55dd874ad7548189a5eac87b9
- Recovery tests: 264fb6df2328fcc92244428ecd0a888e8ad2c4ef
- Identity reconciliation: a5fa71613a2c3249f116da44cd5bda6b9ecdfc15
- Test dependency: 9ea04118abd82eeeb9ce851210faf7fd763e7a29
- Test correction: 3c73d24f524b21182bf681263a530e28ab2c6d30

### Next Verification
1. CI :app:assembleDebug + unit test.
2. Install/update APK pada device.
3. Exercise Document Tree selection ke folder recovery yang dipilih user.
4. Export artifact → inspect filename/header → import dengan password benar.
5. Wrong password dan tamper test pada artifact nyata.
6. Clear app data/uninstall → reinstall → import → verify same BaRe ID.
7. Verify existing /BaRe/accounts/<identity-folder>/backups namespace kembali ke identity yang sama.
8. Factory reset/format dan ROM replacement hanya setelah recovery artifact dipindahkan ke storage/media yang tetap tersedia.

## 2026-09-19 — Recovery UI Wiring dan Current Verification State

### Implementation
- Menambahkan Recovery screen pada jalur Account → Import / Export.
- Recovery screen menggunakan Android Document Tree untuk memilih folder artifact export.
- Import menggunakan Android document picker.
- Password hanya berada di UI state sementara dan dikirim ke recovery codec; tidak dipersist.
- Export melakukan write/read-back verification melalui RecoveryArtifactRepository.
- Import melakukan decode lalu conflict-safe identity restore melalui LocalIdentityStore.
- Setelah recovery berhasil, app kembali ke Main App dengan restored LOCAL identity.
- Tidak mengubah Home atau struktur 4 tab utama.

### Source
- app/src/main/java/com/bare/feature/account/RecoveryScreen.kt
- app/src/main/java/com/bare/app/BaReApp.kt

### Verification Truth
- Recovery crypto core local JVM harness: **VERIFIED** — round-trip, wrong-password rejection, dan tamper rejection PASS.
- GitHub Actions result untuk source batch terakhir: **UNVERIFIED** melalui connector karena workflow run push tidak tersedia pada endpoint yang dapat dibaca; tidak menganggap source/build verified.
- Android Document Tree picker/runtime: **UNVERIFIED**.
- Export/import artifact nyata pada device: **UNVERIFIED**.
- Uninstall/reinstall recovery: **UNVERIFIED**.
- Factory reset/ROM recovery: **UNVERIFIED**.
- master: **NOT TOUCHED**.

### Important
Current implementation sudah menyediakan jalur source/UI untuk export/import recovery, tetapi **belum boleh disebut end-to-end VERIFIED** sebelum APK dibuild dan diuji pada device target.


## 2026-09-19 — Audit Ulang Welcome → Storage Setup → Access Method → Sebelum Home

### Authorization
Pengguna memberikan **GO** untuk satu kali audit ulang dengan scope eksplisit: menelusuri actual flow dari Welcome sampai tepat sebelum Home, menghubungkan hasilnya dengan foundation identity/storage/recovery yang sudah ada, dan memperbarui worklog. Audit ini tidak mengubah Home. Perubahan FE hanya dilakukan bila audit membuktikan flow/text saat ini tidak merepresentasikan capability yang sudah ada.

### Scope yang Dicek
Audit source aktual branch `v1.0/rebaseline` mencakup:
- `BaReApp.kt` sebagai orchestration flow;
- `WelcomeScreen` dan `LocalSetupConfirmation`;
- `StorageSetupScreen`;
- `AccessMethodScreen`;
- `LocalIdentityStore`;
- `BackupStorageRepository`;
- boundary menuju `StartScreen.APP`;
- existing recovery foundation sebagai dependency downstream;
- worklog sebagai continuity record.

### Actual Flow — OBSERVED STATIC

```textWELCOME
  ↓
pilih LOCAL
  ↓
### FOLLOW-UP

- Final header wiring commit: `a420bacdcd842b8b84e061b98c095bdd23aaeebb`.
- Workflow definition confirms push-triggered Android build for `v1.0/rebaseline`; no run is currently observable through the available workflow-run lookup.- Build and device verification therefore remain **PENDING / UNVERIFIED**.


## 2026-09-21 — G1 Apps Filter Source Naming + CI #454 Fix

### Authorization
Pengguna memberikan **GO** dengan urutan eksplisit: rename/merge → fix compile → inspect diff → commit → cek CI #455 → update worklog. Scope G1 yang sudah disepakati tidak diubah.

### Change
- AppsG1Screen.kt renamed to AppsFilter.kt; internal G1 numbering tidak lagi dipakai sebagai nama source file.
- Composable renamed from AppsG1Screen to AppsFilterScreen agar boundary source mengikuti fungsi filter/options, bukan traceability group.
- Fixed CI #454 compile errors in the filter surface: Compose padding import, correct draw.clip import, and Card click handling aligned with the existing project pattern.
- Existing G1 behavior/scope remains unchanged: local app search, A–Z search-by, app-type filtering, enabled-status filtering, name sorting, and device-backed installed-app data.

### Verification Truth
- Static diff inspected after the source rename/fix: VERIFIED for requested rename/fix scope.
- CI #454 root cause: VERIFIED from the reported compiler output; source issues were compile-time Compose/API usage, not Android device data logic.
- CI #455: UNVERIFIED / NOT OBSERVABLE through the available GitHub workflow-run/status connector for the resulting commit; no workflow run or status was returned.
- Runtime/device verification: UNVERIFIED.

### Commit Trail
- Rename/fix source: 893ed238fb9de0c3f75dc4f183750c95fd8bf760
- Wire renamed filter screen: f9b12d455e1b32fd10bdb78209c333669027baac
- Remove obsolete source: 2f569e51f880225d490e2c90f9e292e558014896

### Current Truth
The source naming/compile-fix change is committed on v1.0/rebaseline. This does not establish CI/build/runtime verification until an observable CI result or equivalent build evidence exists.


## 2026-09-21 — G1 Apps Options UX Correction

### Authorization
Pengguna memberikan GO untuk memperbaiki hasil runtime G1 berdasarkan evidence device dan reference yang sudah disepakati. Scope tetap G1; tidak mengubah discovery baseline atau membuat capability baru di luar inventory.

### Change
- Sort dipindahkan seluruhnya ke bottom sheet; sort control tidak lagi berada di atas list.
- Count/reset row di atas list dihapus dari surface utama.
- Local app search tetap satu fungsi dengan icon header; search field tidak lagi memiliki tombol Close. Icon Search menjadi toggle open/close.
- Terminologi SEARCH BY diganti menjadi SORT BY.
- Sort options mengikuti reference: Name, Install date, Update date, Backup date, Backup size, Date used, App size. Name/install/update/app size memakai data Android yang tersedia; backup/date-used options tetap disabled karena belum ada verified data source.
- Filter surface diperluas mengikuti reference: Favorites, App Labels, App type, On-device backup, Cloud sync, Install status, Enabled status, Google Play install source, dan Miscellaneous backup-related filters.
- Android-backed filters yang benar-benar memiliki source sekarang berfungsi: App type, Enabled status, Google Play install source. Install/update/app-size sorting juga memakai PackageManager/device data.
- Backup/cloud/label/favorite filters yang belum memiliki verified local data source ditampilkan disabled; tidak ada metadata yang difabrikasi.

### Verification Truth
- Source inspection before change: VERIFIED.
- Reference coverage: VERIFIED against docs/reference.md APP-05 through APP-18 and section 24.1C.
- Runtime/device behavior after change: PENDING CI/device evidence.
- Backup/cloud metadata capability: UNVERIFIED / unavailable in current installed-app repository.


## 2026-09-21 — Apps Sort/Search Reference Alignment

- Authorization: explicit **GO** from user.
- User-provided reference intent: follow the reference UI for the Apps options surface first; keep behavior/code independently implemented.
- Changes:
  - Local app search is constrained to a single-line field and the app list now occupies the remaining content area instead of leaving a large empty region.
  - Sort options are one horizontally scrollable row.
  - Sort items use an icon with the label below it.
  - Clicking the selected sort item again toggles ascending/descending; there is no separate Order row.
  - Selecting a different sort starts at ascending.
  - Reference headings are aligned to **SORT** and **FILTER**; reset filters is surfaced with the filter heading.
- Functional truth:
  - Device-backed sort remains Name, Install date, Update date, and App size.
  - Backup date/size and Date used remain disabled because their backing metadata is not verified.
- Verification:
  - Source change committed to `v1.0/rebaseline` at `2af3f5a3c2092ac34190b2bb36e6e4d6722f4b0c`.
  - GitHub Actions run #463 is observed **in progress**; compile/build result is therefore **UNVERIFIED/PENDING** at this record point.
  - Runtime/device verification is still pending.


## 2026-09-21 — Apps Filter Capability Extension

- Authorization: explicit **GO** from user.
- Scope: continue Apps Filter surface before moving to another functional group; reference UI remains the visual baseline while behavior is independently implemented.
- Implemented:
  - Sort icon surface reduced from 64dp to 56dp with 26dp icons for balance.
  - Date used sort is now device-backed through Android Usage Access; when access is unavailable, tapping Date used opens Android Usage Access settings. No usage data is fabricated.
  - Latest usage time is aggregated per package from Android UsageStats.
  - Favorites filter is now backed by local per-device organization state.
  - App Labels are now backed by local per-device organization state, with label selection available directly from the filter surface.
  - App Management now provides functional Favorite + Labels persistence used by the filter surface.
  - Install status and backup/cloud-derived options remain deferred because they require the verified backup inventory / G3 dependency.
- Verification truth:
  - Source changes are committed on `v1.0/rebaseline`; compile/runtime verification is pending CI/device execution.


## 2026-09-21 — Apps Sort Context and Active Filter Chips

- Authorization: explicit **GO** from user.
- Implemented:
  - Sort controls reduced to 48dp circle / 20dp icon.
  - App cards now expose sort-context metadata for device-backed sort modes: install date, update date, date used, and app size.
  - Active Favorites, Labels, App Type, Enabled Status, and Google Play filters are surfaced as removable chips above the app list.
  - Removing a chip updates the same filter state used by the options sheet.
  - Date used continues to use the explicit Android Usage Access path; no permission bypass was introduced.
  - Backup-date and backup-size presentation remain deferred until verified backup inventory data is available; no metadata is fabricated.
- Verification truth: source committed; CI/device verification pending.


## 2026-09-21 — Apps G1 Stop Point + Return to Onboarding Permission/Capability Audit

### Authorization
Pengguna memberikan **GO** untuk: merekam hasil engineering sampai CI **#475**, menghentikan sementara ekspansi Apps, lalu mengaudit kembali fondasi onboarding/access capability sebelum pekerjaan feature berikutnya dilanjutkan.

### Current Stop Point — Apps
- Functional inventory Apps tetap menggunakan **54 capability/workflow items**: APP-01 foundation + G1–G7.
- Pekerjaan Apps yang sudah dikerjakan pada checkpoint ini mencakup G1 discovery/filtering surface dan refinement yang berujung pada `AppsFilter.kt`.
- Android Back untuk child App Workspace sudah diperbaiki sebelumnya dan diverifikasi oleh runtime report user.
- CI **#475 = PASS** untuk commit `9fe80a4816afd46cf5c9d9e9adae3a0828318c2f` (`fix(apps): correct remaining relative time interpolation`).
- Commit tersebut memperbaiki interpolasi relative-time yang sebelumnya menyebabkan CI failure #473/#474.
- **STOP APPS FEATURE EXPANSION HERE.** G1 tidak dinyatakan 100% selesai secara product parity; pekerjaan dihentikan sebagai checkpoint agar fondasi awal dapat direkonsiliasi terlebih dahulu.

### Why Work Returns to Onboarding
Current product flow source masih memiliki urutan:

```text
WELCOME
  ↓
LOCAL / ACCOUNT
  ↓
STORAGE SETUP
  ↓
ACCESS METHOD (NON-ROOT / ROOT)
  ↓
HOME
```

Flow ini sudah memiliki functional/access verification path, sehingga pekerjaan berikutnya bukan membangun ulang flow dari nol. Fokus audit sekarang adalah **permission/capability completeness dan representation** pada access method, terutama ketika user memilih Local → Root tetapi root/KSU tidak tersedia.

### Audit — OBSERVED FROM CURRENT BaRe SOURCE

**AndroidManifest saat ini hanya mendeklarasikan:**
- `MANAGE_EXTERNAL_STORAGE`
- `QUERY_ALL_PACKAGES`
- `PACKAGE_USAGE_STATS`

Tidak ditemukan pada manifest saat ini deklarasi runtime permission capability untuk domain data seperti:
- Contacts (`READ_CONTACTS` / `WRITE_CONTACTS`)
- SMS/MMS (`READ_SMS`, `RECEIVE_SMS`, `SEND_SMS` sesuai capability yang nantinya benar-benar digunakan)
- Call logs (`READ_CALL_LOG`, `WRITE_CALL_LOG` sesuai operation)
- Notifications (`POST_NOTIFICATIONS`)
- Wi-Fi/nearby capability (`NEARBY_WIFI_DEVICES` dan versi-dependent location/network permissions bila capability tersebut membutuhkan akses tersebut)

**AccessMethod / root state:**
- `AccessCapabilityResolver` saat ini hanya melakukan probe `NON_ROOT` dan `ROOT`.
- `NonRootCapabilityProvider.probe()` selalu mengembalikan success berbasis “Android app-visible APIs”.
- `RootCapabilityProvider.probe()` menjalankan `su -c id` dan hanya menganggap root tersedia jika output menunjukkan `uid=0`.
- Tidak ada layer permission-set reconciliation pada `AccessCapabilityResolver` yang mengubah hasil root/non-root menjadi daftar permission/capability yang granted/required/missing.

**Onboarding UI:**
- Access Method sudah menjelaskan Non-root dan Root melalui descriptive text.
- Error access method hanya menerima satu `reason` string dari resolver.
- Storage setup menangani `MANAGE_EXTERNAL_STORAGE`/canonical storage boundary secara terpisah.
- Tidak ada current onboarding surface yang menampilkan matrix `granted / missing / unavailable` untuk capability data seperti Contacts, SMS, Call Logs, Wi-Fi, notifications, dan capability lain.

### Important Boundary
Root availability dan Android runtime permission adalah **dua state berbeda**.

```text
ROOT/KSU
  ≠
ANDROID RUNTIME PERMISSIONS
  ≠
SPECIAL ACCESS
  ≠
CAPABILITY READY
```

Root `uid=0` yang terdeteksi tidak membuktikan bahwa seluruh Android runtime permission sudah granted. Sebaliknya, non-root tidak otomatis berarti seluruh capability data unavailable; masing-masing capability harus dinilai terhadap Android API, permission, access mode, version, OEM/device constraint, dan verification path.

### Permission/Capability Audit Matrix — CURRENT

| Capability area | Current source evidence | Onboarding status | Next verification |
|---|---|---|---|
| Root | `su -c id` → `uid=0` | FUNCTIONAL probe | Device verification already exists for root/no-root state; retain |
| Storage | `MANAGE_EXTERNAL_STORAGE` + storage repository checks | FUNCTIONAL path | Keep separate from data permissions |
| Installed app discovery | `QUERY_ALL_PACKAGES` + PackageManager | FUNCTIONAL in Apps | Already used by Apps baseline |
| Usage stats | `PACKAGE_USAGE_STATS` + Usage Access settings path | FUNCTIONAL for Date used | Keep capability-specific |
| Contacts | No manifest/runtime request layer found | MISSING capability integration | Audit exact read/write needs before implementation |
| SMS/MMS | No manifest/runtime request layer found | MISSING capability integration | Audit exact read/write needs before implementation |
| Call logs | No manifest/runtime request layer found | MISSING capability integration | Audit exact read/write needs before implementation |
| Wi-Fi | No dedicated Wi-Fi permission/capability resolver found in current onboarding | MISSING capability integration | Audit API/version-specific requirements |
| Notifications | No `POST_NOTIFICATIONS` declaration/request layer found | MISSING | Only add if product capability actually requires it |
| Root-assisted deeper backup | Root probe exists, but no central capability matrix | PARTIAL | Derive capability availability from actual operation dependencies |

### Status Truth
- Apps G1 checkpoint through CI #475: **VERIFIED at CI level**.
- Apps product parity: **NOT COMPLETE / intentionally paused**.
- Onboarding functional flow: **EXISTING / not being rebuilt**.
- Root probe: **IMPLEMENTED STATIC**; runtime state depends on device.
- Android permission completeness for data capabilities: **UNVERIFIED / currently incomplete in source**.
- “Root granted means all required permissions are granted”: **FALSE as an engineering assumption**.
- Exact permission set for every future capability: **UNKNOWN until capability-by-capability audit is completed**.

### Next Work Order
Highest-priority next work is **NOT another Apps feature**. It is:

1. inspect current BaRe permission declarations/request paths;
2. map each capability to required Android permission/special access/root dependency;
3. distinguish `GRANTED`, `MISSING`, `NOT_APPLICABLE`, `UNAVAILABLE`, and `BLOCKED`;
4. determine which permissions belong in onboarding versus just-in-time feature flows;
5. update Access Method UI only after the capability matrix is verified;
6. implement only the missing permission/capability plumbing that is actually required;
7. build + CI + device verification;
8. update this worklog before returning to Apps G2/G3/etc.

**Continuity anchor:** Apps work is intentionally paused at CI #475. This worklog entry is the handoff/return point: **audit onboarding permission/capability completeness first, then resume Apps capability expansion from the recorded checkpoint.**

## 2026-09-21 — Onboarding Flow Rebaseline: Access Method Before Storage Setup

### Authorization
Pengguna memberikan **GO** untuk mengubah urutan onboarding menjadi:

```text
WELCOME
  ↓
LOCAL / ACCOUNT
  ↓
ACCESS METHOD (NON-ROOT / ROOT)
  ↓
STORAGE SETUP
  ↓
HOME
```

### Change
- Local setup confirmation sekarang menuju Access Method.
- Login dan Sign Up selesai menuju Access Method untuk initial setup.
- Access Method tetap melakukan capability probe untuk selected method.
- Setelah probe berhasil, flow sekarang menuju Storage Setup dan belum langsung menandai setup complete.
- Identity awal tetap dipastikan tersedia sebelum Storage Setup.
- Storage Setup menjadi tahap yang menyelesaikan storage initialization lalu menandai setup complete dan masuk Home.
- Back navigation diselaraskan: Access Method → Welcome/Login; Storage Setup → Access Method.
- Existing restored identity yang belum setup complete diarahkan kembali ke Access Method.

### Verification Truth
- Static source diff: **VERIFIED** terhadap scope perubahan flow.
- Commit flow change: `9acf2d54f49968db91fa4e6bca64830e13217001`.
- Follow-up correction untuk restored incomplete setup: `77d61ac3b3224efb584c8aa4827865509ea74ff4`.
- GitHub workflow lookup untuk commit terakhir: **UNVERIFIED / NO RUN OBSERVED** melalui connector.
- Device/runtime verification: **UNVERIFIED**.

### Boundary
Perubahan ini hanya merebaseline urutan onboarding. Permission/capability matrix belum diimplementasikan; audit capability tetap menjadi pekerjaan berikutnya setelah flow foundation ini.


## 2026-09-21 — Root Permission Confirmation UX + Grant Path

### Authorization
Pengguna memberikan **GO** untuk menyederhanakan UX konfirmasi Root dengan pola yang dipelajari dari Swift Backup: satu confirmation dialog yang menjelaskan permission/capability set yang akan disiapkan, lalu satu aksi **Grant permissions**. Implementasi BaRe dibuat sendiri; reference hanya digunakan untuk mempelajari workflow/UX.

### Change
- Manifest BaRe sekarang mendeklarasikan permission yang dibutuhkan oleh Root onboarding baseline: SMS, Contacts, Call Logs, Notifications, serta legacy external storage untuk API lama.
- Root capability provider sekarang memiliki root grant path sendiri menggunakan su.
- Android runtime permissions di-grant melalui pm grant.
- All Files Access pada Android R+ disiapkan melalui AppOps android:manage_external_storage, bukan dianggap sebagai runtime permission biasa.
- Access Method Root menampilkan confirmation dialog sebelum grant dijalankan.
- Dialog mencantumkan Storage / All files access, SMS, Call logs, Contacts, Notifications (API 33+), dan Installed apps.
- Setelah konfirmasi, BaRe menjalankan root grant path lalu melakukan root capability probe sebelum melanjutkan ke Storage Setup. Jika sebagian grant tidak dapat dikonfirmasi, root probe tetap menjadi gate utama dan hasil partial grant dipertahankan sebagai diagnostic state untuk verifikasi capability berikutnya.
- Non-root flow tidak dipaksa melewati root grant dialog.

### Verification Truth
- Source changes committed and readable from branch: **VERIFIED STATIC**.
- Runtime permission grant: **UNVERIFIED** sampai diuji pada device rooted yang sesuai.
- Root AppOps behavior untuk All Files Access: **UNVERIFIED** sampai diuji pada device target.
- Build/CI: **UNVERIFIED**; belum ada successful workflow run yang dapat dijadikan bukti.
- Device UX confirmation: **UNVERIFIED**.

### Boundary
UX mengikuti pola reference secara konseptual, tetapi source/code BaRe dibuat independen. Reference tidak menjadi implementation dependency.

### Next
1. Build/CI verification.
2. Device test Root confirmation → grant → storage.
3. Verify actual permission state setelah grant.
4. Verify non-root state dan capability limitations secara terpisah.
5. Perbaiki hanya failure yang terbukti dari runtime evidence.

## 2026-09-21 — CI #485 Compile Failure: WRITE_SMS + Root Grant Copy

### Observed
- CI #485 failed at `:app:compileDebugKotlin` with `Unresolved reference 'WRITE_SMS'` in `RootCapabilityProvider.kt`.
- Root cause: the Kotlin Android SDK surface used by the build does not expose `Manifest.permission.WRITE_SMS` as a resolvable constant in this source context.
- Root grant dialog description contained the product name `BaRe`; this was changed to avoid duplicating the branded display name already defined by `app_name`.

### Change
- Replaced `Manifest.permission.WRITE_SMS` with the canonical permission string `android.permission.WRITE_SMS` in the root grant permission set.
- Changed `root_grant_dialog_description` to: `Grant the required permissions in one step using Root access.`

### Verification
- Static source re-fetch on `v1.0/rebaseline` confirms the permission literal and updated string are present.
- New branch head: `d5668077f6588b8e1ea524b66cc76f5d6d153b32`.
- CI workflow result for the new head: **UNVERIFIED / NO RUN OBSERVED** through the available workflow connector at record time.
- Build and device/runtime behavior remain **UNVERIFIED** until a new CI/device run provides evidence.

## 2026-09-21 — Root Grant Implementation + Fresh-Install Runtime Checkpoint

### Observed / user-reported runtime evidence
- Setelah fresh uninstall/install, onboarding berhasil kembali melewati flow dan aplikasi saat ini sudah mencapai **Home**.
- Fungsi yang sebelumnya sudah diuji tidak dilaporkan mengalami error pada checkpoint ini selama identity lokal/account tetap memiliki salah satu artifact yang diharapkan: `bare` identity atau `*v2.bare`.
- Perpindahan state **Root ↔ Non-root** belum memiliki evidence runtime yang cukup untuk dinyatakan verified; mekanisme internal/device root manager tidak disimpulkan dari keberhasilan masuk Home.

### BaRe implementation boundary
- Root onboarding memiliki confirmation dialog lalu grant path sebelum Storage Setup.
- Grant path BaRe menggunakan privileged shell melalui `su`; mekanisme tersebut menjadi jalur eksekusi aktual yang dipakai source saat ini.
- `pm grant` digunakan untuk permission runtime yang menjadi bagian dari Root onboarding baseline.
- All Files Access Android R+ disiapkan melalui AppOps `android:manage_external_storage`.
- Jika root manager/device menyediakan shell melalui `su`, BaRe mengandalkan entrypoint tersebut; dukungan terhadap manager tertentu tidak dinyatakan verified tanpa device evidence spesifik.

### Verification truth
- Fresh-install → Home: **USER-REPORTED OBSERVED**.
- Existing tested functions at this checkpoint: **USER-REPORTED NO ERROR** under the stated identity-artifact condition.
- Root ↔ Non-root switching semantics: **UNVERIFIED**.
- Actual permission state after grant: **UNVERIFIED**.
- Actual All Files Access state: **UNVERIFIED**.
- Actual File R/W and recovery artifact write after Root grant: **UNVERIFIED**.
- CI/build for the current documentation head: **UNVERIFIED / NO RUN OBSERVED** through the available workflow connector.

### Boundary
Reference evidence about Swift Root/Shizuku permission UX is recorded in `docs/reference.md`. This worklog records only BaRe implementation/runtime state and does not treat Swift behavior as proof of BaRe behavior.

## 2026-09-21 — Home Shell Rework: Scroll Navigation, Search Scope, Access/Storage Switching

### Authorization
- Pengguna memberikan **GO** untuk mengerjakan Home shell sesuai scope diskusi terakhir.

### Implemented
- Bottom navigation tetap 4 tab dan mempertahankan isi/navigation contract yang ada; sekarang memiliki scroll-aware visibility: scroll down menyembunyikan bar, scroll up menampilkannya kembali.
- Home search tetap satu global entry point dari shell, tetapi scope implementasi saat ini dibatasi pada data yang benar-benar tersedia: installed apps dan package names. Tidak menggunakan web/external search engine dan tidak mengarang index untuk domain yang belum memiliki data fungsional.
- Access pada Home sekarang menjadi post-onboarding switching surface. Root/Non-root dipilih dari bottom sheet dan diproses langsung; tidak kembali ke onboarding dan tidak menampilkan Root confirmation dialog kedua.
- Storage pada Home sekarang menjadi post-onboarding switching surface. Internal dan External menjalankan `initializeStorageForIdentity`, termasuk update/write recovery artifact `bare-recovery-v2.bare`; Cloud tetap mockup dan kembali ke Home tanpa mengklaim remote persistence.
- Dashboard tetap sebagai satu card/surface tersendiri. Quick Actions tetap berada di bawah Dashboard tanpa heading `Quick actions` dan tanpa membungkus keduanya ke dalam surface baru.
- Dashboard boundary diubah menjadi outline putih dan spacing internal direbalance ringan.

### Verification
- Static source re-fetch: **VERIFIED** untuk Home, MainShell, SearchScreen, storage/access switching flow, dan updated search scope string.
- Home implementation checkpoint commit: `2cca4992be184794ce1854995acda4cbd81eb3b2`.
- CI workflow lookup for current HEAD: **UNVERIFIED / NO RUN OBSERVED**.
- Commit status lookup: **UNVERIFIED / NO STATUS OBSERVED**.
- Device/UI runtime after this Home rework: **UNVERIFIED**.

### Boundary
- Apps, Schedules, Account content, Cloud storage implementation, and other Home capability work remain outside this slice.
- Search engine/index architecture is intentionally not finalized beyond the currently available installed-app data source.



## 2026-09-21 — Build Failure Triage: Home Shell Callback Contract

### Observed
- User-provided debug build failed at :app:compileDebugKotlin.
- BaReApp.kt errors at lines 240–241 came from the newly added MainShell callback parameter being passed in the wrong order: the BaReIdentity callback was being supplied where AccessMethod was expected.
- PreviewScreens.kt still used the old HomeScreen contract and supplied removed parameters onOpenAccessMethod / onOpenStorage, while omitting identityId and onAccessChanged.
- libandroidx.graphics.path.so strip warning is packaging behavior and was not the compile failure.

### Change
- Reordered MainShell callbacks so onAccessChanged and onRecoveryRestored match the function signature.
- Updated HomePreview to the current HomeScreen contract.

### Verification
- Static re-fetch after changes: VERIFIED for the affected call sites.
- Previous build result remains FAILED; a new build after the fix has not yet been observed.
- Current build status: UNVERIFIED until the next compile/build result.
\n

## 2026-09-21 — Main Navigation 4-Tab Visual Rework: KSun-like Floating Bar

### Authorization
- Pengguna memberikan **GO** untuk mengerjakan ulang **Main navigation 4-tab** agar secara visual lebih mendekati reference KSun.

### Scope
- Scope hanya **main navigation 4-tab** (`Home`, `Apps`, `Schedules`, `Account`).
- Access dan Storage tidak disentuh; keduanya tetap sebagai temporary Home entry point dan nantinya dipindahkan ke Settings.
- Existing scroll-aware hide/show behavior dipertahankan.
- Tab semantics dan pager navigation tidak diubah.

### Implemented
- Bottom navigation diubah dari full-width bar menjadi **floating compact navigation surface** yang terpusat.
- Label tab dihilangkan sehingga pola visual menjadi icon-first seperti reference KSun.
- Selected tab tetap memiliki visual indicator melalui `primaryContainer`.
- Bar menggunakan rounded shape, compact width, dan tonal elevation untuk mendekati floating navigation reference.
- Four-tab click/swipe navigation contract tetap sama.
- Scroll down/up visibility behavior tetap dipertahankan.

### Verification
- Static source change: **COMMITTED** pada `v1.0/rebaseline`, commit `edf88cd7c110f998f9e0f1bb81f2cefd6d3586e0`.
- Static source re-fetch/build verification: **PENDING**.
- Device/UI visual verification: **UNVERIFIED** sampai APK baru dijalankan pada device.
- CI result untuk commit ini belum dijadikan bukti sampai workflow result terobservasi.

### Boundary
- Ini adalah **visual/navigation shell rework**, bukan perubahan destination semantics.
- Access/Storage relocation ke Settings tetap deferred.
## 2026-09-21 — Build Failure Triage: Floating Navigation `clip` Import

### Observed
- User-provided debug build failed at `:app:compileDebugKotlin`.
- Exact compiler error: `BaReApp.kt:387:26 Unresolved reference 'clip'`.
- The new floating NavigationBar used `Modifier.clip(RoundedCornerShape(28.dp))`, but the required Compose extension import was missing.- No other compile error was reported in the supplied log.

### Root Cause
- Missing source import for `androidx.compose.ui.draw.clip`.
- This is a compile-time source issue introduced by the navigation visual rework; it is not a runtime/navigation behavior failure.

### Change
- Added `import androidx.compose.ui.draw.clip` to `BaReApp.kt`.
- Commit: `0e77c36c243c1530538edca8f3110186c86949ab`.

### Verification
- Static source: **VERIFIED** — the `clip` call and matching import are present on `v1.0/rebaseline`.
- Supplied build: **FAILED** before this fix.
- Build after this fix: **UNVERIFIED** until a new CI/build result is observed.
- Device/UI verification: **UNVERIFIED**.


## 2026-09-24 — GO: Audit Recursive Seluruh app/ sebelum Refactor Behavior

### Authorization
Pengguna memberikan GO untuk melakukan audit recursive terhadap seluruh area aplikasi sebelum melanjutkan refactor behavior. Tujuan audit adalah merekonsiliasi titik mulai refactor, commit trail yang sudah dikerjakan, residual coupling yang masih ada, capability yang sudah nyata vs mockup, serta menentukan posisi Share APK tanpa mencampurkannya dengan backup persistence.

### Audit Boundary
Audit dilakukan pada branch v1.0/rebaseline terhadap source aktual yang terobservasi. Area yang diperiksa mencakup:
- MainActivity.kt dan app shell/state (BaReApp.kt, AppState.kt);
- capability/access provider (AccessCapabilityResolver, NonRoot, Root);
- identity/persistence/storage;
- recovery codec, artifact repository, dan storage boundary;
- feature onboarding, Home, Apps, Schedules, Account, Misc, Settings;
- seluruh jalur Apps yang menjadi fokus refactor: inventory, organization, action, formatter, storage/backup, management, App Detail, dan Apps Filter;
- shared UI components/theme/preview.

### Current Source Truth
- Current code checkpoint terobservasi sama dengan commit dba6627c841e6aa128e7fb97cea8d8754cd3e516 untuk file source Apps/backup yang diperiksa.
- AppActionBehavior.kt, AppOrganizationBehavior.kt, AppInventoryBehavior.kt, AppFormatters.kt, dan AppBackupBehavior.kt benar-benar ada pada source aktual.
- Persistence/discovery owners tetap dipisahkan: AppOrganizationStore, InstalledAppRepository, dan BackupStorageRepository tidak digandakan oleh behavior layer.
- AppBackupBehavior saat ini hanya mengeksekusi DEVICE + APK dan memakai capability root copy APK. Cloud, app-data, external-data, dan media belum memiliki backend execution yang setara.
- AppBackupScreen masih memiliki tombol Share APK yang membuka AppMockupActionDialog; tidak ada execution share intent/content URI pada source yang diaudit.

### Commit Trail — Refactor Behavior yang Sudah Dilakukan
Berikut checkpoint yang dapat ditelusuri dari worklog/source commit yang tersedia:

| Area | Commit | Status source | Verification |
|---|---|---|---|
| App Action behavior | fase refactor sebelum fix 83e471331466fb86b059337b15ed6bbd1ffe545a | Sudah | Source/static verified; CI pasca-perubahan harus dibaca dari evidence run, bukan diasumsikan |
| App Action compile fix | 83e471331466fb86b059337b15ed6bbd1ffe545a | Sudah | Static fix verified; CI post-fix pada record terkait PENDING/UNVERIFIED |
| Organization behavior entry | 70b2ef939f5c8b0b771f4f0a9b95b21ec283b4aa | Sudah | Behavior + store ownership verified |
| Organization AppsScreens | 99affef7b1c1fd1de9db1274fda4f4c6ec542b31 | Sudah | Routed through behavior |
| Organization AppsFilter | 776dfc5574fa739fab730cb0ae1ecd5802b2a68d | Sudah | Routed through behavior |
| Formatter shared | b05d3ac0b3bcd4574b0a1ef2766ecffc4cf2bb26 + follow-up routing commits | Sudah | Local duplicate formatter sudah dihapus dari target screen |
| Storage chip popup | b0e57d0a65c26e220567d16db1ed304cfd59b7e7 / 9f8d88ab326223c2ad1c7b428467534b44ae386c / d86cdb7f9cebe3a732283660d09bba615f54d7ec | Sudah | Static structure verified; runtime visual tetap bergantung evidence terbaru |
| Local APK backup behavior | 129fd19e23fdfcb69c2423e4e729893bad26883b / 49a2a70c83b9e36cf85b6b79e53276b49458c994 / 0f3c5a2056d196adae1b119d1d11cd6a41d2ebc9 | Sudah, partial | DEVICE + APK saja; runtime backup UNVERIFIED |
| Share APK compile-state fix | dba6627c841e6aa128e7fb97cea8d8754cd3e516 | Sudah | showMockup Share APK dipulihkan dan source re-fetch VERIFIED; CI post-fix masih harus diverifikasi |

Catatan commit boundary: connector saat audit ini tidak menyediakan parent SHA/history lengkap untuk semua commit refactor. Karena itu entry ini tidak mengarang SHA audit-start yang tidak terobservasi. Checkpoint pertama yang dapat dijadikan anchor refactor yang pasti adalah jalur App Action, dan commit trail di atas adalah commit yang benar-benar teridentifikasi dari source/worklog.

### Recursive Audit Result — Sudah
1. App Action — behavior entry point sudah ada. Apps/App Detail memakai behavior yang sama untuk action utama. Root capability tetap satu di bawah behavior.
2. Organization — behavior sudah menjadi entry point untuk favorite/labels/blacklist/APK-only; persistence tetap milik AppOrganizationStore.
3. Inventory — Apps/AppsFilter memakai AppInventoryBehavior; InstalledAppRepository tetap owner discovery/cache.
4. Formatter — formatter duplicate pada target Apps sudah dipusatkan ke AppFormatters.
5. Storage chip — anchored action popup sudah dipisahkan dari backup-selector chip.
6. Backup APK lokal — jalur execution nyata sudah ada untuk DEVICE + APK, tetapi masih partial dan membutuhkan root/storage/runtime verification.

### Recursive Audit Result — Belum / Residual
1. Share APK — masih mockup. Tidak ada ACTION_SEND/content-URI share flow pada AppBackupScreen. Ini residual capability nyata, bukan sekadar refactor cosmetic.
2. App data / external data / media backup — belum ada execution backend; tetap Unsupported dan tidak boleh dipalsukan.
3. Cloud backup — belum ada provider execution nyata.
4. Backup history/restore — surface ada, tetapi inventory/restore backend belum memiliki evidence end-to-end.
5. Misc Search — MiscScreens.kt masih membuat InstalledAppRepository langsung. Ini residual coupling terhadap discovery owner dan kandidat refactor berikutnya setelah verification gate.
6. Platform coupling pada feature Apps — beberapa UI masih membaca Android state langsung (mis. PackageManager/PowerManager/Settings/Intent) untuk presentation/launch/settings. Tidak semuanya salah, tetapi boundary perlu diaudit sebelum membuat behavior baru agar UI tidak menjadi provider implementation secara bertahap.
7. App Management — sebagian organization behavior sudah nyata, tetapi beberapa action lain masih explicit mockup; jangan menganggap screen management sebagai backend capability lengkap.
8. Runtime verification — source refactor tidak otomatis menjadi runtime verified. CI/device evidence harus tetap dipisahkan per checkpoint.

### Share APK — Posisi Arsitektur
Share APK dimasukkan ke App Artifact / Distribution behavior, berdekatan dengan App Backup tetapi bukan bagian dari persistence backup engine.

Target boundary:

App Detail / App Backup UI
        ↓
App Artifact / Share Request
        ↓
APK artifact acquisition / staging
        ↓
FileProvider / content URI
        ↓
Android Sharesheet

Usulan code boundary:
- AppBackupBehavior tetap bertanggung jawab terhadap persisting backup artifact.
- Tambahkan behavior terpisah, misalnya AppShareBehavior, untuk resolve/stage APK yang akan dibagikan dan membuat share contract.
- Reuse capability APK-copy/staging yang sudah ada; jangan menyalin logic RootCapabilityProvider.copyPackageApks() ke UI.
- Jika package memiliki base + split APK, contract harus menentukan apakah share dilakukan sebagai multiple content URIs atau satu archive yang dibuat khusus untuk distribution. Pilihan ini belum menjadi implementation decision pada audit ini.

### Decision
- Audit ini tidak melakukan source change capability Share APK.
- Share APK resmi masuk backlog/refactor map sebagai next behavior candidate setelah CI gate dan verification checkpoint, dengan boundary terpisah dari backup persistence.
- Tidak menghapus mockup sebelum execution path siap.
- Tidak membuat fake Share APK success state.
- Tidak menganggap keberadaan tombol Share APK sebagai implemented capability.

### Verification State
- Recursive source audit: VERIFIED STATIC pada area source yang diperiksa.
- Refactor behavior existing: PARTIALLY VERIFIED STATIC sesuai checkpoint masing-masing.
- Share APK execution: NOT IMPLEMENTED / UNVERIFIED.
- Local APK backup execution: IMPLEMENTED PARTIAL / RUNTIME UNVERIFIED.
- CI current post-fix: UNVERIFIED pada checkpoint ini; jangan menyimpulkan green tanpa run evidence.

### Next Work Order
1. CI/build verification untuk checkpoint dba6627c841e6aa128e7fb97cea8d8754cd3e516.
2. Jika green, runtime verify local APK backup pada device yang memenuhi prerequisite.
3. Setelah gate tersebut, implementasikan Share APK behavior dengan contract artifact/share yang terpisah dari backup persistence.
4. Setelah Share APK, audit residual inventory coupling di MiscScreens.kt dan remaining platform/UI boundary.
5. Baru lanjut capability backup lain berdasarkan dependency/evidence, bukan berdasarkan jumlah menu.


## 2026-09-24 — GO: Implement Share APK Behavior

### Authorization
Pengguna memberikan **GO** untuk melanjutkan implementation **Share APK** setelah menyatakan CI terakhir untuk commit `dba6627c841e6aa128e7fb97cea8d8754cd3e516` hijau dan runtime APK backup akan diverifikasi langsung oleh pengguna.

### Change
- Menambahkan `AppShareBehavior` sebagai behavior terpisah dari `AppBackupBehavior`.
- Behavior melakukan staging APK installed package melalui `RootCapabilityProvider.copyPackageApks()` ke `cacheDir/apk-share/<uuid>`.
- Staging diekspos melalui AndroidX `FileProvider` dengan `content://` URI.
- Single APK menggunakan `ACTION_SEND`; package dengan base + split APK menggunakan `ACTION_SEND_MULTIPLE`.
- Share intent membawa `FLAG_GRANT_READ_URI_PERMISSION` dan dibungkus Android chooser.
- Menambahkan provider `com.bare.fileprovider` pada manifest dan `res/xml/file_paths.xml`.
- App Detail action menu **Share APK** sekarang memanggil `AppShareBehavior`.
- Storage chip APK **Share APK** sekarang memanggil `AppShareBehavior`.
- App Backup screen **Share APK** sekarang memanggil `AppShareBehavior` dan tidak lagi membuka mockup dialog.

### Commits
- `4e8c88d1acf79cad1c8c96e1979ac3f8184a768c` — add Share behavior.
- `770cf4c4854d04c9969f410981c7f8cfe2ff4e63` — register FileProvider.
- `91a3625ca6ac890accf6dbd96a35d6dce440714e` — add FileProvider paths.
- `c074563afd59d52c2ba209eb7ddc3313d130ee5c` — wire Share APK into Apps flows.

### Static Verification
- `AppShareBehavior.kt` terobservasi pada branch dan menggunakan `RootCapabilityProvider`, `FileProvider`, URI grant, serta SEND/SEND_MULTIPLE.
- Manifest provider dan `file_paths.xml` terobservasi pada branch.
- Tiga entry point Share APK pada App Detail, Storage APK chip, dan App Backup screen sudah diarahkan ke behavior.
- Mockup Share APK pada App Backup screen sudah dihapus dari flow tersebut.
- Runtime share dan post-change CI/build **UNVERIFIED** sampai evidence baru tersedia.

### Boundary
- Share APK bukan persistence backup.
- Split APK dibagikan sebagai beberapa content URI; receiver yang tidak mendukung multiple APK streams dapat memiliki keterbatasan. Ini belum diverifikasi runtime.
- Staging berada di cache dan dapat hilang mengikuti lifecycle cache Android.
- Root tetap menjadi prerequisite implementation saat ini karena APK acquisition menggunakan `RootCapabilityProvider`.

### Next Verification
1. Build/CI setelah implementation Share APK.
2. Runtime pada device: buka Share APK dari App Detail, APK storage chip, dan App Backup.
3. Verifikasi chooser muncul dan receiver dapat membaca URI APK.
4. Verifikasi package split APK bila ada: semua URI dapat dibaca.
5. Setelah evidence runtime, baru ubah status capability Share APK dari IMPLEMENTED menjadi RUNTIME_TESTED/VERIFIED sesuai hasil.


## 2026-09-24 — GO: Pisahkan App Data Backup dan External Data Backup

### Authorization
Pengguna memberikan GO untuk melanjutkan refactor capability backup dengan batas eksplisit: **App Data backup harus menjadi behavior terpisah dari External Data backup**. Scope ini tidak memperluas ke Media atau Cloud.

### Perubahan
- Menambahkan AppBackupPart sebagai semantic part contract: APK, DATA, EXTERNAL_DATA, MEDIA.
- AppBackupBehavior sekarang menjadi orchestrator untuk part backup, bukan lagi menerima arbitrary string part.
- Menambahkan AppDataBackupBehavior untuk app-private data dari ApplicationInfo.dataDir.
- Menambahkan AppExternalDataBackupBehavior untuk Android/data/<packageName> pada external storage.
- Menambahkan AppBackupPartResult sebagai result contract bersama antar behavior part.
- Menambahkan RootCapabilityProvider.copyDirectory() sebagai primitive rooted directory-copy; UI tidak menjalankan shell/copy logic langsung.
- APK tetap dipertahankan sebagai jalur tersendiri dan menggunakan staging sebelum finalisasi agar kegagalan copy tidak menghapus directory part lain.
- Data disimpan pada subtree backup version data/; external data disimpan terpisah pada external-data/.
- UI AppBackupScreen sekarang memetakan pilihan APKs, Data, Ext. data, dan Media ke AppBackupPart; Media tetap ditolak explicit.
- Ringkasan UI diperbarui agar tidak lagi menyatakan seluruh backup execution masih pending: Device mendukung APK, app data, dan external app data pada source; Media dan Cloud tetap unavailable.

### Commit
- b9530902506076f1778b34ba7503669a4002e7d5 — add backup part result contract.
- b74c3abf11474c31365393bdc20cfc8953669eaa — add app data backup behavior.
- bb182073541b901612d9cefba836ee3ba864ed56 — add external data backup behavior.
- 5a7a53ef91af04a7c8af56f1390d0ab2f1051f95 — support rooted directory copy.
- 79fc883fb436425722c6b3e9bb5539ca27dfac36 — separate app and external data backup orchestration.
- 3735193cfd7dc80cddb854584d59d3d5e0a68b1b — keep external data behavior independent.
- bc10f111c580df2d8672ce38e063b395f3a4f43c — wire separate backup parts into Apps UI.
- 77e206b7038e11b74c66e7ef46f3bde9009d85f6 — update backup capability summary text.
- a644d8660f00882516e047dbaeddedd2793c2a9a — replace app data backup directory before copy.
- ad39ba4065786c7ae811cb84dbe3f1df59443d30 — replace external data backup directory before copy.
- 846d35a5fccb29bc1070ec61dd1d3e9f82d8a2b2 — harden APK backup finalization.

### Static Verification
- AppBackupBehavior.kt terobservasi memakai enum part, AppDataBackupBehavior, dan AppExternalDataBackupBehavior.
- AppDataBackupBehavior.kt dan AppExternalDataBackupBehavior.kt memiliki execution path terpisah.
- RootCapabilityProvider.copyDirectory() menjadi shared rooted primitive; UI tetap tidak memiliki shell/copy implementation.
- AppBackupScreen terobservasi memetakan empat pilihan UI ke semantic AppBackupPart.
- Storage boundary terpisah: data/ dan external-data/.
- Media dan Cloud tetap explicit Unsupported pada orchestrator.

### Verification State
- Source/static: **VERIFIED** pada re-fetch setelah perubahan.
- CI/build setelah refactor: **UNVERIFIED**; workflow connector belum memberikan run/status untuk checkpoint code terbaru 846d35a5fccb29bc1070ec61dd1d3e9f82d8a2b2.
- Runtime App Data backup: **UNVERIFIED**.
- Runtime External Data backup: **UNVERIFIED**.
- Runtime combined APK + Data + External Data: **UNVERIFIED**.
- Permission/root prerequisite dan kemampuan device membaca private app data: **UNVERIFIED**.

### Boundary
- App Data dan External Data sengaja tidak digabung menjadi satu behavior.
- Media belum diimplementasikan pada slice ini.
- Cloud belum diimplementasikan.
- Restore/history belum diubah.
- Tidak mengklaim runtime success hanya karena source path sudah ada.

### Berikutnya
- Tunggu/observasi CI untuk checkpoint code terbaru.
- Jika build green, runtime test terpisah: APK, App Data, External Data, lalu kombinasi part.
- Setelah evidence runtime, lanjut residual refactor Apps sesuai priority; jangan memperluas ke Media/Cloud tanpa dependency dan authorization baru.


## 2026-09-24 — Audit Reconciliation: Recursive app/ vs Apps-Only Refactor

### Tujuan
Audit ulang dilakukan sebelum refactor lanjutan untuk memisahkan:
- capability/domain yang memang layak memiliki satu entry point;
- implementation yang hanya milik satu feature dan tidak perlu dipaksa menjadi behavior;
- dependency yang beririsan antar-feature dan perlu boundary bersama;
- residual direct access yang masih membuat UI menjadi implementation owner;
- hardcoded user-facing text yang seharusnya menggunakan resource string.

### Scope Aktual yang Terobservasi
Source tree branch `v1.0/rebaseline` pada checkpoint audit memiliki **56 file Kotlin** di `app/src/main/java`:
- `com/bare`: 1
- `app`: 4
- `capability`: 3
- `feature/account`: 3
- `feature/apps`: 16
- `feature/home`: 1
- `feature/misc`: 1
- `feature/onboarding`: 2
- `feature/schedules`: 1
- `feature/settings`: 12
- `recovery`: 5
- `storage`: 3
- `ui`: 2
- `ui/components`: 1
- `ui/theme`: 1

Dengan demikian, audit ini bukan lagi menganggap Apps sebagai keseluruhan aplikasi. Apps memang memiliki jumlah source terbesar, tetapi dependency lintas-feature juga ditemukan.

### Kesimpulan Audit
**Refactor behavior tidak seharusnya dilakukan berdasarkan folder.** Boundary yang tepat adalah domain/capability/operation yang mempunyai owner dan contract jelas.

Model yang dipakai:
```
UI
 ↓
Behavior / Use-case entry point
 ↓
Repository / Capability / Platform boundary
```

Tidak semua repository harus dibungkus behavior. Jika sebuah repository memang sudah menjadi single owner untuk satu operasi dan hanya dipakai sebagai data boundary, repository dapat tetap menjadi owner. Behavior diperlukan ketika beberapa UI/client perlu satu aturan/orchestrasi yang sama atau ketika UI saat ini menjalankan business/capability logic.

### Apps — Status
Apps sudah memiliki beberapa behavior yang benar dan layak dipertahankan:
- `AppActionBehavior`
- `AppOrganizationBehavior`
- `AppInventoryBehavior`
- `AppFormatters`
- `AppBackupBehavior`
- `AppShareBehavior`

Tetapi Apps belum bersih:
- `AppsFilter.kt` masih memiliki banyak hardcoded user-facing strings.
- `AppsScreens.kt` masih sangat besar dan mencampur beberapa screen + presentation state + sebagian orchestration.
- `AppDetailsRepository` dan `AppUsageRepository` tetap menjadi repository boundary; tidak otomatis perlu behavior baru jika belum ada cross-client orchestration.
- `MiscScreens.kt` masih langsung membuat `InstalledAppRepository`; ini residual coupling yang seharusnya diarahkan ke `AppInventoryBehavior`.
- `AppsScreens.kt` masih memiliki beberapa mockup action untuk restore/delete/enable/disable/force stop/protected backup. Mockup tersebut bukan bukti capability backend.
- `AppsFilter.kt` masih langsung mengakses usage repository dan Settings intent untuk Usage Access. Ini perlu boundary audit terpisah; tidak otomatis dipindahkan ke Apps behavior jika capability tersebut memang merupakan platform/access boundary.
- `AppDetailsRepository` masih membaca PackageManager/root/external paths; ini merupakan kandidat data/provider boundary, tetapi refactor harus mempertahankan owner repository dan tidak menduplikasi logic.

### Cross-Feature — Kandidat Refactor Nyata
1. **Installed app inventory**
   - Owner: `InstalledAppRepository`
   - Entry point yang sudah tersedia: `AppInventoryBehavior`
   - Residual: `MiscScreens.kt` masih bypass behavior.
   - Action candidate: route Misc ke existing behavior; tidak membuat behavior kedua.

2. **Backup storage state**
   - Direct usage ditemukan di `BaReApp.kt`, `HomeScreen.kt`, `RecoveryScreen.kt`, `SettingsScreen.kt`, `LocalBackupScanScreen.kt`, dan `ManageSpaceScreen.kt`.
   - Owner saat ini: `BackupStorageRepository`.
   - Ini adalah dependency lintas-feature yang nyata.
   - Candidate: satu storage-facing behavior/read facade untuk operasi yang memang merupakan application use-case, sementara repository tetap menjadi persistence/storage owner.
   - Jangan memindahkan seluruh `BackupStorageRepository` ke UI atau menggandakan storage logic per screen.

3. **Local identity/setup**
   - Direct usage ditemukan terutama pada app shell, onboarding, recovery.
   - `LocalIdentityStore` tetap valid sebagai persistence owner.
   - Candidate behavior hanya untuk workflow lintas-step seperti setup/recovery/session orchestration, bukan wrapper kosong untuk setiap getter/setter.

4. **Recovery**
   - `RecoveryScreen.kt` masih mengorkestrasi beberapa store/repository secara langsung.
   - Ini kandidat kuat untuk behavior/use-case boundary karena import/export recovery merupakan workflow, bukan sekadar persistence read/write.
   - Existing `RecoveryArtifactRepository`, `RecoveryPackageCodec`, dan `RecoveryStorageBoundary` tetap menjadi lower-level owners.

5. **Settings / capability access**
   - `SettingsScreen.kt` dan onboarding masih melakukan beberapa Android settings intents/platform checks langsung.
   - Tidak semua direct platform call salah.
   - Yang layak dipindah adalah capability decision/workflow yang digunakan lintas surface; intent navigation yang murni presentation dapat tetap berada di UI.

### User-Facing Text — Finding
Ditemukan hardcoded UI text pada beberapa source aktual, terutama:
- `AppsFilter.kt`
- `AppsScreens.kt`
- `BaReApp.kt`
- `OnboardingScreens.kt`
- `HomeScreen.kt`

Contoh aktual yang terobservasi:
- `Text("Local apps")`
- `Text("Cloud synced apps — not wired yet")`
- `Text("SORT")`
- `Text("FILTER")`
- `Text("Favorites")`
- `Text("APPLY")`
- `Text("CANCEL")`
- `Text("Runtime behavior is pending...")`

Ini **finding**, bukan langsung diperbaiki pada audit ini. Refactor text harus dilakukan melalui `strings.xml` dan tetap mempertahankan semantics UI.

### Prinsip Boundary yang Dipakai Selanjutnya
- Jangan membuat satu behavior untuk satu folder.
- Jangan membuat wrapper behavior kosong hanya untuk memanggil satu repository method.
- Satu behavior boleh menangani beberapa operasi jika semuanya satu domain/capability dan memiliki policy yang sama.
- Jika behavior sudah ada, client baru harus menggunakan behavior tersebut; jangan membuat behavior kedua.
- Repository/store tetap menjadi owner persistence/data access.
- Capability provider tetap menjadi owner platform/root primitive.
- UI tidak menjadi owner business rule/copy/shell/storage policy.
- Cross-feature shared capability mendapat satu boundary bersama hanya jika ada evidence penggunaan lintas-feature.

### Verification State
- Recursive source inventory: **VERIFIED STATIC** terhadap tree branch `v1.0/rebaseline`.
- Apps scope: **VERIFIED STATIC**.
- Cross-feature candidates: **OBSERVED** dari source yang diperiksa.
- Exhaustive semantic audit setiap baris dari seluruh 56 file: **NOT CLAIMED**; audit ini adalah structural/dependency audit, bukan line-by-line proof of every implementation.
- Hardcoded text findings: **OBSERVED**.
- Runtime state: tidak berubah dan tidak diverifikasi ulang dalam audit ini.
- CI: tidak digunakan sebagai bukti refactor karena audit ini belum melakukan build.

### Decision Boundary
Tidak ada code change pada audit ini. Audit hanya menghasilkan map refactor.

Urutan kandidat setelah verification gate:
1. route `MiscScreens` ke existing `AppInventoryBehavior`;
2. audit dan rapikan shared backup-storage access lintas feature;
3. refactor recovery workflow menjadi behavior/use-case boundary;
4. rapikan hardcoded user-facing strings melalui `strings.xml`;
5. baru lanjut residual Apps behavior yang memang terbukti memiliki shared policy.

App Data / External Data implementation yang baru saja dibuat tetap berada pada Apps domain dan **tidak diperluas** ke Media/Cloud pada audit ini.


## 2026-09-24 — P1: Route Misc App Search Through Existing Inventory Behavior

### Authorization
Pengguna memberikan GO untuk P1 saja. Scope dibatasi pada residual bypass inventory yang ditemukan audit: `MiscScreens.kt` tidak boleh langsung membuat `InstalledAppRepository` karena `AppInventoryBehavior` sudah menjadi entry point inventory yang disepakati.

### Perubahan
- Mengganti dependency langsung `InstalledAppRepository` pada `SearchScreen` menjadi `AppInventoryBehavior`.
- Search tetap memanggil operasi inventory yang sama melalui `inventory.load()`; tidak mengubah filtering, UI, atau persistence.
- Tidak membuat behavior baru dan tidak mengubah `InstalledAppRepository`.

### Verification
- Source re-fetch setelah perubahan: **VERIFIED STATIC**.
- `MiscScreens.kt` tidak lagi memiliki direct reference ke `InstalledAppRepository`.
- `AppInventoryBehavior` terobservasi sebagai dependency SearchScreen dan `inventory.load()` digunakan.
- CI workflow/status untuk checkpoint `a48ece945e0799882f31dc1c528888901bbf40a5`: **UNVERIFIED / PENDING**; connector belum mengembalikan workflow run/status.
- E2E/runtime: **NOT RUN** sesuai scope GO.

### Commit
- `a48ece945e0799882f31dc1c528888901bbf40a5` — `refactor(misc): route app search through inventory behavior`

### Boundary
P1 selesai pada source level. Tidak masuk P2 shared backup storage, P3 recovery workflow, atau P4 strings.


## 2026-09-24 — P2: Shared Backup Storage Boundary

### Authorization
Pengguna memberikan GO untuk P2 setelah P1 green. Scope: audit dan refactor shared use-case di sekitar `BackupStorageRepository` menjadi satu boundary yang dipakai lintas Home / Settings / Recovery / Apps. E2E tidak diminta; build/CI menjadi gate sebelum lanjut.

### Hasil Audit
`BackupStorageRepository` bukan hanya dipakai oleh Apps. Ia menyediakan beberapa use-case yang memang lintas surface:
- inspeksi storage tersedia / terpilih;
- kapasitas internal;
- inisialisasi storage lokal;
- pemilihan storage lokal dan persistensi konfigurasi;
- local backup/recovery size;
- lokasi backup lokal;
- penghapusan local backups;
- pengecekan durable local state;
- penyusunan path backup app.

Sebelumnya beberapa screen membuat repository/store sendiri atau memakai helper `initializeLocalBackupStorage`.

### Perubahan
- Menambahkan `BackupStorageBehavior` sebagai application boundary bersama di package `com.bare.storage`.
- Repository tetap menjadi owner persistence/storage implementation.
- `HomeScreen` sekarang memakai `BackupStorageBehavior`.
- `SettingsScreen` sekarang memakai `BackupStorageBehavior`.
- `LocalBackupScanScreen` sekarang memakai `BackupStorageBehavior`.
- `ManageSpaceScreen` sekarang memakai `BackupStorageBehavior`.
- `RecoveryScreen` sekarang memakai `BackupStorageBehavior`.
- `BaReApp` sekarang memakai `BackupStorageBehavior` untuk durable local state.
- `AppBackupBehavior` sekarang memakai shared storage behavior dan tidak lagi menghitung path backup app sendiri.
- Path app backup dipusatkan sebagai repository-owned path contract yang diekspos melalui behavior.
- Helper `LocalBackupStorageService.kt` dihapus karena menjadi duplicate entry point setelah behavior bersama tersedia.
- Tidak mengubah schema storage, format identity folder, atau lokasi backup yang sudah ada.

### Boundary
```
Home / Settings / Recovery / Apps / App shell
                    ↓
         BackupStorageBehavior
                    ↓
        BackupStorageRepository
                    ↓
       Android storage / root capability
```

`StorageConfigurationStore` tetap menjadi persistence owner di bawah behavior; UI tidak lagi mengaksesnya langsung untuk storage selection.

### Static Verification
- Targeted re-fetch seluruh client P2: **VERIFIED STATIC**.
- `BackupStorageRepository` direct reference pada client P2 yang diperiksa: **0**.
- `StorageConfigurationStore` direct reference pada client P2 yang diperiksa: **0**.
- `initializeLocalBackupStorage` reference pada client P2: **0**.
- `AppBackupBehavior` menggunakan `BackupStorageBehavior`.
- `BaReApp`, Home, Settings, Recovery, Local Backup Scan, dan Manage Space menggunakan shared behavior.
- Duplicate `LocalBackupStorageService` entry point dihapus.
- No E2E/runtime executed, sesuai authorization.

### Verification State
- Source/static: **VERIFIED**.
- CI/build untuk checkpoint P2 terbaru: **UNVERIFIED** sampai workflow mengembalikan green.
- Runtime/E2E: **NOT RUN**.
- Tidak ada claim bahwa runtime behavior berubah menjadi verified.

### Commits
- `ecac9793d3c9b908bb60b9e44ee18446ab81a499` — add shared backup storage behavior.
- `d6b2b24742569b982c838544188c08b2658d9b26` — centralize app backup path.
- `7c5569061f4611d9b01e6304c8dc627d8fa41853` — route Apps backup through shared behavior.
- `bd4d811b54160796c81ea4e820837349901a0f97` — route Home through shared behavior.
- `9cb0cd56c19470690083c2511165061997eaa8b1` — initial Settings migration.
- `21c27c2080d43c062e496b3390cbf8a4f808c5b4` — Local Backup Scan migration.
- `22cfe744accc15ce8ade8367d54eea4fdd5cf967` — Manage Space migration.
- `eb8641bb4481ad0e9f54b672880606747188f4f1` — Recovery migration.
- `3273603fbec3d33d11fb99f906ec93c4591159a7` — expose shared storage state checks.
- `41fc35190de1d968aa4671308f307b72398eeb61` + `fac8b6bc1c201bbaf7531c5913a2ffb0cee6a23f` — App shell migration.
- `ff317607c04538be7b46e6b76f0f90c53d1d1ff7` — remove duplicate local storage service.

### Next Gate
Observe CI for the latest P2 checkpoint. If green, P2 is source/build gated and P3 may proceed under the existing GO sequence. P4 strings remains separate and is not included in P2.


## 2026-09-24 — P2 Build #862 Fix

Build #862 pada `ff317607c04538be7b46e6b76f0f90c53d1d1ff7` dilaporkan gagal. Commit tersebut menghapus `LocalBackupStorageService.kt` ketika branch pada saat itu masih memiliki client yang merujuk helper lama; kemudian wiring P2 berikutnya memindahkan client-client tersebut ke `BackupStorageBehavior`.

Pada state branch saat ini, targeted static inspection menunjukkan reference `initializeLocalBackupStorage`, direct `BackupStorageRepository`, dan direct `StorageConfigurationStore` pada client P2 sudah tidak ada.

Ditemukan satu compile-risk pada state P2 setelah wiring: `BackupStorageBehavior.initialize()` sempat dibuat `suspend`, sementara `AppBackupBehavior.backup()` adalah synchronous dan memanggilnya langsung. Boundary tersebut dikembalikan menjadi synchronous karena `BackupStorageRepository.initialize()` sendiri synchronous; caller yang membutuhkan background execution tetap mengendalikan dispatcher di layer pemanggil.

Fix commit: `1530a44e39f846683c6ed58d99565b764a115eba` — `fix(storage): keep initialization boundary synchronous`.

Verification: source/static **VERIFIED**; CI untuk fix commit **PENDING/UNVERIFIED**; E2E **NOT RUN**.


### 2026-09-24 — P2 Build Fix: onboarding / manage space / coroutine imports

Build terbaru kembali RED pada :app:compileDebugKotlin. Error yang diberikan user mengidentifikasi tiga kelompok reference yang masih tertinggal setelah migrasi P2:

- OnboardingScreens.kt masih mengimpor dan memanggil initializeLocalBackupStorage serta masih memiliki akses langsung ke storage repository/configuration.
- ManageSpaceScreen.kt masih memakai identifier repository pada sebagian operasi setelah field repository diganti menjadi storageBehavior.
- BackupStorageBehavior.kt memakai withContext(Dispatchers.IO) tetapi import coroutine tersebut sempat hilang.

### Fix
- StorageSetupScreen sekarang menggunakan BackupStorageBehavior untuk inspect storage, selected kind, capability check, dan selectLocalStorage.
- ManageSpaceScreen seluruh operasi storage backup/recovery sekarang konsisten melalui BackupStorageBehavior.
- BackupStorageBehavior mengembalikan import Dispatchers dan withContext yang dibutuhkan oleh selectLocalStorage.

### Verification
- Source re-fetch setelah perubahan: VERIFIED STATIC untuk tiga file yang diubah.
- Error initializeLocalBackupStorage pada onboarding ditargetkan hilang dari flow tersebut.
- Identifier repository yang tersisa pada ManageSpaceScreen untuk operasi storage ditargetkan hilang.
- Import coroutine yang dibutuhkan pada BackupStorageBehavior tersedia kembali.
- CI/build fix checkpoint: PENDING/UNVERIFIED sampai workflow berikutnya memberikan hasil.
- E2E/runtime: NOT RUN, sesuai authorization sebelumnya.

### Commits
- 7f2994655bdd8b22fdbfbdb38c05083876076596 — fix(onboarding): use shared backup storage behavior
- 61555b138f2a5f84420a9b45aa8769b2a3c44a70 — fix(settings): use shared storage behavior consistently
- 0244690aafef5a467f8af9bd05b3000a88c07ea6 — fix(storage): restore coroutine imports


### 2026-09-24 — P3 Recovery use-case boundary

Authorization: user memberi GO untuk P3 dengan boundary `RecoveryScreen ↓ RecoveryBehavior / recovery use-case boundary`. Build #867 pada commit `0244690aafef5a467f8af9bd05b3000a88c07ea6` dilaporkan green oleh user.

### Audit
`RecoveryScreen` sebelumnya mengorkestrasi langsung `RecoveryArtifactRepository`, `BaReMasterKeyStore`, `LocalIdentityStore`, dan `BackupStorageBehavior` untuk import/export recovery. Repository dan storage tetap menjadi implementation owners; screen menjadi orchestration client.

### Perubahan
- Menambahkan `RecoveryBehavior` sebagai application use-case boundary di `com.bare.feature.account`.
- `RecoveryBehavior.import()` menangani decode artifact, conflict check, master-key restore, identity restore, dan hasil identity.
- `RecoveryBehavior.export()` menangani payload identity, selected storage, recovery directory initialization, master-key acquisition, dan artifact export.
- `RecoveryScreen` sekarang bergantung pada `RecoveryBehavior` untuk import/export.
- Recovery password configuration tetap berada di `RecoveryPasswordStore` / UI karena merupakan concern konfigurasi kredensial/presentation.
- Exception khusus mempertahankan pemetaan error recovery ke string UI yang sudah ada.

### Boundary
```text
RecoveryScreen
      ↓
RecoveryBehavior
      ├── RecoveryArtifactRepository
      ├── BaReMasterKeyStore
      ├── LocalIdentityStore
      └── BackupStorageBehavior
```

### Verification
- `RecoveryScreen` direct refs ke `RecoveryArtifactRepository`, `BaReMasterKeyStore`, `BackupStorageBehavior`, dan `LocalIdentityStore`: **0**.
- `RecoveryScreen` memakai `RecoveryBehavior`: **VERIFIED STATIC**.
- `RecoveryBehavior` memegang orchestration repository/master-key/identity/storage: **VERIFIED STATIC**.
- Existing recovery password flow dipertahankan.
- CI setelah P3 change: **PENDING/UNVERIFIED**.
- Runtime/E2E: **NOT RUN**, sesuai authorization sebelumnya.

### Commits
- `44f5df212417b674a2eda480661c55ae280e1b00` — `feat(recovery): add recovery use-case boundary`
- `1b09f86520f6351ae2684f2f1513749556e3378b` — `refactor(recovery): route screen through recovery behavior`
- `9090d053fa5590c71752c2798cd15c99fdd9b749` — `refactor(recovery): remove screen storage dependency`
- `35b546cf3a0a7623ea807d2649018728bd21dbe3` — `refactor(recovery): preserve recovery failure semantics`
- `48ec41b87ec4e5326e7fa1188cb281c9b6db71a1` — `refactor(recovery): map recovery behavior failures`


## P4 — Hardcoded UI strings → strings.xml

**Status:** Implemented; CI pending.

- Input gate: Build #872 pada commit `48ec41b` dilaporkan user sebagai green dan P4 diotorisasi.
- Scope: `AppsFilter`, `AppsScreens`, `BaReApp`, `HomeScreen`, `OnboardingScreens`.
- Change: hardcoded UI strings dipindahkan ke `app/src/main/res/values/strings.xml`; string produk memakai bahasa produk dan tidak menambahkan nama produk ketika kalimat tidak membutuhkannya.
- Product identity dipertahankan tepat: `app_name = B Λ R ☰`, `app_text = BΛR☰`.
- Static verification: seluruh referensi `R.string.*` pada lima target tidak memiliki resource yang hilang; audit pola hardcoded UI pada lima target tidak menemukan literal UI tersisa.
- CI: Build #886 untuk HEAD `21e144a` terdeteksi **in progress**; belum boleh diklaim green.
- E2E/runtime: tidak dijalankan sesuai scope P4.

Commits P4:
- `05277c1` — refactor(i18n): move P4 app UI strings to resources
- `679d69f` — refactor(i18n): extract hardcoded app UI strings
- `fb0975e` — refactor(i18n): extract hardcoded app UI strings
- `8cbfcde` — refactor(i18n): extract hardcoded app UI strings
- `7c575cc` — refactor(i18n): extract hardcoded app UI strings
- `0970ee2` — refactor(i18n): extract Apps screen UI strings
- `9fc649d` — refactor(i18n): add shared UI marks
- `454438e` — refactor(i18n): finish P4 UI string extraction
- `2833502` — refactor(i18n): add app filter label resources
- `244e417` — refactor(i18n): localize app filter labels and sort titles
- `0edb0b2` — refactor(i18n): add backup completion message
- `21e144a` — refactor(i18n): extract remaining Apps runtime strings


## 2026-09-24 — Audit Ulang Seluruh app/src — Behavioral Integrity & Feature Contract

### Authorization
Pengguna memberikan GO untuk mengulang audit seluruh folder app/src, bukan hanya tab Apps. Audit ini bersifat inspect/discovery; tidak mengubah source implementation.

### Scope
Pemeriksaan difokuskan pada UI → routing → behavior/use-case → repository/capability boundary; semantic correctness; duplicate/direct boundary access lintas feature; action yang terlihat tersedia tetapi belum memiliki behavior nyata; mockup/façade/no-op; dan konsistensi state lintas Home / Apps / Settings / Onboarding / Recovery / Schedules / Account / Misc.

### Temuan Utama
1. **Apps — semantic/behavior gaps**
   - Relative timestamp menerima timestamp positif yang secara semantik invalid sebagai tanggal valid, sehingga nilai sangat lama dapat tampil sebagai waktu historis yang menyesatkan.
   - Sort lastUsed menggunakan sentinel ketika usage data tidak tersedia; contract available / no usage data / permission missing / valid data belum eksplisit.
   - App size tidak konsisten: sorting menggunakan APK size, sedangkan App Detail menghitung APK + data + external data + media.
   - Battery optimization masih memiliki lebih dari satu jalur capability/state access pada surface Apps.
   - Share APK tidak konsisten antar entry point: storage chip memakai AppShareBehavior, sementara overflow action masih menampilkan unavailable.
   - App Management / App Backup / App Configuration / App Diagnostics / App Restore masih memiliki action mockup/placeholder pada sebagian workflow.

2. **Home — workflow/state mismatch**
   - Quick action backup/restore apps belum memiliki target/context app yang jelas pada routing yang diperiksa.
   - Backup/restore folders mengarah ke surface generic/façade yang belum memiliki behavior capability nyata.
   - Last Backup / Next Backup masih tidak terhubung penuh ke canonical backup/schedule state.
   - Pilihan cloud pada surface Home belum terbukti sebagai storage configuration/execution capability.

3. **Misc — feature façade**
   - Beberapa domain surface seperti Folders, Messages, Call Logs, Wi-Fi, Wallpapers, Storage, Management, dan Task/Schedule detail masih menggunakan generic/mockup surface dan belum memiliki application behavior nyata di belakang UI.
   - Ini dicatat sebagai feature-contract gap, bukan diklaim sebagai runtime bug.

4. **Schedules — UI tanpa execution contract lengkap**
   - Surface scheduled backups/create schedule tersedia, tetapi persistence, scheduler execution, last-run state, failure/retry, dan recovery contract belum terbukti terhubung penuh.

5. **Recovery — boundary duplication residual**
   - RecoveryScreen sudah melalui RecoveryBehavior.
   - RecoveryOnboardingScreen masih mengorkestrasi langsung LocalIdentityStore, BaReMasterKeyStore, dan recovery primitives.
   - Ini residual direct orchestration yang perlu dievaluasi terhadap RecoveryBehavior, bukan membuat behavior kedua.

6. **Account / Settings — action contract**
   - Ditemukan action yang masih no-op/disabled pada surface Account/Settings.
   - Beberapa Settings sudah secara eksplisit menandai capability belum tersedia; ini lebih jelas daripada silent no-op, tetapi tetap completeness gap.

7. **Cross-feature backup/storage**
   - BackupStorageBehavior sudah menjadi shared boundary untuk banyak client, tetapi capability yang ditawarkan UI masih lebih luas daripada implementation yang saat ini dapat dieksekusi pada beberapa path. Khusus App Backup, destination Cloud dan Device+Cloud belum didukung oleh AppBackupBehavior yang diperiksa.

8. **Diagnostics / Labs**
   - Diagnostics memiliki service boundary nyata sehingga tidak boleh dipukul rata sebagai mockup.
   - BaRe Labs memiliki persisted flags; consumer/runtime effect dari flags tersebut masih perlu diverifikasi per setting.

### Klasifikasi
- **Semantic correctness:** timestamp, usage state, size semantics, backup/storage state.
- **Behavior mismatch:** action yang sama memiliki behavior berbeda antar surface.
- **UI façade/mockup:** surface sudah ada tetapi application behavior belum terbukti ada.
- **Boundary duplication:** masih ada direct orchestration setelah behavior boundary tersedia.

### Kandidat P5
Audit ini membentuk scope kandidat **P5 — Behavioral Integrity & Feature Contract Audit**:
1. semantic correctness;
2. shared behavior consistency;
3. UI → behavior mismatch;
4. inventory mockup/façade/no-op secara eksplisit;
5. routing/workflow integrity;
6. verification contract untuk capability yang sudah real.

Tidak ada code change pada audit ini dan tidak ada capability dinaikkan statusnya menjadi runtime verified hanya karena UI tersedia.

### Verification State
- Whole-app/src structural/behavioral audit: **OBSERVED / VERIFIED STATIC** untuk source yang diperiksa.
- Exhaustive line-by-line proof seluruh source: **NOT CLAIMED**.
- Runtime/device behavior: **NOT VERIFIED** pada audit ini.
- E2E: **NOT RUN**.
- Build: tidak dijalankan sebagai bagian audit ini; status build terakhir mengikuti evidence checkpoint terpisah dan tidak dipakai untuk menaikkan capability state.

### Decision Boundary
Belum ada keputusan implementasi P5. Audit ini menghasilkan map gap dan boundary. Perubahan berikutnya harus dipilih per capability berdasarkan owner, contract, dependency, risk, dan verification evidence; bukan berdasarkan folder.


## 2026-09-24 — Re-validation Reference.md terhadap Reference Source

### Scope
Re-validation dilakukan terhadap:
- `docs/reference.md) — audit/discovery baseline yang dibuat sebelum Reference Source masuk ke project.
- branch `reference` — actual Reference Source hasil decompile.
- BaRe v1.0 pada branch `v1.0/rebaseline) — comparison target saat ini.

Reference Source berada di:
```
reference/
├── apktool/
└── jadx/
```

Tidak ada ZIP Reference yang dibongkar ulang. Evidence diambil langsung dari branch `reference`.

### Evidence yang tervalidasi ulang

1. **UI Reference memang tersedia sebagai source/resource evidence**
   - `apktool/res/layout` memiliki layout Apps, App Detail, filter, backup, quick actions, Home, schedule, storage, dan domain lain.
   - `apktool/res/menu` memiliki menu Apps, App Detail storage/backup actions, bottom navigation, schedule, dan domain actions.
   - Contoh yang diverifikasi langsung:
     - `app_list_activity.xml`
     - `detail_activity.xml`
     - `detail_card_app_storage.xml`
     - `detail_card_app_backup.xml`
     - `filter_bottom_dialog.xml`
     - `menu_apps.xml`
     - `menu_detail_storage_chip_actions.xml`
     - `menu_detail_backup_chip_actions.xml`
     - `menu_bottom_home.xml`

2. **Root / Shizuku permission workflow**
   - `defpackage/mf.java` mengonfirmasi dialog grant permission dan daftar capability.
   - `defpackage/dz5.java` mengonfirmasi bahwa runtime permission, special access/AppOps, dan capability-specific handling bukan satu mekanisme yang sama.
   - Status tetap `OBSERVED_STATIC`; reference APK tidak dieksekusi pada audit ini.

3. **App size model**
   - `defpackage/qx.java` mengonfirmasi komponen ukuran:
     `APK + Split APKs + Shared libraries + Data + DE data + External data + Media + OBB/Expansion`.
   - Cache disimpan sebagai komponen terpisah untuk informasi, tetapi total tidak menambahkan cache sekali lagi.
   - Ini memperkuat bagian storage-size pada `docs/reference.md`.

### Re-validation terhadap BaRe v1.0

#### A. Apps list / shell — GAP
Reference `app_list_activity.xml` memiliki:
- appbar + filters;
- SwipeRefresh;
- RecyclerView;
- FastScroller;
- Extended FAB batch actions;
- navigation drawer.

BaRe `AppsFilter.kt` saat ini menggunakan Compose surface dan tidak memiliki evidence equivalent untuk FastScroller, Extended FAB, atau Drawer pada surface yang diperiksa.

**Status:** MISSING / DIFFERENCE — perlu parity work. Bukan runtime bug.

#### B. Apps filter — GAP
Reference `filter_bottom_dialog.xml` memiliki:
- SORT;
- FILTER;
- App type + System app filters;
- Favorites;
- App Labels;
- On-device backup;
- Cloud sync;
- Install status;
- Enabled status;
- Miscellaneous;
- Apply / Reset.

BaRe sudah memiliki sebagian model/filter, tetapi:
- Backup date dan Backup size masih ditandai unavailable;
- On-device backup dan Cloud sync chips masih disabled;
- filter Miscellaneous masih disabled;
- context switch Local apps / Cloud synced apps belum terbukti tersedia pada AppsFilter saat re-validation.

**Status:** PARTIAL / MISSING.

#### C. App Detail / backup UI — GAP
Reference memiliki dedicated storage/backup cards, TabLayout, chip grid, menu actions, Restore action, dan state loading/error.

BaRe sudah memiliki App Detail, storage chips, backup selector, destination selector, dan action boundaries, tetapi selector backup saat ini masih berakhir pada `Action unavailable`.

Selain itu model part BaRe yang diperiksa hanya:
- APKs;
- Data;
- External data;
- Media.

Reference evidence mencakup model yang lebih luas, termasuk Split APKs, Shared libraries, OBB/Expansion, dan cache semantics.

**Status:** PARTIAL; execution path masih NOT IMPLEMENTED / UNVERIFIED pada beberapa capability.

#### D. Storage semantics — GAP
BaRe `AppDetailsRepository` sudah menggunakan:
- APK + split APK paths;
- StorageStats untuk data/cache;
- external data;
- media;
- root fallback untuk directory measurement.

Namun belum ditemukan equivalent untuk OBB/Expansion dan Shared libraries pada model `AppDetails`, dan total App size UI belum terbukti mengikuti model Reference secara penuh.

**Status:** PARTIAL / UNKNOWN untuk parity penuh.

#### E. Bottom navigation — MATCH pada primary structure
Reference `menu_bottom_home.xml` memiliki empat destination:
`Home`, `Cloud sync`, `Schedules`, `Account`.

BaRe `BaReApp.kt` juga memiliki empat NavigationBar destinations tersebut.

**Status:** MATCH pada primary destination count/structure.

#### F. BaRe-specific header exception
BaRe memiliki Global Header + Local Sub-header sebagai keputusan target v1.0. Ini tetap diperlakukan sebagai **intentional design exception**, bukan GAP terhadap Reference.

### Classification summary

| Area | Status |
|---|---|
| Reference Source tersedia dan dapat diinspeksi langsung | VERIFIED STATIC |
| Reference UI XML/menu evidence | VERIFIED STATIC |
| Root/Shizuku workflow evidence | VERIFIED STATIC |
| Reference App size formula | VERIFIED STATIC |
| Bottom navigation 4 destination | MATCH |
| Apps list structural parity | GAP |
| Apps filter completeness | PARTIAL / GAP |
| App Detail storage/backup parity | PARTIAL / GAP |
| App size semantic parity | PARTIAL / UNKNOWN |
| Runtime Reference APK | NOT PERFORMED |
| BaRe runtime/E2E verification | NOT PERFORMED pada audit ini |
| Code implementation change | NONE |

### Conclusion
`docs/reference.md` **tidak diganti** dan tidak dianggap obsolete. Dokumen tersebut tetap menjadi baseline audit/discovery.

Reference Source sekarang menjadi evidence aktual untuk **re-validation**.

Hasil re-validation menunjukkan bahwa beberapa audit lama terkonfirmasi langsung, sementara beberapa area sekarang memiliki resolusi lebih tinggi dan menghasilkan GAP/PARTIAL yang konkret, terutama pada:
- Apps UI structure;
- Apps filter;
- App Detail storage/backup;
- App size semantics.

Next implementation priority setelah audit ini adalah **Reference UI/flow parity pada gap yang sudah memiliki evidence**, bukan membuat audit Reference dari nol lagi.

## 2026-09-24 — A3 Account local sign-in UI wiring — USER GO

**USER SAID:** GO.

**AUTHORIZATION:** Lanjutkan implementasi boundary Account lokal setelah repository credential layer tersedia.

### Implementation
- AccountScreen sekarang memiliki action callback nyata: Account aktif → Sign out; Local → Connect Account.
- BaReApp menghubungkan UI Account ke LocalAccountRepository.
- Sign in sekarang memanggil local credential verifier dan hanya mengaktifkan IdentityType.ACCOUNT setelah verifier berhasil.
- Sign up membuat local Account ID baru dan menyimpan verifier credential melalui repository; tidak ada password plaintext persistence.
- Active local Account dipulihkan dari AccountLocalDatabase saat startup.
- Sign out menonaktifkan Account lokal tanpa menghapus Local device identity.
- Login error ditampilkan pada flow.
- Google sign-in tetap disabled karena provider v1.0 masih LOCAL; tidak ada cloud/provider session yang dipalsukan.
- Register local account menjaga invariant satu active account dan menolak email yang sudah terdaftar.

### Truth status
- Account credential persistence: IMPLEMENTED.
- Local sign-in/sign-up UI wiring: IMPLEMENTED.
- Local Account active-state restoration: IMPLEMENTED.
- Cloud authentication/provider session: NOT IMPLEMENTED / NOT CLAIMED.
- Forgot-password email reset: NOT VERIFIED / NOT IMPLEMENTED as a real provider flow.
- Build/CI for latest commits: PENDING; no green run evidence yet.

### Next
1. Verify latest CI/build result.
2. If build is green, inspect Account runtime flow on device/emulator where available.
3. Continue provider-neutral cloud metadata adaptation only after Account boundary is verified.

## 2026-09-24 — A3 Account CI #944 failure — DEBUG/FIX

**OBSERVED:** CI #944 failed at :app:compileDebugKotlin.

**ROOT CAUSE:** BaReApp.kt used getString(...) directly inside the composable scope, but no such receiver/function was available there. Compiler errors were at lines 333 and 376.

**FIX:** Both auth error resource lookups now use the existing Compose context:
- context.getString(R.string.account_sign_in_failed)
- context.getString(R.string.account_create_failed)

**VERIFICATION:** Source fix committed as d2184e8. Latest build result after this fix is still PENDING / UNVERIFIED; CI #944 remains the failing evidence for the pre-fix commit.

## 2026-09-24 — A3 Account credential lifecycle hardening

### Authorization
- User said **Lanjut GO** after Android Build #945 was reported **GREEN** for commit `d2184e8a3c6439c3cd9c6e6059b8f5bf41da7ace`.

### Inspect
- `LocalAccountRepository` clears the caller-provided password on normal register/sign-in completion.
- Validation using `require(...)` occurred before the previous clearing path, so an invalid input path could leave the supplied `CharArray` uncleared.
- Successful sign-in deactivated and activated accounts using separate SQL statements without one transaction.

### Change
- Wrapped register/sign-in credential handling in `try/finally` so the supplied password `CharArray` is cleared on validation/error paths as well.
- Wrapped successful sign-in active-account transition in one SQLite transaction.
- No change to the v1.0 LOCAL provider boundary, credential schema, or cloud/backend claims.

### Verification
- Source change committed as `674b7a849879eebf29ec2b407e5abb4026200772`.
- CI/build for this new commit: **PENDING / UNVERIFIED**.
- Runtime Account flow: **NOT RUN**; no device/runtime evidence was supplied for this iteration.
- Android Build #945 remains **VERIFIED GREEN** evidence for the preceding `d2184e8` fix, not for this new hardening commit.

### Next
- Verify CI for `674b7a8`.
- If green, continue Account/cloud dependency work without claiming cloud authentication.


## 2026-09-24 — A3 Cloud metadata boundary adaptation

### Authorization
- User said **Lanjut GO** after Android Build #946 was reported **GREEN** for commit `674b7a8`.

### Inspect / Reference
- Reference `CloudMetadata` carries cloud-side package identity, version, backup/update dates, installer package, protected-backup flag, note, and component/backup metadata.
- Reference `AppCloudBackup` validates its backup ID + metadata; `AppCloudBackups` derives backup collections from a separate cloud data source and validates metadata before exposing them.
- BaRe already had a provider-neutral local `cloud_sync_metadata` boundary, but it persisted only sync state + timestamp.

### Change
- Extended local Account DB schema to version 3.
- `cloud_sync_metadata` now reserves fields for provider-derived package/version, installer, backup count/time, protected flag, and note metadata.
- Added migration from schema v2 without changing Account credential fields.
- `CloudSyncMetadataStore.Record` now represents the provider-neutral metadata needed by the relevant Reference semantics.
- Added `loadRecords()` and transactional `replaceRecords()`.
- Kept `replaceStates()` as a compatibility convenience.
- No network I/O, cloud transport, Firebase/Supabase integration, or local-backup-to-cloud inference was added.

### Verification
- Account Build #946 for preceding credential hardening: **VERIFIED GREEN** by user evidence.
- Cloud metadata adaptation commits:
  - `6d16214267ecd4a1d6a8807da06bc6d30e8e399e`
  - `a434b048007fa31c1101d1fe28d9dde670f8c510`
- CI for these new changes: **PENDING / UNVERIFIED**.
- Runtime provider metadata ingestion: **NOT IMPLEMENTED / UNVERIFIED**.
- Actual cloud transfer/integrity: **NOT IMPLEMENTED / NOT CLAIMED**.

### Next
- Verify CI for the cloud metadata adaptation.
- If green, implement only the next provider/application boundary required to supply verified metadata; keep cloud transport and transfer integrity as separate capability work.


## 2026-09-24 — A3 Cloud metadata boundary CI verification

### Verification
- User supplied Android Build **#948 GREEN** for commit `a434b048007fa31c1101d1fe28d9dde670f8c510`.
- Cloud metadata boundary adaptation is therefore **CI VERIFIED** for that commit.
- The immediately preceding schema migration commit `6d162142` is included in the same source lineage but has no separately supplied CI evidence.

### Current boundary
- Account remains LOCAL implementation/provider.
- Cloud metadata remains provider-derived data persisted locally.
- No cloud transport/provider backend is claimed.
- Runtime ingestion and transfer integrity remain unverified/not implemented.

### Next
- Runtime Account/cloud metadata ingestion requires a target provider/data source and runtime environment.
- Until that prerequisite exists, do not fabricate a cloud provider or infer cloud state from local backups.

## 2026-09-24 — A3 Date Used reference alignment — USER GO

### Authorization
- User said **GO** to inspect and implement the Reference Date used behavior.

### Inspect / Reference evidence
- docs/reference.md records **Date used** as an observed Reference sort criterion and previously marked BaRe feasibility/measurement as UNKNOWN / UNVERIFIED.
- Decompiled Reference defpackage/iy.java uses Android UsageStatsManager for DateUsed.
- Reference queries usage stats over the preceding **30 days**, keeps entries with lastTimeUsed > 0, and limits the result to installed apps represented by the current app list.
- Reference DateUsed sorting compares installed state first, then the recorded lastTimeUsed; missing usage timestamps are effectively treated as zero by the Reference accessor. Descending mode reverses the resulting ordering.
- Reference opens Android Usage Access settings when Date Used is selected without the required Usage Access capability.

### Change
- AppUsageRepository.loadLastUsed() now follows the Reference 30-day query window and accepts the installed-package set so usage data is associated only with installed apps.
- AppsFilter now loads usage data together with inventory refresh on the background thread.
- Date used sorting now orders installed state first and then last-use timestamp, with missing values treated as zero; descending reverses the complete comparator, matching the Reference ordering model.
- Existing Usage Access settings routing remains in place when Date Used is selected without access.
- No cloud/provider dependency was introduced.

### Truth status
- Reference semantics: **OBSERVED_STATIC / VERIFIED_FROM_DECOMPILED_SOURCE**.
- Source implementation: **IMPLEMENTED** in commits 9e0642a and 6eb9062.
- Branch HEAD: **6eb9062f1705272a876e699b64e824fa0d1f39fa**.
- CI/build for the new commits: **PENDING / UNVERIFIED**; the GitHub connector did not return workflow runs for the commit.
- Runtime/device behavior: **NOT RUN / UNVERIFIED**.

### Next
- Verify CI for 6eb9062.
- If green, perform the A3 Date Used runtime verification where a device/emulator with Usage Access is available.
- Then continue the remaining A3 gap review before entering A4 App Size semantics.


## 2026-09-24 — A4 App size measurement alignment — USER GO

### Authorization
- User said **GO** to continue the next highest-priority Apps work after Android Build **#950 GREEN** for Date Used commit `6eb9062`.

### Inspect / Evidence
- Reference `docs/reference.md` records App size as a sort criterion and the static audit defines the Reference total as APK + split APK + shared libraries + Data + DE data + External data + Media + OBB/Expansion, with cache not double-counted.
- Android `StorageStats.getAppBytes()` includes APK files, optimized compiler output, unpacked native libraries, and OBB when hosted on the relevant storage device. `getDataBytes()` includes app data and cache-related paths; therefore BaRe's existing `appBytes + dataBytes` total is a platform-provided aggregate rather than APK-only sizing. citeturn1search0
- BaRe already persisted `totalSizeBytes` from this aggregate, but Apps sort/display still used the APK-only `apkSizeBytes` / formatted APK size.

### Change
- Apps `APP_SIZE` sort now uses `AppItem.totalSizeBytes` rather than APK-only size.
- Installed apps are ordered before backup-only entries for this sort; missing total size is treated as zero within the same installed-state group.
- App Size supporting text now displays the aggregate `totalSizeBytes` and reports unknown when no aggregate is available.
- No root/Shizuku dependency, cloud dependency, or custom recursive storage scan was introduced.

### Truth status
- Reference semantics: **OBSERVED_STATIC** from `docs/reference.md`.
- Android platform aggregate source: **VERIFIED_EXTERNAL_DOC**.
- Source implementation: **IMPLEMENTED** in commit `a7844d341880fd48d8108dd91298938f6763914d`.
- CI/build for `a7844d3`: **PENDING / UNVERIFIED**.
- Runtime/device App Size sorting/display: **NOT RUN / UNVERIFIED**.
- Exact one-to-one parity with every Reference storage component remains **NOT VERIFIED**; the implementation uses Android's aggregate `StorageStats` boundary rather than reproducing Reference's privileged per-component measurement path.

### Next
- Verify CI for `a7844d3`.
- If green, runtime-test App Size on an available device/emulator and compare ordering/display against actual platform storage stats.
- Keep exact privileged per-component parity as a separate verification question; do not claim it from source compilation alone.

## 2026-09-24 — E2E #951 findings + Apps filter corrective patch — USER GO

### Runtime / device evidence
User performed E2E on Android Build **#951** from commit `a7844d341880fd48d8108dd91298938f6763914d`.

Observed:
- Apps inventory loads after initial loading.
- Search works.
- Filter and sort surfaces open and operate.
- App Size/APK sorting was observed as plausible/correct in the tested list.
- Some Label actions still route to mockup/unimplemented surfaces.
- Installed / Not installed active filter chips could not be removed from the chip row.
- Not installed from Google Play did not produce the expected result.
- Date Used remained Unknown in the tested environment.
- Install Date and Update Date displayed an observed approximately 56-year-relative value rather than the expected meaningful current install/update age.
- WhatsApp External Data was not observed/read by BaRe, while the Reference screen exposes an Ext. data component.

These are runtime observations; root causes are not inferred from UI evidence alone.

### Inspect
- Install Status chip removal path in `AppsFilter.kt` handled Google Play, backup, metadata, etc., but omitted `InstallStatusFilter` from the active-chip clear mapping.
- Reference Google Play semantics use installer package equality with `com.android.vending`; non-Play is the inverse, including null/non-Play installer metadata.
- BaRe installed-app mapping returned nullable `installedFromGooglePlay` on repository exceptions, causing a filter that checks `== false` to exclude unknown/null values instead of treating them as non-Play under the current Reference semantic boundary.
- Date formatter source was inspected: BaRe `formatRelativeTime` itself uses millisecond timestamps and does not explain a generic 56-year value by source inspection. Reference also uses relative date formatting. Runtime timestamp anomaly remains UNVERIFIED.
- BaRe `AppDetailsRepository` has a separate External Data path at `Android/data/<package>` with normal File traversal first and Root fallback second. Therefore a missing WhatsApp Ext. data value is an access/capability observation, not proof that the storage component is absent.

### Change
- `a801bb38b86025c40f56e95c67defa2982561c22`: active Install Status chips now clear back to `InstallStatusFilter.ALL`.
- `73b9bfc19f8b5d3dceba912128642bbb34f76da8`: installed-app Google Play classification now falls back to non-Play (`false`) when install-source lookup throws, matching the existing inverse filter semantics and Reference installer-package equality boundary.

### Verification
- Source changes: **IMPLEMENTED**.
- CI for the corrective commits: **PENDING / UNVERIFIED**; GitHub workflow lookup returned no workflow run for the latest commit at inspection time.
- Runtime verification of the corrective patch: **NOT RUN**.
- Install/Update date 56-year observation: **UNRESOLVED / UNVERIFIED ROOT CAUSE**.
- WhatsApp External Data: **OBSERVED MISSING/UNREADABLE in E2E; capability/access root cause not yet verified**.
- Label mockup routing: **OBSERVED; implementation owner/path still requires further inspection**.

### Next boundary
Do not claim the two corrective fixes as runtime-verified until a new build is installed and the affected filters are retested. External Data should be investigated separately as **measurement/readability/backupability**, with root/access capability verified before changing storage semantics.


## 2026-09-24 — GO: lanjut Date + External Data setelah E2E #951

### Authorization
Pengguna memberikan GO untuk melanjutkan investigasi/fix **Install/Update Date** dan **External Data**. User juga mengklarifikasi bahwa label mockup di menu titik tiga pada App list adalah minor; label di App Detail sudah berfungsi dan tidak diperluas pada slice ini.

### Evidence / Inspect
- User melaporkan Android Build **#953** dari commit `73b9bfc19f8b5d3dceba912128642bbb34f76da8` berstatus green; evidence tersebut berasal dari user dan belum dire-query melalui workflow connector.
- Android `PackageInfo.firstInstallTime` dan `lastUpdateTime` secara API contract menggunakan unit yang sama dengan `System.currentTimeMillis()` (milliseconds). citeturn1search0
- BaRe `InstalledAppRepository` memang mengambil kedua field langsung dari `PackageManager`.
- E2E sebelumnya tetap menunjukkan nilai relatif sekitar 56 tahun. Karena source contract resmi memakai milliseconds, nilai tersebut konsisten dengan kemungkinan runtime/device mengembalikan nilai seconds-like sebelum formatting, tetapi raw runtime timestamp belum tersedia sebagai evidence. Ini tetap **runtime hypothesis**, bukan verified root cause.
- BaRe `AppDetailsRepository.directorySizeOrNull()` sebelumnya mengembalikan `0` ketika traversal tidak menghasilkan file. Kondisi itu mencegah operator `?:` berpindah ke root fallback, sehingga unreadable `Android/data/<package>` dapat terlihat sama seperti directory kosong.
- Android scoped-storage membatasi akses aplikasi ke app-specific directory milik aplikasi lain pada external storage; broad access sendiri tidak otomatis menghilangkan seluruh pembatasan tersebut. citeturn0search0turn0search1

### Change
- `f3363df8cfe76831bb7b7ab220ef936155f57152`: menambahkan package-date normalization helper yang hanya mengubah nilai yang jelas berada pada rentang Unix-seconds, lalu menerapkannya **khusus Install Date dan Update Date**. Date Used tetap memakai formatter millisecond biasa.
- `95a3a4fd8a083e3a5fe16b62b954081af98bd935`: wiring Install/Update Date ke helper tersebut.
- `a7996edec3de9449efae8d386ab8bf8655572887`: traversal External Data sekarang membedakan directory kosong dari directory yang tidak bisa di-list; kondisi unreadable menghasilkan `null` sehingga RootCapabilityProvider fallback dapat dicoba.
- Tidak mengubah path semantic External Data: tetap `Android/data/<packageName>`.
- Tidak mengubah Media, Cloud, atau backup orchestration pada slice ini.

### Verification
- Source/static: **IMPLEMENTED**.
- CI untuk corrective commits terbaru: **PENDING / UNVERIFIED**; status connector saat inspeksi belum menyediakan status check untuk commit tersebut.
- Runtime Install/Update Date: **NOT RUN** setelah patch.
- Runtime WhatsApp External Data: **NOT RUN** setelah patch.
- External Data backupability tetap terpisah dari measurement/readability; belum diklaim berhasil.

### Next boundary
Setelah CI hijau, runtime retest difokuskan pada:
1. Install Date dan Update Date pada beberapa app.
2. WhatsApp Ext. data pada App Detail.
3. Jika Ext. data masih kosong, verifikasi apakah root capability benar-benar aktif dan apakah path dapat dibaca; jangan mengganti storage semantics lagi sebelum evidence tersebut ada.


## 2026-09-24 — Date + External Data corrective pass — USER GO

### Authorization / scope
User authorized continuing the Date issue and External Data investigation. User clarified that the remaining Label mockup is specifically the **three-dot actions sheet from the Apps tab**; the Label action from App Detail is functional and is not the target of this pass.

### Date
- Runtime observation from Build #951: Install Date / Update Date rendered an approximately 56-year-relative value.
- Source inspection confirmed `PackageManager.PackageInfo.firstInstallTime` / `lastUpdateTime` are the direct source in `InstalledAppRepository`.
- Because the observed symptom is consistent with an epoch-seconds value being interpreted as milliseconds, a defensive repository-boundary normalization was added: positive timestamps below `100_000_000_000` are interpreted as epoch seconds and multiplied by 1000; normal millisecond timestamps remain unchanged.
- This is a defensive compatibility measure; the underlying device/runtime representation is still **UNVERIFIED** until E2E confirms the displayed dates.

### External Data
- `AppDetailsRepository.directorySizeOrNull()` previously returned `0` when the app-side `File` view could not see the directory. That prevented the existing root fallback from being attempted.
- Changed inaccessible/nonexistent app-side external-data directories to return `null`, allowing the existing root measurement fallback to execute.
- `AppExternalDataBackupBehavior` previously returned empty immediately when `File.exists()` was false. Added a root-backed `directoryExists()` probe so a directory invisible to normal app filesystem access can still be detected and copied through the rooted capability boundary.
- Root probe result is tri-state: exists, absent, or inspection failure. This avoids silently treating an access failure as "no external data".
- Scope remains `Android/data/<packageName>` for External Data; Media is unchanged.

### Label boundary
- No Label implementation change in this pass.
- Target is explicitly the Apps-tab three-dot action sheet path; App Detail Label behavior is considered separately and observed functional per user report.

### Commits
- `689bec689ac3d196f16b810244d0ab7610c2ef08` — normalize install/update timestamps.
- `02a2608b58bad5c8fcd93f75ab96b1e357b0c62a` — add rooted directory-existence probe.
- `dc9078b352b6bb4359cbc21c155c5cb794ec2073` — allow root fallback for inaccessible External Data measurement.
- `86a3c478482694461dbce41320d0a2423ad9025c` — probe External Data through root before copy.

### Verification
- Source: **IMPLEMENTED**.
- CI: **PENDING / UNVERIFIED** at record time.
- Date runtime: **NOT VERIFIED**.
- External Data runtime measurement: **NOT VERIFIED**.
- External Data backup runtime: **NOT VERIFIED**.


## 2026-09-24 — GO: Apps 3-dot Label action

### Authorization / scope
- User explicitly authorized continuing the remaining **Label mockup in the Apps-tab three-dot actions sheet**.
- The E2E test itself was intentionally deferred so Date + External Data + Apps 3-dot Label can be retested together on the next build.
- App Detail Label flow remains the existing functional reference for this behavior.

### Inspect
- AppsFilterScreen three-dot action "Set app labels" previously closed the actions sheet, opened the selected app, and routed to Screen.MANAGEMENT.
- AppOrganizationBehavior already provides labels() and setLabels() backed by AppOrganizationStore.
- AppDetailScreen already has a working Label editor using a comma-separated text field and the same organization store.

### Implementation
- 278a0e57f35218e3b5831e76b01c62c8dfa1c705 — fix(apps): wire three-dot label action to editor
- Apps three-dot "Set app labels" now opens a local Label editor directly instead of routing to the Management mockup.
- Existing labels are prefilled.
- Labels are saved through AppOrganizationBehavior.setLabels() using the same comma-separated semantics as App Detail.
- Saving reloads the Apps inventory so label-backed filters/badges can observe the updated state.
- No new persistence model, backend, or provider was introduced.

### Verification
- Source update: **COMMITTED** on v1.0/rebaseline.
- CI for this new commit: **PENDING / UNVERIFIED** at time of recording.
- Device/runtime E2E: **NOT RUN by intent**, deferred for combined retest with Date + External Data.

### Next
- Verify CI/build for 278a0e57.
- Then run one combined device E2E pass covering:
  1. Install Date / Update Date;
  2. WhatsApp External Data;
  3. Apps-tab three-dot → Set app labels → edit/save/reopen/filter behavior.
