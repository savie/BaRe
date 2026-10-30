# Audit Desain Persistensi Local Account Non-Google — BΛR☰

**Tanggal:** 2026-10-30  
**Repository:** `savie/BaRe`  
**Branch:** `Working`  
**Baseline audit terdahulu:** `f96b5ff72e702ad4e08014f5d0059a78c257fe83`  
**Jenis:** audit statis + rekomendasi arsitektur; bukan implementasi dan belum diuji runtime.

## 1. Keputusan awal

**Feasible dengan syarat.** Local account non-Google dapat dipertahankan setelah uninstall/reinstall jika metadata dan material pemulihannya disimpan di shared external storage yang tidak ikut dihapus oleh uninstall.

Namun, ada dua klaim berbeda yang harus dipisahkan:

1. **One local account per device (policy):** aplikasi hanya mengizinkan satu local account aktif/terdaftar pada satu device identity.
2. **Cryptographic hardware binding:** account tidak dapat dipindahkan dan didekripsi pada perangkat lain.

Klaim pertama dapat dibuat dengan vault eksternal dan identitas acak. Klaim kedua tidak otomatis tercapai dengan file key di folder eksternal. Jika ciphertext dan key disalin bersama, keduanya dapat dipindahkan. Hardware-backed Android Keystore key juga tidak boleh menjadi satu-satunya recovery key karena app uninstall/clear data dapat menghilangkan material aplikasi/keystore yang diperlukan untuk membuka data lama.

## 2. Bukti kondisi saat ini

Source yang diperiksa pada branch `Working`:

| File | SHA blob yang diperiksa | Temuan |
|---|---|---|
| `bare-implementation/smali/b45.smali` | `c939599a27b0af668c8785ba6766077b39094358` | `a()` membangun `MFirebaseUser` dari `Signature.hashCode()`, meng-hash nilai itu, membalik karakter, lalu membuat model anonymous. |
| `bare-implementation/smali/com/bareapps/barebackup/common/V.smali` | `128775626e1b6e4ccd8dde6a2af23a0edf32fc16` | `getNon()` membaca preference key `456987168448`; `setNon()` menyerialisasi model menjadi JSON dan menulisnya ke SharedPreferences. |
| `bare-implementation/smali/d45.smali` | `c92856a7cd0a43d798783a1a063984a10a720c0b` | Resolver mengembalikan `getNon()` lebih dahulu, lalu fallback ke Firebase current user. |
| `bare-implementation/smali/qy5.smali` | `c58d7e4d041fa2a557dd23700052a1d9e14a5ac8` | `e(MFirebaseUser)` menghitung MD5 atas UID lalu mengambil setengah pertama string hex (16 karakter). |
| `bare-implementation/smali/g67.smali` | `492395585d9cf443349e965e509410bd62c54922` | `w(String)` menghasilkan MD5 hex lowercase 32 karakter. |
| `bare-implementation/smali/ry5.smali` | `93226026d432304b27c4cfc6085a9fa1a7b86c6f` | Constructor membentuk namespace `{storageRoot}/accounts/{16-hex-key}/` dan subfolder data. |

### Implikasi

- UID dari signing certificate bukan device-unique. Dua device dengan APK/signing certificate sama dapat memperoleh identitas pseudo-account yang sama.
- SharedPreferences berada pada ruang data aplikasi dan tidak menjadi sumber pemulihan lintas uninstall.
- Account storage key 16 hex adalah namespace path, bukan secret, authentication token, atau encryption key.
- `ry5` membuktikan pembentukan namespace `accounts/{key}/`, bukan keberadaan implementasi vault `.enc` di `/storage/emulated/0/BΛR☰/accounts/`.
- Resolver yang mengutamakan SharedPreferences perlu diberi jalur pemulihan/migrasi dari vault eksternal agar tidak membuat account baru ketika cache aplikasi kosong.

## 3. Requirement yang disarankan

