# BaRe v1.0 — Worklog

Worklog adalah catatan continuity pekerjaan BaRe. **Setiap pekerjaan engineering yang consequential harus dicatat di sini setelah pekerjaan tersebut dilakukan**, termasuk audit, reconciliation, documentation change, implementation, test, verification, deployment, dan recovery.

## 2026-09-17 — Repository Boundary Reconciliation

### Pekerjaan Saat Ini
Merekonsiliasi batas dokumentasi antara `Varnexis-Workspace` dan `BaRe` setelah ditemukan overlap dan reference audit sebelumnya dibuat langsung di repo BaRe tanpa konteks governance workspace.

### Keputusan yang Diterapkan
- `BaRe` menjadi canonical home untuk product documentation dan technical truth project.
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
- Memperbarui registry BaRe di Varnexis-Workspace agar menunjuk ke BaRe sebagai source untuk implementation, tests, project-specific configuration, dan documentation.

### Verifikasi
- BaRe branch target: `v1.0/rebaseline`.
- Reference blob dipertahankan dengan SHA `03d3a7f182bc28ca5eae8ae313a5c6d109eb318f`.
- Structural intent: satu `docs/` untuk lima dokumen project; VERIFIED melalui Git tree setelah commit.
- Isi reference audit: dipertahankan dari blob existing; verifikasi runtime reference APK tetap NOT PERFORMED.
- Build/runtime tidak dijalankan oleh pekerjaan reconciliation ini.

### Belum Dikerjakan / Tidak Diubah
- Tidak ada implementation capability baru.
- Tidak ada refactor `MainActivity.kt`.
- Tidak ada perubahan CI/build pipeline.
- Tidak ada device install/update.
- Tidak ada verifikasi runtime baru.

### Berikutnya
- Lanjutkan implementation dari actual state di BaRe dengan membaca `README.md` dan `docs/*` serta governance yang ditunjuk README.
- Setelah setiap pekerjaan consequential berikutnya, update worklog ini.

## 2026-09-17 — UX/UI Foundation

### Pekerjaan Saat Ini
UX/UI foundation — shell seluruh produk.

### Selesai Dikerjakan
- Menetapkan pola kerja UX/UI seluruh produk, bukan antrean vertical slice.
- Membentuk Android Compose application surface awal pada branch `v1.0/rebaseline`.
- Surface mencakup Home dan area product utama dari baseline BaRe.
- Menetapkan jalur build deterministik minimal melalui GitHub Actions tanpa menambah workflow lain yang belum diperlukan.
- Menetapkan kebijakan update APK ke device/emulator sebagai in-place update (`adb install -r`), bukan uninstall lalu install.
- Jika package/signature tidak kompatibel, proses harus gagal dan tidak melakukan uninstall otomatis.
- Menambahkan fallback signing hanya ketika percobaan in-place pertama gagal: stable debug keystore diverifikasi fingerprint-nya, APK dibangun ulang dengan key tersebut, lalu dicoba kembali menggunakan `adb install -r`.

### Verifikasi
- Repository structure: OBSERVED.
- UX source structure: OBSERVED.
- Build CI: VERIFIED pada GitHub Actions run #116 untuk branch `v1.0/rebaseline`.
- Run #116 menghasilkan artifact `BaRe-v1.0-build-116` dengan SHA-256 `1119627cd816856640260f46dd64fd1168c75410945f8459310a80d6a78723c2`.
- Run #116 tidak melakukan device install/update karena `install_apk=false`; device runtime update path tetap BELUM TERVERIFIKASI.
- Stable signing workflow: IMPLEMENTED; runtime device update BELUM TERVERIFIKASI.

### Pelajaran Bootstrap yang Dipertahankan
- Provider/capability isolation.
- Capability resolution sebelum execution.
- Staging `.partial` → atomic commit → verification.
- Manifest + SHA-256 integrity evidence.
- Timeout, cleanup, dan fail-closed pada boundary yang berisiko.
- Per-component result agar `SUCCESS` tidak menyamarkan partial/failed state.
- Execution mode tidak dibawa menjadi semantic domain contract.

