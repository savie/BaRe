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
- APK CI terakhir sudah di-install dan diverifikasi pada device.
- Dari sisi behavior yang diperiksa, tidak ada perubahan yang terlihat selain nama aplikasi.
- Password pada field authentication sudah dapat digunakan sesuai input yang diharapkan.
- Form authentication menolak interaksi lanjut ketika format email tidak valid.
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
- CI untuk commit perubahan terbaru: **PENDING**.
- Runtime verification pada device: **PENDING**.

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

### Perbaikan
- Memperbaiki syntax Kotlin yang masih menyisakan literal escaped newline pada `BaReApp.kt`.
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
