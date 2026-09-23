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
- Belum ada aturan eksplisit untuk uninstall → reinstall.
- Belum ada aturan eksplisit untuk clear app data.
- Belum ada aturan eksplisit untuk factory reset.
- Belum ada aturan eksplisit untuk flash/ganti ROM pada device yang sama.
- Belum ada aturan untuk mendeteksi identity baru yang menemukan backup folder lama dan meminta recovery/import, bukan membuat folder identity baru tanpa penjelasan.
- Belum ada contract/versioning untuk identity metadata dan migration.
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
- Workflow definition confirms push-triggered Android build for `v1.0/rebaseline`; no run is currently observable through the available workflow-run lookup.
- Build and device verification therefore remain **PENDING / UNVERIFIED**.


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
- The new floating NavigationBar used `Modifier.clip(RoundedCornerShape(28.dp))`, but the required Compose extension import was missing.
- No other compile error was reported in the supplied log.

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

## 2026-09-21 — #499 Floating 4-Tab Navigation Position/Height Refinement

### Authorization
- Pengguna memberikan **GO** setelah runtime screenshot checkpoint #499.

### User Observation
- Floating 4-tab navigation sudah berfungsi, tetapi surface masih terlalu tinggi.
- Posisi horizontal sudah berada di tengah; posisi vertikal diminta sedikit lebih ke atas.

### Change
- Navigation surface height: `80.dp` → `64.dp`.
- Vertical offset: `-12.dp` untuk mengangkat floating bar dari bottom edge.
- Corner radius: `28.dp` → `24.dp` agar proporsional terhadap height baru.
- Four-tab semantics, icon-only presentation, pager navigation, dan scroll hide/show tidak diubah.

### Verification
- Runtime screenshot user: **OBSERVED** sebagai basis perubahan.
- Source change: **COMMITTED** pada `v1.0/rebaseline`, commit `1bdd46338f3ae1038bb97c8f3c8abd9b4c5a3c6d`.
- Build setelah perubahan: **UNVERIFIED**.
- Device/UI verification hasil refinement ini: **PENDING** screenshot berikutnya.

## 2026-09-21 — #499 Horizontal Centering for Floating 4-Tab Navigation

### Authorization
- Pengguna memberikan **GO** untuk menerapkan `Alignment.CenterHorizontally` / explicit horizontal centering pada floating 4-tab navigation.

### Change
- `AnimatedVisibility` dibuat full-width sebagai positioning parent.
- Ditambahkan `Box(fillMaxWidth(), contentAlignment = Alignment.Center)` sebagai parent floating navigation.
- Existing NavigationBar width `62%`, height `64.dp`, dan vertical offset `-12.dp` dipertahankan.
- Tab semantics, icon-only presentation, pager navigation, dan scroll hide/show tidak diubah.

### Verification
- Source change: **COMMITTED** pada `v1.0/rebaseline`, commit `cf9ff3228e7d27534b7b30c724d6531bd63b4b4e`.
- Build: **UNVERIFIED**.
- Device/UI horizontal centering: **PENDING** screenshot runtime berikutnya.

## 2026-09-21 — Build Failure Triage: Centered Navigation Container

### Observed
- User-provided build failed at `:app:compileDebugKotlin` after the horizontal-centering change.
- Errors included missing `content` for the `AnimatedVisibility` call, Composable-context errors, unresolved `offset`, and cascading syntax errors around the new `Box` container.

### Root Cause
- The centered `Box` wrapper introduced in the previous navigation change was not closed correctly, causing the compiler to parse the following `Scaffold`/`HorizontalPager` structure incorrectly.
- `Modifier.offset(...)` was used without importing `androidx.compose.foundation.layout.offset`.

### Change
- Added the missing `offset` import.
- Corrected the closing structure for `NavigationBar` → centered `Box` → `AnimatedVisibility`.
- No navigation behavior or geometry values were otherwise changed.
- Commit: `b87d4ffb76510894b92c5e4c1cf7fc728d79b075`.

### Verification
- Source fix: **VERIFIED STATIC** by re-fetching the affected source.
- Supplied build: **FAILED** before this fix.
- Build after this fix: **UNVERIFIED** pending a new build result.
- Device/UI: **UNVERIFIED**.

## 2026-09-21 — #502 Account Tab Mockup Rework

### Authorization
Pengguna memberikan **GO** untuk memprioritaskan **Tab Account** terlebih dahulu. Lifecycle recovery/BREC dicatat sebagai target berikutnya, tetapi implementasinya ditunda sampai mockup Account selesai.

### Reference / Scope
- Body Account dirework berdasarkan reference Swift Backup yang diberikan pengguna.
- Top/header reference tidak diikuti sebagai struktur baru; shell header BaRe tetap menjadi tanggung jawab MainShell.
- Scope hanya **Account tab body / FE mockup**.
- Access dan Storage tidak dipindahkan ke Settings pada slice ini; keduanya tetap temporary Home entry sesuai checkpoint sebelumnya.
- Recovery lifecycle/BREC tidak diubah pada slice ini.

### Implemented
- Account tab sekarang memiliki section **Account** dengan account/local identity card.
- Card menampilkan identity context, device, avatar B, dan action surface mockup.
- Section **Settings** mengikuti pola body reference dengan menu:
  - Settings
  - Diagnostics
  - Language
  - Help center
  - Contact
  - Rate BaRe
  - Share BaRe
  - About
- Teks dan branding disesuaikan ke BaRe.
- Account tab menerima identityType dan accountEmail dari MainShell agar body dapat menampilkan context yang sesuai.
- Menu yang sudah memiliki destination (Settings, Diagnostics) tetap menggunakan navigation contract existing; item lain masih FE mockup dan belum mengklaim backend/action implementation.

### Verification
- AccountScreen source update: **COMMITTED** pada commit b74556e1e03a3a6278098bf32156bdfa7bbe401e.
- Account strings update: **COMMITTED** pada commit 587473d69e45ce9b1c5d4416f5a4f199c3c1b3e8.
- MainShell Account context wiring: **COMMITTED** pada commit fe83bb73979ef18e7a3a0b97294586e4b6f8f667.
- Static source/build verification setelah perubahan: **UNVERIFIED**.
- Device/UI visual verification: **UNVERIFIED**.
- CI result: **UNVERIFIED** sampai workflow run baru terobservasi.

### Next
1. Build/CI verification Account mockup.
2. Device visual review Account body terhadap reference.
3. Setelah Account mockup stabil, lanjut ke **durable recovery lifecycle / BREC v2 consistency**:
   - state update,
   - recovery artifact refresh,
   - recovery bootstrap,
   - clear app data/uninstall/ROM-change scenario,
   - verification evidence.


## 2026-09-21 — Build Failure Triage: Duplicate Account Resource

### Observed
- User-provided build failed at `:app:mergeDebugResources`.
- Exact error: `Found item String/connect_account more than one time` in `app/src/main/res/values/strings.xml`.
- Static inspection found two identical `connect_account` resources at lines 180 and 205 of the build input.

### Root Cause
- Account mockup rework introduced a new `connect_account` string even though the resource already existed for the existing Cloud/Account flow.
- This is a resource-definition collision, not an Account UI runtime failure.

### Change
- Removed the duplicate `connect_account` declaration and retained the existing canonical resource.
- Fix commit: `6af6512398050efe0fe50f1b78874f6038f91741`.

### Verification
- Static re-fetch after change: **VERIFIED STATIC**.
- Current `connect_account` declaration count: 1.
- Supplied build result: **FAILED** at resource merge before this fix.
- Build after this fix: **UNVERIFIED** pending a new build result.
- Device/UI verification: **UNVERIFIED**.


## 2026-09-21 — Build Failure Triage: Duplicate Account Resource

### Observed
- User-provided build failed at :app:mergeDebugResources.
- Exact error: Found item String/connect_account more than one time in app/src/main/res/values/strings.xml.
- Static inspection found two identical connect_account resources at lines 180 and 205 of the build input.

### Root Cause
- Account mockup rework introduced a new connect_account string even though the resource already existed for the existing Cloud/Account flow.
- This is a resource-definition collision, not an Account UI runtime failure.

### Change
- Removed the duplicate connect_account declaration and retained the existing canonical resource.
- Fix commit: 6af6512398050efe0fe50f1b78874f6038f91741.

### Verification
- Static re-fetch after change: VERIFIED STATIC.
- Current connect_account declaration count: 1.
- Supplied build result: FAILED at resource merge before this fix.
- Build after this fix: UNVERIFIED pending a new build result.
- Device/UI verification: UNVERIFIED.


## 2026-09-21 — Build Failure Triage: Account Call-Site Syntax

### Observed
- User-provided build reached `:app:compileDebugKotlin` but failed during Kotlin compilation.
- The supplied excerpt omitted the individual compiler diagnostics, so the exact compiler message was not available in the user-provided tail.

### Inspection
- Static inspection of the current source found the AccountScreen call-site in `BaReApp.kt` contained literal escaped newline sequences (`\\n`) inside Kotlin source instead of actual line breaks.
- This is invalid Kotlin syntax and is consistent with a compile-time failure in the Account mockup wiring.

### Change
- Replaced the literal escaped newline sequences with normal Kotlin multiline formatting.
- No Account behavior or UI scope changed.
- Fix commit: `8ed5516d0682f84d2ccaaa2d0e577c0cd1734d36`.

### Verification
- Source fix: **VERIFIED STATIC** by re-fetching the affected file.
- Supplied build: **FAILED** at Kotlin compilation; exact diagnostics unavailable in supplied excerpt.
- Build after this fix: **UNVERIFIED** pending a new build result.
- Device/UI Account verification: **UNVERIFIED**.


## 2026-09-21 — Build Failure Triage: Account Preview Contract

### Observed
- User-provided build failed at `:app:compileDebugKotlin`.
- Exact diagnostics: `PreviewScreens.kt:68:17 No value passed for parameter 'onOpen'` and `PreviewScreens.kt:68:31 Argument type mismatch: actual type is Function0<Unit>, but String was expected`.
- `stripDebugDebugSymbols` warning for `libandroidx.graphics.path.so` is non-fatal packaging behavior and is not the compile blocker.

### Root Cause
- `AccountScreen` contract now requires `onOpen: (Screen) -> Unit`, but the preview still invoked the old zero-argument form `AccountScreen {}`.
- The trailing lambda was therefore interpreted against the wrong parameter contract.

### Change
- Updated preview invocation to `AccountScreen(onOpen = {})`.
- Fix commit: `c4700c66264a171017cc941422f12bf70fbd7c83`.

### Verification
- Source fix: **VERIFIED STATIC**.
- Supplied build: **FAILED** at Kotlin compilation before this fix.
- Build after this fix: **UNVERIFIED** pending new build result.
- Device/UI Account verification: **UNVERIFIED**.

### Active Priority List
1. **Account tab**
2. **Recovery lifecycle / BREC**
3. **Global header vs local header**


## 2026-09-21 — #509 Settings Flow Rework

### Authorization
Pengguna memberikan **GO** untuk melanjutkan ke flow **Settings** berdasarkan reference yang diberikan. Scope mencakup struktur/settings flow, header local dengan tinggi yang disamakan dengan global header BaRe, adaptasi ke capability BaRe, dan menerapkan capability yang sudah dapat dibuat nyata tanpa mengklaim capability yang belum tersedia.

### Reference / Scope
- Reference body dibagi menjadi:
  - Appearance and language
  - Backup content
  - Storage and security
  - Notifications
  - Advanced tools
  - Help and info
- Local Settings header menggunakan 96.dp, sama dengan MainShell global header saat ini.
- Surface settings dibuat compact dan grouped agar mendekati reference.
- Visual polish warna/ukuran detail lebih lanjut tetap dapat ditunda sesuai checkpoint pengguna sebelumnya.

### Implemented
- Menambahkan SettingsScreen sebagai flow Settings native, menggantikan GenericDomainScreen mockup untuk Screen.SETTINGS.
- Menambahkan persistent SettingsStore untuk:
  - App theme: System / Light / Dark.
  - Dynamic colors.
  - AMOLED black backgrounds.
- BaReTheme sekarang membaca state tersebut dan mendukung:
  - system/light/dark selection,
  - Material 3 dynamic color pada Android 12+,
  - AMOLED black dark palette.
- Settings destinations dihubungkan ke flow BaRe yang sudah ada:
  - App backups → Apps tab.
  - Messages / Call Logs / Folder backups → domain surfaces existing.
  - Cloud backups → Cloud surface existing.
  - Encryption password strategy / Recovery → existing recovery flow.
  - Diagnostics → existing diagnostics surface.
- Manage space membuka Android internal storage settings.
- Manage notifications membuka notification settings untuk package BaRe.
- Restart app menjalankan ulang launcher activity BaRe.
- About menampilkan version dari BuildConfig.VERSION_NAME.
- Contact membuka email composer jika handler tersedia.
- Capability yang belum tersedia tidak dipalsukan:
  - notification sound pipeline tetap disabled dan diberi status eksplisit,
  - Help center tetap disabled karena help surface native BaRe belum tersedia,
  - Language tetap English karena localization flow belum tersedia.

### Commits
- 2ab0ad7844791191e94e86445fd722ed35bf980e — persistent settings store.
- 734081ff7b339c27cdae1893e50c4ead6df95475 — SettingsScreen.
- ebc700c60d62706b749087615802e1bc3fd90030 — route Settings away from GenericDomainScreen.
- 1aad89cceb594179cabe631f6e21213393acaafc — configurable theme/dynamic colors.
- f550ba3cf16ca39949cb2accee6b43d3f01ed48c — settings strings.
- e0e7cd71c15e49658608266ab0647d1b5029d13c — wire settings state into app shell.
- e6709d6d13a9bca4fd8d0761a4a72b544562220c — wire settings state into MiscScreen.
- d9be33a97741daac123cbfa0df6fc987d5f50f10 — make unavailable help flow explicit.
- ce8017c3b0850966efdfe50e02dbad1f83cb583c — clarify unavailable help surface.

### Verification
- Repository source re-fetched from branch v1.0/rebaseline after changes: VERIFIED STATIC.
- GitHub combined status for latest commit: no status reported yet.
- GitHub Actions workflow run for latest commit: not observed through available workflow-run endpoint.
- Local build/device verification: UNVERIFIED.
- Therefore implementation is COMMITTED + STATIC-VERIFIED, not claimed runtime-verified.

### Next
1. Build/CI verification for Settings flow.
2. Device/UI review against reference, especially header 96dp and compact row geometry.
3. Then continue lifecycle recovery / BREC consistency.


## 2026-09-21 — Settings Build Failure Triage

### Observed
CI build command gradle :app:assembleDebug --no-daemon reached :app:compileDebugKotlin and failed with two source errors:
- MiscScreens.kt:205:22 Unresolved reference 'onOpen'.
- SettingsScreen.kt:26:17 and :289:74 unresolved BuildConfig.

stripDebugDebugSymbols warning for libandroidx.graphics.path.so is non-fatal packaging behavior and is not the compile blocker.

### Root Cause
1. MiscScreen was refactored to receive the new Settings state parameters, but its existing onOpen: (Screen) -> Unit navigation contract was not included in the updated function signature.
2. Settings About used com.bare.BuildConfig.VERSION_NAME. The current build configuration does not expose that generated symbol to this source compilation path, so the reference is not valid in the observed CI environment.

### Change
- Restored onOpen: (Screen) -> Unit to MiscScreen and passed onOpenScreen from MainShell.
- Replaced BuildConfig.VERSION_NAME with the installed package version obtained through context.packageManager.getPackageInfo(...).versionName.
- No capability was downgraded to mockup; this is a compile-fix only.

### Verification
- Affected files re-fetched from v1.0/rebaseline after the fixes: VERIFIED STATIC.
- SettingsScreen.kt no longer references BuildConfig.
- MiscScreen signature now declares onOpen, and MainShell passes it.
- New CI/build result after these fixes: UNVERIFIED pending the next run.

### Commits
- 1380530b68231d66135e0c807ffa9e9fa8a8ff71 — restore Settings navigation contract.
- 0daae968f60076fa9ea7a334cd039d917f0d649e — pass navigation callback from MainShell.
- e601cdd04cc9d47fdc4a050901b71ca1984a6748 — remove BuildConfig dependency from Settings About.

### Next
Run the same debug build again. If it passes, proceed to device/UI verification of Settings against the reference.

## 2026-09-21 — Settings Build Failure Triage #2

### Observed
The repeated debug build progressed through resource processing and failed only at Kotlin compilation:
- SettingsScreen.kt:292:60 — Unresolved reference 'unknown'.

The libandroidx.graphics.path.so strip message remains a non-fatal packaging warning.

### Root Cause
The previous BuildConfig replacement introduced stringResource(R.string.unknown) as the fallback for a nullable package version, but the unknown string resource does not exist.

### Change
- Replaced the missing resource fallback with the literal "unknown".
- No Settings behavior or scope changed.

### Verification
- Affected source re-fetched after change: VERIFIED STATIC.
- New build result after this fix: UNVERIFIED pending the next CI run.

### Commit
- 444e80b6f292f6e43c5abea8ace1eb33995bc6e3 — literal version fallback.

## 2026-09-21 — #509 Settings Flow Rework: Remove Mockup Destinations

### Authorization
User confirmed GO after identifying that the initial Settings implementation still exposed GenericDomainScreen mockups. Settings scope is now treated as Account → Settings with real capability routing where available and explicit unavailable state where not implemented.

### Change
- Settings is entered from Account → Settings; it is not a new bottom-navigation tab.
- App backups remains connected to the existing Apps tab.
- Cloud backups remains connected to the existing Cloud flow.
- Recovery remains connected to the existing RecoveryScreen/export-import flow.
- Manage notifications opens Android app notification settings.
- Manage space opens Android internal storage settings.
- Restart app performs an actual launcher-activity restart.
- About uses the installed package version.
- Contact opens the system email composer.
- Local storage now uses the existing StorageConfigurationStore for the actual persisted storage kind.
- External SAF selection is explicitly disabled here because this Settings surface does not yet own the required folder-picker/URI lifecycle.
- Messages, Call Logs, Folder backups, and Diagnostics no longer navigate to GenericDomainScreen from Settings; they are explicitly marked unavailable instead of presenting mockup capability.

### Verification
- Settings source re-fetched after the change: VERIFIED STATIC.
- No unsupported Settings destination is intentionally presented as an implemented capability.
- Build after this change: UNVERIFIED pending CI run.
- Device/UI verification: UNVERIFIED.

### Commits
- eabf719edc20d6973d7168854cd7a98af76ebc1e — replace unsupported Settings mockups with real or explicit unavailable flows.
- d4aaa1fa2c5facc3bb8440cb4965cc66867700a7 — keep external storage selection explicit until SAF flow is wired.

### Next
Run debug build. If green, verify the runtime path Account → Settings and each enabled Settings action on device.

## 2026-09-21 — #523 Audit Total Implementasi BaRe (Implementation-Only Baseline)

### Authorization
Pengguna memberikan **GO** untuk melakukan audit total implementasi **BaRe saja** pada branch `v1.0/rebaseline`. Scope audit sengaja dibatasi pada kondisi implementasi BaRe yang dapat diamati dari repository/source saat ini. Tidak dilakukan rekonsiliasi dengan Swift/reference, tidak membuka boundary capability eksternal, dan tidak membuat perubahan architecture berdasarkan hasil audit ini.

### Audit Boundary
Audit ini memeriksa:
- source implementation yang benar-benar ada;
- navigation dan screen wiring;
- persistence/state yang benar-benar digunakan;
- Android/platform integration yang benar-benar dipanggil;
- capability provider yang benar-benar ada;
- recovery/storage implementation yang benar-benar ada;
- test source yang benar-benar ada;
- bagian yang masih mockup/static/unavailable;
- gap antara surface UI dan implementation di belakangnya.

Audit ini **bukan runtime/device verification**. Tidak ada claim bahwa APK BaRe berjalan benar hanya berdasarkan source.

### Observed — Product Shell / Navigation
- `MainActivity.kt` tetap menjadi entry point minimal.
- App shell berada di `BaReApp.kt`.
- Primary navigation saat ini memiliki 4 tab: Home, Apps, Schedules, Account.
- Startup flow yang benar-benar diwiring di source:
  `Welcome → Login/Local Setup → Access Method → Storage Setup → App`.
- Screen enum masih mencakup banyak domain surface: Apps, Folders, Messages, Call Logs, Wi-Fi, Wallpapers, Storage, Cloud, Management, Diagnostics, Settings, Import/Export, Task, Schedule.
- Banyak screen domain tersebut masih diarahkan ke `GenericDomainScreen` atau state mockup dan tidak boleh dianggap capability implementation.

### Observed — Real Implementation yang Sudah Ada
1. **Identity / Local persistence**
   - `LocalIdentityStore` menyimpan LOCAL identity, setup completion, dan access method pada SharedPreferences.
   - Local identity memakai UUID.
   - `loadOrRecover()` dapat bootstrap identity dari recovery artifact yang ditemukan pada local/removable storage.
   - Recovery restore menolak conflict dengan identity LOCAL yang sudah terpasang.

2. **Access capability**
   - `AccessCapabilityResolver` memisahkan NON_ROOT dan ROOT.
   - NON_ROOT probe menggunakan Android app-visible APIs.
   - ROOT melakukan `su` probe.
   - Root flow memiliki permission-grant attempt melalui `pm grant` dan AppOps untuk `MANAGE_EXTERNAL_STORAGE`.
   - Root provider juga memiliki package APK copy dan directory preparation melalui root.
   - Ini adalah implementation nyata, tetapi belum membuktikan seluruh backup capability tersedia pada mode tersebut.

3. **Storage foundation**
   - `BackupStorageRepository` memiliki internal/removable storage inspection.
   - Storage initialization membuat:
     `BaRe/accounts/<identity>/backups`
     dan
     `BaRe/accounts/<identity>/recovery`.
   - Ada writable/available/space inspection.
   - External/removable storage masih menggunakan storage-volume path; Settings belum memiliki SAF URI lifecycle sendiri.
   - Remote/Cloud storage masih unavailable/static pada repository.

4. **Recovery / BREC**
   - `RecoveryPackageCodec` benar-benar melakukan versioned container encoding/decoding.
   - Current package version: v2.
   - KDF: PBKDF2-HMAC-SHA256, 310,000 iterations.
   - Encryption: AES-256-GCM.
   - Bootstrap identity dapat dibaca tanpa password.
   - `RecoveryArtifactRepository` memiliki export/import melalui SAF dan direct File path.
   - Write path menggunakan `.partial`, read-back/decode verification, lalu rename/finalize.
   - Test source tersedia untuk version, round-trip, wrong password, tampering, dan bootstrap identity.

5. **Apps discovery / inspection**
   - `InstalledAppRepository` membaca installed applications dari PackageManager secara nyata.
   - Metadata yang diambil mencakup package identity, system/user state, enabled state, install/update time, APK/split size, dan installer source.
   - `AppDetailsRepository` membaca detail package, version, APK/split paths, launch capability, dan Android App Info capability.
   - Search juga menggunakan installed-app repository, bukan demo list.
   - `AppOrganizationStore` memiliki persistence nyata untuk favorites dan labels.
   - `AppUsageRepository` memiliki integration UsageStats bila usage access tersedia.

6. **APK artifact collection**
   - NON_ROOT provider dapat menyalin base APK dan split APK dari `ApplicationInfo.sourceDir` / `splitSourceDirs`.
   - ROOT provider dapat mengambil APK paths melalui `pm path` dan menyalin file melalui root.
   - Ini merupakan partial artifact capability, bukan backup/restore implementation penuh.

7. **Settings / platform integration**
   - Theme mode, dynamic colors, dan AMOLED black dipersistenkan melalui `SettingsStore`.
   - Settings dapat membuka Android notification settings dan internal storage settings.
   - Restart app menggunakan launcher activity.
   - About membaca package version.
   - Contact membuka system email composer.
   - Settings tidak lagi menyajikan beberapa destination unsupported sebagai GenericDomainScreen; Messages, Call Logs, Folder backups, dan Diagnostics ditandai unavailable.
   - Local storage Settings membaca existing `StorageConfigurationStore`, tetapi belum menjadi owner lifecycle storage selection yang lengkap.

### Observed — Masih Mockup / Partial / Unavailable
- **Account authentication**: UI Sign In / Sign Up / Forgot Password ada, tetapi provider/backend/session authentication belum ada.
- **Google sign-in**: UI/form path ada, tetapi authentication implementation belum ada.
- **Backup execution**: belum ditemukan operation engine yang melakukan backup end-to-end.
- **Restore execution**: belum ditemukan restore engine end-to-end.
- **App data backup**: belum ada implementation end-to-end.
- **Folders**: surface masih GenericDomainScreen/mockup.
- **Messages**: surface masih GenericDomainScreen/mockup.
- **Call Logs**: surface masih GenericDomainScreen/mockup.
- **Wi-Fi**: belum ada capability execution yang terverifikasi dari source audit ini.
- **Wallpapers**: belum ada capability execution yang terverifikasi.
- **Schedules**: UI ada, tetapi create/run/background execution masih mockup.
- **Cloud/Remote**: CloudScreen ada sebagai UI, provider rows masih disconnected/static; transfer/sync provider implementation belum ada.
- **Management**: sebagian persistence nyata untuk app favorites/labels ada, tetapi product management scope belum lengkap.
- **Diagnostics**: surface ada, backend diagnostics/operation log pipeline belum ditemukan.
- **Compression**: belum ditemukan archive compression implementation.
- **General archive/backup format**: recovery archive ada, tetapi itu tidak sama dengan backup archive engine.
- **Import/Export product workflows**: recovery import/export nyata; APK/APKS/general product import/export belum lengkap.
- **External SAF storage switching from Settings**: belum lengkap karena Settings tidak memiliki folder-picker/URI ownership lifecycle.
- **Language**: UI tetap English; no localization switching flow.
- **Notification sound pipeline**: unavailable/disabled.