1. Maksimal satu local account non-Google per device identity.
2. Account harus tetap sama setelah app process restart, force-stop, reboot, dan reinstall, selama vault dan material recovery tersedia.
3. Uninstall/reinstall tidak boleh otomatis membuat account baru jika vault lama valid.
4. Tidak boleh overwrite atau membuat account kedua ketika vault lama tidak dapat didekripsi; tampilkan status recovery yang eksplisit.
5. Sign-out hanya mengubah status sesi/cache aplikasi. Sign-out tidak menghapus vault.
6. Penghapusan account permanen harus menjadi aksi eksplisit, terpisah, dan memiliki konfirmasi.
7. Akun Google/Firebase yang valid tetap mengikuti jalur resolver yang ada; local vault tidak boleh mengambil alih account Google.
8. Migrasi dari SharedPreferences harus idempotent dan mempertahankan UID lama agar namespace backup yang sudah ada tidak terputus.
9. File vault harus ditulis atomik, memiliki versi format, integritas autentikasi, dan validasi sebelum dipakai.
10. Jika folder/key hilang atau rusak, aplikasi harus fail closed: jangan diam-diam membuat account baru atau menimpa file yang masih bisa dipulihkan.

## 4. Rancangan storage yang direkomendasikan

Lokasi yang diminta:

`/storage/emulated/0/BΛR☰/accounts/`

Struktur awal (nama masih proposal):

```text
accounts/
  device.identity
  local-account.enc
  local-account.key
  metadata.json
```

Tanggung jawab:

- `device.identity`: random device identity yang dibuat sekali saat enrollment; bukan APK signing hash.
- `local-account.enc`: encrypted account payload yang berisi Local Account ID, UID kompatibilitas, provider metadata minimum, dan format version.
- `local-account.key`: recovery/wrapping material yang diperlukan untuk membuka payload.
- `metadata.json`: non-secret manifest: schema version, account ID reference, algorithm identifiers, key version, checksum/metadata integrity fields, created/updated timestamps.

Nama file final sebaiknya menggunakan ID acak/opaque dan tidak mengandung email atau data personal.

**Penting:** meletakkan key plaintext berdampingan dengan ciphertext hanya melindungi dari pembacaan file ciphertext secara terpisah; siapa pun yang dapat menyalin kedua file berpotensi mendekripsi account. Untuk perlindungan yang lebih kuat, bungkus data-encryption key (DEK) dengan passphrase/recovery secret yang tidak disimpan plaintext di folder. Gunakan authenticated encryption (mis. AES-256-GCM) dengan nonce unik dan tag autentikasi; jangan merancang algoritme kriptografi sendiri.

## 5. Batas device binding dan recovery

Jangan menjanjikan hardware binding absolut dari external files saja.

Pilihan kebijakan:

- **Recovery-first (direkomendasikan untuk requirement saat ini):** vault + recovery key/passphrase. Reinstall dapat memulihkan account; pemindahan folder juga memungkinkan recovery jika key ikut dipindahkan.
- **Device-restricted:** tambahkan device binding signal untuk mendeteksi folder yang disalin. Signal seperti Android ID/SSAID bukan secret autentikasi yang cukup dan dapat berubah pada kondisi tertentu; jangan jadikan satu-satunya kunci enkripsi.
- **Hardware-backed protection:** Android Keystore dapat menambah perlindungan saat app terpasang, tetapi key hardware-backed tidak dapat diasumsikan survive uninstall. Sediakan recovery path yang independen jika uninstall recovery adalah requirement.

Perlu keputusan produk apakah "satu account per device" berarti satu account yang dibuat pada device itu, atau account yang secara kriptografis tidak dapat dipindahkan ke device lain. Keduanya bukan requirement yang sama.

## 6. Android storage feasibility

Path publik yang diminta adalah shared external storage. Akses aktual bergantung pada versi Android, target SDK, permission model, dan cara aplikasi mengakses storage. Implementasi perlu memilih dan menguji API yang sesuai (mis. Storage Access Framework atau mekanisme akses shared storage yang memang diizinkan untuk target Android yang dipakai).

Jangan menganggap raw path selalu dapat dibaca/ditulis pada semua Android/OEM. Jika akses ke folder ditolak, tampilkan recovery/setup state yang jelas dan jangan fallback diam-diam ke internal storage seolah-olah vault persisten telah dibuat.

Uninstall biasanya tidak dimaksudkan menghapus data bersama di shared storage, tetapi perilaku aktual harus diuji pada kombinasi OS/OEM target. Clear app data, uninstall, reinstall, permission revoke, storage removal, dan factory reset harus menjadi skenario uji terpisah.

## 7. Integrasi dengan alur account yang ada

Urutan resolver target yang disarankan:

