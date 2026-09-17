# BaRe v1.0 — Worklog

Worklog adalah catatan continuity pekerjaan BaRe. **Setiap pekerjaan engineering yang consequential harus dicatat di sini setelah pekerjaan tersebut dilakukan**, termasuk audit, reconciliation, documentation change, implementation, test, verification, deployment, dan recovery.

## 2026-09-17 — Repository Boundary Reconciliation

### Current Work
Reconcile boundary dokumentasi antara `Varnexis-Workspace` dan `BaRe` setelah ditemukan overlap dan reference audit sebelumnya dibuat langsung di repo BaRe tanpa konteks governance workspace.

### Decision Applied
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

### Done
- Memindahkan secara Git-tree `reference.md` BaRe ke `docs/reference.md` tanpa mengubah blob audit.
- Memindahkan Product, Architecture, dan Capability Matrix dari `Varnexis-Workspace/PROJECTS/bare/` ke `BaRe/docs/` dengan penyederhanaan matrix agar tidak mensyaratkan contract file terpisah.
- Memindahkan worklog canonical ke `BaRe/docs/worklog.md`.
- Menambahkan penjelasan governance dan boundary dua repository ke root `README.md` BaRe.
- Membersihkan duplicate project documents dari `Varnexis-Workspace/PROJECTS/bare/`.
- Memperbarui registry BaRe di Varnexis-Workspace agar menunjuk ke BaRe sebagai source untuk implementation, tests, project-specific configuration, dan documentation.

### Verification
- BaRe branch target: `v1.0/rebaseline`.
- Reference blob dipertahankan dengan SHA `03d3a7f182bc28ca5eae8ae313a5c6d109eb318f`.
- Structural intent: satu `docs/` untuk lima dokumen project; VERIFIED melalui Git tree setelah commit.
- Isi reference audit: dipertahankan dari blob existing; runtime verification reference APK tetap NOT PERFORMED.
- Build/runtime tidak dijalankan oleh pekerjaan reconciliation ini.

### Not Done / Explicitly Unchanged
- Tidak ada implementation capability baru.
- Tidak ada refactor `MainActivity.kt`.
- Tidak ada perubahan CI/build pipeline.
- Tidak ada device install/update.
- Tidak ada runtime verification baru.

### Next
- Lanjutkan implementation dari actual state di BaRe dengan membaca `README.md` dan `docs/*` serta governance yang ditunjuk README.
- Setelah setiap pekerjaan consequential berikutnya, update worklog ini.

## 2026-09-17 — UX/UI Foundation

### Current Work
UX/UI foundation — whole-product shell.

### Done
- Menetapkan pola kerja whole-product UX/UI, bukan antrean vertical slice.
- Membentuk Android Compose application surface awal pada branch `v1.0/rebaseline`.
- Surface mencakup Home dan area product utama dari baseline BaRe.
- Menetapkan jalur build deterministik minimal melalui GitHub Actions tanpa menambah workflow lain yang belum diperlukan.
- Menetapkan kebijakan update APK ke device/emulator sebagai in-place update (`adb install -r`), bukan uninstall lalu install.
- Jika package/signature tidak kompatibel, proses harus gagal dan tidak melakukan uninstall otomatis.
- Menambahkan fallback signing hanya ketika percobaan in-place pertama gagal: stable debug keystore diverifikasi fingerprint-nya, APK dibangun ulang dengan key tersebut, lalu dicoba kembali menggunakan `adb install -r`.

### Verification
- Repository structure: OBSERVED.
- UX source structure: OBSERVED.
- Build CI: VERIFIED pada GitHub Actions run #116 untuk branch `v1.0/rebaseline`.
- Run #116 menghasilkan artifact `BaRe-v1.0-build-116` dengan SHA-256 `1119627cd816856640260f46dd64fd1168c75410945f8459310a80d6a78723c2`.
- Run #116 tidak melakukan device install/update karena `install_apk=false`; device runtime update path tetap BELUM TERVERIFIKASI.
- Stable signing workflow: IMPLEMENTED; runtime device update BELUM TERVERIFIKASI.

### Bootstrap Lessons Retained
- Provider/capability isolation.
- Capability resolution sebelum execution.
- Staging `.partial` → atomic commit → verification.
- Manifest + SHA-256 integrity evidence.
- Timeout, cleanup, dan fail-closed pada boundary yang berisiko.
- Per-component result agar `SUCCESS` tidak menyamarkan partial/failed state.
- Execution mode tidak dibawa menjadi semantic domain contract.

## 2026-09-17 — CI Path Filtering

### Current Work
Mengurangi trigger GitHub Actions untuk perubahan dokumentasi yang tidak membutuhkan build Android.

### Decision Applied
- Perubahan `docs/**` tidak memicu workflow build pada `push` ke `v1.0/rebaseline`.
- Perubahan `README.md` di root tidak memicu workflow build pada `push` ke `v1.0/rebaseline`.
- Perubahan `docs/**` tidak memicu workflow build pada `pull_request` ke `v1.0/rebaseline`.
- Perubahan `README.md` di root tidak memicu workflow build pada `pull_request` ke `v1.0/rebaseline`.
- Semua path lain tetap dapat memicu CI.
- Jika satu perubahan mencampur `docs/**`/`README.md` dengan path non-ignored, CI tetap dapat terpicu.
- `workflow_dispatch` tetap tersedia untuk eksekusi manual.

