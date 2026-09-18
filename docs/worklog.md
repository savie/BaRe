# BaRe v1.0 — Worklog

Worklog adalah catatan kesinambungan pekerjaan BaRe. **Setiap pekerjaan engineering yang berdampak harus dicatat di sini setelah pekerjaan tersebut dilakukan**, termasuk audit, rekonsiliasi, perubahan dokumentasi, implementasi, test, verifikasi, deployment, dan recovery.

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

Contoh:

`Welcome`
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
  - `862c8a99be4137d98f9844d3d66ba996e1c607a2`
- Build dan runtime device belum dijalankan setelah perubahan ini; status keseluruhan tetap UNVERIFIED.

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