### Observed — Test / Verification Surface
- Ditemukan unit test source untuk `RecoveryPackageCodec`.
- Tidak ditemukan evidence dari audit source bahwa seluruh capability matrix sudah memiliki runtime test suite.
- Source build configuration dan workflow CI tersedia.
- Runtime device verification tidak dilakukan pada audit ini.
- Tidak ada BaRe APK artifact/runtime session yang digunakan sebagai proof dalam audit ini; status runtime tetap **UNVERIFIED**.

### Implementation Baseline
Berdasarkan source yang terobservasi:

| Area | Current state |
|---|---|
| Product shell/navigation | **IMPLEMENTED AS UI** |
| Welcome/onboarding flow | **PARTIAL / IMPLEMENTED UI + real local/access/storage foundations** |
| Local identity persistence | **IMPLEMENTED** |
| Root/non-root capability probing | **IMPLEMENTED** |
| Local storage initialization | **IMPLEMENTED PARTIAL** |
| Recovery/BREC | **IMPLEMENTED** |
| Recovery tests | **IMPLEMENTED TEST SOURCE** |
| App discovery | **IMPLEMENTED** |
| App detail inspection | **IMPLEMENTED** |
| APK artifact copy | **IMPLEMENTED PARTIAL** |
| App backup | **NOT IMPLEMENTED** |
| App restore | **NOT IMPLEMENTED** |
| App data backup/restore | **NOT IMPLEMENTED** |
| Folder backup/restore | **MOCKUP** |
| Messages backup/restore | **MOCKUP** |
| Call Logs backup/restore | **MOCKUP** |
| Wi-Fi backup/restore | **NOT IMPLEMENTED / UNVERIFIED** |
| Wallpapers | **NOT IMPLEMENTED / UNVERIFIED** |
| Scheduling execution | **MOCKUP** |
| Cloud transfer/sync | **NOT IMPLEMENTED / UI ONLY** |
| Management | **PARTIAL** |
| Diagnostics backend | **NOT IMPLEMENTED / UNVERIFIED** |
| Compression | **NOT IMPLEMENTED / UNVERIFIED** |
| Product backup archive | **NOT IMPLEMENTED** |
| Recovery import/export | **IMPLEMENTED** |
| Settings persistence/system actions | **IMPLEMENTED PARTIAL** |
| Account authentication | **NOT IMPLEMENTED** |
| Language switching | **NOT IMPLEMENTED** |
| Runtime/device verification | **UNVERIFIED** |

### Important Findings
- BaRe **sudah tidak berada pada kondisi “UI shell only”**. Source saat ini memiliki beberapa implementation foundation nyata: identity persistence, access probing, root operations, storage initialization, recovery/BREC, app discovery/detail inspection, APK artifact copying, app organization persistence, dan beberapa Settings/platform integrations.
- Namun implementation tersebut **belum membentuk backup/restore product end-to-end**.
- Recovery/BREC adalah capability nyata yang sudah memiliki crypto, persistence integration, atomic-ish staging/finalization, dan unit tests; tetapi recovery artifact tidak boleh disamakan dengan general backup archive.
- App discovery/detail dan APK copy adalah capability nyata/partial; belum ada evidence bahwa app backup/restore lengkap sudah implemented.
- UI surface masih jauh lebih luas daripada implementation backend. Generic/mockup surfaces harus tetap diperlakukan sebagai UX shell, bukan supported capability.
- Storage sudah memiliki implementation foundation di onboarding. Settings saat ini hanya membaca/mengelola sebagian state yang sudah ada; ownership lifecycle belum perlu diubah dalam audit ini.

### Audit Conclusion
**Current BaRe implementation state: PARTIAL IMPLEMENTATION / UI + SHARED FOUNDATIONS / NO END-TO-END BACKUP-RESTORE VERIFICATION.**

Audit ini tidak menghasilkan perubahan source implementation dan tidak mengubah boundary/domain ownership. Hasilnya hanya menjadi baseline aktual untuk pekerjaan berikutnya.

### Verification
- Branch target: `v1.0/rebaseline`.
- Repository structure dan source paths: **OBSERVED**.
- Implementation claims di atas diturunkan dari source aktual yang berhasil di-fetch dari branch.
- Runtime/device behavior: **UNVERIFIED**.
- CI/build status terbaru setelah Settings changes: **UNVERIFIED** dari evidence yang tersedia pada audit ini.
- Tidak ada comparison terhadap Swift/reference dalam audit ini.

### Next
1. Gunakan baseline audit ini sebagai satu-satunya current implementation view.
2. Jangan memperluas scope ke reference comparison sampai audit/implementation BaRe membutuhkan evidence tersebut.
3. Pilih next work hanya dari gap BaRe yang nyata dan prerequisite yang diperlukan.
4. Jangan menganggap screen/menu yang masih mockup sebagai supported capability.


## 2026-09-21 — #524 Unify Local Backup Storage Flow (Onboarding / Home / Account → Settings)

### User Goal
Menyelesaikan flow **storage for local backup** terlebih dahulu dan menjaga boundary yang jelas:
- **Onboarding → Storage Setup**: Internal, External, Cloud.
- **Home → Backup Storage**: Internal, External, Cloud.
- **Account → Settings → Storage for local backups**: **Internal dan External saja**; Cloud tetap berada pada flow Cloud terpisah.

### Implementation
- Menambahkan `storage/LocalBackupStorageService.kt` sebagai shared service untuk initialization local backup storage.
- Onboarding `StorageSetupScreen` sekarang menggunakan shared local-storage service yang sama.
- Home `Backup Storage` menggunakan shared local-storage service yang sama untuk Internal/External.
- Settings sekarang menerima `identityId`, membaca actual storage availability dari `BackupStorageRepository`, dan dapat menjalankan initialization untuk Internal/External.
- Settings tidak lagi memperlakukan External sebagai mockup/disabled karena alasan SAF; current repository model menggunakan mounted removable storage sebagai `BackupStorage.Kind.EXTERNAL`.
- Settings tetap tidak menampilkan Cloud pada selector **Storage for local backups**.
- Storage configuration tetap dibatasi pada `INTERNAL` / `EXTERNAL`; `REMOTE` tidak dipersist sebagai local backup storage.
- Radio option yang unavailable dibuat non-interactive.

### Boundary
```
Onboarding
  Storage Setup
    ├─ Internal
    ├─ External
    └─ Cloud

Home
  Backup Storage
    ├─ Internal
    ├─ External
    └─ Cloud

Account
  Settings
    Storage for local backups
      ├─ Internal
      └─ External
```

### Evidence / Verification
- Source changes committed on `v1.0/rebaseline`.
- CI Android build was triggered automatically after source commits; latest run observed **IN_PROGRESS** at time of this entry.
- Runtime/device UI verification: **UNVERIFIED**.
- External storage behavior is based on the current `BackupStorageRepository` implementation: mounted removable storage is the current External storage mechanism. SAF folder/URI ownership is still a separate future concern and was not introduced into this flow.

### Next
1. Wait for latest CI result and repair any build error before further feature work.
2. After build passes, verify the three user journeys on device:
   - Onboarding → Storage Setup → Internal/External/Cloud.
   - Home → Backup Storage → Internal/External/Cloud.
   - Account → Settings → Storage for local backups → Internal/External.
3. Do not start unrelated architecture cleanup until this flow is runtime-verified.


## 2026-09-21 — #525 Fix Settings Local Storage Radio Alignment

### Observed
Screenshot/device UI menunjukkan RadioButton pada dialog **Storage for local backups** tidak memiliki alignment horizontal yang konsisten antara **Internal storage** dan **External storage**. State disabled External membuat posisi visual terlihat bergeser.

### Change
- Replaced the Material3 `RadioButton` interaction surface in `StorageOption` with a fixed `48.dp` control box and a fixed `20.dp` visual radio.
- Selected/unselected/disabled states now share the exact same layout bounds.
- Row spacing and vertical padding remain compact; only the radio control geometry was normalized.
- No storage behavior or persistence semantics changed.

### Verification
- Source change committed: `897a4700f3b3b4bc098b352347ab76a43e40bc78`.
- CI run #533 for previous storage-flow changes: **PASS**.
- CI run #534 for this visual fix: **QUEUED** at entry time.
- Device screenshot after this change: **UNVERIFIED**; visual confirmation still requires installing/running the new APK.

### Next
After CI #534 passes, install the resulting APK and verify the two radio controls visually align in the Settings dialog for both enabled and disabled External states.


## 2026-09-21 — #526 Replace Android Storage Settings with BaRe Manage Space

### User Goal
Settings → **Manage space** harus menjadi flow BaRe sendiri, mengambil konsep fungsional dari reference Manage Space, tetapi tidak membuka Android Storage Settings dan tidak membuat capability yang belum dimiliki BaRe.

### Implementation
- Menambahkan `Screen.MANAGE_SPACE` dan `ManageSpaceScreen`.
- Settings → Manage space sekarang membuka screen BaRe sendiri.
- Screen menampilkan:
  - local identity / local backup storage,
  - backup file size,
  - recovery package size,
  - backup location,
  - Reset app settings,
  - Delete backup files,
  - Delete all BaRe data.
- Backup/recovery size dan location dibaca dari filesystem BaRe aktual melalui `BackupStorageRepository`.
- Delete backup files menghapus isi folder backup dan membuat ulang folder backup.
- Delete all BaRe data menghapus folder identity BaRe pada internal dan mounted removable storage yang ditemukan, lalu mereset Settings/Storage preferences.
- Reset app settings mereset appearance dan storage preferences tanpa menghapus backup/recovery files.
- Tidak dibuat tombol Cloud Cache karena cloud cache/backend BaRe belum merupakan capability nyata; tidak boleh dimockup sebagai operasi nyata.
- Tidak lagi memakai `Settings.ACTION_INTERNAL_STORAGE_SETTINGS`.

### Boundary
```
Account
  → Settings
    → Manage space
       → BaRe local storage/data management

Android Settings
  → tidak digunakan untuk flow ini
```

### Verification
- Source implementation committed on `v1.0/rebaseline`.
- CI runs triggered automatically after changes; latest observed runs were still **IN_PROGRESS** at entry time.
- Device UI/runtime verification: **UNVERIFIED**.
- Destructive operations are confirmation-gated.

### Next
1. Repair any CI/build error before additional changes.
2. After CI PASS, install APK and visually verify Manage space against the reference concept using BaRe visual language.
3. Verify actual backup-size/location reporting and destructive operation behavior on a controlled test identity.


## 2026-09-21 — #527 CI #541 Failure Classification

### Observed
CI run **#541** pada commit `89d9bdc15e7eb2da030045d819a4b44960c93264` berstatus **FAILURE**.

### Evidence
- Workflow: `BaRe Android Build`
- Job: `build`
- Failed step: `Setup Gradle`
- Job selesai sebelum compilation/build step dijalankan.
- Log yang tersedia menunjukkan Gradle 8.11 gagal diprovision karena HTTP **504** saat download distribution, termasuk retry.
- Wrapper validation berhasil sebelum provisioning.

### Classification
**CI infrastructure / Gradle distribution provisioning failure.**

Run #541 belum memberikan evidence adanya Kotlin/source/build error pada perubahan Manage Space.

### Comparison
- CI #540: PASS
- CI #539: PASS
- CI #538: PASS
- CI #537: PASS
- CI #536: PASS
- CI #535: PASS
- CI #534: PASS
- CI #533: PASS

Dengan demikian #541 adalah failure terbaru, tetapi failure terjadi pada Setup Gradle dan bukan pada compilation BaRe.

### Verification Status
- Manage Space source compilation: **UNVERIFIED on #541** karena build tidak mencapai compilation.
- Previous source changes through CI #540: **PASS**.
- Device/runtime: **UNVERIFIED**.

### Next
Retry CI/build; jika retry mencapai compilation dan menghasilkan source error, repair error tersebut berdasarkan log aktual.


## 2026-09-21 — #528 Complete Manage Space Data Wipe Semantics

### User Decision
- **Delete all data** berarti seluruh data yang dapat dihapus BaRe melalui mekanisme yang tersedia pada device, untuk root maupun non-root.
- Label `Delete all BaRe data` disederhanakan menjadi **Delete all data** mengikuti header/penamaan UI.
- Cloud cache tetap **OUT OF SCOPE** sampai keputusan account/cloud lifecycle dibuat.
- Reset settings dilanjutkan dengan scope settings yang teridentifikasi; tidak dianggap sebagai full app-data wipe.

### Implementation
- `Delete all data` tetap menghapus local backup/recovery identity data pada internal dan mounted external storage.
- Setelah itu, flow sekarang juga membersihkan private app state yang dapat dihapus tanpa menghapus APK/process container:
  - `bare_identity`
  - `bare_settings`
  - `bare_storage`
  - app files
  - cache
  - code cache
  - no-backup files
  - app databases
- Setelah full data wipe, app direstart ke launcher entry point agar state in-memory lama tidak dipakai lagi.
- Reset app settings tetap hanya membersihkan settings/storage preferences yang menjadi scope settings; backup/recovery tidak ikut dihapus.
- Tidak ada perubahan pada Cloud/Cloud Cache.

### Verification
- Source change committed on `v1.0/rebaseline`.
- CI/device verification: **PENDING** setelah perubahan ini.
- Full wipe behavior still needs controlled runtime verification for both non-root and root-capable paths.


## 2026-09-22 — #550 Settings Encryption Password Strategy

### User Goal
Settings → **Encryption password strategy** mengikuti reference flow:
- Standard / Advanced selectable strategy.
- Description berubah mengikuti strategy.
- Advanced menyediakan **Set user password**.
- Set user password memiliki active password dan old passwords flow.
- UI text wajib menggunakan strings.xml.
- Navigation tetap bertingkat saat Back digunakan.

### Implementation
- Added EncryptionPasswordStrategy persistence with Standard as the default.
- Added Android Keystore-backed AES/GCM encryption for stored active/old user-password material.
- Added EncryptionPasswordStrategyScreen.
- Added UserPasswordScreen with active password state, new/change password dialog, password confirmation, visibility toggle, and old password storage flow.
- Settings encryption row now opens the dedicated strategy screen.
- Settings subtitle dynamically reflects Standard / Advanced.
- Advanced card contains SET USER PASSWORD and only enables it when Advanced is selected.
- Added screen-stack routing:
  Settings → Encryption password strategy → Set user password
  and Back returns one level at a time.
- All new user-facing strings are in strings.xml; source scan for the new screens found no hardcoded UI literals.

### Verification
- Source changes committed on v1.0/rebaseline.
- Resource references for the new screens: VERIFIED; no missing string resources.
- Hardcoded UI scan for the new screens: VERIFIED clean.
- CI/build for latest commit: PENDING / no workflow run observed yet.
- Device/runtime verification: UNVERIFIED.

### Boundary
The password store/persistence flow is implemented, but integration of this strategy into the future backup encryption engine is not claimed as verified. No Cloud flow was changed.


## 2026-09-22 — #551 Clarify Backup Encryption vs Recovery Boundary

### User Clarification
- Recovery package BaRe yang sudah ada dipahami sebagai mekanisme **account/identity recovery / continuity**.
- Encryption password strategy yang baru dibuat dipahami sebagai **backup encryption strategy**, mengikuti reference Swift Backup.
- Kedua lifecycle tersebut tidak boleh digabung hanya karena keduanya sama-sama menggunakan encryption.

### Reference Evidence
- Swift Backup reference memiliki password strategy untuk **encrypted app backups**, dengan strategy:
  - STANDARD_PASSWORD;
  - USER_PASSWORD.
- Reference backup artifact menggunakan password material yang diproses melalui KDF sebelum menjadi archive encryption key.
- Artifact app-backup yang diaudit menggunakan Argon2id dan AEGIS-256.
- User password pada strategy USER_PASSWORD menjadi bagian dari password material untuk menghasilkan final backup encryption material.
- Active/old password behavior merupakan bagian dari backup encryption compatibility, bukan account/identity recovery.
- Reference evidence tetap berstatus static/decompiled evidence; reference APK tidak runtime-tested.

### BaRe Current Implementation Boundary
```
REFERENCE
Swift Backup
  └── Backup Encryption
       ├── Standard password strategy
       ├── User password strategy
       └── encrypted backup artifact

BARE
  ├── Recovery / Identity Continuity
  │    └── RecoveryPackageCodec / RecoveryArtifactRepository
  │
  └── Backup Encryption Strategy
       └── EncryptionPasswordStore + Settings UI
```

- BaRe RecoveryPackageCodec **tidak diubah** untuk mengikuti encryption password strategy reference.
- EncryptionPasswordStore saat ini baru menyediakan persistence/secure storage untuk strategy dan active/old user-password material.
- Integration dari EncryptionPasswordStrategy ke **actual BaRe backup engine** belum ada dan tidak boleh diklaim selesai.
- Standard/Advanced UI flow yang green bukan bukti bahwa backup artifact BaRe sudah menggunakan strategy tersebut.

### Decision / Requirement Boundary
- **Requirement:** Encryption password strategy harus direconcile ke **backup engine**, bukan recovery package.
- **Requirement:** recovery package tetap mempunyai lifecycle terpisah.
- **Unknown:** detail final backup-engine integration BaRe sampai actual backup artifact/engine implementation ditemukan dan diverifikasi.
- Tidak ada perubahan Cloud pada entry ini.

### Verification
- CI for #550: **GREEN** berdasarkan user-provided CI result.
- Settings encryption strategy UI: implementation exists.
- Password material secure persistence: implementation exists.
- Backup encryption integration: **NOT IMPLEMENTED / NOT VERIFIED**.
- Recovery encryption and backup encryption remain explicitly separated.


## 2026-09-22 — #552 Settings Reference Surface Completion

### User Decision
- BaRe Settings untuk sementara **tidak dipisah berdasarkan Local vs Account**.
- Surface Settings digabung agar mencakup reference Local + Account.
- Entry yang sudah ada **tidak boleh dihapus**.
- Tambahkan hanya reference entries yang belum ada.
- Belum mengubah behavior menjadi identity-dependent pada tahap ini.

### Reference-derived additions
Added to Settings:
- Swift Labs
- Export settings
- Import settings
- SwiftLogger

Existing Settings entries retained, including BaRe-specific:
- Recovery
- Diagnostics
- Cloud backups
- Encryption password strategy
- Manage space
- local backup storage
- notification settings
- restart
- Help / Contact / About

### Implementation Status
- New reference entries are present in the Settings UI.
- New entries use strings.xml; no new hardcoded UI text.
- The four newly added reference entries are currently marked Not implemented / disabled because no verified BaRe implementation contract or runtime capability exists for them yet.
- This preserves UI completeness without falsely claiming implementation.
- Cloud remains present and is not removed or split by identity in this change.

### Verification
- Source change applied to v1.0/rebaseline.
- CI/build after #552: **PENDING**.


## 2026-09-22 — #553 BaRe Labs and Logger Reference Flow

### User Decision
- Continue the reference Settings diagnostic/tool flow first.
- Adapt all reference branding to BaRe; do not expose Swift branding in BaRe UI.
- `Swift Labs` becomes **BaRe Labs**.
- `SwiftLogger` becomes **BaRe Logger**.
- Keep the reference capability shape, but do not claim unsupported mechanisms are implemented.

### Implemented
- Added BaRe Labs screen with reference-derived entries:
  - Extra logging
  - Skip space checks
  - Extend schedule dataSync timeout
  - Delete GMS files of apps
  - App visibility diagnostics
  - Scan local app backups
- Added BaRe Logger screen with:
  - persisted application diagnostic log entries;
  - clear logs;
  - share logs.
- Added app visibility diagnostics using the Android PackageManager visible-application surface.
- Added local backup scan using BaRe's existing BackupStorageRepository locations.
- Added screen-open logging for BaRe navigation.

### Safety / Implementation Boundary
- Delete GMS files remains disabled because destructive GMS-file deletion has no verified BaRe implementation contract yet.
- The three Labs switches currently persist their experimental state only; they are **not claimed as connected to backup/runtime mechanisms** until those mechanisms are implemented and verified.
- App visibility diagnostics and local backup scan are real read-only diagnostics.
- BaRe Logger is a BaRe-native diagnostic store; it is not a copy of SwiftLogger implementation.

### Branding
- No new UI surface uses Swift Labs / SwiftLogger branding.
- Resource keys were renamed to BaRe-specific names as well.

### Verification
- Source/resource references checked after changes.
- New flow implementation: **APPLIED**.
- CI/build after #553: **PENDING**.


## 2026-09-22 — #554 Verify BaRe Diagnostics + Recovery/Export Lifecycle Clarification

### Verification
- BaRe Labs flow: **RUNTIME TESTED / GREEN** berdasarkan user-provided device test.
- BaRe Logger flow: **RUNTIME TESTED / GREEN** berdasarkan user-provided device test.
- App visibility diagnostics and local backup scan: included in the tested flow.

### Lifecycle Decision
- BaRe **Export/Import .bare** diposisikan sebagai artifact continuity/recovery, bukan sekadar export/import settings.xml.
- Canonical local recovery artifact tetap **bare-recovery-v2.bare**.
- Tujuan utamanya adalah mempertahankan **LOCAL identity continuity** ketika private app state hilang karena clear data, uninstall/reinstall, factory reset/format, atau perpindahan ROM/device state yang tetap menyediakan artifact recovery.
- Recovery payload saat ini membawa bootstrap identity dan state minimum yang diperlukan untuk menghidupkan kembali LOCAL identity; bukan backup data dan bukan backup settings lengkap.
- identityId harus dapat dipertahankan saat recovery sehingga path/account identity BaRe dapat direkonstruksi dengan ID yang sama, bukan membuat UUID lokal baru secara otomatis.
- Recovery import harus tetap fail-closed terhadap conflicting existing LOCAL identity; identity berbeda tidak boleh diam-diam ditimpa.

### Existing Implementation Alignment
- RecoveryPackageCodec sudah versioned sebagai **BREC v2** dan menyimpan identityId, LOCAL type, setup state, dan access method.
- RecoveryArtifactRepository sudah menyediakan export/import artifact bare-recovery-v2.bare.
- LocalIdentityStore.loadOrRecover() sudah mencari artifact recovery sebelum membuat identity baru.
- restoreFromRecovery() sudah menjaga conflict protection terhadap LOCAL identity yang berbeda.
- Dengan demikian, konsep **Recovery Lifecycle** yang sebelumnya dirancang memang merupakan fondasi dari lifecycle .v2.bare ini.

### Important Boundary
- Artifact recovery yang berada di private app state atau di account directory yang ikut dihapus tidak dapat menyelamatkan dirinya sendiri.
- Untuk skenario destructive local reset / clear / format / ROM replacement, recovery artifact harus tersedia di lokasi yang survive terhadap kehilangan private app state, misalnya export ke user-selected external/SAF storage.
- Ini berbeda dari backup encryption: encryption password strategy melindungi **backup artifacts**, sedangkan recovery .v2.bare menjaga **identity continuity/bootstrap**.
- Export/import settings.xml reference tidak dijadikan target semantic BaRe untuk lifecycle ini.

### Status
- Recovery lifecycle foundation: **IMPLEMENTED / PARTIALLY VERIFIED**.
- Full destructive-loss → external artifact → reinstall → import → identity continuity journey: **RUNTIME VERIFICATION PENDING**.

## 2026-09-22 — #555 BaRe ID Lifecycle: Master Key / Advanced Password Recovery Direction

### User Discussion / Requirement Clarification
Pengguna memperjelas tujuan utama `*.bare` untuk LOCAL identity continuity:
- `bare_identity.xml` adalah live LOCAL identity state di private app storage.
- `bare-recovery-v2.bare` dan/atau artifact di storage `BaRe/*` harus menjadi continuity artifact yang dapat dipakai setelah private app state hilang.
- Target destructive lifecycle mencakup clear data, uninstall/reinstall, format/reset data, dan perubahan/replace ROM selama artifact recovery tetap tersedia.
- Recovery harus kembali ke **BaRe ID yang sama**, bukan membuat LOCAL UUID baru.
- User-owned password menjadi security boundary: artifact yang disalin ke device lain tidak boleh dapat direcover tanpa password yang benar.
- Dengan requirement ini, portable recovery tidak perlu bergantung pada device-bound Android Keystore sebagai satu-satunya recovery authority. Password user menjadi authority yang dapat dibawa lintas device.

### Actual Source Observation
Pemeriksaan source aktual menunjukkan kondisi saat ini belum memenuhi requirement tersebut:
- `RecoveryPackageCodec` saat ini mengenkripsi payload dengan PBKDF2-HMAC-SHA256 → AES-256-GCM.
- Payload BREC v2 saat ini berisi `identityId`, `type=LOCAL`, `setupComplete`, dan `accessMethod`.
- BREC v2 juga menaruh `identityId` pada bootstrap header yang dapat dibaca melalui `peekIdentity()` tanpa password.
- `LocalIdentityStore.loadOrRecover()` saat ini dapat melakukan bootstrap LOCAL identity dari `peekIdentity()` sebelum password recovery diverifikasi.
- `EncryptionPasswordStore` saat ini menyimpan active/old user password material dengan Android Keystore, tetapi belum terintegrasi dengan recovery artifact maupun backup engine.
- Dengan demikian, implementation saat ini **BELUM memenuhi** model “password adalah authority recovery untuk BaRe ID + Backup Lifecycle”.