1. Jika Firebase/Google authenticated user tersedia dan merupakan account aktif, pertahankan perilaku account tersebut.
2. Untuk jalur non-Google, periksa external local vault.
3. Jika vault valid, decrypt + verify integrity lalu pulihkan Local Account ID yang sama.
4. Jika vault belum ada tetapi legacy `V.getNon()` tersedia, migrasikan model lama secara atomik; pertahankan UID lama untuk kompatibilitas namespace.
5. Jika keduanya tidak ada, baru tawarkan pembuatan local account baru.
6. Jika vault ada tetapi key hilang/tidak valid, masuk recovery-required; jangan membuat account pengganti otomatis.

Sign-out perlu dipisahkan menjadi:
- clear active session/cache (non-destructive);
- delete persistent local account (explicit destructive action).

## 8. Lokasi kerja dan batas perubahan

**Jangan mengimplementasikan fitur ini dengan mengedit hasil decompile di `bare-implementation/`.**

Tahap implementasi nantinya sebaiknya dibuat sebagai source/tooling terpisah, misalnya:

`tools/local-account-vault/`

atau pada source application module native yang menjadi sumber build resmi, jika struktur source resmi tersedia. Audit ini belum memastikan struktur build/source native tersebut; lakukan repository inventory sebelum memilih lokasi final.

Dokumen audit ini berada di `docs/audit/` dan tidak mengubah source aplikasi.

## 9. Acceptance criteria dan verification plan

| ID | Skenario | Hasil yang wajib |
|---|---|---|
| AC-01 | Fresh install, buat local account | Tepat satu vault dibuat; tidak ada account kedua. |
| AC-02 | Restart/force-stop/reboot | Account ID tetap sama. |
| AC-03 | Uninstall lalu reinstall, file + recovery key tersedia | Account lama dipulihkan; tidak membuat UID baru. |
| AC-04 | Uninstall/reinstall, vault ada tetapi key hilang | Recovery-required; tidak overwrite atau auto-create. |
| AC-05 | Vault dan key disalin ke device lain | Perilaku sesuai kebijakan portability yang dipilih dan didokumentasikan. |
| AC-06 | Sign-out local account | Cache/session dibersihkan; vault tetap ada. |
| AC-07 | Explicit delete account | Vault dihapus dengan konfirmasi; next onboarding boleh membuat account baru. |
| AC-08 | Legacy SharedPreferences account | Migrasi mempertahankan UID lama dan storage namespace. |
| AC-09 | Google account aktif | Jalur Google tidak tertimpa oleh local vault. |
| AC-10 | File rusak/tampered/truncated | Autentikasi gagal; account tidak dianggap valid. |
| AC-11 | Storage permission ditolak / volume hilang | Error/recovery state eksplisit; tidak ada silent fallback. |
| AC-12 | Dua proses/dua onboarding serentak | Atomic create/lock memastikan maksimal satu vault. |

Belum ada skenario di atas yang diklaim lulus. Semuanya harus diuji di perangkat nyata.

## 10. Risiko dan keputusan sebelum implementasi

- Definisikan apakah device account boleh dipindahkan melalui copy folder + recovery secret.
- Definisikan UX passphrase/recovery: user-managed, exported key, atau kombinasi.
- Tentukan Android min/target SDK dan API storage yang benar-benar digunakan oleh build BΛR☰.
- Tentukan format migrasi dan kompatibilitas UID lama.
- Pastikan proses delete account tidak ikut menghapus backup user di luar vault.
- Uji behavior uninstall/restore pada OS/OEM target.
- Lakukan threat model: orang yang mendapat akses filesystem, malware dengan storage access, backup/transfer folder, dan kehilangan recovery secret.

## 11. Kesimpulan

Fitur **persistent local account non-Google, satu account per device policy, dan recovery setelah reinstall** dapat dibangun tanpa menyentuh `bare-implementation/`.

Namun, requirement "selama ada kunci di folder" harus dipahami sebagai recovery berbasis file/key, bukan jaminan hardware-bound. Jika key disimpan berdampingan tanpa passphrase/wrapping, siapa pun yang memperoleh kedua file dapat berpotensi memulihkan account.

**Status:** audit desain selesai secara statis; implementasi ditahan sampai kebijakan device binding/recovery dan lokasi source build resmi dipastikan. Tidak ada perubahan pada source aplikasi dalam audit ini.


## 12. Keputusan desain lanjutan — Hybrid

Pemilik produk memilih kebijakan **Hybrid**: device-bound by default, reinstall recovery, dan explicit cross-device transfer.