## 2026-09-17 — CI Path Filtering

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
- Struktur filter yang diterapkan sesuai intent: hanya `docs/**` dan `README.md` di-ignore; path implementation/configuration lainnya tidak di-ignore.
- Runtime verification berupa docs-only push/PR belum dilakukan; perilaku aktual GitHub Actions setelah perubahan masih UNVERIFIED.

### Belum Dikerjakan / Tidak Diubah
- Tidak mengubah build steps, signing, APK artifact, atau device install/update path.
- Tidak meng-ignore `.github/**`, `app/**`, Gradle files, atau source files.

### Berikutnya
- Lanjutkan implementation dari actual state.
- Jika diperlukan, verifikasi runtime path filtering dengan perubahan docs-only dan/atau mixed docs + code.
- Setelah setiap pekerjaan consequential berikutnya, update worklog ini.

## 2026-09-17 — Rekonsiliasi Baseline Dokumentasi

### Pekerjaan Saat Ini
Reconcile `product.md`, `architecture.md`, dan `capability_matrix.md` berdasarkan audit dokumentasi setelah repository boundary reconciliation. `reference.md` tidak diubah; worklog ini menerima record pekerjaan reconciliation.

### Perubahan
- `product.md`: memperjelas explicit v1.0 exclusions, product acceptance criteria, dan aturan scope deferral agar capability supported tidak hanya berarti menu/screen tersedia.
- `architecture.md`: memperjelas dependency direction, persistence ownership, canonical lifecycle/state, recovery/idempotency, serta archive/data migration/versioning.
- `capability_matrix.md`: menambahkan implementation/verification state, evidence model, pembedaan platform limitation vs implementation limitation, dan canonical mapping `Capability → Journey → Evidence`.
- Tidak membuat contract file/folder baru.
- Tidak mengubah implementation source atau UX shell.

### Verifikasi
- Tiga dokumen berhasil diperbarui pada branch `v1.0/rebaseline`.
- Perubahan tetap berada pada documentation boundary `docs/`.
- Tidak ada claim bahwa capability backend menjadi implemented/verified; matrix secara eksplisit mempertahankan distinction antara UX shell, implementation, runtime test, dan verification.
- Tidak ada runtime/device verification baru dari reconciliation ini.

### Belum Dikerjakan / Tidak Diubah
- Tidak ada implementation capability baru.
- Tidak ada refactor source code.
- Tidak ada perubahan archive format atau persistence implementation.
- Tidak ada runtime test/device install.

### Berikutnya
- Gunakan acceptance/evidence model baru ketika implementation capability berikutnya dikerjakan.
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
- Access Method menyediakan pilihan `Non-root` dan `Root`; pilihan tersebut diperlakukan sebagai mechanism selection, bukan bukti privilege/capability tersedia.

### Implementasi
- Reworked `MainActivity.kt` menjadi onboarding + four-tab shell + submenu navigation.
- Menambahkan `BackHandler` untuk Android back.
- Menambahkan `HorizontalPager` untuk swipe antar empat tab.
- Menambahkan login/setup surface dan access-method selection.
- Menjaga capability runtime tetap tidak diklaim; implementasi authentication dan root capability belum diimplementasikan/verified.

### Verifikasi
- Source change berhasil ditulis ke branch `v1.0/rebaseline` pada commit `7817aca2ec54d4ad1059fbd9a4a26369065104ef`.
- Build/verifikasi runtime setelah perubahan ini: UNVERIFIED.
- Actual Android back behavior, pager gesture, login backend, dan root detection belum diuji pada device/runtime.

### Belum Dikerjakan / Tidak Diubah
- Belum mengimplementasikan backup/restore backend.
- Belum mengimplementasikan authentication nyata.
- Belum mengimplementasikan root/non-root capability detection/execution.
- Belum mengubah archive, storage provider, persistence, scheduler backend, atau cloud provider.

## 2026-09-18 — Reference Documentation Governance Reconciliation