### Proposed Security Model — Belum Diimplementasikan
Arah mekanisme yang direkomendasikan untuk dibahas/dibekukan sebelum implementation:
1. Generate satu random **BaRe Master Key (MK)** 256-bit untuk LOCAL identity.
2. Pada **Advanced**, password user diproses dengan KDF menjadi **Key Encryption Key (KEK)**.
3. `.bare` menyimpan **wrapped/encrypted MK**, bukan password plaintext dan bukan MK plaintext.
4. `.bare` juga menyimpan metadata yang dibutuhkan untuk derivasi/verifikasi: format version, key version, KDF identifier + parameters, salt, nonce/IV, identity metadata, dan authenticated ciphertext/tag.
5. Import pada device mana pun:
   - user memilih `.bare`;
   - user memasukkan password;
   - KDF menghasilkan KEK;
   - KEK membuka/wrap MK;
   - authentication failure = recovery ditolak;
   - identity baru tidak dibuat sebelum cryptographic verification berhasil.
6. MK tidak dipakai mentah untuk semua domain. Jika satu master key dipakai bersama, turunkan subkey terpisah dengan domain separation, misalnya:
   - `BaRe ID subkey`
   - `Backup subkey`
   - future artifact/export subkeys
   sehingga satu master root tetap satu, tetapi key material antar lifecycle tidak langsung identik.
7. Android Keystore tetap dapat dipakai untuk local caching/protection di device aktif, tetapi **tidak menjadi satu-satunya source of truth** untuk recovery setelah destructive local reset.
8. Wrong-password behavior harus fail-closed dan tidak boleh mengubah existing identity state.

### Important Product Consequence
Jika LOCAL destructive recovery wajib dapat dilakukan hanya dari portable artifact + user-owned secret, maka **Advanced/password-backed strategy menjadi prerequisite untuk portable LOCAL recovery**.

Standard yang hanya bergantung pada generated local secret tidak dapat menjadi satu-satunya authority untuk skenario private-app-state loss jika secret tersebut tidak ikut memiliki recovery envelope yang dapat dibuka kembali setelah reinstall/ROM change.

Karena itu, sebelum implementation perlu diputuskan secara eksplisit salah satu policy:
- **Advanced required before LOCAL portable export/recovery**, atau
- Standard memiliki mekanisme recovery envelope lain yang tetap memenuhi portability + security requirement.

Arah pembahasan saat ini condong pada **Advanced sebagai canonical LOCAL recovery authority**, karena paling langsung memenuhi prinsip “user memegang secret”.

### Lifecycle Boundary
Model target:
```
BaRe Master Key
      |
      +--> BaRe ID Lifecycle
      |      `--> identity continuity / .bare
      |
      `--> Backup Lifecycle
             `--> backup / restore encryption
```

Keduanya tetap dua lifecycle domain. Yang disatukan adalah **master-key strategy / cryptographic root**, bukan semantic lifecycle.

### Security Boundary Reconciliation
- “Tidak bisa dipakai device lain” sekarang didefinisikan sebagai **tidak dapat direcover tanpa password yang benar**, bukan absolute hardware device binding.
- Dengan password yang benar, portable `.bare` secara sengaja dapat digunakan untuk recovery pada device baru; ini diperlukan untuk memenuhi reinstall/ROM-change continuity.
- Jadi jika `.bare` dicopy ke device lain tetapi password salah/tidak diketahui, recovery harus gagal tanpa mengubah identity.
- Jika user lupa password, tidak boleh ada fallback tersembunyi yang membypass password dan mengklaim tetap dapat memulihkan encrypted master key.
- Password tetap tidak boleh disimpan plaintext di `.bare`.

### Verification Status
- Current BREC v2 crypto: **OBSERVED / IMPLEMENTED**, tetapi bukan bukti bahwa requirement master-key continuity sudah terpenuhi.
- Current Advanced password persistence: **IMPLEMENTED**, tetapi integration ke recovery/backup: **NOT IMPLEMENTED / NOT VERIFIED**.
- Portable destructive-loss → reinstall → password → same BaRe ID: **NOT VERIFIED**.
- Cross-device wrong-password rejection: **NOT VERIFIED**.
- Cross-device correct-password recovery: **NOT VERIFIED**.

### Next
- Bekukan contract master-key + Advanced-password model sebelum mengubah `RecoveryPackageCodec`.
- Tentukan exact BREC v3 envelope/schema dan key hierarchy.
- Tentukan policy Standard → Advanced untuk LOCAL portable recovery.
- Setelah decision/authorization final, implementasikan recovery dan backup terhadap shared master-key strategy secara bertahap dan verifikasi destructive lifecycle secara runtime.

## 2026-09-22 — #556 User-Owned Password as LOCAL Recovery Authority

### User Decision / Authorization
Pengguna mengotorisasi arah recovery berikut untuk dieksekusi sebagai keputusan lifecycle dan security boundary:
- Password recovery **dipilih dan diketahui oleh user**.
- BaRe tidak membuat password recovery tersembunyi yang tidak pernah diketahui user sebagai satu-satunya recovery authority.
- Password **tidak disimpan plaintext** di artifact .bare maupun sebagai secret recovery yang diam-diam bergantung pada device.
- User bertanggung jawab menyimpan/mengingat password; lupa password berarti tidak ada fallback tersembunyi yang membypass cryptographic recovery boundary.
- Password tidak perlu dibuat dengan policy khusus di luar praktik password umum; strength password tetap memengaruhi resistance terhadap password guessing.
- Tujuan utamanya adalah portable LOCAL identity continuity: .bare + password yang benar dapat digunakan untuk recover BaRe ID yang sama pada device yang sama maupun device lain setelah private app state hilang.

### Clarified Recovery Model
Model semantic yang dibekukan untuk implementasi berikutnya:
```
User Password
      |
      v
Key Derivation / Unlock
      |
      v
BaRe Master Key / Recovery Key Material
      |
      +--> BaRe ID Lifecycle
      |
      +--> Backup Lifecycle