### Done
- Menambahkan `paths-ignore` untuk `docs/**` dan `README.md` pada trigger `push` dan `pull_request` di `.github/workflows/android-build.yml`.

### Verification
- Workflow source sebelum perubahan: trigger `push` dan `pull_request` hanya dibatasi branch `v1.0/rebaseline`, tanpa `paths-ignore`.
- Perubahan workflow berhasil ditulis ke branch `v1.0/rebaseline` dalam commit `92451bd356043e249e2a306afd487ba2170f2538`.
- Struktur filter yang diterapkan sesuai intent: hanya `docs/**` dan `README.md` di-ignore; path implementation/configuration lainnya tidak di-ignore.
- Runtime verification berupa docs-only push/PR belum dilakukan; perilaku aktual GitHub Actions setelah perubahan masih UNVERIFIED.

### Not Done / Explicitly Unchanged
- Tidak mengubah build steps, signing, APK artifact, atau device install/update path.
- Tidak meng-ignore `.github/**`, `app/**`, Gradle files, atau source files.

### Next
- Lanjutkan implementation dari actual state.
- Jika diperlukan, verifikasi runtime path filtering dengan perubahan docs-only dan/atau mixed docs + code.
- Setelah setiap pekerjaan consequential berikutnya, update worklog ini.

## 2026-09-17 — Documentation Baseline Reconciliation

### Current Work
Reconcile `product.md`, `architecture.md`, dan `capability_matrix.md` berdasarkan audit dokumentasi setelah repository boundary reconciliation. `reference.md` tidak diubah; worklog ini menerima record pekerjaan reconciliation.

### Changes
- `product.md`: memperjelas explicit v1.0 exclusions, product acceptance criteria, dan aturan scope deferral agar capability supported tidak hanya berarti menu/screen tersedia.
- `architecture.md`: memperjelas dependency direction, persistence ownership, canonical lifecycle/state, recovery/idempotency, serta archive/data migration/versioning.
- `capability_matrix.md`: menambahkan implementation/verification state, evidence model, pembedaan platform limitation vs implementation limitation, dan canonical mapping `Capability → Journey → Evidence`.
- Tidak membuat contract file/folder baru.
- Tidak mengubah implementation source atau UX shell.

### Verification
- Tiga dokumen berhasil diperbarui pada branch `v1.0/rebaseline`.
- Perubahan tetap berada pada documentation boundary `docs/`.
- Tidak ada claim bahwa capability backend menjadi implemented/verified; matrix secara eksplisit mempertahankan distinction antara UX shell, implementation, runtime test, dan verification.
- Tidak ada runtime/device verification baru dari reconciliation ini.

### Not Done / Explicitly Unchanged
- Tidak ada implementation capability baru.
- Tidak ada refactor source code.
- Tidak ada perubahan archive format atau persistence implementation.
- Tidak ada runtime test/device install.

### Next
- Gunakan acceptance/evidence model baru ketika implementation capability berikutnya dikerjakan.
- Update worklog setelah pekerjaan consequential berikutnya.

## 2026-09-17 — Reference-Aligned Onboarding & Navigation

### Current Work
Mengubah UX shell agar mengikuti pola dasar dan alur reference, dengan penyederhanaan BaRe sesuai arahan user.

### Decision Applied
- Primary navigation tetap tepat 4 tab: `Home`, `Apps`, `Schedules`, `Account`.
- Empat tab menggunakan horizontal pager sehingga tab dapat diganti dengan swipe kanan/kiri selain tap pada bottom navigation.
- Submenu tidak lagi membutuhkan tombol `Back to Home` di bagian bawah.
- Android system back dan top-bar back mengembalikan user dari submenu ke context sebelumnya.
- Startup tidak langsung membuka backup/restore. Flow UI dimulai dari `Welcome → Login → Access Method → Main App`.
- Access Method menyediakan pilihan `Non-root` dan `Root`; pilihan tersebut diperlakukan sebagai mechanism selection, bukan bukti privilege/capability tersedia.

### Implementation
- Reworked `MainActivity.kt` menjadi onboarding + four-tab shell + submenu navigation.
- Menambahkan `BackHandler` untuk Android back.
- Menambahkan `HorizontalPager` untuk swipe antar empat tab.
- Menambahkan login/setup surface dan access-method selection.
- Menjaga capability runtime tetap tidak diklaim; backend authentication dan root capability belum diimplementasikan/verified.

### Verification
- Source change berhasil ditulis ke branch `v1.0/rebaseline` pada commit `7817aca2ec54d4ad1059fbd9a4a26369065104ef`.
- Build/runtime verification setelah perubahan ini: UNVERIFIED.
- Actual Android back behavior, pager gesture, login backend, dan root detection belum diuji pada device/runtime.

### Not Done / Explicitly Unchanged
- Belum mengimplementasikan backup/restore backend.
- Belum mengimplementasikan real authentication.
- Belum mengimplementasikan root/non-root capability detection/execution.
- Belum mengubah archive, storage provider, persistence, scheduler backend, atau cloud provider.