### Pekerjaan Saat Ini
Memperbaiki `docs/reference.md` agar mengikuti README dan Governance: authority, status dokumen, precedence sumber, evidence language, dan boundary antara reference-derived interpretation dengan canonical BaRe decisions.

### Perubahan
- Menetapkan `reference.md` sebagai `current` **Reference / Discovery Artifact**.
- Menjelaskan authority hierarchy: Varnexis-Workspace Governance, canonical BaRe documentation/source/tests, runtime evidence, lalu reference evidence.
- Menegaskan aturan **tidak silently merge** ketika sumber berbeda atau conflict.
- Menambahkan klasifikasi claim: FACT/OBSERVED/VERIFIED, INFERRED/DERIVED, PROPOSAL, DECISION/REQUIREMENT, UNKNOWN/UNVERIFIED/BLOCKED.
- Memperbaiki stale repository-state claim agar menunjuk ke HEAD `1705452dc77482dd5573d023d091491ec4864319` yang terobservasi saat perubahan ini.
- Memperjelas bahwa current FE shell sudah ada, sedangkan capability backend/runtime tetap belum terverifikasi.
- Tidak mengubah reference evidence atau menaikkan status runtime menjadi verified.

### Verifikasi
- Branch target terobservasi: `v1.0/rebaseline`.
- HEAD sebelum perubahan: `1705452dc77482dd5573d023d091491ec4864319`.
- `docs/reference.md` berhasil diperbarui pada commit hasil perubahan.
- Runtime reference APK tetap NOT PERFORMED.
- Tidak ada implementation capability baru yang diklaim.

### Belum Dikerjakan / Tidak Diubah
- Tidak melakukan runtime execution terhadap Swift Backup.
- Tidak mengubah product/architecture/capability decisions.
- Tidak mengklaim parity atau capability runtime BaRe.

### Verifikasi Lanjutan
- Setelah pemeriksaan ulang, ditemukan satu stale repository-state reference di `docs/reference.md`; record tersebut dikoreksi.
- Final reference documentation commit: `e5a78abd2b8f800b5b379215e178e70fc3066207`.
- Current `MainActivity.kt` blob SHA yang terobservasi: `b3e244d252958b401e8e5d5ac5c5f45036d7e757`.
- Status runtime tetap UNVERIFIED; perubahan ini hanya documentation reconciliation.
## 2026-09-18 — BaRe Rekonsiliasi Kondisi Aktual

### Pekerjaan Saat Ini
Pemeriksaan actual state setelah audit Swift Backup untuk memastikan posisi BaRe saat ini sebelum memilih implementation berikutnya.

### Teramati
- Source implementation pada app/src/main/java/com/savie/bare/ saat ini hanya MainActivity.kt.
- MainActivity.kt berisi onboarding, pemilihan Non-root/Root, four-tab navigation, submenu, dan placeholder UI.
- Placeholder UI belum merupakan implementation capability backend.
- Belum ditemukan source implementation terpisah untuk provider, domain, application/use case, storage, archive, persistence, scheduler backend, cloud provider, diagnostics backend, atau capability execution.
- Tidak ditemukan app/src/test atau app/src/androidTest pada branch saat pemeriksaan.
- Workflow CI saat ini memiliki jalur build, signing verification, artifact upload, dan optional adb install -r; device update belum menjadi runtime-verified state.

### Hasil Rekonsiliasi
- Whole-product UX shell: OBSERVED / IMPLEMENTED AS UI SHELL.
- Backend capability v1.0: NOT IMPLEMENTED / UNVERIFIED dari actual source yang diperiksa.
- CAP-01 sampai CAP-17 belum boleh dinaikkan ke IMPLEMENTED, RUNTIME_TESTED, atau VERIFIED hanya berdasarkan screen/menu.
- Acceptance chain product masih terputus pada implementation/runtime evidence.
- Tidak ada perubahan source implementation pada pemeriksaan ini.