```

Device bukan authority identity. Device hanya menjadi execution environment dan dapat memiliki local cached protection melalui Android Keystore tanpa menjadi satu-satunya source of truth untuk portable recovery.

### Recovery Expectations
- Same device + valid .bare + correct password → same BaRe ID.
- New device + valid .bare + correct password → same BaRe ID.
- Cleared/uninstalled/formatted app state + surviving external recovery artifact + correct password → same BaRe ID.
- .bare + wrong password → recovery denied / fail closed.
- .bare without password → recovery denied.
- Existing conflicting LOCAL identity must not be silently overwritten.
- Password itself must not be recoverable from the artifact.
- The artifact must not require the original physical device as an implicit cryptographic authority.

### Important Security Boundary
Password strength is part of the effective recovery security. KDF/encryption protects the artifact cryptographically, tetapi weak/common user passwords remain vulnerable to password-guessing attempts. BaRe may communicate password strength and consequences, but the recovery model does not depend on an application-generated secret that the user never knew.

### Scope / Implementation Boundary
Entry ini **membekukan decision/requirement**, bukan klaim bahwa BREC v2 saat ini sudah memenuhi model tersebut.

Current implementation gaps remain:
- BREC v2 masih menggunakan current PBKDF2-HMAC-SHA256 → AES-256-GCM envelope.
- identityId masih dapat dibaca dari bootstrap header melalui peekIdentity() sebelum password verification.
- LocalIdentityStore.loadOrRecover() masih memiliki jalur bootstrap sebelum cryptographic recovery verification.
- EncryptionPasswordStore belum menjadi recovery authority dan belum terintegrasi dengan backup engine.
- Exact BREC v3/master-key envelope dan Standard → Advanced policy masih perlu diimplementasikan dan diverifikasi.

### Verification Status
- Decision/requirement: **AUTHORIZED / RECORDED**.
- Current implementation satisfying this model: **NOT VERIFIED**.
- Destructive recovery runtime journey: **PENDING**.
- Cross-device correct-password recovery: **PENDING**.
- Cross-device wrong-password rejection: **PENDING**.

### Next
Implementasikan contract master-key/password recovery secara bertahap setelah exact envelope/schema ditentukan; kemudian lakukan unit/integration test dan runtime destructive lifecycle verification. Jangan menaikkan status menjadi VERIFIED hanya berdasarkan keberhasilan decrypt unit test.

## 2026-09-22 — #557 Implement Portable Password-Gated LOCAL Recovery

### User Authorization
Pengguna mengubah status dari discussion menjadi **GO** dan mengotorisasi implementasi recovery berdasarkan model user-owned password yang dicatat pada #556, termasuk penerapan pada jalur Export/Import recovery dan integrasi dengan Encryption Password Strategy yang sudah ada di Settings.

### Implementation
- Menambahkan `BaReMasterKeyStore` untuk menghasilkan dan menyimpan **BaRe Master Key 256-bit** secara lokal dengan Android Keystore protection.
- Password user **tidak disimpan**. Settings hanya menyimpan strategy dan non-secret marker bahwa user sudah mengonfigurasi password.
- Mengubah `RecoveryPackageCodec` menjadi **BREC v3**:
  - PBKDF2-HMAC-SHA256, 310k iterations;
  - random 16-byte salt;
  - random 12-byte GCM nonce;
  - AES-256-GCM authenticated encryption;
  - seluruh recovery payload, termasuk `identityId` dan 256-bit BaRe Master Key, berada di encrypted payload;
  - tidak lagi menyediakan `peekIdentity()` plaintext bootstrap path.
- Mengubah recovery artifact menjadi `bare-recovery-v3.bare`.
- Export sekarang mengenkripsi portable recovery envelope menggunakan password yang dimasukkan user dan membungkus Master Key di dalam artifact.
- Import melakukan password verification/decryption terlebih dahulu, menolak wrong password/tampering, memulihkan Master Key, lalu memulihkan LOCAL identity.
- Existing conflicting LOCAL identity tetap ditolak sebelum recovery diterapkan.
- Portable Import tidak bergantung pada local Settings state yang hilang akibat clear data/uninstall; setelah successful import, local strategy dikembalikan ke Advanced sebagai state konfigurasi non-secret.
- `LocalIdentityStore.loadOrRecover()` tidak lagi melakukan bootstrap identity dari artifact tanpa password.
- Encryption Password Settings tidak lagi menyimpan active/old password material di Android Keystore. Ini sengaja diubah agar sesuai dengan requirement: password user tidak disimpan oleh BaRe.
- Standard tetap tersedia sebagai local backup strategy, tetapi **portable LOCAL recovery export memerlukan Advanced + configured user password**.

### Compatibility Boundary
- BREC v2 artifact lama tidak dianggap portable-recovery-complete karena format tersebut tidak membawa portable BaRe Master Key.
- BREC v2 import sekarang fail-closed dengan pesan bahwa artifact harus diekspor ulang menggunakan format baru.
- Ini berarti artifact v2 lama belum dapat dipakai untuk recovery portable berbasis Master Key; migration path runtime belum diverifikasi.

### Verification Added
Unit coverage diperbarui untuk memverifikasi:
- BREC version 3;
- payload + Master Key round-trip;
- wrong password rejection;
- ciphertext tampering rejection;
- identity tidak muncul sebagai plaintext byte sequence pada envelope;
- legacy v2 portable recovery rejection.

### Verification Status
- Source changes: **APPLIED** on `v1.0/rebaseline`.
- GitHub workflow run for latest implementation commit: **NOT YET OBSERVED** at worklog update time.
- Local Gradle execution: **BLOCKED** karena environment ini tidak memiliki source checkout/Gradle wrapper dan network DNS tidak tersedia untuk cloning repository.
- Device/runtime destructive recovery: **NOT VERIFIED**.
- Cross-device correct-password recovery: **NOT VERIFIED**.
- Cross-device wrong-password rejection: **NOT VERIFIED**.

### Next
Run CI/build against the implementation commit, then perform controlled runtime verification:
1. Advanced + user password setup.
2. Export `bare-recovery-v3.bare`.
3. Verify artifact survives private app-data loss.
4. Clear/uninstall/reinstall.
5. Import artifact with wrong password → must fail without creating/replacing identity.
6. Import with correct password → same BaRe ID + Master Key restored.
7. Repeat on a different device/environment.
8. Only after evidence is collected, update status to VERIFIED.

## 2026-09-22 — #558 Fail-Closed Local Master-Key Handling

### Repair
Setelah implementation review, ditemukan risk pada `BaReMasterKeyStore.getOrCreate()`: jika encrypted local Master Key gagal dibuka, implementasi awal dapat membuat Master Key baru. Ini berpotensi memutus continuity antara existing identity dan future backup encryption.

### Perbaikan
- Jika local Master Key blob sudah ada tetapi tidak dapat didecrypt dengan Android Keystore key yang tersedia, `getOrCreate()` sekarang **fail closed**.
- Master Key baru hanya dibuat ketika belum ada stored Master Key sama sekali.
- Tidak ada silent key replacement.

### Verification
- Source repair applied pada `v1.0/rebaseline`.
- Runtime verification: **NOT VERIFIED**.
- CI run untuk commit repair belum terobservasi.


## 2026-09-22 — #559 Canonical Recovery Artifact Name + Manage Space User-Storage Boundary

### User Decision / Authorization
Pengguna meminta dua koreksi lifecycle agar contract lebih stabil dan tidak mencampur versioning internal dengan ownership storage:
- Nama file recovery menjadi canonical/general: `bare-recovery.bare`.
- Versi format tetap dilacak **di dalam artifact** (saat ini BREC v3), bukan melalui perubahan nama file setiap kali format naik versi.
- Mekanisme **Manage Space → Delete all data** tidak boleh menghapus storage `BaRe/` yang berada di shared/user-owned storage.
- Delete-all harus mengikuti boundary app-uninstall/app-private data: private app data dan app-specific external storage, bukan shared/user-owned backup/recovery storage.
- Skenario format storage tetap merupakan operasi storage-level terpisah dan bukan semantic dari Manage Space → Delete all data.

### Implementation
- Default filename pada `RecoveryArtifactRepository` diubah dari `bare-recovery-v3.bare` menjadi **`bare-recovery.bare`** pada seluruh export overload.
- Export-to-file overload diselaraskan dengan contract BREC v3 dan sekarang menerima `masterKey`; ini menghilangkan stale call ke codec API lama.
- `BackupStorageRepository.hasDurableLocalState()` diselaraskan ke canonical `bare-recovery.bare`.
- Operasi `deleteAllLocalData()` yang sebelumnya dapat menghapus `BaRe/accounts/<identity>` di shared storage dihapus dari repository agar boundary tersebut tidak lagi tersedia sebagai delete-all operation.
- Manage Space → Delete all data sekarang hanya menjalankan cleanup app-private state:
  - `bare_identity`
  - `bare_settings`
  - `bare_storage`
  - internal app files/cache/code-cache/no-backup
  - app databases
  - app-specific external files/cache (`getExternalFilesDirs()` / `externalCacheDirs`, yaitu scope app-specific external storage)
- Shared/user-owned `BaRe/` storage, termasuk backup/recovery artifact, tidak disentuh oleh Delete all data.
- Action **Delete backup files** tetap merupakan explicit user action yang terpisah dan tetap menargetkan backup storage saja; recovery package tetap dipertahankan.

### Semantic Boundary
- **Canonical filename:** `bare-recovery.bare`
- **Format version:** BREC internal version (current **v3**)
- **App-private reset:** data owned by the installed BaRe app and equivalent app-specific storage scope
- **User-owned storage:** shared `BaRe/` backup/recovery artifacts survive Manage Space → Delete all data
- **Storage format/reset:** separate storage-level operation, not implied by Manage Space

### Verification Status
- Source changes: **APPLIED** on `v1.0/rebaseline`.
- GitHub CI/build: **NOT YET OBSERVED** after these latest changes.
- Device/runtime Manage Space deletion boundary: **NOT VERIFIED**.
- Runtime confirmation that `bare-recovery.bare` is exported/imported successfully with BREC v3: **NOT VERIFIED**.

### Next
Build/CI verification, then runtime test at minimum:
1. Create/export `bare-recovery.bare` and inspect that the envelope reports BREC v3 through the codec/test path.
2. Place backup/recovery artifacts under shared `BaRe/` storage.
3. Run Manage Space → Delete all data.
4. Verify private identity/settings/app-specific data is removed.
5. Verify shared `BaRe/` backup and recovery artifacts remain untouched.
6. Separately test actual uninstall/reinstall and storage-format scenarios.

## 2026-09-22 — #560 Repair Local Storage Initialization vs User-Owned Recovery Secret

### Observed
Review setelah perubahan canonical artifact menunjukkan `LocalBackupStorageService` masih memiliki legacy flow yang:
- membuat recovery secret random secara otomatis;
- membuat recovery artifact saat storage initialization;
- memanggil codec/export contract lama.

Flow tersebut bertentangan dengan decision #556/#557 bahwa recovery authority adalah password yang dipilih/diketahui user dan password tidak dibuat diam-diam oleh BaRe.

### Repair
- `initializeLocalBackupStorage()` sekarang hanya:
  - memastikan local storage tree tersedia;
  - menyimpan selected storage configuration.
- Auto-generation recovery secret dihapus.
- Auto-export recovery artifact saat storage initialization dihapus.
- Recovery artifact sekarang tetap dibuat melalui explicit Recovery Export flow dengan password user dan canonical filename `bare-recovery.bare`.

### Boundary
Storage initialization ≠ recovery export.

Dengan demikian:
- memilih/menyiapkan `BaRe/` storage tidak otomatis membuat hidden recovery secret;
- user secara eksplisit membuat recovery artifact melalui Recovery flow;
- password recovery tetap user-owned;
- shared/user-owned storage tetap terpisah dari app-private data wipe.

### Verification
- Source repair: **APPLIED**.
- CI/build: **NOT YET OBSERVED**.
- Runtime storage initialization + explicit recovery export: **NOT VERIFIED**.

## 2026-09-22 — #561 Repair RecoveryScreen Compile Error

### Observed
CI/build failed at `RecoveryScreen.kt:90:29`:
`Argument type mismatch: actual type is 'kotlin.Unit', but 'com.bare.app.BaReIdentity' was expected.`

### Root Cause
The import `runCatching { ... }` block performed `restoreFromRecovery()` but did not return its result. Kotlin therefore inferred the block result as `Unit`, while `onSuccess` expects the recovered `BaReIdentity` for `onRecovered(identity)`.

### Repair
- Capture the result of `identityStore.restoreFromRecovery(decoded.payload)` into `restoredIdentity`.
- Return `restoredIdentity` as the final expression of the recovery operation.
- No recovery/security/storage semantics were changed; this is a compile-correctness repair only.

### Verification
- Source repair: **APPLIED**.
- Expected compiler mismatch addressed directly.
- CI/build after repair: **NOT YET OBSERVED**.

## 2026-09-22 — #562 Unify Advanced Password for Portable Recovery

### User Decision / Authorization
Portable LOCAL recovery uses **one password**: the password configured under **Advanced**. Recovery must not introduce a second recovery password.

### Observed
Runtime test after #561 showed:
- Advanced password **A** was configured.
- Recovery Export accepted a different password **B**.
- `bare-recovery.bare` was successfully created in the selected folder.
- Import with **A** failed with `BAD_DECRYPT`.
- Import with **B** succeeded.

This demonstrated that the current Recovery screen treated its password as a separate authority from the configured Advanced password.

### Repair
- `EncryptionPasswordStore` now keeps a salted PBKDF2-HMAC-SHA256 verifier for the configured Advanced password; the plaintext password is still not persisted.
- Recovery Export verifies the entered password against the configured Advanced password before creating the artifact.
- Recovery Import verifies against the existing local Advanced password when one is available; after destructive loss, the artifact itself authenticates the entered password and successful import recreates the local password verifier.
- Recovery UI labels and descriptions now explicitly call this the **Advanced password** and describe the same password for export/import.
- User-facing recovery errors no longer expose the raw cryptographic `BAD_DECRYPT` message as the intended error text.

### Verification Status
- Source repair: **APPLIED**.
- Runtime verification of the repaired single-password flow: **PENDING**.
- CI/build after repair: **NOT YET OBSERVED**.

### Next Runtime Test
1. Set Advanced password **A**.
2. Open Recovery and export without creating another password; enter **A**.
3. Confirm `bare-recovery.bare` is created.
4. Import with **A** → expected success.
5. Import with **B** → expected failure.
6. After destructive app-data loss, import the same artifact with **A** → expected same BaRe ID + Master Key continuity.

## 2026-09-22 — #563 Konsolidasi Export / Import Capability Map ke Worklog

### User Decision / Authorization
Pengguna memberikan **GO** untuk menyelesaikan urusan worklog: informasi dari `docs/export_import_capability_map.md` yang merupakan continuity/decision/implementation-boundary dipindahkan ke worklog agar tidak ada sumber continuity yang terputus.

### Keputusan Dokumentasi
- `docs/worklog.md` tetap menjadi **satu canonical continuity record** BaRe.
- **Tidak membuat `worklog2.md`** pada kondisi saat ini. Worklog memang besar, tetapi pemecahan menjadi dua canonical worklog akan menambah ambiguity terhadap checkpoint.
- `docs/export_import_capability_map.md` tidak dipertahankan sebagai dokumen canonical terpisah karena isinya tidak memiliki authority lifecycle yang berbeda dari product/architecture/capability matrix dan worklog.
- Setelah konsolidasi, struktur technical documentation kembali sesuai README: `product.md`, `architecture.md`, `capability_matrix.md`, `reference.md`, dan `worklog.md`.
- `reference.md` tetap menjadi reference/discovery evidence; worklog menjadi continuity record; product/architecture/capability matrix tetap menjadi canonical technical/product documents.

### Isi Capability Map yang Dikonsolidasikan
Boundary Export / Import yang dipertahankan:
- **Local BaRe Identity**
  - Export → `bare-recovery.bare`
  - Import ← `bare-recovery.bare`
  - Artifact ini adalah identity-continuity/recovery artifact, bukan backup data dan bukan settings export.
- **Settings export/import** tetap future capability sampai artifact workflow dan contract benar-benar tersedia.
- **APK/APKS import/share** tetap future/partial capability dan tidak boleh disamakan dengan backup restore.
- **Cloud setup export/import** tetap future dan bergantung pada account/cloud lifecycle.
- **Backup export/import/restore** tetap lifecycle terpisah dari Local BaRe Identity.
- App configuration transfer dan management metadata export/import tidak ditambahkan tanpa contract yang jelas.
- Menu Export / Import adalah **entry point**, bukan lifecycle tunggal; hanya capability yang benar-benar tersedia yang boleh masuk executable path.

### Current Recovery Boundary yang Tetap Canonical
- Canonical artifact filename: `bare-recovery.bare`.
- Internal format version: **BREC v3**.
- Portable LOCAL recovery menggunakan **Advanced password yang sama**, bukan password recovery kedua.
- Recovery artifact tidak boleh diperlakukan sebagai backup archive.
- Manage Space → Delete all data tidak boleh menghapus shared/user-owned `BaRe/` recovery/backup storage.
- Storage initialization tidak otomatis membuat hidden recovery secret atau recovery artifact.
- Recovery tetap explicit user action.

### Open Work yang Dibawa ke Continuity
1. **Build/CI terbaru** setelah #558–#562 masih perlu diverifikasi.
2. **Runtime single-password recovery**:
   - Advanced password A → export `bare-recovery.bare`;
   - import dengan A → success;
   - import dengan B → fail closed;
   - setelah destructive app-data loss → import dengan A → same BaRe ID + Master Key continuity.
3. **Manage Space deletion boundary** perlu runtime verification: app-private/app-specific state terhapus, shared/user-owned `BaRe/` artifacts tetap ada.
4. **BREC v3 artifact/runtime verification** perlu membuktikan export/import aktual, bukan hanya unit/compile evidence.
5. **Destructive uninstall/reinstall/clear-data lifecycle** perlu diverifikasi.
6. **Cross-device recovery** dengan correct password dan wrong password perlu diverifikasi.
7. **Settings Export/Import** belum diimplementasikan end-to-end.
8. **APK/APKS Import** belum lengkap sebagai workflow produk.
9. **Cloud setup Export/Import** belum diimplementasikan.
10. **Backup export/import/restore engine** belum end-to-end.
11. Existing **Account/Cloud provider** implementation masih memiliki boundary yang perlu runtime verification sebelum capability dinaikkan statusnya.
12. Capability matrix harus direkonsiliasi setelah evidence runtime/build tersedia; jangan menaikkan status hanya berdasarkan UI/source presence.

### Structural Verification
- `docs/export_import_capability_map.md` diposisikan sebagai redundant derived document dan akan dihapus setelah isi continuity di atas tercatat.
- Tidak ada worklog split yang dibuat.
- Tidak ada implementation source code yang diubah oleh pekerjaan konsolidasi ini.

### Next Checkpoint
Setelah konsolidasi dokumentasi selesai, **LANJUT/GO berikutnya kembali ke backlog engineering aktual**, dengan prioritas verification gap pada recovery (#562), bukan membuat dokumen baru.

## 2026-09-22 — #564 Reconcile Worklog dengan Actual CI / Branch State

### Observed / Verified
Checkpoint #563 memiliki status CI yang sudah stale. Rekonsiliasi dilakukan terhadap actual branch state dan GitHub Actions sebelum memperbarui continuity.

- Branch: `v1.0/rebaseline`.
- Current branch HEAD saat checkpoint ini: `e913f43ee2cc0adf7d5672462576c00dfe14a722`.
- HEAD berisi konsolidasi/deletion dokumentasi setelah implementation commits; perubahan source recovery yang relevan tetap berada di ancestry branch.
- GitHub Actions **run #601** untuk commit `368eed21b3f1cb6da4c891f824857d3f60edb9e4`, message `fix: clarify single Advanced password recovery flow`, berstatus **completed / success**.
- Run #601 job `build` sukses pada seluruh langkah yang relevan: checkout, Java 17, Gradle, assemble debug APK, APK verification, signing certificate verification, labeling, dan upload debug APK.
- GitHub Actions **run #600** untuk commit `2618a927acfbb89232e3ec10e5f756659e4d37dd`, message `fix: use the configured advanced password for recovery`, berstatus **completed / failure**.
- #600 tidak menjadi current build evidence karena commit tersebut kemudian diperbaiki oleh commit `368eed21...`, yang menghasilkan #601 success.
- **CI/build status untuk recovery repair: VERIFIED at build level via #601.**
- Ini **tidak** membuktikan runtime recovery, device behavior, destructive lifecycle, atau cross-device recovery.

### Continuity Correction
Pernyataan #563 bahwa “Build/CI terbaru setelah #558–#562 masih perlu diverifikasi” sekarang **ditutup sebagai verification gap CI**, bukan dihapus sebagai historical record. #563 tetap dipertahankan sebagai snapshot historis pada saat dibuat.

Namespace juga ditegaskan:
- **#562 / #563 / #564 = worklog continuity entries.**
- **#600 / #601 = GitHub Actions workflow run numbers.**
Keduanya tidak boleh diperlakukan sebagai sequence yang sama.

### Current Recovery Verification Status
**VERIFIED / OBSERVED**
- Source recovery repair exists in branch ancestry.
- CI/build succeeds on #601.
- Debug APK berhasil di-assemble, diverifikasi, ditandatangani, dan di-upload oleh workflow #601.

**NOT VERIFIED / PENDING**
- Runtime single-password recovery end-to-end.
- Wrong-password fail-closed runtime behavior.
- Destructive clear-data/uninstall/reinstall recovery.
- Same BaRe ID + Master Key continuity after destructive app-state loss.
- Cross-device recovery.
- Manage Space deletion boundary runtime verification.
- BREC v3 artifact runtime/export-import verification beyond build/unit evidence.

### Open Work — Reconciled
1. **Runtime single-password recovery** remains open.
2. **Manage Space deletion boundary** runtime verification remains open.
3. **BREC v3 artifact/runtime verification** remains open.
4. **Destructive uninstall/reinstall/clear-data lifecycle** remains open.
5. **Cross-device recovery** correct/wrong-password verification remains open.
6. **Settings Export/Import** remains future/not end-to-end.
7. **APK/APKS Import** remains future/partial.
8. **Cloud setup Export/Import** remains future.
9. **Backup export/import/restore engine** remains separate and not end-to-end.
10. **Account/Cloud provider** runtime verification remains open where applicable.
11. **Capability matrix reconciliation** remains open until runtime/build evidence is sufficient.

### Governance Note
Worklog continuity must not use an old checkpoint as proof of current system state. For each subsequent checkpoint, actual repository/CI state must be inspected and reconciled before carrying an item forward as open.

### Next
Prioritas berikutnya kembali ke **runtime verification gap pada recovery (#562)**. Jangan menaikkan status recovery menjadi VERIFIED hanya karena #601 build success.

## 2026-09-22 — Decision: Separate Local Account Recovery Password

### Decision
Local Account Recovery menggunakan **Recovery password terpisah** dari **Advanced password**.

### Rationale
- Kedua password memiliki fungsi berbeda dan lifecycle berbeda.
- Backup lifecycle dapat menggunakan Standard encryption tanpa memaksa user membuat Advanced password hanya untuk recovery identity.
- Local Account identity recovery membutuhkan authority yang jelas dan berdiri sendiri.
- Account/cloud authentication tidak menggunakan Recovery password; account lifecycle tetap terpisah.

### Implemented
- Menambahkan RecoveryPasswordStore dengan salted PBKDF2 verifier; plaintext password tidak dipersist.
- RecoveryScreen sekarang menyediakan UI untuk membuat/confirm Recovery password sebelum Export/Import.
- Export/Import Local Account menggunakan Recovery password, bukan Advanced password.
- Copy UI dan string recovery diperbarui untuk menjelaskan boundary dua password.
- Advanced password copy diperbarui agar tidak lagi mengklaim dirinya sebagai authority Local Account recovery.

### Verification
- Source changes berhasil ditulis ke branch v1.0/rebaseline.
- Build/runtime setelah perubahan ini: **UNVERIFIED**.
- Existing BREC v3 artifact format belum diubah oleh decision ini; compatibility terhadap artifact yang dibuat sebelum pemisahan password masih **UNVERIFIED / migration concern**.

### Open Work
1. Build CI setelah perubahan.
2. Runtime create Recovery password.
3. Runtime Export/Import dengan Recovery password.
4. Wrong Recovery password fail-closed.
5. Verify Advanced password tidak menjadi prerequisite recovery.
6. Destructive/cross-device recovery verification.
7. Decide and verify compatibility/migration behavior for artifacts created under the previous single-Advanced-password implementation.

### Source Change References
- RecoveryPasswordStore implementation: `f14fbf3e54ec82a2135053a516c5d03286158445`.
- RecoveryScreen separation: `82aa62b3d12a19d02996b5e1eaa4a498227253ce`.
- Recovery/security UI copy: `440324c0952411a0b166f2d73a1de262e4597fad`.
- Product/architecture/capability/worklog reconciliation commits follow these source changes.
- GitHub workflow result for the new source commit was not available through the connected workflow-run query; build status therefore remains **UNVERIFIED**.


## 2026-09-22 — UI: Refresh Recovery Screen

### User Intent / Authorization
User explicitly authorized **GO** after identifying the Recovery screen as a UI/UX issue. Scope is presentation and interaction styling; recovery protocol, password semantics, and operation behavior are intentionally unchanged.

### Observed
- Existing RecoveryScreen used a dense legacy-style Column with password setup, export/import actions, and bottom Back action in one surface.
- Existing password input did not expose a show/hide affordance.
- Existing backup/storage behavior was not changed by this UI pass.

### Implemented
- Added Material top app bar with standard Back navigation.
- Added password show/hide affordance using the existing Material visibility icons.
- Refreshed Export and Import actions with clear leading icons and centered action content.
- Removed the duplicate bottom Back action so navigation follows the screen-level app-bar pattern.
- No change to recovery artifact codec, password store, export/import logic, storage boundary, or picker behavior.

### Verification
- Source updated on v1.0/rebaseline.
- UI source re-fetched after commit and reflects the intended changes.
- Post-change CI workflow result for commit 31fc4ba357e2581a965e8fb595d623514261cc73 is currently **UNVERIFIED**; no workflow run was returned by the connected GitHub workflow query.
- Runtime/UI device verification remains **UNVERIFIED**.

### Change Reference
- 31fc4ba357e2581a965e8fb595d623514261cc73 — ui: remove duplicate recovery back action
- Previous UI commit: 6ed10e261ffaf26cc0c0f83708648a01ec0284a0 — ui: refresh recovery screen interaction styling


## 2026-09-22 — Build Failure: Recovery UI Imports

### Observed
CI compile failed in `RecoveryScreen.kt` after the UI refresh because the file referenced `Row`, `Icon`, `Icons`, and `Modifier.width` without importing the corresponding Compose symbols. The `libandroidx.graphics.path.so` strip message is non-fatal packaging behavior; the blocking failure is Kotlin compilation.

### Corrective Action
Restored the missing Compose imports and kept the intended UI changes intact: top app bar/back navigation, password visibility toggle, and icon-enhanced Export/Import actions.

### Verification
- Corrective source commit: `acc4def6be317f442cae7af9df831e903b99c68b`.
- GitHub workflow result for the corrective commit is currently **UNVERIFIED**; no workflow run was returned by the connected query.
- Runtime/UI remains **UNVERIFIED**.


## 2026-09-22 — Recovery + Encryption Password Lifecycle Alignment

### User Decision / Authorization
User explicitly authorized GO for three separate fixes after comparing Recovery with the existing Encryption Password lifecycle:
1. Recovery operation UX/storage flow.
2. Recovery password lifecycle.
3. Advanced/Encryption password lifecycle.

### Implementation
- Recovery no longer uses an export folder picker; export resolves the configured local BaRe storage (default INTERNAL when no storage kind is configured) and writes canonical `bare-recovery.bare` into the recovery directory.
- Recovery import continues to use the Android file picker.
- Recovery password setup/change is now a compact dialog instead of inline password setup fields.
- Recovery password change requires the current password, new password, and confirmation; password visibility controls are available for all password fields.
- When the canonical local recovery artifact already exists, changing the Recovery password re-exports/rekeys that artifact before persisting the new password verifier. If the existing local master key is unavailable, the change is rejected and the artifact is left unchanged.
- Advanced/Encryption password change now requires the current password before saving the new password.
- Advanced password dialog now exposes visibility controls for current/new/confirmation fields.
- Password verifier storage remains salted PBKDF2; plaintext passwords are not persisted.

### Verification
- Source changes are applied on `v1.0/rebaseline`.
- Latest CI run #616 for commit `4f132018c4a3fc51764484a46eae9c9ad6d5ca3f` is **IN PROGRESS**; build verification is not yet complete.
- Runtime/device verification of the three flows is **NOT VERIFIED**.


## 2026-09-22 — Recovery startup/onboarding alignment

- AUTHORIZATION: user explicitly issued GO to continue startup/recovery through onboarding.
- OBSERVED: previous build was green, but startup did not solve recovery after uninstall; custom recovery surface did not match Welcome and startup animation felt static.
- CHANGE: startup now uses the existing Welcome visual geometry/typography with a restrained indeterminate progress bar instead of a logo reveal animation.
- CHANGE: recovery discovery is gated on Android all-files access when required, so inaccessible shared storage is no longer silently treated as “no recovery artifacts”.
- CHANGE: recovery onboarding now reuses the established Welcome visual template rather than a separate elevated card treatment.
- VERIFICATION: source changes committed; CI/device verification for the new commits is still UNVERIFIED because no workflow run/status is currently reported for the latest commit.


## 2026-09-22 — Recovery onboarding UI correction

- OBSERVED: runtime screenshot showed RecoveryOnboardingScreen rendered on top of WelcomeScreen, producing duplicate branding, overlapping copy/actions, and inconsistent password interaction.
- DECISION: recovery is a standalone onboarding state, not an overlay; Start as New Identity returns to the existing Welcome onboarding.
- CHANGE: removed Welcome background composition from recovery state.
- CHANGE: aligned recovery branding, spacing, primary/secondary action hierarchy, and password visibility control with the established Welcome/Login onboarding patterns.
- VERIFICATION: source inspected after change; latest commit is `d81f361a5f929f2cc3acaf8ae7d59492ef88acf9`. Build/device verification remains UNVERIFIED.


## Recovery UI — compact dialog

- **IMPLEMENTATION:** Recovery onboarding diubah dari full-screen onboarding menjadi compact dialog mengikuti pola dialog produk yang sudah ada.
- **UI:** single recovery langsung password → restore; multiple recovery menampilkan compact selectable cards tanpa radio button visual, dengan list yang scroll sendiri.
- **UI:** identity ditampilkan sebagai prefix, misalnya `7568••••`; tidak menampilkan path, filename, atau full UUID.
- **COPY:** recovery copy dinormalisasi ke bahasa produk; standalone canonical tetap `B Λ R ☰`, sedangkan text memakai `BΛR☰`.
- **STATE:** tombol continue pada selection hanya aktif setelah identity dipilih; Back kembali ke password step; dismiss/cancel kembali ke Welcome flow.
- **STATUS:** source change committed pada `48a31a926efefb18be9fdde10ee8912cfdbcd8d1`. Build/runtime verification belum dilakukan.


## Recovery UI — branded background

- **IMPLEMENTATION:** Recovery dialog sekarang ditampilkan di atas Welcome surface yang sudah ada, sehingga logo, canonical brand, tagline, dan halaman onboarding tetap menjadi konteks visual di belakang modal.
- **INTENT:** Menghindari recovery tampil sebagai dialog di atas layar hitam/kosong; modal tetap compact sementara branded onboarding surface tetap terlihat.
- **STATUS:** Source change committed pada `8e6d2915ecb8fb8e1c79bfafb36d68610d7c0ae4`. Build/runtime verification belum dilakukan.


## 2026-09-22 — Reconcile Recovery Password Decision vs Current Recovery Flows

### Observed
- Current RecoveryScreen di Settings masih menggunakan **Recovery password terpisah** untuk Export/Import dan menyediakan Set/Change Recovery password.
- Current RecoveryOnboardingScreen pada startup recovery menggunakan **Advanced password** untuk membuka recovery artifact dan menyimpan password tersebut sebagai recovery password setelah restore.
- Dengan demikian terdapat **dua recovery password semantics yang saat ini tidak konsisten** antara Settings Recovery dan startup/destructive recovery.
- Screenshot Settings Recovery juga menunjukkan bahwa UI lama masih mengekspos Recovery password field + Set/Change + Export + Import dalam satu halaman; fungsi/source flow tersedia, tetapi presentation layer masih belum final.

### Existing Decision Requiring Reconciliation
- Entry `Decision: Separate Local Account Recovery Password` menetapkan Recovery password terpisah dari Advanced password.
- Entry setelahnya memperbaiki single-password recovery menggunakan Advanced password, tetapi tidak membatalkan/menutup decision separate-password secara eksplisit.
- Karena kedua state masih ada di source, **password authority final untuk seluruh recovery lifecycle saat ini adalah CONFLICT / UNRECONCILED**, bukan dianggap selesai berdasarkan salah satu entry.

### Current Evidence
- RecoveryScreen.kt: RecoveryPasswordStore tetap menjadi authority Settings Recovery.
- RecoveryOnboardingScreen.kt: decode startup recovery menggunakan RecoveryPackageCodec.decode(password) dengan UI label **Advanced password**, lalu menyimpan password melalui RecoveryPasswordStore setelah restore.
- Tidak ada perubahan password semantics yang dilakukan oleh checkpoint ini.

### UI Observation
- Settings Recovery **flow/fungsi existing tetap dipertahankan**.
- UI settings belum dianggap final; screenshot runtime menunjukkan visual masih legacy/dense dan belum selaras dengan compact recovery dialog/onboarding treatment.
- Redesign UI sebaiknya dilakukan setelah password authority final diputuskan, agar tidak mengunci copy dan interaction model di atas contract yang masih conflict.

### Status
- **VERIFIED:** worklog sudah memuat decision separate Recovery password dan repair single-password Advanced password sebagai historical entries.
- **OBSERVED:** source saat ini memiliki kedua semantics.
- **BLOCKED:** final recovery password authority belum direkonsiliasi.
- **NO CHANGE:** checkpoint ini tidak mengubah implementation/password behavior.

### Next Decision Required
Tentukan satu lifecycle canonical untuk recovery password authority sebelum melakukan redesign Settings Recovery secara final. Setelah decision, reconcile RecoveryScreen, RecoveryOnboardingScreen, artifact compatibility/migration, strings, tests, dan worklog terhadap authority yang sama.


## 2026-09-22 — #565 Rekonsiliasi Worklog Penuh dengan Actual Branch State

### Tujuan
Melakukan rekonsiliasi continuity karena setelah checkpoint #564 terdapat rangkaian implementation/UI/recovery changes yang tersebar di banyak commit, sementara worklog tidak memiliki satu checkpoint canonical yang merangkum actual state terbaru. Historical entries dipertahankan; checkpoint ini menjadi snapshot rekonsiliasi current state.

### Actual Branch State
- Branch: `v1.0/rebaseline`.
- Current HEAD: `a71a0b712407158c71cea4be7c16c6c6be9028bf`.
- Current ancestry setelah #564 mencakup perubahan recovery security, storage boundary, startup recovery, onboarding recovery, password lifecycle, settings UI, branding resource cleanup, dan recovery dialog UI.
- GitHub Actions run **#646** untuk commit `8e6d2915ecb8fb8e1c79bfafb36d68610d7c0ae4` / recovery branded background tercatat **completed / success**. Run ini membuktikan build untuk commit tersebut, bukan current HEAD `a71a0b71`.
- Tidak ada workflow run yang terobservasi untuk commit `a71a0b71`; build status current HEAD tetap **UNVERIFIED**.

### Rekonsiliasi Perubahan Setelah #564

#### Recovery security / artifact lifecycle
- Portable recovery memakai artifact canonical `bare-recovery.bare`.
- Recovery artifact menggunakan BREC v3 dan password-gated master-key envelope.
- Recovery import dirancang tetap dapat berjalan setelah app-state loss dengan artifact + password sebagai recovery authority.
- Local master-key unwrap failure diperlakukan fail-closed.
- Manage Space tidak boleh menghapus user-owned/shared BaRe recovery storage.
- Hidden recovery secret tidak boleh dibuat otomatis hanya karena storage diinisialisasi.
- Recovery storage initialization dan canonical artifact naming telah diperbaiki.

#### Recovery password authority
- Historical decision yang sempat memperkenalkan **Recovery password terpisah** tidak lagi menjadi current product decision.
- **CURRENT DECISION:** recovery identity/artifact menggunakan **Advanced password yang sama** sebagai password authority. Tidak ada password Recovery kedua sebagai product concept.
- Historical entries tentang separate Recovery password tetap dipertahankan sebagai sejarah perubahan, tetapi **superseded** oleh current decision ini.
- Source saat ini masih memiliki transitional `RecoveryPasswordStore` dan Settings Recovery UI yang mengikuti decision lama; ini adalah **IMPLEMENTATION GAP / stale implementation**, bukan alasan untuk menghidupkan kembali decision lama.
- Startup Recovery sudah menggunakan label dan flow **Advanced password**.
- Artifact compatibility/migration terhadap artifact yang pernah dibuat saat separate-password experiment masih harus diverifikasi sebelum implementation cleanup dinyatakan complete.

#### Startup / destructive recovery
- Recovery discovery dilakukan sebelum bootstrap identity baru ketika local identity belum ada.
- Recovery discovery digate oleh storage-access state agar inaccessible storage tidak diperlakukan sebagai “no recovery”.
- Startup surface memakai branded onboarding geometry dengan progress indicator.
- Recovery menjadi onboarding state tersendiri pada lifecycle startup.
- Recovery onboarding kemudian diubah menjadi compact dialog.
- Single candidate → password lalu restore langsung.
- Multiple candidate → compact selectable cards, tanpa radio button visual, list memiliki scroll sendiri.
- Identity display menggunakan prefix, misalnya `7568••••`.
- Recovery dialog memakai Welcome branded surface sebagai background/context.
- Cancel/dismiss kembali ke Welcome flow.
- Current source/UI changes belum seluruhnya runtime-verified.

#### Password lifecycle
- Advanced/Encryption password change memerlukan current password sebelum perubahan.
- Visibility controls tersedia pada password dialogs.
- Recovery password lifecycle yang terpisah adalah historical/transitional state dan harus dikeluarkan dari final product flow sesuai current decision di atas.
- Plaintext password tidak dipersist sebagai password value; verifier/encryption lifecycle tetap mengikuti implementation boundary yang sudah ada.

#### Recovery Settings UI
- Settings Recovery sudah mendapat top app bar/back navigation, password visibility control, dan icon-enhanced Export/Import actions.
- Compile repair untuk UI tersebut sudah dilakukan.
- UI masih perlu direview ulang karena password authority lama masih terefleksi pada source/settings surface.
- Functional recovery engine tidak dianggap selesai hanya karena UI Settings tersedia.

#### Branding / resource
- Resource branding Settings telah direfaktor agar memakai BaRe brand resources.
- Current naming contract:
  - canonical standalone: `B Λ R ☰`
  - text/sentence: `BΛR☰`
- Recovery onboarding copy sudah dinormalisasi mengikuti contract tersebut.
- Audit pemakaian branding menyeluruh masih merupakan verification gap.

### Verification Reconciliation

**VERIFIED**
- Recovery-related source changes exist in branch ancestry.
- Build run #646 succeeded for commit `8e6d2915`.
- Recovery UI compile repair and subsequent successful build runs exist for the relevant intermediate commits.

**OBSERVED**
- Current source still contains both the final Advanced-password recovery flow and transitional Settings `RecoveryPasswordStore` flow.
- Current HEAD is newer than the latest observed successful CI run.

**UNVERIFIED**
- Build for current HEAD `a71a0b71`.
- Runtime single-password recovery end-to-end.
- Wrong-password fail-closed runtime.
- Destructive clear/uninstall/reinstall recovery.
- Same BaRe ID + Master Key continuity after destructive state loss.
- Cross-device recovery.
- Final Settings Recovery UI after removing obsolete separate-password semantics.
- Artifact migration/compatibility for artifacts created during the separate-password experiment.
- Full branding occurrence audit.

### Current Priority
1. Reconcile/remove stale separate Recovery-password implementation in Settings against the current Advanced-password decision.
2. Verify BREC v3 single-password recovery end-to-end.
3. Verify destructive lifecycle and storage deletion boundary.
4. Redesign/finalize Settings Recovery UI after password authority is consistent.
5. Reconcile capability matrix with runtime/build evidence.
6. Maintain worklog checkpoint after each consequential batch so continuity does not fall behind implementation again.

### Continuity Rule
Historical decisions are not deleted. When a later decision supersedes an earlier one, the old entry remains historical and the latest reconciliation explicitly marks the old decision as **SUPERSEDED**, while current source state is recorded separately as IMPLEMENTED / TRANSITIONAL / UNVERIFIED / BLOCKED as applicable.


## 2026-09-22 — Recovery Settings UI / Advanced Password Alignment

- **DECISION APPLIED:** Recovery Settings tidak lagi memperkenalkan konsep Recovery password terpisah. Password recovery mengikuti Advanced password yang sudah dikonfigurasi.
- **UI:** satu halaman mempertahankan password status/action di bagian atas, lalu Export dan Import sebagai card action yang lebih besar dengan penjelasan fungsi.
- **INTERACTION:** Export/Import menjadi action surface langsung. Jika Advanced password belum tersedia, flow password setup dibuka dari status/action area; tidak ada password recovery kedua.
- **COPY:** seluruh copy APK tetap bahasa Inggris; terminology diarahkan ke Advanced password dan recovery identity/copy.
- **STATUS:** implementation source committed bertahap pada `33174615`, `0613d52f`, `a66459cc`, dan `7b47ff2`. Build/runtime verification untuk current HEAD belum dilakukan.


## 2026-09-22 — Recovery / Backup terminology checkpoint

- **CONTEXT:** Terminology is still evolving during active implementation; this checkpoint records the current discussion rather than declaring a final/canonical architecture.
- **RECOVERY:** Continue treating BaRe ID recovery as a distinct lifecycle concern from the broader backup/export-import flow. Exact terminology and boundaries remain subject to the ongoing implementation evidence.
- **BACKUP / ENCRYPTION:** The ongoing work references the encryption-password strategy and backup lifecycle; these terms must be preserved in the worklog as the implementation evolves rather than replaced by assumptions from the current Recovery UI.
- **PASSWORD:** Do not introduce or re-establish a separate product-level “Recovery password” concept merely because legacy Recovery UI/source still contains `RecoveryPasswordStore`. Password authority terminology remains tied to the active encryption/backup strategy and must be reconciled from implementation history before further UI changes.
- **UI CHANGE STATUS:** The Recovery Settings UI change immediately preceding this checkpoint changed the surface toward a single password status/change area plus larger Export/Import cards. This is an implementation step, not a new architecture decision.
- **VERIFICATION GAP:** Current terminology relationship between Advanced password, encryption password strategy, backup lifecycle, and BaRe ID recovery lifecycle is **UNVERIFIED** from the available repo inspection in this turn. Do not claim the terminology is finalized until the relevant implementation/history is traced.


## 2026-09-22 — #565 Recovery / Backup Password Lifecycle Rebaseline

### Decision
- **DECISION:** BaRe kembali menggunakan dua password authority yang terpisah.
- **Recovery password** adalah authority untuk **BaRe ID / Local Account identity lifecycle**, termasuk portable recovery artifact `bare-recovery.bare`.
- **Advanced password** adalah authority untuk **backup encryption lifecycle**, khususnya Advanced encryption.
- Recovery flow tidak boleh bergantung pada Advanced password.
- Advanced backup encryption tidak menggunakan Recovery password sebagai password authority.
- Standard backup encryption tidak menjadi prerequisite untuk BaRe ID recovery.

### Implementation
- `RecoveryScreen` dikembalikan menggunakan `RecoveryPasswordStore` untuk set/change/verify Recovery password.
- Settings Recovery export/import menggunakan Recovery password.
- `RecoveryOnboardingScreen` menggunakan Recovery password untuk membuka BREC artifact dan hanya menginisialisasi verifier Recovery password setelah destructive/app-state-loss recovery bila verifier lokal belum ada.
- Startup recovery tidak lagi menggunakan Advanced password sebagai product authority.
- Product, architecture, dan capability documentation direkonsiliasi kembali ke dua-password lifecycle boundary.
- Transitional `RecoveryPasswordStore` dipertahankan karena sekarang kembali menjadi canonical recovery authority.

### Verification
- GitHub Actions Android build terpicu untuk perubahan source terbaru.
- Current latest run pada commit `f38f42d355529d54dd0beb47d741474835798f22` masih **IN_PROGRESS** saat checkpoint ini dicatat.
- Runtime/device verification belum dilakukan.
- End-to-end BREC recovery, destructive app-state-loss recovery, wrong-password fail-closed, dan cross-device recovery masih **UNVERIFIED**.
- Artifact yang pernah dibuat ketika single-password/Advanced-password recovery semantics berlaku memerlukan compatibility/migration verification; tidak ditambahkan hidden Advanced-password fallback.

### Current State
- **IMPLEMENTED:** password authority separation has been restored in source and canonical project documentation.
- **UNVERIFIED:** build result for current HEAD and runtime behavior.
- **KNOWN GAP:** historical artifacts created under the superseded password authority may require explicit compatibility/migration handling.

### Next
1. Verify current HEAD build.
2. Run recovery runtime verification using distinct Recovery and Advanced passwords.
3. Verify BREC export/import and destructive identity recovery.
4. Verify compatibility behavior for historical artifacts before adding any migration path.


## 2026-09-22 — #566 Recovery Password CI Repair

### Finding
- CI runs #651 and #652 failed during `:app:assembleDebug` because `RecoveryPasswordDialog` was missing the `@Composable` annotation in the newly restored separate-password Settings flow.
- The failure was source-level and directly attributable to the recovery password UI change.

### Change
- Added the missing `@Composable` annotation to `RecoveryPasswordDialog`.
- Recovery password verifier work in `RecoveryScreen` is executed from the IO coroutine path rather than the main UI path.

### Verification
- The failing CI logs were inspected and the reported syntax/Composable errors were identified.
- Current branch HEAD: `3f8f619fabf30dda2ab12fe730c768ad4a37f7ac`.
- A build run for the immediately preceding source commit `d4bd837ff128b8ffa00c28708c914e4d2d92bc51` is still **IN_PROGRESS**; it does not yet include the final `@Composable` fix.
- Therefore current HEAD build remains **UNVERIFIED**.

### Next
- Verify the first CI run that includes `3f8f619`.
- If build succeeds, proceed to runtime verification with distinct Recovery and Advanced passwords.


## 2026-09-23 — #567 Recovery UI behavior correction

### Correction
- **USER DECISION CLARIFIED:** UI Recovery yang sudah ada **dipertahankan**. Yang diubah hanya password authority/behavior di belakang UI.
- **Recovery password** menggantikan penggunaan **Advanced password** pada Recovery lifecycle; bukan mengganti layout, interaction model, atau action surface Recovery.
- **Advanced password** tetap menjadi password authority untuk backup lifecycle.
- Export/Import tetap mengikuti behavior UI yang sudah ada: password dimasukkan melalui flow Recovery yang existing, lalu dipakai untuk artifact operation. Tidak boleh diganti menjadi auto-load password tersembunyi atau flow UI baru.

### Implementation
- RecoveryScreen dikembalikan ke implementation baseline 195c79f4f06e2d19e6e1fd8630c3b5801f86e4f6 secara UI/interaction, dengan RecoveryPasswordStore sebagai authority.
- Perubahan direct stored-password export/import pada commit f3bf367e... / 52b8ae6e... dinyatakan **SUPERSEDED** karena mengubah behavior UI yang tidak diminta.
- Commit koreksi saat ini: 8ae77067845bf4182c1d9001f60caef845ec3982.

### Verification
- Source correction sudah committed.
- CI untuk commit koreksi masih perlu diverifikasi.
- Runtime dua-password behavior masih **UNVERIFIED**.
## 2026-09-23 — #568 Recovery implementation / commit-chain reconciliation

### Context
- **PURPOSE:** Mencatat dan menghentikan rangkaian perubahan Recovery yang sempat menghasilkan commit berstatus 0-diff secara efektif, agar current state tidak salah dianggap verified.
- **USER REQUIREMENT CURRENT:** Dua password authority tetap independen:
  - **Recovery password** → BaRe ID / Local Account recovery dan recovery artifact.
  - **Advanced password** → Advanced backup/encryption lifecycle.
- **UI CONTRACT:** Existing Recovery UI dipertahankan. Tidak membuat dialog baru untuk Export/Import.
- **ACTION BEHAVIOR CURRENT:** Change password hanya mengubah Recovery password. Export dan Import tidak meminta Recovery password melalui dialog; keduanya menggunakan Recovery password yang tersimpan lokal secara internal.

### Kekacauan yang ditemukan
1. Beberapa iterasi sebelumnya sempat mengubah Export/Import menjadi password-entry flow baru. Ini **tidak sesuai requirement** karena mengubah interaction behavior/UI yang tidak diminta.
2. Commit 39676464f1e9af83d462ea50f18bc0d8a4963b28 sempat dianggap sebagai fix, tetapi inspeksi parent/tree/blob menunjukkan state file yang dipakai commit tersebut sudah ada pada parent ancestry. Akibatnya GitHub API melaporkan stats.total = 0 dan compare tidak menunjukkan behavioral diff.
3. Percobaan lanjutan menghasilkan 510448b82207d82cd4f109d1d029b563ee367ee2 dan 638d52fd2a85b6eccf4e90d75bf66ceed9c51c94; keduanya juga diverifikasi melalui GitHub API sebagai stats.total = 0. Commit message menyatakan perubahan, tetapi commit tidak memiliki diff substantif terhadap parent.
4. Kesalahan utamanya adalah memperlakukan perbedaan blob/tree ancestry sebagai bukti perubahan yang bermakna tanpa terlebih dahulu memverifikasi parent → commit stats/patch. Ini melanggar prinsip commit bukan bukti perubahan.
5. Tidak boleh lagi membuat commit tambahan hanya untuk menghasilkan SHA baru. Perubahan harus diverifikasi sebagai diff nyata sebelum dianggap implementation checkpoint.

### Corrected implementation target
- RecoveryScreen harus mempertahankan surface dan interaction model existing.
- Change/Set Recovery password memakai RecoveryPasswordStore.
- Export:
  - tidak membuka password dialog;
  - mengambil stored Recovery password secara internal;
  - jika stored Recovery password tidak tersedia, fail dengan state/error yang sesuai.
- Import:
  - user hanya memilih artifact;
  - tidak membuka password dialog;
  - mengambil stored Recovery password secara internal;
  - password material harus dibersihkan setelah operation.
- Tidak ada dependency Recovery lifecycle terhadap Advanced password.
- Tidak ada RecoveryPasswordEntryDialog atau action-specific password state.

### Verification status
- **VERIFIED:** GitHub API membuktikan commit 396764..., 510448..., dan 638d52... memiliki stats.total = 0; ketiganya tidak boleh dipakai sebagai bukti behavioral change.
- **OBSERVED:** Source pada current branch memuat stored Recovery password flow untuk Export/Import dan existing Recovery password dialog dengan visibility controls.
- **UNVERIFIED:** Current branch build setelah rekonsiliasi.
- **UNVERIFIED:** Runtime Export/Import tanpa dialog.
- **UNVERIFIED:** Recovery password change persistence dan subsequent Export/Import.
- **UNVERIFIED:** BREC v3 end-to-end, destructive recovery, wrong-password fail-closed, dan cross-device recovery.

### Corrective rule
- Rebuild/repair harus dimulai dari actual current source, dengan baseline behavior dibandingkan terhadap canonical Recovery baseline 195c79f4f06e2d19e6e1fd8630c3b5801f86e4f6 hanya sebagai reference.
- Untuk setiap consequential commit:
  1. inspect parent;
  2. inspect resulting blob/tree;
  3. verify parent → commit stats.total > 0;
  4. verify changed file and patch contain intended behavior;
  5. only then trigger/accept CI as evidence.
- Existing bad/0-diff commits tidak boleh disebut sebagai implementation proof.


## 2026-09-23 — #569 Recovery onboarding password handoff execution

### Execution
- **ROOT CAUSE:** `RecoveryOnboardingScreen.restore()` membaca Compose state `password` dari coroutine terpisah. Setelah recovery sukses, caller dapat mengosongkan `password` sebelum coroutine restore membaca nilainya. Ini membuat penyimpanan Recovery password lokal pada device baru berpotensi race.
- **CHANGE:** Password yang sudah tervalidasi pada tahap onboarding sekarang ditangkap sebagai `CharArray` khusus untuk handoff restore.
- **BEHAVIOR:** Jika device belum memiliki local Recovery password, password onboarding yang berhasil mendecode artifact dipakai untuk menginisialisasi local Recovery password. Jika local Recovery password sudah ada, tidak ditimpa.
- **MULTI-IDENTITY:** Password handoff dipertahankan sampai user memilih identity lalu restore, tanpa mengubah UI/interaction model.
- **CLEANUP:** Handoff password di-zeroize pada success, failure, invalid result, back/cancel, dan jalur start-fresh.
- **UI:** Tidak ada redesign. Export/Import tetap tidak membuka password dialog dan tetap menggunakan stored Recovery password secara internal.

### Implementation evidence
- **COMMIT:** `d37cb9a3c31109df6de0e3b0ec207b3d077ca5e8`
- **PARENT:** `51db058ac82486fd99db4f38696e120c1634805b`
- **VERIFIED:** Parent → commit compare menunjukkan 1 commit, file `RecoveryOnboardingScreen.kt` modified, 27 additions / 4 deletions / 31 changes.
- **VERIFIED:** Commit patch berisi perubahan handoff password yang dimaksud; bukan 0-diff commit.

### CI / verification status
- **OBSERVED:** GitHub Actions run #673 (`35803435388`) untuk commit `d37cb9a...` sudah berjalan.
- **OBSERVED:** Job `build` sudah melewati Set up job, Checkout, dan Java 17; sedang menjalankan Setup Gradle.
- **UNVERIFIED:** Build result belum selesai saat checkpoint worklog ini dibuat.
- **UNVERIFIED:** Runtime onboarding cross-device, local password persistence setelah recovery, dan subsequent Export/Import.
- **NEXT:** Tunggu hasil CI; jika build green, lanjutkan verification gap runtime sesuai evidence yang tersedia. Jika gagal, perbaiki dari error aktual lalu catat checkpoint baru.

## 2026-09-23 — #570 Audit Account → Settings / Scope Rebalance

### Authorization
- **USER GO:** Audit aktual tab **Account → Settings**, bedakan yang sudah dikerjakan vs belum, lalu hanya pindahkan item ke **Apps** bila ownership-nya memang jelas merupakan capability inti Apps dan bukan sekadar utility/global setting.

### Actual Source Audit

#### Account
- **Account identity surface — PARTIAL / UI_SHELL:** Local vs Account state dan email session dapat ditampilkan; device model juga ditampilkan.
- **Connect account / Sign out — UI ONLY / NOT IMPLEMENTED:** action button pada AccountCard masih disabled; belum ada account backend/session persistence.
- **Settings entry — IMPLEMENTED:** membuka Settings.
- **Diagnostics — UI ROUTING ONLY / NOT IMPLEMENTED:** membuka generic Screen.DIAGNOSTICS; surface masih generic/mockup.
- **Language — UI ONLY / NO ACTION:** row tersedia tetapi belum memiliki implementation handler.
- **Help Center — UI ONLY / NO ACTION:** row tersedia tetapi disabled/no handler.
- **Contact — PARTIAL / IMPLEMENTED:** membuka system mail intent bila tersedia.
- **Rate — UI ONLY / NO ACTION.**
- **Share BaRe — UI ONLY / NO ACTION.**
- **About — PARTIAL / IMPLEMENTED:** membuka dialog versi/product info.

#### Settings
- **Appearance:** App Theme, Dynamic Colors, dan AMOLED Black memiliki state + persistence melalui settings store. **IMPLEMENTED**.
- **Language:** hanya menampilkan English; belum ada locale switching. **UI ONLY / NOT IMPLEMENTED**.
- **App backups:** sudah diarahkan ke **Apps**. Ini adalah ownership yang benar untuk per-app configuration; tidak perlu membuat duplicate implementation di Account/Settings.
- **Messages / Call Logs / Folder backups:** row ada tetapi disabled dan eksplisit not implemented. **NOT IMPLEMENTED**.
- **Local storage:** membaca storage configuration aktual dan menyediakan switch Internal/External melalui BackupStorageRepository + initializeLocalBackupStorage. Storage path/runtime sudah memiliki evidence sebelumnya; settings-specific UI tetap perlu runtime re-check bila visual verification dibutuhkan.
- **Cloud backups:** routing ke Cloud sudah ada, tetapi provider connection/transfer belum implemented.
- **Encryption strategy:** strategy STANDARD/ADVANCED dan verifier lifecycle tersedia. **IMPLEMENTED AS SECURITY SETTING**, tetapi backup encryption execution end-to-end belum verified.
- **Manage Space:** actual backup/recovery size inspection serta reset/delete actions tersedia dengan confirmation. **IMPLEMENTED**, destructive runtime verification tetap terpisah.
- **Notifications:** Manage notifications membuka Android system settings. **IMPLEMENTED**; notification sound toggle masih disabled.
- **BaRe Labs:** routing/surface tersedia; belum merupakan core backup capability.
- **Export/Import Settings:** disabled / not implemented.
- **BaRe Logger:** surface tersedia; bukan core backup execution.
- **Recovery:** routing masuk ke Recovery screen; recovery password lifecycle dan onboarding handoff sudah dikerjakan di source, dengan runtime Security E2E masih merupakan verification gap.
- **Diagnostics:** disabled / not implemented pada Settings.
- **Restart app:** implemented melalui relaunch package.
- **Help Center:** disabled / not implemented.
- **Contact:** implemented melalui mail intent.
- **About:** implemented sebagai dialog versi/product info.

### Scope Rebalance Result
- **Tidak ada item Account/Settings yang aman untuk dipindahkan ke Apps hanya berdasarkan audit ini.**
- App backups **sudah** benar diarahkan ke Apps.
- Diagnostics di Account tidak dipindahkan ke Apps karena screen yang dirujuk saat ini adalah generic cross-product diagnostics, bukan capability Apps yang sudah memiliki implementation; memindahkannya sekarang hanya memindahkan placeholder, bukan menutup capability.
- Language, Help, Contact, Rate, Share, About adalah global utility/product information dan bukan ownership Apps.
- Recovery, encryption, storage, manage-space, dan notifications adalah cross-cutting/global concerns; tetap di Settings.
- Fokus product tetap boleh bergeser ke **Apps** tanpa membawa utility Account/Settings yang belum penting ke dalam scope Apps.

### Engineering Decision
**DECISION:** Account/Settings tidak diperluas lagi untuk mengejar parity utility reference sebelum capability inti Apps memiliki implementation/evidence. Apps menjadi area capability utama berikutnya. Utility yang belum implemented tetap ditandai apa adanya, bukan dipindahkan hanya untuk membuat Account/Settings terlihat selesai.

### Verification Truth
- **OBSERVED:** current source AccountScreen.kt dan SettingsScreen.kt diperiksa langsung pada branch v1.0/rebaseline.
- **OBSERVED:** beberapa row masih UI-only/disabled/no-op; tidak ada klaim bahwa screen presence berarti capability selesai.
- **VERIFIED earlier:** storage runtime evidence #305 mencakup Internal/External storage behavior.
- **UNVERIFIED:** account backend/session persistence, cloud provider execution, settings export/import, notification sounds, full diagnostics, and security E2E recovery.
- **NO SOURCE CHANGE:** audit ini tidak memindahkan placeholder/utility secara artificial. Tidak ada perubahan source yang diperlukan untuk keputusan scope rebalance.

### Next
- Pindah fokus implementation ke **Apps** sebagai core product area.
- Prioritaskan shared foundation yang Apps butuhkan: identity lifecycle/recovery contract, app inventory/metadata, backup inventory, operation/result model, artifact/archive/security boundary, lalu Apps execution secara bertahap.
- Account/Settings dipertahankan sebagai control-plane surface minimal sampai capability global tersebut benar-benar dibutuhkan dan memiliki implementation/verification path.


## 2026-09-23 — Wiring Account ke Settings

### Authorization
- **USER GO:** Wiring item Account yang juga memiliki implementation di Settings agar ketika dipilih dari Account, hasil/action-nya menggunakan implementation yang sama dengan Settings.
- Scope dibatasi pada wiring capability yang memang sudah memiliki implementation reusable. Tidak membuat implementation kedua dan tidak mengubah UI Account secara luas.

### Implementation
- **Contact:** Account sekarang memanggil implementation contact yang sama yang digunakan Settings melalui `openSettingsContact(context)`.
- **About:** dialog About diekstrak menjadi `SettingsAboutDialog` dan digunakan oleh Settings maupun Account, sehingga versi/product information berasal dari implementation yang sama.
- **Diagnostics:** routing Account → `Screen.DIAGNOSTICS` dipertahankan. Tidak membuat Diagnostics implementation kedua; capability Diagnostics tetap satu.
- **Language / Help Center:** tidak diubah karena pada Settings saat ini belum tersedia implementation action yang dapat direuse.
- Tidak mengubah behavior atau surface Settings selain mengekstrak action/dialog yang diperlukan untuk reuse.

### Commit
- `079a64287aea6d55d15742c820a2668fbfa5af43` — expose shared Settings actions.
- `02485243a0be63579ca25614a1db90e7a80f8265` — wire Account actions to Settings.
- **VERIFIED:** compare terhadap baseline Diagnostics `27e029b21e9a9bd30a33732b8c7a5beeb76c1c86` menunjukkan tepat 2 commit tambahan dan hanya mengubah `AccountScreen.kt` serta `SettingsScreen.kt`.

### Verification Status
- **IMPLEMENTED:** Account Contact dan About sudah diarahkan ke implementation Settings yang sama.
- **IMPLEMENTED:** Account Diagnostics tetap menggunakan route Diagnostics yang sama; tidak ada duplicate implementation.
- **UNVERIFIED:** CI untuk commit wiring terbaru belum tersedia/terdeteksi pada saat checkpoint ini.
- **UNVERIFIED:** E2E device untuk klik Account → Contact/About/Diagnostics belum dilakukan.
- **USER PLAN:** user akan mengunduh build untuk melakukan E2E sendiri. Hasil E2E belum tersedia pada checkpoint ini.

### Boundary
- Tidak ada perubahan Apps.
- Tidak ada perubahan capability Diagnostics.
- Tidak ada perubahan UI design atau behavior Settings yang tidak diperlukan untuk shared wiring.
- Prinsip yang dipertahankan: **satu capability, satu implementation; multiple entry points boleh menggunakan implementation yang sama.**


## 2026-09-23 — Audit Apps

### Authorization
- **USER GO:** Audit aktual implementasi tab **Apps** sampai kondisi saat ini.
- Hasil detail audit disampaikan di luar worklog sesuai instruksi pengguna.

### Record
- Audit source aktual pada branch `v1.0/rebaseline` telah dilakukan.
- Tidak ada perubahan source Apps dari audit ini.
- Tidak ada perubahan capability atau scope yang diterapkan sebagai bagian dari audit.

### Verification Boundary
- Audit ini merupakan inspection/audit state, bukan bukti runtime verification.
- Detail findings tidak dicatat di worklog.

### Next
- Menentukan pekerjaan Apps berikutnya berdasarkan evidence audit aktual dan authorization berikutnya.


## 2026-09-23 — #571 Apps capability audit — 54 capability / 7 group reconciliation

### Authorization
- **USER GO:** Revisi `docs/reference.md` agar tetap menjadi **reference-only**, lalu catat pekerjaan/audit Apps aktual di `docs/worklog.md`.
- Boundary yang ditegaskan: **reference = evidence/reference baseline; worklog = actual project work, audit result, implementation state, verification, dan next work**.

### Documentation boundary correction
- `docs/reference.md` direvisi agar bagian Apps tidak lagi mencampur **current BaRe implementation state**, **gap matrix**, atau **BaRe placement decision** ke dalam reference artifact.
- Capability inventory **APP-01..APP-54** dan grouping **G1–G7 + APP-01 foundation** tetap dipertahankan di reference sebagai **reference capability inventory**.
- Detail actual BaRe implementation dan audit status dicatat sebagai worklog record.
- Reference tidak boleh digunakan sebagai source of truth untuk status implementasi BaRe.

### Canonical Apps capability grouping
**Foundation**
- APP-01 — App Workspace / App Detail foundation

**G1 — Discovery & Filtering**
- APP-02 Local apps inventory; APP-03 Cloud-synced apps inventory; APP-04 Search apps; APP-05 Sort apps; APP-06 App-type filtering; APP-07 System-app subfilters; APP-10 On-device backup status filter; APP-11 Cloud-sync status filter; APP-12 Install-status filter; APP-13 Enabled-status filter; APP-14 Multiple-backup filter; APP-15 Protected-backup filter; APP-16 Notes filter; APP-17 Older/newer APK relation; APP-18 Google Play install-source filter

**G2 — Action & Management**
- APP-08 Favorites; APP-09 Labels; APP-32 Labels/favorites/blacklist management; APP-33 Blacklist behavior; APP-37 Quick actions; APP-38 App swipe actions; APP-45 Launch installed app; APP-46 Enable / disable app; APP-47 Force stop app; APP-48 Uninstall app; APP-49 Open Android App Info; APP-50 Open Play Store; APP-51 Share APK; APP-52 Battery optimization management; APP-53 Add app to Home screen; APP-54 Clear app data

**G3 — Backup**
- APP-19 Device/cloud backup state; APP-20 App backup parts; APP-21 App backup; APP-23 Delete local/device backups; APP-24 Multiple-backup strategy; APP-25 Protected backup; APP-26 Backup data size limits; APP-27 Encryption of app data backups; APP-28 Backup cache option

**G4 — Restore / Install**
- APP-22 App restore; APP-40 APK/APKS import/install; APP-41 Restore runtime/special data; APP-42 App SSAID restore option; APP-43 Missing-app restore; APP-44 Newer-version restore

**G5 — Batch Operations**
- APP-29 Batch operations; APP-30 Batch search/filter/select-all; APP-31 Batch app backup settings

**G6 — Configuration**
- APP-34 Custom app configurations; APP-35 Run configuration now; APP-36 Schedule configuration

**G7 — Diagnostics**
- APP-39 App visibility diagnostics

**Coverage:** APP-01 + G1 (15) + G2 (16) + G3 (9) + G4 (6) + G5 (3) + G6 (3) + G7 (1) = **54 capability IDs**.

### Actual BaRe source audit
Branch: `v1.0/rebaseline`

Source inspected:
- `app/src/main/java/com/bare/feature/apps/AppsFilter.kt`
- `app/src/main/java/com/bare/feature/apps/AppsScreens.kt`
- `app/src/main/java/com/bare/feature/apps/InstalledAppRepository.kt`
- `app/src/main/java/com/bare/feature/apps/AppDetailsRepository.kt`
- `app/src/main/java/com/bare/feature/apps/AppOrganizationStore.kt`
- `app/src/main/java/com/bare/feature/apps/AppUsageRepository.kt`
- `app/src/main/res/values/strings.xml`

Actual findings:
- Installed app inventory is real and backed by `InstalledAppRepository`.
- Search is functional by display name/package.
- Functional filters: User/System, Enabled/Disabled, Google Play/not Google Play, Favorites, Labels, selected labels.
- Functional sort: Name, Install date, Update date, Date used, App size.
- Backup date and Backup size sort options exist in the UI model but are explicitly unavailable and fall back to name sorting; therefore these are not implemented capabilities.
- Favorites and labels have real local persistence through `AppOrganizationStore`.
- App detail metadata is loaded from actual package/app state through `AppDetailsRepository`.
- Backup/restore/configuration/management/diagnostics surfaces contain substantial UI contract/mockup state, but their execution paths are not implemented/verified as backup/restore capability.
- No actual Apps batch selection implementation was found.
- No actual Quick Actions execution or swipe-action implementation was found.
- `canLaunch` is available in detail metadata, but no Launch action execution was found in the App Detail surface.

### 54-cap audit status

| ID | Capability | Actual BaRe status |
| --- | --- | --- |
| APP-01 | App Workspace / App Detail foundation | PARTIAL |
| APP-02 | Local apps inventory | IMPLEMENTED |
| APP-03 | Cloud-synced apps inventory | GAP |
| APP-04 | Search apps | IMPLEMENTED |
| APP-05 | Sort apps | PARTIAL |
| APP-06 | App-type filtering | IMPLEMENTED |
| APP-07 | System-app subfilters | GAP |
| APP-08 | Favorites | IMPLEMENTED |
| APP-09 | Labels | IMPLEMENTED |
| APP-10 | On-device backup status filter | GAP |
| APP-11 | Cloud-sync status filter | GAP |
| APP-12 | Install-status filter | GAP |
| APP-13 | Enabled-status filter | IMPLEMENTED |
| APP-14 | Multiple-backup filter | GAP |
| APP-15 | Protected-backup filter | GAP |
| APP-16 | Notes filter | GAP |
| APP-17 | Older/newer APK relation | GAP |
| APP-18 | Google Play install-source filter | IMPLEMENTED |
| APP-19 | Device/cloud backup state | GAP |
| APP-20 | App backup parts | PARTIAL — UI/list contract only |
| APP-21 | App backup | MOCKUP |
| APP-22 | App restore | MOCKUP |
| APP-23 | Delete local/device backups | MOCKUP |
| APP-24 | Multiple-backup strategy | MOCKUP |
| APP-25 | Protected backup | MOCKUP |
| APP-26 | Backup data size limits | MOCKUP |
| APP-27 | Encryption of app data backups | MOCKUP |
| APP-28 | Backup cache option | MOCKUP |
| APP-29 | Batch operations | GAP |
| APP-30 | Batch search/filter/select-all | GAP |
| APP-31 | Batch app backup settings | GAP |
| APP-32 | Labels/favorites/blacklist management | PARTIAL |
| APP-33 | Blacklist behavior | GAP / MOCKUP |
| APP-34 | Custom app configurations | MOCKUP |
| APP-35 | Run configuration now | MOCKUP |
| APP-36 | Schedule configuration | MOCKUP |
| APP-37 | Quick actions | GAP |
| APP-38 | App swipe actions | GAP |
| APP-39 | App visibility diagnostics | MOCKUP |
| APP-40 | APK/APKS import/install | MOCKUP |
| APP-41 | Restore runtime/special data | MOCKUP |
| APP-42 | App SSAID restore option | MOCKUP |
| APP-43 | Missing-app restore | MOCKUP |
| APP-44 | Newer-version restore | MOCKUP |
| APP-45 | Launch installed app | GAP |
| APP-46 | Enable / disable app | MOCKUP |
| APP-47 | Force stop app | MOCKUP |
| APP-48 | Uninstall app | MOCKUP |
| APP-49 | Open Android App Info | MOCKUP |
| APP-50 | Open Play Store | MOCKUP |
| APP-51 | Share APK | MOCKUP |
| APP-52 | Battery optimization management | MOCKUP |
| APP-53 | Add app to Home screen | MOCKUP |
| APP-54 | Clear app data | GAP |

### Implementation boundary
- **Source implementation truth:** actual repository source above.
- **Reference truth:** `docs/reference.md` records what Swift Backup reference evidence shows; it does not claim BaRe implementation.
- **Worklog truth:** this checkpoint records the actual BaRe audit and work status.
- Internal `AppsScreens.kt` list of 43 items is **not** the canonical 54-capability inventory. It is a UI-side/internal list and must not replace APP-01..APP-54 grouping.
- Mockup presence does not equal execution capability.
- Build/CI/runtime verification was not performed by this audit; this checkpoint is source inspection only.

### Verification
- **OBSERVED:** source files above were inspected on branch `v1.0/rebaseline`.
- **OBSERVED:** 54 canonical capability IDs and 7-group grouping are present in reference baseline.
- **VERIFIED:** documentation boundary correction was committed to `docs/reference.md` before this worklog update.
- **UNVERIFIED:** Apps runtime behavior, backup/restore execution, batch execution, APK/APKS install execution, privileged actions, and end-to-end verification.

### Next
- Keep `docs/reference.md` reference-only.
- Use this checkpoint as the current Apps implementation baseline.
- Next implementation work must start from dependency/correctness priority, not from the reference UI order.


### #571 follow-up documentation cleanup
- After inspection, a residual Apps implementation section was found at the tail of `docs/reference.md` and removed.
- Final reference cleanup commit: `1f61d0f2bbcaccf34d381e6e138403f9daf47ea0`.
- Final intent remains: reference records Swift Backup/reference evidence; actual BaRe implementation status for Apps is recorded in this worklog checkpoint.


## 2026-09-23 — Perapihan Boundary Reference dan Worklog

### Pekerjaan Saat Ini
Merapikan kembali pemisahan `docs/reference.md` dan `docs/worklog.md` agar sesuai dengan README dan Governance yang berlaku.

### Perubahan
- `docs/reference.md` dipertahankan sebagai **Reference / Discovery Artifact** untuk evidence Swift Backup.
- Bagian yang berisi current state BaRe, gap implementation, architecture proposal, implementation decision, dan status pekerjaan BaRe dihapus dari `reference.md`.
- Capability inventory Apps **APP-01..APP-54** serta grouping **G1–G7 + APP-01 foundation** tetap dipertahankan karena merupakan hasil rekonsiliasi evidence reference.
- `docs/worklog.md` menjadi tempat pencatatan audit actual BaRe, implementation state, verification, dan next action.
- Tidak ada source implementation yang diubah oleh perapihan dokumentasi ini.

### Verifikasi
- Governance yang digunakan: `LANGUAGE.md`, `DOCUMENTATION_CONVENTION.md`, `NAMING_CONVENTION.md`, `CHANGE_POLICY.md`, dan `OPERATING_CONTRACT.md`.
- Bahasa dokumen dikembalikan ke pola existing: Bahasa Indonesia sebagai default, English dipertahankan untuk technical/canonical terminology.
- Struktur worklog mengikuti pola existing `Pekerjaan Saat Ini` / `Perubahan` / `Verifikasi` / `Berikutnya` bila relevan.
- Reference tidak lagi menjadi tempat pencatatan current implementation state BaRe.
- Perubahan reference terakhir: `0e786e571e5b25835dbcd37c95b7553d080a88f5`.

### Belum Dikerjakan / Tidak Diubah
- Tidak ada perubahan source Apps.
- Tidak ada perubahan product scope atau architecture decision.
- Tidak ada runtime verification baru.

### Berikutnya
- Gunakan `reference.md` hanya untuk reference evidence dan hasil audit terhadap artifact reference.
- Catat pekerjaan actual BaRe, implementation state, verification, dan keputusan kerja di `worklog.md` atau dokumen canonical yang sesuai.
- Jangan mencampurkan reference evidence dengan current project state pada perubahan dokumentasi berikutnya.


## 2026-09-23 — Apps 54 capability quick index

### Pekerjaan Saat Ini
Memperjelas index ringkas APP-01..APP-54 agar setiap ID langsung menunjukkan **nama capability + status**, sehingga worklog dapat dibaca sekali jalan tanpa membuka detail audit.

### Status Ringkas

```
FOUNDATION
APP-01  App Workspace / App Detail foundation                  PARTIAL