Desain teknis, model envelope encryption, audit dependency, batasan Android storage, migrasi, serta acceptance matrix dicatat di [local-account-hybrid-vault-technical-design.md](local-account-hybrid-vault-technical-design.md).

Status gate yang sebelumnya menunggu keputusan device binding kini terselesaikan. Implementasi tetap ditahan karena repository yang diperiksa belum menyediakan source/build Gradle native yang dapat diverifikasi, dan recovery UX, jalur storage fallback, distribusi, serta matriks perangkat belum diputuskan.


---

## 13. Klarifikasi alur produk, Password Strategy, dan perpindahan ke Google

Addendum ini memperbarui keputusan berdasarkan klarifikasi pemilik produk. Rincian teknis lengkap ada di [local-account-hybrid-vault-technical-design.md](local-account-hybrid-vault-technical-design.md), Bagian 15.

### 13.1 Intro > Skip

Tombol Skip for now yang sudah ada (intro_skip_sign_in_button.xml, ID btn_anonymous) menjadi pintu masuk ke Local Account Resolver. Skip berarti lanjut tanpa Google, bukan melewati autentikasi atau setup akun.

- Vault valid: autentikasi dan buka akun yang sama.
- Tidak ada vault/akun legacy: buat Local Account baru.
- Vault rusak atau tidak dapat dibuka: recovery/error; jangan auto-create akun pengganti.
- Perangkat berbeda: recovery credential + konfirmasi transfer.
- Setelah akun baru dibuat, gunakan Password Strategy yang sudah ada jika strategi backup belum disetel.

### 13.2 Gunakan Password Strategy yang sudah ada

Artefak BΛR☰ yang ditemukan: PasswordStrategyActivity.smali, UserPasswordActivity.smali, password_strategy_activity.xml, dan password_strategy_item.xml. Activity menyimpan saved_password_mode dan saved_user_password serta mengenali STANDARD_PASSWORD dan USER_PASSWORD.

- **Standard:** aplikasi menghasilkan password untuk encrypted backup.
- **Advanced:** password yang dibuat pengguna ikut membentuk password akhir encrypted backup.

UI dan mekanisme yang sudah ada diprioritaskan. Tetapi Password Strategy ini belum terbukti sebagai recovery credential Local Account. Recovery vault tetap terpisah sampai generator, key derivation, dan perlindungan SharedPreferences diaudit. Mengubah strategi backup tidak boleh mengganti LocalAccountId, UID lama, atau namespace backup.

### 13.3 Local Account ke Google

Target desain adalah **menghubungkan Google sebagai metode login tambahan ke BΛR☰ account yang sama**, bukan mengganti identitas data/backup.

- Autentikasi Local Account dahulu.
- Jalankan Google sign-in yang sudah ada.
- Pastikan Google identity belum terhubung ke akun BΛR☰ lain.
- Pertahankan LocalAccountId, LegacyUid, dan namespace backup.
- Jangan menghapus vault setelah linking.
- Konflik akun harus dihentikan untuk penyelesaian eksplisit; tidak boleh merge otomatis.
- Google unlink mensyaratkan recovery lokal yang masih berfungsi.

Feasibility linking dengan Firebase/backend saat ini belum terbukti. Pseudo-local UID tidak boleh diasumsikan sebagai Firebase anonymous account.

### 13.4 Pengerjaan di tools, tetap selaras dengan decompile

Analisis, patch generator, patch file, fixture, dan catatan verifikasi dikerjakan di tools/. Patch wajib menargetkan class/resource/package yang benar-benar ada di bare-implementation/. Folder bare-implementation dan reference menjadi baseline baca-saja sampai patch application diizinkan.

Pemeriksaan recursive tree branch Working menemukan reference/apktool dan reference/jadx dengan artefak decompile yang cukup lengkap, termasuk Password Strategy. Namun tidak ditemukan build.gradle, settings.gradle, gradlew, Gradle wrapper, atau version catalog pada tracked tree. Jika Gradle ada di workspace lokal/untracked, lokasi tepatnya perlu diberikan saat build discovery.

### 13.5 Status

- Alur Skip dan target integrasi Password Strategy: ditentukan pada level desain.
- Existing Password Strategy UI: ditemukan secara statis.
- Perlindungan saved_user_password dan generator Standard: belum selesai diaudit.
- Local-to-Google linking: desain target ada; feasibility backend belum diketahui.
- Patch/implementasi: belum dimulai.
- bare-implementation/: tidak diubah.