### Hambatan Saat Ini
CI build setelah perubahan UX pada commit 7817aca2ec54d4ad1059fbd9a4a26369065104ef tercatat di worklog sebelumnya sebagai UNVERIFIED dan sebelumnya dilaporkan gagal pada :app:compileDebugKotlin. Status aktual terbaru belum dapat dinyatakan berhasil tanpa run baru.

### Berikutnya
Sebelum memilih capability feature, selesaikan baseline build/verifikasi runtime terhadap actual shell, lalu gunakan hasilnya untuk menentukan shared foundation pertama yang benar-benar dibutuhkan. Hard reset belum dilakukan.

## 2026-09-18 — FE Mockup Expansion

### Pekerjaan Saat Ini
Membangun mockup FE lengkap berbasis evidence/reference Swift yang sudah direkonsiliasi, dengan tujuan mengunci surface dan alur UI terlebih dahulu sebelum capability backend.

### Keputusan yang Diterapkan
- Fase ini memprioritaskan FE mockup; tombol/aksi tidak dianggap sebagai capability backend.
- Struktur sementara boleh terpusat di MainActivity.kt untuk mempercepat iterasi visual; pemecahan file dilakukan setelah bentuk FE stabil.
- Alur reference dipakai sebagai baseline discovery, sementara implementasi tetap BaRe.
- Detail login dan layout Home yang belum ditentukan user diperlakukan sebagai mockup awal yang dapat direvisi; tidak dianggap final product decision.

### Implementasi
- Memperluas onboarding menjadi Welcome → Sign in → Backup storage → Access method → Main App.
- Menambahkan empat tab utama Home, Apps, Schedules, Account.
- Menambahkan surface Apps, app detail, app configuration, Folders, Messages, Call Logs, Wi-Fi, Wallpapers, Storage, Cloud sync, Management, Diagnostics, Settings, Import/Export, Task, Schedule, dan Search.
- Menambahkan state/surface mockup untuk empty, disconnected, task lifecycle, verification state, app parts, management, dan provider diagnostics.
- Tidak menambahkan implementasi authentication, backup/restore execution, storage mutation, cloud transfer, root detection, scheduler execution, atau capability runtime.

### Verifikasi
- Source change committed pada `facb6c5de42aa3b6e385b4c9765a0254334aed30`.
- GitHub Actions run #121 terpicu untuk commit tersebut.
- Saat pencatatan ini dibuat, job `build` masih `in_progress` pada langkah `Assemble debug APK`; hasil build akhir belum dapat dinyatakan VERIFIED.
- Device/runtime install tidak dijalankan oleh commit ini.

### Berikutnya
Review visual/mockup dengan user. Jika bentuk FE belum sesuai, revisi surface/state terlebih dahulu; jika sudah sesuai, baru bekukan FE baseline dan lanjut ke contract capability/lapisan implementasi di belakang FE secara bertahap.

## 2026-09-18 — R1-R3 refactor struktural FE dan persiapan verifikasi

### Pernyataan Pengguna
User authorized execution of R1-R3 sekaligus agar FE mockup dapat langsung masuk fase visual verification/editing sebelum FE baseline dikunci.

### Keputusan
- MainActivity.kt menjadi Android entry point saja.
- App-level state/navigation dipisahkan ke app/.
- Compose theme dipisahkan ke ui/theme/.
- Reusable UI primitives dipisahkan ke ui/components/.
- Product surfaces dipisahkan berdasarkan feature di feature/.
- Mock data/state tetap bersifat FE mockup dan belum menjadi implementasi capability.
- styles.xml dipertahankan sebagai Android window bootstrap; visual component styling menjadi tanggung jawab Compose theme.
- Ditambahkan Compose Preview support untuk mempercepat visual verification.
- Tidak membuat abstraction/domain/provider dummy hanya demi memenuhi struktur folder; mengikuti boundary architecture berdasarkan kebutuhan nyata.

### Implementasi
Refactor v1.0/rebaseline memecah:
- MainActivity.kt menjadi entry point minimal.
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
- ui/PreviewScreens.kt untuk core FE previews.
- app/build.gradle.kts mendapat Compose preview dependency.
- res/values/styles.xml dibatasi sebagai Android window bootstrap dan diselaraskan dengan dark Compose shell.
- Shared list/status components mendapat accessibility content descriptions.