G1 Discovery/Filtering
APP-02  Local apps inventory                                   IMPLEMENTED
APP-03  Cloud-synced apps inventory                            GAP
APP-04  Search apps                                            IMPLEMENTED
APP-05  Sort apps                                              PARTIAL
APP-06  App-type filtering                                     IMPLEMENTED
APP-07  System-app subfilters                                  GAP
APP-10  On-device backup status filter                         GAP
APP-11  Cloud-sync status filter                               GAP
APP-12  Install-status filter                                  GAP
APP-13  Enabled-status filter                                  IMPLEMENTED
APP-14  Multiple-backup filter                                 GAP
APP-15  Protected-backup filter                               GAP
APP-16  Notes filter                                           GAP
APP-17  Older/newer APK relation                               GAP
APP-18  Google Play install-source filter                      IMPLEMENTED

G2 Action/Management
APP-08  Favorites                                              IMPLEMENTED
APP-09  Labels                                                 IMPLEMENTED
APP-32  Labels/favorites/blacklist management                  PARTIAL
APP-33  Blacklist behavior                                     GAP/MOCKUP
APP-37  Quick actions                                          GAP
APP-38  App swipe actions                                      GAP
APP-45  Launch installed app                                   GAP
APP-46  Enable / disable app                                   MOCKUP
APP-47  Force stop app                                         MOCKUP
APP-48  Uninstall app                                          MOCKUP
APP-49  Open Android App Info                                  MOCKUP
APP-50  Open Play Store                                        MOCKUP
APP-51  Share APK                                              MOCKUP
APP-52  Battery optimization management                        MOCKUP
APP-53  Add app to Home screen                                 MOCKUP
APP-54  Clear app data                                         GAP