### Verifikasi
- Source refactor committed ke branch v1.0/rebaseline.
- Kesetaraan perilaku ditargetkan terhadap FE mockup sebelum refactor.
- GitHub Actions runtime/build verification untuk commit final belum tersedia pada saat pencatatan ini; status build karenanya tetap UNVERIFIED.
- Device/runtime visual verification belum dilakukan.

### Kondisi Saat Ini
FE_STRUCTURED / MOCKUP / BUILD_UNVERIFIED / R4_NOT_LOCKED

### NEXT
Lanjutkan review visual dan edit mockup berdasarkan feedback pengguna. Setelah FE disepakati, bekukan baseline FE (R4), lalu mulai capability foundation/implementation.

## 2026-09-18 — R1-R3 continuation: resource, ikon, dan perapian branding

### Pernyataan Pengguna
User clarified that the default APK language can remain English and future languages can be added through additional `strings.xml` resources. User also requested common, appropriate built-in Material icons and a generic backup-oriented logo instead of the Android-head placeholder.

### Keputusan
- Default UI language: English.
- UI text is moved toward Android string resources so additional locales can be added later without changing screen structure.
- Use built-in Material icons that semantically match the surface; avoid generic `Info` icons where a specific common icon exists.
- Welcome logo uses a generic built-in backup icon rather than an Android robot/head visual.
- Scope tetap R1-R3; R4 is still not locked and implementasi capability does not start.

### Implementasi
- Added `app/src/main/res/values/strings.xml` with the current default English UI resource set.
- Localized the onboarding, app shell, Home, Apps, Schedules, Account, shared components, and miscellaneous mockup surfaces to use string resources.
- Changed app tab labels to resource IDs and resolved them at the Compose UI boundary.
- Changed access-method labels/descriptions to resource IDs.
- Replaced several generic icons with more specific built-in icons, including SMS, Call, Wi-Fi, Wallpaper, BugReport, Tune, and ImportExport where applicable.
- Replaced the Welcome-screen single-letter logo treatment with the built-in Backup icon.
- Kept `styles.xml` as Android window bootstrap; Compose remains the visual component theme owner.

### Verifikasi
- Git branch `v1.0/rebaseline` remains ahead of the previous R1-R3 baseline and contains the resource/icon changes.
- Local build verification was attempted but blocked by the execution environment's inability to resolve `github.com`; therefore build status remains UNVERIFIED.
- CI status for the latest resource/icon commits has not been established by an applicable workflow run; no success is claimed.
- Device/runtime visual verification remains pending.

### Kondisi Saat Ini
FE_STRUCTURED / MOCKUP / BUILD_UNVERIFIED / R4_NOT_LOCKED

### NEXT
Continue review visual/editing of the mockup. Do not freeze R4 until the user approves the FE surface.


## 2026-09-18 — Koreksi worklog: pembahasan authentication

### Correction
- Pencatatan sebelumnya tentang authentication architecture dipromosikan ke persistent worklog saat percakapan masih berstatus `DISCUSSION`.
- Record tersebut tidak diperlakukan sebagai canonical decision, requirement, atau authorization.
- Detail authentication tetap berada pada status diskusi yang berlaku di conversation context; belum ada implementation action dari record tersebut.

### Governance Basis
- `DISCUSSION ≠ AUTHORIZATION`.
- `PROPOSAL ≠ DECISION`.
- Persistent engineering state hanya boleh dipromosikan ketika intent/authority mencukupi.

### Current State
`FE_STRUCTURED / MOCKUP / AUTH_DISCUSSION / R4_NOT_LOCKED`

### Verifikasi
- Koreksi ini dibuat setelah actual branch state diperiksa.
- Tidak ada perubahan source implementation, authentication implementation, atau FE behavior sebagai bagian dari koreksi ini.
- Authentication tetap `DISCUSSION`; belum diimplementasikan atau diverifikasi.