G3 Backup
APP-19  Device/cloud backup state                              GAP
APP-20  App backup parts                                       PARTIAL
APP-21  App backup                                             MOCKUP
APP-23  Delete local/device backups                            MOCKUP
APP-24  Multiple-backup strategy                               MOCKUP
APP-25  Protected backup                                      MOCKUP
APP-26  Backup data size limits                                MOCKUP
APP-27  Encryption of app data backups                         MOCKUP
APP-28  Backup cache option                                    MOCKUP

G4 Restore/Install
APP-22  App restore                                            MOCKUP
APP-40  APK/APKS import/install                                MOCKUP
APP-41  Restore runtime/special data                           MOCKUP
APP-42  App SSAID restore option                               MOCKUP
APP-43  Missing-app restore                                    MOCKUP
APP-44  Newer-version restore                                  MOCKUP

G5 Batch
APP-29  Batch operations                                       GAP
APP-30  Batch search/filter/select-all                         GAP
APP-31  Batch app backup settings                              GAP

G6 Configuration
APP-34  Custom app configurations                              MOCKUP
APP-35  Run configuration now                                  MOCKUP
APP-36  Schedule configuration                                 MOCKUP

G7 Diagnostics
APP-39  App visibility diagnostics                             MOCKUP
```

### Verifikasi
- Nama capability mengikuti canonical APP-01..APP-54 pada checkpoint audit Apps.
- Status tidak diubah; hanya index diperkaya agar ID tidak berdiri sendiri.
- Tidak membuat file baru.
- Tidak mengubah source Apps atau hasil audit.
- Detail evidence tetap berada pada checkpoint **#571 Apps capability audit — 54 capability / 7 group reconciliation**.

### Berikutnya
Gunakan index ini sebagai pembacaan cepat. Jika perlu detail, telusuri evidence source dari checkpoint #571.


## 2026-09-23 — Apps hamburger / quick actions baseline implementation

### Authorization
- **USER GO:** Mulai pekerjaan Apps dari baseline `665ca627419306a1cc9ede21545ba0baea51529d`.
- Reference digunakan sebagai acuan pola UI/interaction; capability dan behavior disesuaikan dengan boundary BaRe.

### Implementasi
- Hamburger Apps sekarang membuka menu Apps dengan Quick actions, App Labels, Custom configurations, Blacklist, App backup settings, dan Settings.
- Menambahkan surface Quick Actions mengikuti pola reference untuk backup/restore/manage actions.
- Menambahkan surface App Labels dengan persistence lokal untuk create, rename, dan delete label.
- Menambahkan surface Blacklist dengan persistence lokal dan picker aplikasi; aplikasi yang masuk blacklist tidak ditampilkan pada inventory Apps.
- Menambahkan surface Custom configurations sebagai UI flow; persistence/execution konfigurasi belum dihubungkan ke backup engine.
- Menambahkan surface App backup settings dengan persistence lokal untuk opsi yang sudah dapat disimpan, sementara execution capability downstream belum di-wire.
- Menambahkan routing baru pada `Screen` dan `BaReApp.kt`.

### Boundary
- Premium status pada reference tidak dipakai sebagai pembatas capability BaRe.
- Backup/restore/cloud execution yang belum tersedia tidak dimock sebagai successful execution.
- UI yang belum memiliki execution backend tetap dapat dibuka dengan state yang eksplisit.
- Status capability 54 tetap mengikuti audit; implementasi UI ini tidak otomatis menaikkan status capability menjadi VERIFIED.

### Verifikasi
- **OBSERVED:** source baseline `665ca627419306a1cc9ede21545ba0baea51529d` diperiksa sebelum perubahan.
- **IMPLEMENTED:** routing hamburger dan Apps submenu baru pada source.
- **IMPLEMENTED:** local persistence label dan blacklist.
- **UNVERIFIED:** Android build/CI dan device/runtime untuk commit ini belum dilakukan pada saat pencatatan.

### Berikutnya
- Verifikasi build/CI.
- Lanjutkan behavior per-app: detail, `⋮`, swipe, dan long-press berdasarkan interaction reference yang sudah dikaji.


### Koreksi kecil
- Quick Action `Enable/Disable apps` tidak lagi membuka `AppManagementScreen` tanpa app terpilih.
- Saat ini action tersebut tetap membuka state informasi/pending UI sampai batch selection/execution capability tersedia.
- Source correction: `f91f11e9c520b67840724a2d36ad24493b6a42eb`.

## 2026-09-23 — Koreksi CI Apps submenu

### Temuan
- CI run #700 gagal pada `:app:compileDebugKotlin`.
- Error yang terverifikasi: lima screen Apps submenu direferensikan dari `BaReApp.kt`, tetapi import top-level untuk screen tersebut belum ada.
- Screen yang terdampak: `AppsQuickActionsScreen`, `AppLabelsScreen`, `AppCustomConfigurationsScreen`, `AppBlacklistScreen`, dan `AppBackupSettingsScreen`.

### Perubahan
- Menambahkan lima import yang hilang pada `BaReApp.kt`.
- Tidak mengubah behavior atau scope Apps submenu pada koreksi ini.

### Verifikasi
- Commit koreksi: `7532121b8c2b80934469b6689ac85ec369fa1291`.
- CI run #701 pada commit tersebut: **SUCCESS**.
- `Assemble debug APK`: **SUCCESS**.
- `Verify APK artifact`: **SUCCESS**.
- `Verify APK signing certificate`: **SUCCESS**.
- `Upload debug APK`: **SUCCESS**.
- In-place device update: **SKIPPED**; runtime/device tetap belum terverifikasi.

### Berikutnya
- Lanjutkan verifikasi dan implementasi interaction per-app: detail, `⋮`, swipe, dan long-press sesuai reference.

## 2026-09-23 — Koreksi Apps hamburger surface

### Temuan
- Implementasi sebelumnya salah menempatkan `AppsTools` / capability map sebagai satu-satunya item pada hamburger Apps.
- Reference yang dijadikan acuan menunjukkan hamburger Apps sebagai menu destination langsung di sisi kanan `TopAppBar`, bukan capability map.

### Perubahan
- Menghapus `AppsToolsScreen` dan route `Screen.APPS_TOOLS`.
- Menghapus model capability map Apps dari source serta resource `apps_cap_01` sampai `apps_cap_43` yang hanya dipakai oleh surface tersebut.
- Hamburger Apps sekarang langsung menyediakan destination: Quick actions, App Labels, Custom configurations, Blacklist, App backup settings, dan Settings.
- Struktur submenu mengikuti pola reference; behavior masing-masing destination tetap mengikuti capability BaRe.

### Verifikasi
- Source search tidak lagi menemukan `APPS_TOOLS`, `AppsToolsScreen`, `appsCapabilities`, `appsGroups`, atau `apps_cap_01`.
- Build/runtime belum dinyatakan terverifikasi pada saat pencatatan ini; CI berikutnya menjadi verification gate.

### Berikutnya
- Verifikasi CI hasil koreksi ini.
- Setelah build bersih, lanjutkan interaction Apps sesuai reference tanpa mengembalikan capability map ke UI.


## 2026-09-23 — Apps hamburger localization

### Pekerjaan Saat Ini
Menyelaraskan text pada hamburger Apps dengan convention repository setelah surface hamburger dikoreksi menjadi menu langsung pada TopAppBar.

### Perubahan
- Mempertahankan icon hamburger pada sisi kanan Apps TopAppBar.
- Mempertahankan menu langsung ke Quick actions, App Labels, Custom configurations, Blacklist, App backup settings, dan Settings.
- Mengganti literal text menu di `BaReApp.kt` menjadi `stringResource(...)`.
- Menambahkan resource `app_labels` dan `app_backup_settings` pada `strings.xml`.
- Tidak mengubah routing, behavior, atau capability backend pada pekerjaan ini.

### Verifikasi
- Source menu diperiksa pada branch `v1.0/rebaseline`.
- CI #705 untuk koreksi surface sebelumnya: SUCCESS.
- CI #706 dan #707 untuk perubahan localization ini masih IN_PROGRESS saat pencatatan.
- Runtime/device verification belum dilakukan.

### Berikutnya
- Tunggu CI #706/#707 sampai selesai.
- Jika hijau, lanjutkan visual/runtime test user terhadap Apps hamburger sebelum memperluas behavior Apps berikutnya.

## 2026-09-23 — Apps right drawer dan navigation hierarchy

### Pekerjaan Saat Ini
Menutup scope Apps navigation berdasarkan hasil runtime user test dan reference drawer.

### Perubahan
- Mengganti Apps hamburger DropdownMenu menjadi right-side drawer transient pada Apps surface.
- Drawer menampilkan icon, title, description, badge, separator, dan dua destination bawah sesuai reference.
- Android Back saat drawer terbuka menutup drawer terlebih dahulu.
- Destination drawer tetap menggunakan screen yang sama; drawer tidak menjadi Screen.
- Menambahkan loading state pada Apps inventory agar proses reload setelah kembali dari submenu tidak salah tampil sebagai No matching installed apps.
- Menjaga Labels, Custom Configurations, dan Blacklist sebagai single destination/capability walaupun memiliki entry point dari App Backup Settings.
- Settings tetap diarahkan ke canonical Settings dan tidak dibuat sebagai Apps Settings baru.

### Verifikasi
- Source implementation diperbarui pada branch v1.0/rebaseline.
- CI sebelum pekerjaan ini (#707) terobservasi SUCCESS dari user report; perubahan baru ini belum memiliki hasil CI.
- Device/runtime verification untuk perubahan baru: UNVERIFIED.

### Berikutnya
- Jalankan CI untuk perubahan ini sampai selesai.
- Jika CI hijau, lanjutkan install/update APK dan uji navigation drawer + back hierarchy.

### Koreksi Build Prasyarat
- Setelah inspeksi source, ditemukan import API Compose yang dibutuhkan drawer belum tercantum di BaReApp.kt.
- Ditambahkan import background dan fillMaxHeight; tidak mengubah behavior.
- CI untuk commit koreksi ini menjadi verification target terbaru.

### Koreksi CI #710
- CI #710 gagal pada compileDebugKotlin; evidence menunjukkan icon `LabelOutline` tidak tersedia dan struktur helper sempat terbaca sebagai local function akibat brace state pada commit tersebut.
- Source saat ini menggunakan icon `Label` yang tersedia dan helper `AppsDrawerItem` berada di top-level composable.
- Resource drawer sudah berada di branch sebelum verification target terbaru.

### Koreksi CI #714 — syntax/brace state
- Evidence #714 menunjuk `BaReApp.kt:627` sebagai syntax error dan efek berantai pada `AppsDrawerItem`.
- Root cause ditelusuri ke penutupan lambda `Scaffold`/outer `Box` yang salah setelah drawer dipindahkan ke overlay shell.
- Brace hierarchy diperbaiki: content lambda `Scaffold` ditutup sebelum drawer overlay, kemudian outer shell `Box` ditutup setelah drawer.
- `Row` juga ditambahkan ke import karena helper memakai Row.
- Tidak ada perubahan capability/backend; koreksi hanya build correctness/navigation surface.


## 2026-09-23 — Koreksi format Apps drawer dan state saat Back

### Pekerjaan Saat Ini
Menyesuaikan hasil user test setelah CI #716 hijau.

### Perubahan
- Apps hamburger tetap berupa right-side transient drawer, tetapi format surface diselaraskan dengan pola bottom-sheet: rounded edge pada sisi masuk, tonal/shadow surface yang sama, dan handle visual.
- Empat item utama tetap di bagian atas: Quick actions, App Labels, Custom configurations, dan Blacklist.
- App backup settings dan Settings dipindahkan ke group bawah yang dipin dengan Spacer(weight = 1f), sehingga selalu berada di bagian paling bawah drawer.
- Menambahkan process-local cache inventory pada InstalledAppRepository.
- AppsFilterScreen sekarang memulai dari cache inventory bila tersedia, lalu tetap melakukan reload aktual pada resume. Tujuannya menghilangkan state sementara **No matching installed apps** saat kembali dari submenu/drawer.

### Verifikasi
- Source changes committed pada branch v1.0/rebaseline.
- Perubahan drawer hanya mengubah presentation/layout; routing destination tetap sama.
- Cache tidak menggantikan reload aktual; cache hanya mencegah empty-state flash saat Apps surface dibuat ulang.
- CI untuk perubahan baru: **UNVERIFIED** sampai workflow commit terbaru selesai.
- Device/runtime setelah perubahan: **UNVERIFIED**.

### Berikutnya
- Tunggu/cek CI commit terbaru.
- Jika hijau, install/update APK dan verifikasi langsung: buka hamburger, posisi dua item bawah, Back dari drawer, dan Back dari setiap destination tanpa **No matching installed apps**.


## 2026-09-23 — Penyelarasan warna Apps drawer

### Pekerjaan Saat Ini
Menindaklanjuti user runtime test: fungsi Back sudah normal; hanya warna right drawer belum sama dengan bottom navigation surface.

### Perubahan
- Warna surface right drawer Apps diubah dari `MaterialTheme.colorScheme.surface` menjadi `MaterialTheme.colorScheme.surfaceVariant`.
- Tidak mengubah layout, posisi item, routing, atau Back behavior.

### Verifikasi
- Source change committed pada branch `v1.0/rebaseline`.
- Device/runtime untuk commit ini: UNVERIFIED sampai APK terbaru diuji.
- CI untuk commit ini: menunggu hasil workflow terbaru.


## 2026-09-23 — Implementasi Apps Context Header dari baseline b752b28

### Authorization
GO untuk implementasi Apps contextual sub-header dengan baseline tracking `b752b28ce0c834763cca883456297a25d1eb8815`.

### Implementasi
- Header global BAЯE / SAVE OUR DAY dipertahankan.
- Apps mendapat sub-header compact setinggi 64dp di bawah header global.
- Sub-header normal menampilkan `LOCAL APPS`, jumlah inventory, Filter, dan hamburger.
- Search tetap berada di header global dan tetap membuka Apps Search saat Apps aktif.
- Filter dan hamburger Apps dipindahkan ke sub-header agar action Apps terkonsentrasi di context bar.
- Local/Cloud diperkenalkan sebagai source selector di sub-header.
- Local tetap menjadi source aktif dan jumlah inventory diambil dari inventory aktual yang dimuat `AppsFilterScreen`.
- Cloud ditampilkan sebagai opsi tetapi disabled dengan keterangan bahwa cloud inventory belum wired; tidak ada data cloud yang difabrikasi.
- Implementasi dibuat sebagai Apps-specific surface sehingga header global dan tab lain tidak diubah.
- Contextual header disiapkan sebagai fondasi untuk state batch/context berbeda di tahap berikutnya; screen batch yang belum ada di BaRe tidak dipalsukan.

### Boundary
- Tidak mengubah bottom navigation.
- Tidak mengubah Apps right drawer yang sudah benar pada baseline.
- Tidak mengimplementasikan APP-03 / cloud inventory backend.
- Tidak mengklaim batch contextual state sudah terintegrasi karena capability/screen batch terkait belum ada di source saat ini.

### Verifikasi
- Baseline source diverifikasi pada commit `b752b28ce0c834763cca883456297a25d1eb8815`.
- Source change committed pada branch `v1.0/rebaseline`.
- CI untuk source terbaru masih menunggu hasil workflow.
- Device/runtime belum diverifikasi.

### Berikutnya
- Cek CI source terbaru.
- Jika hijau, uji runtime: header global tetap, Apps sub-header compact, count inventory, dropdown source, Filter, hamburger, Back, dan regression tab lain.


## 2026-09-23 — Apps search field menjadi bagian Context Header

### Authorization
GO untuk scope terbatas setelah baseline dikembalikan ke `a8bcc9dbef1c577a409882a7f2a606a61ce275f7`.

### Implementasi
- Kotak input `Search apps or package` dipindahkan dari area konten Apps menjadi state/surface di dalam Apps Context Header.
- Global header `BAЯE / SAVE OUR DAY` tetap tidak berubah.
- Saat search Apps dibuka dari tombol Search global, Context Header berubah menjadi kotak search penuh pada area sub-header.
- Kotak search tetap mengubah query inventory Apps yang sama; filtering nama aplikasi/package tidak diganti.
- Tombol `X` di dalam kotak sekarang menutup search mode sekaligus mengosongkan query.
- Back saat search mode Apps juga menutup search mode dan mengosongkan query.
- Saat search mode tertutup, Context Header kembali ke `LOCAL APPS`, jumlah inventory, Filter, dan hamburger.

### Boundary
- Tidak mengubah Apps drawer.
- Tidak mengubah bottom navigation.
- Tidak mengubah inventory discovery atau filter logic.
- Tidak mengimplementasikan capability cloud/batch baru.

### Verifikasi
- Source committed pada branch `v1.0/rebaseline`.
- Source inspection memastikan kotak search tidak lagi dirender di `AppsFilterScreen`; input berada di `AppsContextHeader`.
- Device/runtime belum diverifikasi.
- CI build masih menunggu hasil workflow commit terbaru.


## 2026-09-23 — Apps per-app overflow bottom sheet

### Authorization
GO untuk implementasi bottom sheet saat tombol `⋮` pada setiap app card ditekan, dengan scope hanya pada surface/action app tersebut.

### Implementasi
- Tombol `⋮` per app sekarang membuka `ModalBottomSheet` dengan context app yang dipilih.
- Header sheet menampilkan package name dan nama app.
- Action area dibuat horizontal-scrollable mengikuti pola reference.
- Action yang dapat dijalankan dari capability Android yang tersedia sekarang:
  - Launch app.
  - Uninstall melalui Android package workflow.
  - Open Play Store.
  - Open Android App Info.
  - Enable/Disable, Force stop, dan Clear data diarahkan ke surface management BaRe yang sudah ada; backend execution tetap mengikuti status capability yang ada dan tidak diklaim berhasil.
- Capability organization yang sudah tersedia di BaRe dipakai langsung:
  - Favorite toggle.
  - Add to blacklist.
  - Set app labels melalui App Management.
  - Backup / Restore membuka workflow app backup yang sudah ada.
- Battery optimization membuka Android battery optimization settings.
- Share APK tetap berada pada action surface tetapi belum memiliki verified APK-sharing backend; tidak dibuat seolah-olah berhasil.
- Warna sheet dan action chip menggunakan `MaterialTheme.colorScheme`, bukan hard-coded warna reference.
- Semua text tambahan untuk bottom sheet dimasukkan ke `strings.xml`.

### Boundary
- Tidak mengubah Apps Context Header/Search.
- Tidak mengubah Apps drawer.
- Tidak mengubah bottom navigation.
- Tidak menambah backend backup/restore/cloud.
- Tidak mengklaim privileged action sebagai runtime-verified.

### Verifikasi
- Source committed pada branch `v1.0/rebaseline`.
- Source inspection memastikan action sheet terikat ke package app yang diklik.
- CI build menunggu hasil workflow terbaru.
- Device/runtime belum diverifikasi.

### Berikutnya
- Cek CI.
- Jika hijau, runtime test titik tiga → bottom sheet → dismiss dan action yang tersedia.


### Koreksi Verifikasi CI
- CI #738 gagal karena import resource `R` dan `stringResource` pada `AppsFilter.kt` belum lengkap setelah penambahan bottom sheet.
- Fix commit `056df9ee6ded551c1ddd84ffdf4b13ebc44fba1e` menambahkan import yang diperlukan.
- CI #739 untuk commit tersebut: **SUCCESS**.
- Assemble debug APK, artifact verification, signing verification, labeling, dan upload berhasil; in-place device update tetap skipped.
- Device/runtime: **UNVERIFIED**.

- Koreksi final commit `8e125d24c2e3ac337decccafb5be966608c976a6`: Share APK tetap terlihat pada action surface tetapi disabled karena backend APK-sharing belum verified; tidak diarahkan ke workflow yang tidak sesuai.
- CI #740 untuk commit final: **SUCCESS**.


## 2026-09-23 — Apps action refinement: icons, favorites, blacklist dialog, per-app battery optimization

### Authorization
- **USER GO:** Lanjut dari baseline `8e125d24c2e3ac337decccafb5be966608c976a6` yang sudah dinyatakan green pada CI sebelumnya.

### Implementasi
- Inventory Apps sekarang membawa actual installed application icon dari Android `PackageManager` dan menampilkannya pada app list serta app action sheet.
- Favorite tidak lagi menampilkan text status di sisi kanan action row; status favorite divisualisasikan sebagai star badge pada app icon.
- `Add to blacklist` tidak lagi langsung commit state. Action sekarang membuka dialog dengan dua mode sesuai reference: hide app dan APK-only untuk batch operations.
- Mode hide memakai blacklist inventory yang sudah ada; mode APK-only disimpan sebagai organization state terpisah tanpa mengklaim batch backup/restore sudah dieksekusi.
- Battery optimization diarahkan ke request Android yang spesifik untuk package app, dengan fallback ke Android App Info jika intent per-package tidak tersedia.
- Share APK tetap tidak diaktifkan karena APK extraction/sharing backend belum terverifikasi.

### Boundary
- Tidak mengubah Apps Context Header atau Apps right drawer.
- Tidak mengimplementasikan fake APK sharing.
- Tidak mengklaim batch execution atau privileged app-management actions sebagai runtime-verified.

### Verifikasi
- Source changes committed setelah inspeksi baseline `8e125d24c2e3ac337decccafb5be966608c976a6`.
- CI/device verification untuk commit baru: **PENDING**.


## 2026-09-23 — Koreksi runtime Apps: favorite, blacklist dialog, battery action

### Observasi user
- CI terakhir hijau, tetapi runtime pada device menunjukkan tiga masalah: Favorite tidak terlihat/berfungsi, Blacklist langsung berubah tanpa dialog yang diharapkan, dan Battery optimization membuka daftar/global surface.

### Root cause / boundary
- Favorite sebelumnya hanya bergantung pada pembacaan SharedPreferences saat composition; state UI tidak eksplisit. Action sekarang memakai state Compose lokal yang diikuti persistensi store dan reload inventory.
- Blacklist action tidak lagi menutup bottom sheet saat dialog dibuka. Dialog mempertahankan pilihan Hide vs APK-only dan state baru ditulis hanya saat OK.
- ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS bukan mekanisme publik untuk mengubah Doze exemption aplikasi pihak ketiga dari aplikasi pengelola. Implementasi sebelumnya dapat jatuh ke/global surface pada device tertentu. Action sekarang membuka Application Details untuk package yang dipilih, sehingga tidak lagi mengarahkan ke daftar battery optimization global. Status tetap dibaca dengan PowerManager.isIgnoringBatteryOptimizations(packageName).

### Implementasi
- Favorite row menjadi toggle eksplisit: Add to favorites / Remove from favorites, dengan star badge mengikuti state lokal dan persistence AppOrganizationStore.
- Blacklist dialog tetap memiliki dua mode: hide app dan APK-only untuk batch operations; mutation hanya terjadi setelah konfirmasi.
- Battery action diarahkan ke Settings.ACTION_APPLICATION_DETAILS_SETTINGS dengan package:<selected-package>.
- Permission REQUEST_IGNORE_BATTERY_OPTIMIZATIONS dihapus karena action direct-request tersebut tidak lagi digunakan untuk aplikasi pihak ketiga.

### Verifikasi
- Source changes committed pada branch v1.0/rebaseline.
- CI/runtime untuk commit koreksi ini: PENDING.
- Device behavior: perlu diuji ulang pada APK hasil build terbaru.


## 2026-09-23 — Apps action execution dan icon cache

### Intent
Melanjutkan Apps per-app actions tanpa menghapus capability yang sudah ada. Implementasi dibedakan antara capability yang dapat dijalankan pada non-root dan capability tambahan yang dapat dicoba melalui root yang sudah tersedia.

### Implementasi
- Menambahkan RootAppActionExecutor untuk mencoba operasi pm/am melalui su dengan timeout dan hasil command sebagai bukti keberhasilan.
- Disable/Enable, Force stop, dan Clear data sekarang mencoba jalur root terlebih dahulu.
- Jika jalur root tidak tersedia atau gagal, action tidak dilaporkan berhasil; UI fallback ke Android App Info.
- Disable, Force stop, dan Clear data diberi confirmation dialog sebelum eksekusi.
- Battery optimization mencoba toggle per-app melalui root deviceidle whitelist; jika tidak tersedia, non-root menggunakan ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS untuk request per-app atau fallback ke App Info.
- Menambahkan permission REQUEST_IGNORE_BATTERY_OPTIMIZATIONS untuk jalur request non-root.
- Menambahkan cache icon berbasis package + version code dengan bounded LruCache, sehingga reload inventory tidak selalu memanggil PackageManager untuk mengambil icon yang sama.
- Uninstall tetap memakai system confirmation dialog dan tidak diganti dengan custom success state.

### Truth / Verification
- CI run sebelumnya 35858405820 (commit 66ab932a870da4963fce9e1888ec8612022b8424) terverifikasi completed/success.
- Perubahan pada entry ini baru dilakukan di repository dan menunggu CI baru.
- Runtime root/non-root untuk Disable, Force stop, Clear data, dan Battery optimization belum terverifikasi pada device. Tidak diklaim berhasil sebelum ada evidence runtime.
- Icon cache juga belum diukur secara runtime; implementasi ada, performa aktual masih perlu verifikasi.

### Referensi Teknis
Android mendokumentasikan pm clear, pm enable, pm disable-user, dan perintah package management melalui shell; public API PackageManager.setApplicationEnabledSetting juga mendefinisikan state enable/disable. ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS adalah jalur public untuk meminta exemption per package dan membutuhkan permission terkait. Evidence eksternal ini dipakai sebagai dasar feasibility, bukan bukti runtime device BaRe.


## 2026-09-23 — Koreksi Root Action Executor

- CI run 756 menemukan compile error karena string confirmation belum ada pada commit AppsFilter awal.
- CI run 758 kemudian terverifikasi completed/success setelah string confirmation masuk.
- RootAppActionExecutor dikoreksi agar command pm disable/enable yang sukses tanpa output tetap dianggap berhasil berdasarkan exit code, bukan keharusan output non-empty.
- CI run 759 pada commit 51c03bb2815b215ecbff9bcc7ee49196f137091c terverifikasi completed/success.
- Runtime device untuk jalur root/non-root tetap UNVERIFIED sampai action benar-benar dicoba pada device.


## 2026-09-23 — Koreksi Apps uninstall, battery toggle, dan total storage size

### Authorization
- **USER GO:** Perbaiki Uninstall, pertahankan Clear data root/non-root yang sudah berfungsi, gunakan Battery optimization toggle ON/OFF dengan jalur root/non-root sesuai capability, pertahankan informasi dinamis berdasarkan sort, dan hapus hanya baris `User app <size>` yang redundant.

### Implementasi
- Uninstall sekarang menjadi destructive action dengan confirmation.
- Jalur uninstall mencoba `pm uninstall --user 0 <package>` melalui root terlebih dahulu.
- Jika root tidak tersedia/gagal, fallback ke Android `ACTION_UNINSTALL_PACKAGE` dengan `REQUEST_DELETE_PACKAGES`; tidak membuat success state palsu.
- Battery optimization sekarang memiliki `Switch` ON/OFF di sisi kanan.
- State switch merepresentasikan optimization aktif vs package berada pada battery-optimization exemption list.
- Root mencoba mengubah kedua arah melalui `deviceidle whitelist`.
- Non-root mempertahankan jalur public Android: request exemption per-package untuk OFF; untuk ON diarahkan ke App Info agar perubahan yang tidak tersedia secara programmatic tetap dilakukan oleh system UI.
- Clear data root/non-root tidak diubah.
- Sort `App size` sekarang menggunakan `totalSizeBytes`, bukan hanya ukuran APK.
- Inventory AppItem sekarang membawa installed/app bytes, data bytes, cache bytes, dan total bytes sebagai model storage bersama untuk penggunaan list/detail berikutnya.
- Total size diperoleh dari `StorageStatsManager`; query dijalankan di worker thread agar tidak memblokir UI.
- Baris `User app • <size>` / `System app • <size>` dihapus dari supporting content. Baris dinamis terakhir berdasarkan sort tetap dipertahankan.

### Truth / Verification
- Source changes committed pada branch `v1.0/rebaseline`.
- CI untuk commit perubahan ini: **PENDING**.
- Runtime uninstall dan battery root/non-root: **UNVERIFIED** sampai diuji pada device.
- Total storage size: implementation ada; runtime value dan sorting masih perlu diuji pada device.
- Android reference: `StorageStats.getAppBytes()` mencakup APK, optimized compiler output, dan unpacked native libraries; `getDataBytes()` mencakup data termasuk cache; `StorageStatsManager.queryStatsForPackage()` membutuhkan PACKAGE_USAGE_STATS untuk package lain.
- Android uninstall intent membutuhkan `REQUEST_DELETE_PACKAGES` untuk target API P+; Android juga menyediakan PackageInstaller uninstall untuk installer-of-record/device-owner scenarios.
- Battery optimization state dibaca dari `PowerManager.isIgnoringBatteryOptimizations()`; direct request exemption memerlukan `REQUEST_IGNORE_BATTERY_OPTIMIZATIONS`.

---

## 2026-09-23 — Audit Swift storage size selesai, rencana BaRe

### Authorization

- **USER GO:** audit khusus Swift untuk ukuran storage per-app dan cache.
- Hasil audit Swift dicatat di docs/reference.md.
- Rencana untuk BaRe dicatat di worklog ini.
- Tidak ada perubahan source BaRe pada langkah audit ini.

### Hasil yang sudah terverifikasi dari reference

Swift memakai model total yang lebih lengkap daripada ukuran APK saja:

```text
App size / Total
= APK
+ Split APKs
+ Shared libraries
+ Data
+ DE data
+ External data
+ Media
+ OBB / Expansion

Cache
= cache pada Data
+ cache pada DE data
+ cache pada External data
```

Poin paling penting:

- Cache **sudah termasuk** dalam komponen Data/DE data/External data pada Total Swift.
- Cache kemudian **ditampilkan terpisah** sebagai informasi.
- Jadi Total + Cache **tidak boleh dijumlahkan lagi**.
- Swift memang menghitung External data dan Media.
- Swift juga punya OBB/Expansion dan shared-library/split-APK size.
- Pengukuran folder dilakukan secara rekursif; pada kondisi tertentu Swift memakai root/Shizuku untuk toybox du -sk.
- Swift memakai hasil Total tersebut untuk sort App size.

### Kondisi BaRe saat ini

Source BaRe saat ini sudah memiliki:

```text
apkSizeBytes
installedSizeBytes
dataSizeBytes
cacheSizeBytes
totalSizeBytes
```

dan InstalledAppRepository memakai StorageStatsManager.

Namun belum terbukti bahwa model tersebut menghasilkan pembagian yang sama dengan Swift untuk:

- External data;
- Media;
- OBB/Expansion;
- shared libraries / split APK;
- cache yang ditampilkan terpisah tanpa double-counting.

BaRe juga sudah punya jalur **hapus cache milik BaRe**, tetapi belum punya pengukuran + UI ukuran cache milik BaRe.

### Plan BaRe — PROPOSAL, belum DECISION

**Langkah 1 — Audit capability Android yang tersedia**

Cek source BaRe dan Android API yang bisa dipakai untuk mendapatkan:

```text
APK / split APK
Data
External data
Media
OBB / expansion bila relevan
Cache
```

Tujuannya supaya kita tidak menebak angka dari satu field StorageStats.

**Langkah 2 — Tentukan model angka BaRe setelah evidence cukup**

Target yang akan diuji:

```text
Total App Size
= semua komponen storage app yang memang bisa dibuktikan

Cache
= cache app, ditampilkan terpisah
```

Dengan aturan penting:

```text
Total + Cache
≠ ukuran app baru
```

Cache tidak boleh double-counted.

**Langkah 3 — Cocokkan dengan screenshot reference**

UI target yang akan dijadikan acuan visual:

```text
Last updated: ... (Total + Cache)