## 2026-09-18 — Penetapan posisi R1–R5 dan jalur kerja paralel

### Pernyataan Pengguna
Pengguna menegaskan bahwa mockup bukan tujuan akhir. FE dibentuk lebih dahulu agar produk dapat terlihat dan alurnya terbuka, tetapi capability dan implementasi di belakang FE harus dipikirkan sejak awal agar tidak terjadi pekerjaan dua kali.

Pengguna juga menetapkan bahwa pekerjaan saat ini tetap berfokus pada jalur awal aplikasi, terutama:
`Welcome → Login/Local Setup → Storage/Access Setup → Home`.

### Keputusan
Urutan kerja BaRe untuk baseline FE/capability menggunakan lima tahap berikut:

1. **R1 — Structural Refactor**
   `MainActivity → BaReApp → App Shell → Feature Screens → Shared Components → Theme`
   dengan target mempertahankan behavior mockup.
2. **R2 — FE Cleanup**
   `strings → theme → dimensions → icons → accessibility → preview → state ownership`.
3. **R3 — FE Verification**
   Memastikan flow dan surface yang sudah dibangun tetap tersedia dan dapat dikembangkan, termasuk Welcome, Login, Storage, Access, Home, Apps, Schedules, Account, serta submenu yang relevan.
4. **R4 — FE Freeze**
   Baseline FE dikunci setelah bentuk dan flow disepakati pengguna. R4 **belum dikunci**.
5. **R5 — Capability Foundation**
   Mulai membangun fondasi `Domain → Application → Capability → Provider` beserta `Storage`, `Archive`, `Operation`, `Verification`, dan `Diagnostics` sesuai kebutuhan nyata.

### Rekonsiliasi R3
R3 **belum boleh dinyatakan 100% VERIFIED**. Namun hasil R1–R3 saat ini sudah membuka struktur FE secara signifikan dan tidak lagi bergantung pada satu file utama untuk seluruh product surface.

Kondisi ini cukup untuk mulai mengerjakan **fondasi capability secara paralel**, selama:
- tidak menganggap R3 selesai;
- tidak mengunci R4 sebelum FE disepakati;
- tidak memaksa seluruh capability sekaligus;
- setiap fondasi yang dibuat memiliki kebutuhan nyata dari flow/FE atau capability yang sedang dibuka;
- behavior FE tetap dapat diperbaiki tanpa merusak boundary capability.

### Batas Pekerjaan Capability Saat Ini
Untuk BaRe, istilah “backend” tidak otomatis berarti server/backend terpisah. Lapisan di belakang FE yang relevan saat ini terutama adalah:
- domain;
- application/use case;
- capability resolver dan capability implementation;
- provider untuk Android/privilege/storage/network;
- persistence;
- storage dan archive;
- operation lifecycle;
- verification;
- diagnostics.

Remote/Cloud dapat membutuhkan network service/provider tambahan di tahap berikutnya, tetapi **belum menjadi pekerjaan sekarang**.

Karena itu, pekerjaan setelah R3 dapat dimulai dari shared foundation dan capability yang paling dibutuhkan, tanpa menyentuh backend/service remote yang belum diperlukan.

### Kondisi Saat Ini
`R1_IMPLEMENTED / R2_IMPLEMENTED / R3_IN_PROGRESS_PARTIALLY_VERIFIED / R4_NOT_LOCKED / R5_FOUNDATION_CAN_START_IN_PARALLEL`

### Berikutnya
Prioritas terdekat:
1. lanjutkan Welcome sampai Home dan rapikan FE yang masih kurang;
2. tutup verification gap R3 secara bertahap;
3. identifikasi shared foundation pertama yang benar-benar dibutuhkan;
4. mulai R5 secara paralel pada boundary tersebut;
5. pertahankan R4 sebagai freeze gate, bukan blocker untuk semua pekerjaan capability.

R5 tidak berarti “langsung bikin seluruh backend”. R5 dimulai dari fondasi capability yang dibutuhkan dan diverifikasi satu per satu.