APKs
Data
Ext. data
Media
[component lain bila memang dibutuhkan]
```

Ini masih **reference/PROPOSAL**, bukan keputusan final BaRe.

**Langkah 4 — Audit cache milik BaRe sendiri**

Ukur secara nyata:

```text
context.cacheDir
context.codeCacheDir
context.externalCacheDirs
```

Lalu tentukan angka total cache BaRe dari hasil pengukuran tersebut.

Saat ini delete sudah ada; measurement + UI belum ada.

**Langkah 5 — Icon cache**

Jangan mencari icon cache di:

```text
/data/.../com.bare/cache/
```

sebelum ada evidence bahwa implementasinya memang disk-based.

Implementasi BaRe saat ini menggunakan bounded LruCache<String, Drawable>, sehingga secara source bentuknya adalah cache di **RAM**, bukan file cache permanen.

**Langkah 6 — Runtime verification**

Setelah model storage selesai:

- build APK;
- pasang di device;
- cek beberapa app dengan storage besar;
- bandingkan angka APK/Data/External data/Media/Cache dengan Android system/reference yang tersedia;
- cek sort App size;
- cek bahwa cache tidak terhitung dua kali;
- cek performa supaya pengukuran folder tidak memblokir UI.

### Status sekarang

```text
Swift formula audit        = VERIFIED_STATIC
Swift visual model         = OBSERVED_VISUAL
BaRe current model         = OBSERVED_SOURCE
BaRe external/media parity = UNKNOWN
BaRe own-cache measurement = NOT IMPLEMENTED
BaRe own-cache UI          = NOT IMPLEMENTED
Runtime parity             = UNVERIFIED
```

**Next actionable:** audit capability Android/BaRe untuk memetakan komponen storage satu per satu sebelum mengubah InstalledAppRepository atau UI.
---

## 2026-09-23 — CEK capability Android untuk App Size / Cache BaRe

### Authorization

- **USER GO:** lanjut audit capability Android/BaRe untuk memetakan APK, split APK, Data, External data, Media, OBB, dan Cache sebelum mengubah source.
- Scope langkah ini: **inspect + reconcile evidence**.
- Tidak ada perubahan source aplikasi pada langkah ini.

### Hasil CEK source BaRe

InstalledAppRepository saat ini memakai:

    StorageStatsManager.queryStatsForPackage(...)

dan menyimpan:

    appBytes
    dataBytes
    cacheBytes
    totalBytes = appBytes + dataBytes

Selain itu BaRe menghitung apkSizeBytes sendiri dari:

    ApplicationInfo.sourceDir
    + ApplicationInfo.splitSourceDirs

Jadi saat ini ada dua jenis angka:

    APK size
    = base APK + split APK

    Installed/App size
    = StorageStats.appBytes + StorageStats.dataBytes

### Reconcile dengan Android API

Dokumentasi Android yang dicek untuk StorageStats menyatakan:

    getAppBytes()
    = APK
    + optimized compiler output
    + unpacked native libraries
    + OBB bila primary external/shared storage berada pada volume tersebut

    getDataBytes()
    = dataDir
    + cacheDir
    + codeCacheDir
    + externalFilesDir
    + externalCacheDir
    + externalMediaDirs
      (bila primary external/shared storage berada pada volume tersebut)

    getCacheBytes()
    = cacheDir
    + codeCacheDir
    + externalCacheDir

Jadi ada temuan penting:

**BaRe totalBytes = appBytes + dataBytes sudah jauh lebih luas daripada sekadar ukuran APK.**

Artinya kita **tidak perlu langsung membuat scanner folder recursive sendiri** hanya untuk mendapatkan Total App Size.

StorageStats sudah memberi agregat storage app dari Android. citeturn1search0turn1search2

### Mapping capability

| Komponen reference Swift | Capability BaRe sekarang | Status |
|---|---|---|
| Base APK | ApplicationInfo.sourceDir + appBytes | **ADA** |
| Split APK | splitSourceDirs + appBytes | **ADA** |
| Native / optimized app storage | StorageStats.appBytes | **ADA** |
| OBB | Android memasukkannya ke getAppBytes() pada kondisi storage yang sesuai | **ADA via aggregate**, belum ada breakdown khusus |
| Data | StorageStats.dataBytes | **ADA** |
| App-specific external files | getDataBytes() mencakup getExternalFilesDir() pada kondisi yang sesuai | **ADA via aggregate** |
| App-specific external media | getDataBytes() mencakup getExternalMediaDirs() pada kondisi yang sesuai | **ADA via aggregate** |
| External cache | getCacheBytes() / getExternalCacheBytes() | **ADA** |
| Media umum di MediaStore | Tidak ada mapping per-package langsung dari StorageStats | **UNKNOWN / bukan breakdown yang sama** |
| Shared libraries ala field Swift | appBytes memberi aggregate app code size, tetapi belum ada breakdown yang sama | **PARTIAL** |
| Cache terpisah | cacheBytes | **ADA** |

Android juga menyediakan getAppBytesByDataType() mulai API 35 untuk beberapa bagian code path, termasuk APK dan lib, sehingga breakdown code dapat diperiksa lebih detail pada runtime Android yang mendukungnya. BaRe compileSdk saat ini 35. citeturn1search0turn1search4

### Temuan penting soal cache

StorageStats.getCacheBytes() sudah memasukkan cache internal (cacheDir, codeCacheDir) dan external cache. Jadi:

    Total = appBytes + dataBytes
    Cache = cacheBytes

boleh ditampilkan sebagai:

    Total App Size
    Cache

tanpa menambahkan Cache lagi ke Total.

Ini cocok dengan prinsip audit Swift sebelumnya: **Cache adalah informasi terpisah, bukan tambahan kedua ke Total.** citeturn1search2

Untuk cache milik **BaRe sendiri**, Android juga menyediakan directory langsung melalui Context; source BaRe saat ini memang sudah menghapus:

    context.cacheDir
    context.codeCacheDir
    context.externalCacheDirs

Measurement lokal terhadap directory tersebut bisa dilakukan tanpa mengganti model StorageStats untuk app lain. Android menjelaskan bahwa cacheDir adalah cache app sendiri dan dapat diakses tanpa permission tambahan. citeturn0search2turn0search12

### Root / privilege

BaRe memang sudah memiliki root provider dan su executor.

Tetapi untuk **Total App Size berbasis StorageStats**, root belum terbukti diperlukan.

Jangan otomatis menyalin pendekatan Swift toybox du ke BaRe.

Jalur root baru relevan bila nanti ada komponen storage tertentu yang memang tidak bisa direpresentasikan oleh public Android API dan requirement BaRe memang membutuhkan breakdown tersebut.

Android sendiri mencatat bahwa queryStatsForPackage() untuk package lain membutuhkan PACKAGE_USAGE_STATS; manifest BaRe sudah mendeklarasikan permission tersebut. citeturn1search6

### External storage / OBB boundary

Android menyediakan API langsung untuk:

    getExternalFilesDirs()
    getExternalCacheDirs()
    getExternalMediaDirs()
    getObbDirs()

Tetapi pada Android modern, akses ke direktori app milik **package lain** di external storage dibatasi oleh scoped storage. Karena itu keberadaan path API tidak otomatis berarti BaRe boleh membaca semua isi path package lain secara non-root. citeturn0search7turn0search8

Untuk BaRe inventory app lain, StorageStats adalah jalur yang lebih tepat sebagai aggregate daripada mencoba membaca /Android/data/<package> secara langsung.

### Kesimpulan CEK

    BaRe Total App Size aggregate     = ADA
    BaRe APK + split breakdown        = ADA
    BaRe OBB aggregate                = ADA via StorageStats
    BaRe Data aggregate               = ADA
    BaRe external app data aggregate  = ADA via StorageStats
    BaRe external media aggregate     = ADA via StorageStats
    BaRe cache aggregate              = ADA
    BaRe cache breakdown internal/ext = PARTIAL / API tersedia
    BaRe Swift-style shared-lib split = PARTIAL
    BaRe arbitrary MediaStore media   = UNKNOWN
    BaRe own cache measurement        = BELUM DIIMPLEMENTASIKAN
    Root du scanner                   = BELUM DIBUTUHKAN

### Keputusan kerja saat ini

Belum ada DECISION untuk mengubah rumus Total.

**PROPOSAL:** pertahankan totalBytes = appBytes + dataBytes sebagai kandidat model Total karena Android sudah mendefinisikannya sebagai aggregate app/data storage, lalu tambahkan breakdown hanya untuk komponen yang benar-benar bisa dibuktikan dan tidak double-count.

Untuk App size list, totalSizeBytes tetap kandidat sumber sort; jangan menggantinya dengan apkSizeBytes.

### Next actionable

1. Audit API level 35 untuk breakdown getAppBytesByDataType() dan cek apakah bisa memberi breakdown yang berguna untuk UI BaRe.
2. Audit apakah cacheBytes perlu ditampilkan langsung atau dipecah menjadi internal/external cache.
3. Audit measurement cache milik BaRe sendiri (cacheDir, codeCacheDir, externalCacheDirs) tanpa mencampurnya dengan per-app inventory.
4. Setelah evidence itu cukup, baru tentukan perubahan source/UI.

## 2026-09-23 — Audit API 35 StorageStats dan keputusan kerja cache RAM

### Authorization

- **USER GO:** lanjut ke next actionable dari audit sebelumnya.
- User juga menyatakan preferensi bahwa cache BaRe yang hanya berada di RAM sebaiknya tidak dipertahankan agar penggunaan RAM tidak terus bertambah selama aplikasi dipakai.
- Langkah ini dibatasi pada **audit + penetapan status**, belum mengubah source aplikasi.

### Hasil audit API 35

Android API 35 menambahkan `StorageStats.getAppBytesByDataType(int)`.

Data type yang tersedia:

- `APP_DATA_TYPE_FILE_TYPE_APK` — semua file `.apk` pada application code path.
- `APP_DATA_TYPE_FILE_TYPE_LIB` — direktori `lib/` pada application code path.
- `APP_DATA_TYPE_FILE_TYPE_DEXOPT_ARTIFACT` — artifact dexopt/runtime yang masih valid.
- `APP_DATA_TYPE_FILE_TYPE_REFERENCE_PROFILE` — reference profile.
- `APP_DATA_TYPE_FILE_TYPE_CURRENT_PROFILE` — current profile.
- `APP_DATA_TYPE_FILE_TYPE_DM` — file `.dm` pada application code path.

API ini berguna untuk **breakdown code/app storage**, tetapi tidak boleh dijumlahkan sembarangan untuk membuat Total. Android secara eksplisit menyebut bahwa ukuran dexopt artifact dapat overlap dengan data yang sudah masuk ke `appBytes`, `dataBytes`, atau `cacheBytes`.

### Dampak ke BaRe

1. **Total App Size**
   - Model saat ini `appBytes + dataBytes` tetap aman sebagai kandidat aggregate Total.
   - Tidak ada alasan dari API 35 untuk mengganti Total menjadi penjumlahan semua data type.
   - `getAppBytesByDataType(APK)` lebih cocok dipakai sebagai breakdown/validasi ukuran APK pada Android API 35+.

2. **APK**
   - Source BaRe saat ini menghitung base APK + split APK dari `sourceDir + splitSourceDirs`.
   - API 35 menyediakan angka APK langsung dari StorageStats untuk seluruh `.apk` pada code path.
   - Keduanya belum dibandingkan runtime pada device, jadi parity angka masih **UNVERIFIED**.

3. **Shared libraries / native code**
   - API 35 memberi `LIB` sebagai breakdown `lib/`.
   - Ini membantu mendekati informasi shared/native library yang sebelumnya hanya **PARTIAL**.
   - Tetap tidak berarti seluruh field Swift bisa dipetakan 1:1.

4. **Dexopt/profile/`.dm`**
   - API 35 menyediakan breakdown tambahan, tetapi sifatnya lebih teknis dan beberapa komponen dapat overlap dengan aggregate StorageStats.
   - Belum ada alasan untuk menampilkannya di UI user-facing BaRe.

5. **Cache**
   - `getCacheBytes()` tetap merupakan angka cache aggregate.
   - `getExternalCacheBytes()` tersedia sejak API 31 untuk cache pada primary external/shared storage.
   - Split internal/external belum perlu dimasukkan ke UI sebelum ada kebutuhan yang jelas dan bukti multi-volume tidak menimbulkan salah hitung.

### Cache RAM BaRe

Source saat ini menggunakan:

`LruCache<String, Drawable>(128)`

untuk icon.

Ini adalah **cache RAM**, bukan file cache di disk. Dari source yang diaudit tidak ada bukti cache icon tersebut ditulis ke `cacheDir`.

Sesuai arahan user, cache RAM ini **ditandai untuk dihapus pada langkah implementasi berikutnya**. Belum dihapus pada audit ini supaya audit dan perubahan source tetap terpisah.

Catatan: menghapus icon cache berarti PackageManager dapat dipanggil lagi ketika inventory reload. Trade-off performa vs RAM perlu diuji setelah perubahan.

### Status setelah audit

```
API 35 storage breakdown       = AVAILABLE
APK breakdown API 35           = AVAILABLE
LIB breakdown API 35           = AVAILABLE
Dexopt/profile breakdown       = AVAILABLE
Cache aggregate                = AVAILABLE
Cache internal/external split  = AVAILABLE PARTIAL
Total model current            = KEEP AS CANDIDATE
Swift-style full parity        = NOT PROVEN
Runtime parity                 = UNVERIFIED
BaRe icon RAM cache             = IMPLEMENTED, TARGET REMOVAL
BaRe own disk-cache measurement = NOT IMPLEMENTED
```

### Keputusan kerja

- **Tidak** menjumlahkan hasil `getAppBytesByDataType()` untuk membuat Total.
- **Tidak** menambah recursive scanner/root `du` hanya untuk Total.
- **Pertahankan kandidat Total** = `appBytes + dataBytes` sampai runtime comparison dilakukan.
- **Target perubahan berikutnya:** hapus bounded icon `LruCache` RAM, lalu audit/implement pengukuran cache disk milik BaRe secara terpisah dari inventory app lain.
- Setelah perubahan source, build dan runtime test diperlukan sebelum menyatakan hasil verified.

### Referensi eksternal

- Android StorageStats API reference: https://developer.android.com/reference/android/app/usage/StorageStats
- Android Context cache directories: https://developer.android.com/reference/android/content/Context

## 2026-09-23 — Implementasi pengurangan cache RAM dan ukuran cache BaRe

### Authorization

- **USER GO:** jalankan next step setelah audit API 35.
- Scope: hapus cache icon berbasis RAM dan mulai mengukur cache storage milik BaRe sendiri.

### Implementasi

- Menghapus `LruCache<String, Drawable>(128)` dari `InstalledAppRepository`.
- Pengambilan icon sekarang langsung melalui `PackageManager.getApplicationIcon()` saat inventory dibangun; tidak ada lagi bounded icon cache terpisah.
- Menambahkan pengukuran cache milik BaRe pada Manage Space:
  - `context.cacheDir`
  - `context.codeCacheDir`
  - `context.externalCacheDirs`
- Pengukuran cache dilakukan di `Dispatchers.IO`, bukan main thread.
- Direktori yang sama tidak dihitung dua kali berdasarkan absolute path.
- Menambahkan informasi **BaRe cache** pada Manage Space.
- Pengukuran cache BaRe tetap dipisahkan dari `StorageStats` inventory aplikasi lain.

### Perubahan source

- `db72ac369b2f41f4c105155412aed8374db698d0` — hapus RAM icon cache.
- `8584dd16bab70dc9ef10779a377db7d4c67e1110` — pastikan measurement cache tetap berjalan walaupun local identity tidak tersedia.
- `6834fd71f4c753c3a6f9ff1870b98deaa844ba48` — tampilkan ukuran cache BaRe di UI.
- `953092e5088c9d85742c9daf8d2cfdfb90de14d9` — bersihkan import obsolete setelah cache dihapus.

### Truth / Verification

- Source perubahan: **IMPLEMENTED** pada branch `v1.0/rebaseline`.
- Build CI setelah perubahan: **PENDING**.
- Runtime device untuk penggunaan RAM: **UNVERIFIED**.
- Runtime nilai cache BaRe: **UNVERIFIED**.
- Belum ada bukti runtime bahwa penghapusan icon cache memberi peningkatan performa; trade-off reload icon masih perlu diuji.
- Tidak ada perubahan pada rumus Total App Size aplikasi lain.

### Berikutnya

1. Tunggu/cek CI build untuk commit source terbaru.
2. Jika build hijau, pasang APK terbaru ke device.
3. Uji Apps reload/scroll dan amati apakah icon tetap benar tanpa cache.
4. Buka Manage Space dan cek ukuran BaRe cache.
5. Jika perlu, ukur penggunaan RAM/performa sebelum vs sesudah; jangan klaim improvement tanpa evidence.


## 2026-09-23 — Perbaikan build Manage Space

### Authorization

- **USER GO:** inspection, fix, dan lanjut sampai blocker build dibereskan.

### Temuan

- CI build gagal pada `ManageSpaceScreen.kt:138:43` dengan error `Unresolved reference 'DeleteSweep'`.
- Inspection source memastikan `Icons.Outlined.DeleteSweep` memang dipakai pada card **BaRe cache**.
- Search repository tidak menemukan penggunaan/reference `DeleteSweep` lain yang bisa dijadikan bukti bahwa icon tersebut tersedia di dependency saat ini.
- Icon `Delete` sudah dipakai di file yang sama dan terbukti tersedia karena source sebelumnya menggunakannya.

### Perubahan

- Mengganti icon BaRe cache dari `Icons.Outlined.DeleteSweep` menjadi `Icons.Outlined.Delete`.
- Tidak mengubah logic measurement cache, storage formula, atau perilaku lain.

### Commit

- `faefa55ee1349389004382d1e2d859ce7f4ba4de` — `fix: use available icon for BaRe cache card`

### Truth / Verification

- Source fix: **IMPLEMENTED**.
- Compile/build setelah fix: **PENDING**.
- Runtime UI: **UNVERIFIED**.

### Berikutnya

1. Cek hasil CI untuk commit fix.
2. Jika masih gagal, ambil error compile terbaru dan perbaiki blocker berikutnya.
3. Jika hijau, lanjut ke artifact/device test.


## 2026-09-23 — Rapikan app_text dan state loading Apps

### Authorization

- **USER GO:** jalankan masukan UX/string dan update worklog.

### Pemahaman yang dipakai

- `app_name` (string no. 1) = khusus nama aplikasi.
- `app_text` (string no. 2) = penyebutan BΛR☰ di dalam kalimat/text UI.
- Text UI tetap memakai resource `strings.xml`, bukan hardcoded di Kotlin.

### Inspection

- `strings.xml` saat ini memiliki:
  - `app_name` = `B Λ R ☰`
  - `app_text` = `BΛR☰`
- Manage Space sebelumnya masih memiliki beberapa penyebutan `BaRe` langsung pada string/UI.
- Apps screen sudah memiliki state awal `appsLoading = cachedApps.isEmpty()` dan `reloadApps()` berjalan di background thread; jadi pola loading saat pertama masuk **sudah ada**. Tidak perlu membuat mekanisme loading kedua.
- Saat inventory belum selesai, source memang menampilkan `Loading installed apps…`; setelah inventory selesai baru daftar apps ditampilkan.

### Perubahan

- Mengubah text Manage Space yang menyebut BΛR☰ di dalam kalimat agar memakai placeholder dan diisi dari `app_text`.
- Menambahkan resource:
  - `apps_loading`
  - `apps_no_matching_installed_apps`
- Memindahkan text loading/no-result Apps dari hardcoded Kotlin ke `strings.xml`.
- Error fallback Apps juga memakai resource `unable_to_discover_installed_apps`.
- Tidak mengubah mekanisme background loading Apps karena mekanismenya sudah sesuai masukan.

### Commit

- `3abd6d8fdd01cf27ad2370070b321a3133b9e71d` — `i18n: use app_text for in-sentence BaRe text`
- `f0a2cdd93cea394ee52e8c97452dcf7e4cf0fea4` — `i18n: use app_text in Manage Space`
- `8886595c7175f0aab8c180ef258b1789ca16bf56` — `i18n: move Apps loading text to strings`
- `0ff12cd328f9b68507aea6ae512fd88a9ab9c982` — `fix: resolve Manage Space strings outside composition`

### Truth / Verification

- Source changes: **IMPLEMENTED**.
- Apps initial loading behavior: **OBSERVED IN SOURCE**, runtime screenshot #773 juga menunjukkan state loading.
- Build setelah perubahan string: **PENDING**.
- Runtime setelah perubahan string: **UNVERIFIED**.
- Belum menyatakan semua penyebutan BΛR☰ di seluruh aplikasi sudah diaudit 100%; scope perubahan ini fokus pada area yang ditemukan pada inspection saat ini.

### Berikutnya

1. Cek CI build commit source terakhir.
2. Jika gagal, ambil error dan perbaiki.
3. Jika hijau, lanjut runtime check text + Apps loading.


## 2026-09-23 — Fix Apps sort ukuran APK (#777)

### Authorization

- USER GO: cek penyebab App size: Unknown size pada runtime #777 lalu perbaiki.

### Observed

- Runtime #777 dari user menunjukkan inventory berhasil membaca 494 apps.
- Semua card menampilkan App size: Unknown size ketika memakai sort ukuran.
- Source AppsFilter sebelumnya mengurutkan APP_SIZE memakai totalSizeBytes.
- InstalledAppRepository mengisi field tampilan size dari StorageStats.appBytes + dataBytes.
- storageStats() membungkus queryStatsForPackage() dengan runCatching(...).getOrNull(), sehingga kegagalan query berubah menjadi null dan akhirnya ditampilkan sebagai Unknown size.

### Reconcile

- AppItem sudah memiliki field apkSizeBytes.
- Source juga sudah menghitung base APK + split APK dari ApplicationInfo.sourceDir dan splitSourceDirs.
- AppDetailsRepository memakai model yang sama untuk menghitung ukuran APK.
- Android mendokumentasikan bahwa akses statistik usage untuk app lain bergantung pada PACKAGE_USAGE_STATS, dan permission tersebut harus diberikan melalui Settings; deklarasi di manifest saja tidak berarti akses sudah granted.
- Karena user secara spesifik meminta sort by size APK, jalur Apps list tidak perlu bergantung pada StorageStatsManager untuk nilai yang ditampilkan dan disortir.

### Change

- InstalledAppRepository sekarang menghitung apkSizeBytes sekali per app dan memakai angka tersebut untuk field size.
- AppsFilter sekarang mengurutkan APP_SIZE memakai apkSizeBytes, bukan totalSizeBytes.
- StorageStats tetap dipertahankan pada installedSizeBytes, dataSizeBytes, cacheSizeBytes, dan totalSizeBytes untuk kebutuhan storage aggregate/detail berikutnya.

### Commits

- 3ac633dffa6ee16e48a8383833c8cf65fcd7ce06 — fix: use APK size for Apps size sort
- c931d8488979b139882c08a55ca052cdad2dc027 — fix: sort Apps by APK size

### Truth / Verification

- Source fix: IMPLEMENTED.
- GitHub diff: VERIFIED STATIC.
- CI untuk kedua commit: PENDING; connector belum mengembalikan workflow run untuk commit tersebut.
- Runtime setelah fix: UNVERIFIED.
- StorageStats aggregate belum dihapus; hanya tidak lagi menjadi sumber nilai sort/tampilan APK size pada Apps list.
- Belum boleh menyatakan #777 runtime sudah fixed sebelum APK hasil build baru diuji pada device.

### Next

1. Tunggu/cek CI untuk commit terbaru.
2. Jika build hijau, pasang APK baru.
3. Uji sort APK size ascending/descending.
4. Pastikan card menampilkan ukuran nyata, bukan Unknown size.
5. Setelah runtime terbukti, baru catat hasil verification.


## 2026-09-23 — Implementasi formatter tanggal Apps dari audit #779

### Authorization

- **USER GO:** lanjutkan hasil audit #779.
- Scope implementasi: format Install date, Update date, Date used agar tidak menampilkan ribuan hari; validasi timestamp invalid; audit jalur Usage root.

### Implementasi

- Formatter relative time di AppsFilter sekarang:
  - timestamp <= 0 atau timestamp future → Date unavailable;
  - < 1 menit → Just now;
  - menit → minute/minutes;
  - jam → hour/hours;
  - hari → day/days;
  - 7–29 hari → week/weeks;
  - 30 hari–<1 tahun → month/months;
  - >=1 tahun → year/years.
- Install date, Update date, dan Date used memakai formatter baru.
- Menambahkan resource string untuk semua satuan dan fallback unavailable.

### Audit Usage root

- AppUsageRepository saat ini hanya memakai UsageStatsManager + AppOpsManager.OPSTR_GET_USAGE_STATS.
- RootCapabilityProvider dan RootAppActionExecutor memang menyediakan eksekusi su, tetapi belum ada capability yang membaca/menggantikan UsageStatsManager lewat root.
- Karena belum ada jalur root usage yang terbukti dan parsing output sistem belum diverifikasi pada device, tidak membuat bypass root spekulatif pada langkah ini.
- Status root Date used bypass: UNKNOWN / NOT IMPLEMENTED.
- Non-root tanpa Usage Access tetap menampilkan Usage unavailable.

### Source commits

- a43e80717428f28113622d325396703cabcd34c8 — fix: format app dates by sensible time units
- ebbb5184497f4ce7f6f49b2d34e66dc3d9af3f9c — i18n: add relative app date strings

### Truth / Verification

- Formatter source: IMPLEMENTED.
- String resources: IMPLEMENTED.
- CI/build untuk commit ini: PENDING.
- Runtime date display: UNVERIFIED.
- Runtime invalid timestamp behavior: UNVERIFIED.
- Runtime root Usage bypass: UNVERIFIED / NOT IMPLEMENTED.
- App Size total model tetap tidak diubah; #779 sudah memberi runtime evidence bahwa total app size menghasilkan angka.

### Next

1. Tunggu/cek CI.
2. Jika hijau, uji Install date, Update date, Date used, terutama app yang sebelumnya tampil 20719 days ago.
3. Uji Date used dengan Usage Access ON/OFF.
4. Jangan mengklaim root bypass sampai ada capability + runtime evidence.

## 2026-09-23 — Plan App Detail mengikuti Reference Swift Backup

### Authorization
- **USER GO:** hasil audit Swift Backup dimasukkan ke docs/reference.md dan plan kerja dicatat di docs/worklog.md agar tidak hilang.
- Scope saat ini **diskusi + audit + planning**; belum mengubah source App Detail.

### Audit yang sudah dimasukkan ke Reference
- App-level titik tiga membuka action surface untuk Play Store, Android App Info, Share APK, Favorite/labels/blacklist, Battery optimization, Add to Home screen, Force stop, dan Uninstall.
- APK/Data/Ext. data/Media diperlakukan sebagai part yang dapat dipilih dan mempunyai action surface sendiri.
- Part action reference mencakup Backup to Device, Backup to Cloud, Backup to Device & Cloud, Delete, dan Share APK pada context APK.
- Tombol Backup membuka selector untuk **User app parts** lalu **Select backup locations** (Device/Cloud) sebelum execute.
- Audit status tetap reference evidence; APK reference tidak dianggap runtime verified.

### Kondisi BaRe saat ini
- App Detail BaRe sudah memiliki Package Surface, Backup Inventory, part list, dan App Actions.
- Namun part list saat ini masih berbentuk checkbox/mockup list dan App Actions masih berupa navigation surface generik.
- Titik tiga sudah ada pada App Detail, tetapi action menu saat ini belum mengikuti grouping/reference flow di atas secara penuh.
- AppBackupScreen saat ini masih merupakan surface mockup terpisah; belum menjadi flow selector part + lokasi seperti reference.

### Plan implementasi — BELUM DIEKSEKUSI
1. **Refactor App Detail part surface**
   - APKs, Data, Ext. data, Media menjadi interactive part surfaces/card yang bisa ditekan.
   - Tap part membuka action menu sesuai context part.
   - Jangan membuat semua action menjadi satu daftar panjang di App Detail.

2. **Refactor titik tiga / app actions**
   - Kelompokkan action level aplikasi di overflow/titik tiga.
   - Pertahankan navigation ke management/config/diagnostics bila memang masih sesuai arsitektur BaRe.
   - Jangan mengklaim capability runtime hanya karena menu sudah tersedia.

3. **Refactor Backup entry flow**
   - Tombol Backup membuka selector.
   - Selector memisahkan pilihan **parts** dan **backup location**.
   - Device dan Cloud tetap menjadi pilihan terpisah; availability mengikuti capability state aktual.
   - Execute belum boleh dianggap real backup sebelum engine/capability dan verification tersedia.

4. **Reconcile dengan source BaRe yang sudah ada**
   - Reuse AppDetailsRepository/AppItem dan storage evidence yang sudah tersedia.
   - Jangan membuat ulang inventory/storage calculation hanya untuk perubahan UI.
   - Pisahkan UI state dari runtime backup capability.

5. **Setelah implementasi**
   - Build/CI.
   - Runtime test App Detail.
   - Test titik tiga.
   - Test tap APK/Data/Ext. data/Media.
   - Test Backup → part selector → location selector.
   - Catat evidence dan gap aktual kembali ke worklog.

### Boundary
- **Reference:** docs/reference.md adalah tempat audit Swift/reference evidence.
- **Plan/decision/progress:** docs/worklog.md adalah sumber kerja BaRe.
- **Source change:** BELUM ADA pada App Detail dari GO ini.
- **Runtime:** belum berubah.
- **Unknown:** detail flow reference yang belum dapat dibuktikan tidak akan ditebak; akan diminta evidence/template tambahan hanya jika dibutuhkan saat implementation.

### Status
REFERENCE_AUDIT_RECORDED / APP_DETAIL_PLAN_RECORDED / IMPLEMENTATION_PENDING / RUNTIME_UNCHANGED

## 2026-09-23 — Implementasi UI/Flow App Detail mengikuti Reference

### Authorization
- **USER GO:** UI dan flow App Detail mengikuti reference Swift Backup agar arah implementasi sederhana dan konsisten.
- Reference dipakai sebagai **acuan UI/flow**, bukan sebagai bukti capability runtime BaRe.

### Implementasi
- App Detail sekarang memodelkan app-level actions pada overflow/titik tiga.
- Part backup utama dibuat sebagai surface yang bisa ditekan:
  - APK
  - Data
  - Ext. data
  - Media
- Tap part membuka action surface sendiri.
- Action part mengikuti reference:
  - Backup to Device
  - Backup to Cloud
  - Backup to Device & Cloud
  - Share APK untuk APK
  - Delete
- Tombol Backup sekarang membuka flow selector:
  - User app parts
  - Select backup locations
  - Backup
- Location selector memisahkan Device, Cloud, dan Device + Cloud.
- Share APK tersedia dari context APK.
- Action execution yang belum punya backend/capability nyata tetap ditahan sebagai mockup/pending; tidak diklaim sebagai backup runtime.

### Source commits
- e5798f99bda5851b53a789b7598dda0df3893355 — align App Detail dengan reference flow.
- f4af6988b644a70540e42357ea44b0e90250695c — align App Backup selector dengan reference.
- 610fb063ece83fff475486c42bbae5ebdfdac8d8 — tambah resource string flow.
- 283359a9b6cf298faa656e87faa0a3892a669099 — fix APK Share action.

### Verification Truth
- Source implementation: **IMPLEMENTED**.
- Reference alignment: **STATIC / SOURCE REVIEWED**.
- GitHub Actions untuk commit terakhir saat pencatatan: **BELUM MUNCUL** (workflow_runs=[]; status checks=[]).
- Build/compile setelah perubahan: **UNVERIFIED**.
- Runtime App Detail: **UNVERIFIED**.
- Backup execution: **NOT IMPLEMENTED / PENDING capability backend**.

### Next
1. Tunggu/cek CI.
2. Jika build gagal, ambil error compile dan perbaiki.
3. Jika build green, runtime test App Detail:
   - overflow actions
   - tap APK/Data/Ext. data/Media
   - part action menu
   - Backup → parts → location → Backup
   - Share APK dari context APK
4. Update worklog dengan evidence runtime.

## 2026-09-23 — Fix CI duplicate string resource

### Trigger
- **USER GO:** inspect CI merah, perbaiki sampai lolos verification.
- CI error yang diberikan user:
  - `mergeDebugResources FAILED`
  - `Found item String/play_store more than one time`

### Inspection
- File target: `app/src/main/res/values/strings.xml`.
- Pada source aktual branch `v1.0/rebaseline`, `play_store` ditemukan 2 kali:
  - line 350: definisi existing App Actions.
  - line 653: definisi baru dari refactor App Detail.
- Audit seluruh `strings.xml` menemukan **8 duplicate resource names**:
  - `backup`
  - `device`
  - `launch`
  - `uninstall`
  - `force_stop`
  - `play_store`
  - `share_apk`
  - `battery_optimization`

### Fix
- Mempertahankan definisi string yang sudah ada dan menghapus duplicate dari blok string App Detail yang baru.
- Tidak mengubah value/behavior dari definisi existing.
- Source commit:
  - `bd4a2837516e19c3b7b1e8659771910b342615da` — `fix: remove duplicate app action strings`

### Verification Truth
- Setelah fix, audit ulang seluruh `strings.xml`: **duplicate resource count = 0**.
- Build CI setelah commit fix: **PENDING / UNVERIFIED**.
- Runtime App Detail: tetap **UNVERIFIED**.
- Backup execution: tetap **NOT IMPLEMENTED / PENDING capability backend**.

### Next
1. Cek GitHub Actions untuk commit `bd4a2837516e19c3b7b1e8659771910b342615da`.
2. Jika masih merah, ambil error pertama dan perbaiki.
3. Jika green, lanjut runtime test App Detail sesuai entry sebelumnya.


### Verification follow-up
- Re-read `strings.xml` after commit `bd4a2837516e19c3b7b1e8659771910b342615da`: **0 duplicate resource names**.
- Attempted local Gradle build from the repository, but the execution environment could not resolve `github.com`; therefore local build result is **BLOCKED**, not failed by Gradle.
- GitHub connector currently exposes no workflow run/status for the fix commit through the available commit-run endpoint, so CI green is **UNVERIFIED** from this session.


## 2026-09-23 — Rebaseline App Detail UI to Swift reference structure

### Authorization
- **USER GO:** App Detail UI + flow harus mengikuti reference Swift, bukan hanya daftar fitur.
- Part yang tidak tersedia tidak boleh ditampilkan; khususnya **Ext. data** dan **Media** harus hilang jika tidak ada.

### Inspection
- Reference static audit dan decompiled layout menunjukkan struktur App Detail Swift:
  - app info card: icon/package/name/version + overflow;
  - action buttons di area app info;
  - storage/app-size card;
  - storage chips dalam grid;
  - backup action dari storage card;
  - device backup card;
  - cloud backup card.
- Source BaRe sebelumnya menampilkan Package surface, daftar part besar, Backup inventory, Configuration, Diagnostics, Restore variants, dan Backup history sebagai blok terpisah sehingga secara visual tidak mengikuti struktur reference.

### Implementation
- App Detail direfactor mengikuti struktur reference:
  - app info card menjadi area utama header;
  - Launch/Uninstall dipindah ke area app info;
  - Package surface card dihapus dari App Detail;
  - Backup parts diubah menjadi storage chips/grid;
  - tombol Backup berada di storage card;
  - Device dan Cloud backup dipisah menjadi card;
  - Configuration/Diagnostics/Restore variants/Backup history tidak lagi ditampilkan sebagai blok utama App Detail.
- Part action sheet tetap dipertahankan:
  - Backup to Device
  - Backup to Cloud
  - Backup to Device & Cloud
  - Share APK untuk APKs
  - Delete
- App-level overflow tetap mengikuti action surface reference.

### Dynamic part availability
- `AppDetailsRepository` sekarang membaca:
  - APK size;
  - data size + cache size via `StorageStatsManager`;
  - Ext. data dari `Android/data/<package>`;
  - Media dari `Android/media/<package>`.
- Ext. data dan Media hanya dimasukkan ke UI jika ukuran terukur **> 0**.
- Jadi aplikasi tanpa Ext. data/Media tidak mendapat chip kosong.

### Source commits
- `c1f9e1b5a9fbcb5e6d8b8cc754148683fbe583c3` — expose storage part availability.
- `617f353aad336cc64ea5cd1f58c3016490da9eb8` — align App Detail UI with reference structure.
- `3a9b47b706a1a7420556f5d2ce96b83152b5f43a` — add App size resource.
- `0bc1113fba6ca5230152ef3ef6e4449a5c37c828` — keep storage grid implementation compatible.

### Verification Truth
- strings.xml duplicate audit: **0 duplicate resource names**.
- Reference structure: **IMPLEMENTED / SOURCE REVIEWED**.
- Dynamic Ext. data / Media condition: **IMPLEMENTED IN SOURCE**.
- Runtime visual result: **UNVERIFIED**.
- Gradle/CI after this slice: **UNVERIFIED**; local clone/build is blocked because this environment cannot resolve github.com.
- Backup execution: remains **NOT IMPLEMENTED / pending capability backend**.

### Next
1. CI/build result.
2. Runtime open App Detail on apps with and without Ext. data/Media.
3. Compare visual hierarchy against Swift reference.
4. Check overflow, storage chip actions, Backup entry, Device card, Cloud card.


### Follow-up safety/performance fix
- App Detail storage inspection now runs on `Dispatchers.IO` so recursive Ext. data / Media size measurement does not run on the Compose main thread.
- Source commit: `5ba3d09d8eacd0eccdb36f20905a6b672bf90cde`.
- Runtime performance: **UNVERIFIED** until device test.


## 2026-09-23 — Follow-up #791: App Detail storage chips dibuat mengikuti bentuk reference

### Authorization
- **USER GO:** setelah runtime #791, lanjutkan perbaikan visual App Detail.
- Fokus utama: APKs, Data, Ext. data, dan Media harus terlihat sebagai **empat part chip/pill dengan border/background masing-masing**, mengikuti reference Swift.

### Observed dari runtime #791
- BaRe sudah memakai grid 2 kolom, tetapi setiap part masih terlihat seperti list/card biasa yang menyatu dengan storage card.
- Reference Swift menampilkan setiap part sebagai rounded pill/card yang jelas terpisah: APKs, Data, Ext. data, Media.
- Reference juga menempatkan tombol Backup sebagai pill dengan icon `+`.

### Perubahan
- AppStorageChip diubah dari generic Card menjadi Surface dengan tinggi 64dp, rounded shape 24dp, background primaryContainer, border 1dp menggunakan outline, icon 24dp, dan title/subtitle ditata vertikal seperti chip reference.
- Grid 2 kolom dan dynamic visibility Ext. data/Media tetap dipertahankan.
- Tombol Backup diberi bentuk rounded 24dp, padding lebih mirip reference, dan icon `+`.
- Tidak mengubah perhitungan ukuran APK/Data/Ext. data/Media atau action flow.

### Source
- `1bd72a93e2f0c111a52d303368145c0763c7eabd` — `ui: match app storage parts to Swift chips`

### Truth / Verification
- Source change: **IMPLEMENTED**.
- Static source review: **DONE** untuk perubahan chip/button.
- Runtime visual setelah commit: **UNVERIFIED**.
- CI/build setelah commit: **UNVERIFIED**.
- Belum menyatakan visual sudah sama dengan reference sebelum ada screenshot runtime berikutnya.

### Next
1. Cek CI/build commit `1bd72a93e2f0c111a52d303368145c0763c7eabd`.
2. Install/update APK hasil build tanpa uninstall.
3. Buka App Detail app yang memiliki APK + Data + Ext. data + Media.
4. Bandingkan lagi bentuk chip, border, spacing, icon, dan tombol Backup dengan Swift reference.
5. Jika masih berbeda, lanjutkan visual refinement berdasarkan screenshot aktual.
