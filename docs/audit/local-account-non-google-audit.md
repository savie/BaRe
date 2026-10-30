# Audit Akun Lokal / Non-Google — BΛR☰

**Tanggal audit:** 2026-10-30  
**Repository:** `savie/BaRe`  
**Branch:** `Working`  
**Commit yang diaudit:** `f96b5ff72e702ad4e08014f5d0059a78c257fe83`  
**Cakupan:** alur akun non-Google pada `bare-implementation`, pembentukan identitas, persistensi lokal, namespace penyimpanan lokal, dan titik pemakaian UID yang relevan.  
**Di luar cakupan:** audit Google OAuth secara menyeluruh, provider cloud, backup/restore selain namespace akun, dan perubahan implementasi.

## 1. Kesimpulan utama

Jalur onboarding non-Google yang terlihat di source **bukan Firebase Anonymous Authentication**. Saat pengguna memilih “Signing in Anonymously”, aplikasi membuat objek akun lokal `MFirebaseUser` sendiri melalui `b45.a()`, kemudian menyimpannya melalui `V.setNon(...)` ke preferences aplikasi. Identitas pseudo-anonymous ini dibentuk dari hash kode sertifikat penandatangan aplikasi, bukan UUID dan bukan Firebase UID.

Terdapat tiga identifier/konsep berbeda yang tidak boleh disatukan:

| Identifier | Asal | Bentuk / pemakaian |
|---|---|---|
| **Pseudo-anonymous UID lokal** | Hash dari `Signature.hashCode()` yang diubah melalui helper string lalu dibalik urutannya | Dipasang pada objek `MFirebaseUser` lokal dengan `isAnonymous=true`; email tampilan `anonymous@barebackup.app` |
| **Firebase Auth UID** | UID user yang aktif pada `FirebaseAuth` | UID penuh dipakai pada path Firebase `users/{uid}`; bukan hasil pemotongan 16 karakter |
| **Local storage namespace** | `MD5(UTF-8(uid))`, lalu 16 karakter heksadesimal pertama | Membentuk direktori `accounts/{shortHash}/` untuk data lokal |

Dengan demikian, ingatan “16/32 angka” hampir pasti merujuk pada **16 karakter hex** untuk namespace lokal: MD5 menghasilkan 32 karakter hex; fungsi `qy5.e()` mengambil setengah string. Ini bukan Firebase account UID dan bukan UUID.

## 2. Bukti dan alur onboarding non-Google

### 2.1 Pemilihan mode Anonymous pada onboarding

File bukti:
- `bare-implementation/smali_classes2/com/bareapps/barebackup/intro/d.smali`
- Padanan source dekompilasi: `reference/jadx/sources/org/swiftapps/swiftbackup/intro/d.java`

Pada cabang yang menampilkan teks **“Signing in Anonymously”**, alur melakukan:

1. Set status UI onboarding ke `RUNNING`.
2. Memanggil `b45.a()` untuk membentuk objek `MFirebaseUser`.
3. Memanggil `V.INSTANCE.setNon(user)` untuk menyimpan objek tersebut.
4. Jika terjadi exception, memanggil `V.INSTANCE.setNon(null)`.
5. Melanjutkan callback onboarding dan pemrosesan listener aplikasi.

Di blok ini tidak terlihat pemanggilan Firebase Auth `signInAnonymously()`, `signInWithCredential(...)`, ataupun pembuatan Firebase account. Pesan UI “Signing in Anonymously” adalah label alur produk; implementasi yang terlihat adalah akun pseudo-anonymous yang dikelola aplikasi.

### 2.2 Pembentukan pseudo-anonymous UID

File bukti:
- `bare-implementation/smali/b45.smali`
- `bare-implementation/smali/com/bareapps/barebackup/anonymous/MFirebaseUser.smali`
- Padanan source untuk algoritme: `reference/jadx/sources/defpackage/b45.java`

Urutan pada `b45.a()`:

1. Mengambil signing certificate aplikasi melalui `SwiftApp.Companion.e()`.
2. Memilih signature pertama.
3. Memanggil `signature.hashCode()`, lalu mengubah hasilnya menjadi string dengan `String.valueOf(...)`.
4. Memproses string tersebut melalui helper `sz8.E(...)`.
5. Mengubah hasil ke array karakter dan membalik urutan karakter.
6. Menggabungkan karakter menjadi string; string ini diberikan sebagai `uid` untuk `MFirebaseUser`.
7. Membentuk `MFirebaseUser` dengan:
   - `isAnonymous = true`
   - display name `Anonymous user`
   - email konstanta aplikasi `anonymous@barebackup.app`
   - `providerId = anonymous`
   - provider data kosong dan photo URL null.

**Interpretasi:** pseudo-UID ini berasal dari atribut signing certificate aplikasi. Source yang diperiksa tidak menunjukkan pembuatan UUID acak untuk akun lokal. Karena UID diturunkan dari signature aplikasi, perubahan signing key/certificate berpotensi mengubah UID dan memutus kontinuitas namespace akun lokal. Perlu pengujian upgrade/signing-key sebelum menganggap identitas ini stabil lintas build/distribusi.

### 2.3 Bentuk objek akun

File bukti:
- `bare-implementation/smali/com/bareapps/barebackup/anonymous/MFirebaseUser.smali`

Objek `MFirebaseUser` menyimpan bidang:
- `uid`
- `email`
- `isAnonymous`
- `displayName`
- `photoUrl`
- `providerData`
- `providerId`

Pada versi BΛR☰ di folder ini, konstanta email anonymous adalah `anonymous@barebackup.app`. Ini adalah metadata identitas aplikasi, bukan bukti adanya akun email sungguhan atau Firebase account.

## 3. Persistensi akun lokal

File bukti:
- `bare-implementation/smali/com/bareapps/barebackup/common/V.smali`
- Padanan source dekompilasi: `reference/jadx/sources/org/swiftapps/swiftbackup/common/V.java`

`V.getNon()` membaca preference key `456987168448`. Nilai string di-deserialize menjadi `MFirebaseUser` melalui helper serialisasi `w14`.

`V.setNon(user)`:
1. Men-serialize objek melalui `w14.c().i(user)`.
2. Menyimpan string hasil serialisasi pada preference key `456987168448`.
3. Menggunakan `commit()` untuk menyelesaikan write secara sinkron.

Preference yang dipakai merupakan encrypted/secure preferences melalui inisialisasi `V.getZ()`; implementasi mencoba encrypted preferences dan memiliki fallback ke secure preferences. Jadi akun pseudo-anonymous tidak disimpan sebagai Firebase Auth session; state objek user disimpan lokal oleh aplikasi.

`d45.a()` adalah resolver akun aktif yang diperiksa:
1. Meminta `V.getNon()` terlebih dahulu.
2. Bila ada, mengembalikan objek lokal tersebut dan memanggil `V.setA(false)`.
3. Bila tidak ada, membaca current user dari `FirebaseAuth.getInstance().c()` dan memetakan UID serta metadata provider ke `MFirebaseUser`.
4. Bila keduanya tidak ada, resolver mengembalikan null.

Ini mengonfirmasi bahwa aplikasi memiliki jalur akun lokal tersimpan yang diprioritaskan oleh resolver, terpisah dari current user Firebase.

## 4. UID pendek untuk penyimpanan lokal

File bukti:
- `bare-implementation/smali/qy5.smali`
- `bare-implementation/smali/ry5.smali`
- Padanan source dekompilasi: `reference/jadx/sources/defpackage/qy5.java`, `reference/jadx/sources/defpackage/ry5.java`, `reference/jadx/sources/defpackage/g67.java`

Fungsi `g67.w(String)`:
1. Mengubah input ke UTF-8.
2. Menghitung digest dengan algoritme **MD5**.
3. Mengonversi 16 byte digest menjadi karakter hex lowercase. Output normalnya 32 karakter.

Fungsi `qy5.e(MFirebaseUser)`:
1. Mengambil `mFirebaseUser.getUid()`.
2. Memanggil `g67.w(uid)`.
3. Mengembalikan `substring(0, length / 2)`.

Karena panjang MD5 hex adalah 32 karakter, hasil namespace normalnya **16 karakter hex pertama**. Istilah “16 angka” tidak tepat secara teknis: karakter hex dapat berisi `0-9` dan `a-f`.

`ry5` menyusun path:
`{storageRoot}/accounts/{qy5.e(user)}/`

Subfolder di bawahnya antara lain:
- `backups/`
- `cache/`
- `backups/apps/local/` dan `backups/apps/cloud/`
- `backups/sms/local/` dan `backups/sms/cloud/`
- `backups/calls/local/` dan `backups/calls/cloud/`
- `backups/wifi/local/` dan `backups/wifi/cloud/`
- `backups/walls/`
- `backups/folders/local/` dan `backups/folders/cloud/`

Ini adalah namespace/partition direktori lokal, bukan pengganti UID otoritatif pada backend.

## 5. Firebase UID penuh berbeda dari local namespace

File bukti:
- `reference/jadx/sources/defpackage/d45.java`
- `reference/jadx/sources/defpackage/re3.java`
- Migrasi backend yang terkait: `supabase/migrations/20261024020000_firebase_uid_text_and_sub_rls.sql`, `20261024040000_firebase_standard_token_rls.sql`

`re3.j()` mengembalikan `d45.a().getUid()` tanpa pemotongan. `re3.k()` membangun reference `users/{uid}` berdasarkan UID penuh. Tidak ada `qy5.e()` yang diterapkan pada path tersebut.

Migrasi Supabase di branch `Working` juga menyatakan bahwa Firebase UID adalah opaque string, **bukan UUID**, sehingga `user_id` memakai tipe `text`. Kebijakan RLS mengikat `user_id` dengan JWT subject `sub`; migrasi token memeriksa issuer dan audience proyek Firebase sebelum mengizinkan operasi row. Dengan kata lain:
- Firebase UID adalah identitas penuh untuk ownership data backend.
- Potongan MD5 16 karakter hanya untuk local storage folder namespace.
- PostgreSQL role `anon` pada migrasi bukan sinonim dari Firebase Anonymous User. Ia adalah role database yang menerima Firebase ID token standar melalui PostgREST, sedangkan RLS tetap memvalidasi `iss`, `aud`, dan `sub`.

Catatan scope: migrasi berada di luar folder `bare-implementation`; dipakai hanya untuk memvalidasi kontrak ownership backend yang berkaitan langsung dengan UID.

## 6. Sign-out dan siklus hidup pseudo-account

File bukti:
- `reference/jadx/sources/defpackage/d45.java`
- `bare-implementation/smali/d45.smali`
- `bare-implementation/smali/iq0.smali`

Pada sign-out:
- Firebase Auth sign-out dipanggil.
- `V.setNon(null)` menghapus cached pseudo-account lokal.
- Perilaku pembersihan data aplikasi dibedakan berdasarkan apakah user sebelum sign-out dianggap anonymous atau bukan. Cabang pembersihan data eksplisit terlihat ketika user bukan anonymous.
- Kemudian state dan proses listener diperbarui.

Jangan menyimpulkan bahwa semua data lokal otomatis dihapus saat keluar dari akun pseudo-anonymous. Potongan yang diperiksa justru menunjukkan kondisi pembersihan data khusus bagi user non-anonymous. Perlu audit terpisah untuk kebijakan penghapusan data penuh jika itu menjadi requirement.

## 7. Hal yang terkonfirmasi dan yang belum

| Pernyataan | Status | Dasar |
|---|---|---|
| Pilihan “Signing in Anonymously” membuat akun lokal melalui `b45.a()` | **Terkonfirmasi statis** | Intro flow pada `intro/d` |
| UID pseudo-anonymous bersumber dari signing certificate hash | **Terkonfirmasi statis** | `b45.a()` |
| Pseudo-account disimpan di preferences melalui `V.setNon` | **Terkonfirmasi statis** | `V` dan intro flow |
| Preferences akun menggunakan mekanisme encrypted/secure preferences | **Terkonfirmasi statis** | `V.getZ()` |
| Local folder namespace = 16 karakter pertama MD5 hex dari UID | **Terkonfirmasi statis** | `g67.w`, `qy5.e`, `ry5` |
| Firebase RTDB `users/{uid}` menggunakan UID penuh | **Terkonfirmasi statis** | `re3.j()` dan `re3.k()` |
| Firebase Anonymous Auth dibuat oleh tombol non-Google di jalur ini | **Tidak didukung bukti; jalur yang ditemukan tidak melakukannya** | Intro flow menyimpan hasil `b45.a()` ke `V.setNon()` |
| Identitas pseudo-account tetap sama setelah reinstall atau perubahan signing key | **Belum diverifikasi runtime** | Belum ada uji install/uninstall/upgrade/signing |
| Persistensi pseudo-account bertahan setelah proses mati/reboot | **Belum diverifikasi runtime** | Bukti hanya menunjukkan kode preferences |
| Bentuk panjang/kolisi UID lintas instalasi berbeda | **Belum diuji** | Belum ada pengujian sampel dan analisis distribusi |
| Data backend benar-benar berhasil diakses dengan kredensial produksi | **Belum diverifikasi runtime** | Migrasi menunjukkan kontrak kebijakan, bukan hasil transaksi |

## 8. Catatan risiko teknis

1. **Kontinuitas identitas bergantung pada signing certificate.** Jika sertifikat berubah, pseudo-UID berpotensi berubah dan menghasilkan direktori `accounts/{hash}` baru. Perlu uji jalur upgrade dan aturan signing key yang tetap.
2. **MD5 dipakai sebagai namespace, bukan security primitive.** Pemotongan ke 16 karakter menurunkan ruang key menjadi 64 bit. Ini cukup sebagai temuan mekanisme kode, tetapi tidak boleh dipakai sebagai bukti autentikasi, otorisasi, atau proteksi data.
3. **Namespace lokal bukan backend ownership key.** Jangan menulis nilai `qy5.e()` ke `user_id` atau JWT subject. Backend harus memakai UID/subject yang ditetapkan provider auth.
4. **Istilah anonymous berpotensi membingungkan.** UI menyebut “Signing in Anonymously”, tetapi source yang ditemukan membuat pseudo-account lokal. Dokumentasi dan telemetry sebaiknya membedakan `app_pseudo_anonymous` dengan `firebase_anonymous_auth`.
5. **Hash sertifikat bukan UUID.** Jangan mengasumsikan hasil `Signature.hashCode()` memiliki sifat UUID, acak, atau global-unique.
6. **Penghapusan data belum tuntas dibuktikan.** Sign-out menghapus cache user pseudo-anonymous, tetapi bukti yang ditinjau tidak menunjukkan seluruh folder `accounts/` dihapus.

## 9. Rekomendasi verifikasi lanjutan — tetap dalam scope akun lokal

Lakukan pengujian perangkat/runtime yang terisolasi sebelum mengubah desain:
- Fresh install → pilih Anonymous → catat UID pseudo-anonymous dan path namespace.
- Force-stop/reboot → pastikan objek akun terbaca kembali dari secure preferences.
- Update APK dengan signing certificate sama → pastikan UID/path tetap.
- Uji build yang ditandatangani certificate berbeda di perangkat uji terpisah → catat apakah pseudo-UID/path berubah.
- Sign-out lalu launch ulang → verifikasi apakah cached account dibentuk kembali dan data akun mana yang tetap ada.
- Uji dua instalasi dengan signing certificate sama pada perangkat berbeda untuk memahami apakah pseudo-UID identik; jangan menganggap identitas ini per-device tanpa bukti.
- Konfirmasi semua jalur yang menulis ke backend memakai UID Firebase/JWT `sub` yang valid dan bukan local MD5 short key.

Jangan mengganti algoritme ID atau melakukan migrasi sampai kompatibilitas data lama, signing-key history, dan penggunaan namespace oleh seluruh jalur backup/cache diperiksa.

## 10. Canonical source references

- `bare-implementation/smali_classes2/com/bareapps/barebackup/intro/d.smali` — onboarding non-Google / Anonymous selection.
- `bare-implementation/smali/b45.smali` — pembentukan pseudo-anonymous user.
- `bare-implementation/smali/com/bareapps/barebackup/anonymous/MFirebaseUser.smali` — model user dan metadata anonymous.
- `bare-implementation/smali/com/bareapps/barebackup/common/V.smali` — persistensi cached user.
- `bare-implementation/smali/d45.smali` — resolusi user dan sign-out.
- `bare-implementation/smali/qy5.smali` — MD5 short namespace.
- `bare-implementation/smali/ry5.smali` — pembentukan path storage berdasarkan short namespace.
- `reference/jadx/sources/defpackage/g67.java` — implementasi MD5 hex.
- `reference/jadx/sources/defpackage/re3.java` — path Firebase menggunakan UID penuh.
- `supabase/migrations/20261024020000_firebase_uid_text_and_sub_rls.sql` — Firebase UID sebagai opaque text.
- `supabase/migrations/20261024040000_firebase_standard_token_rls.sql` — validasi issuer, audience, dan subject.

**Batas audit:** seluruh temuan di atas adalah analisis statis atas source/dekompilasi pada commit yang dicatat. Tidak ada klaim bahwa flow telah diuji pada perangkat, session Firebase telah dibuat saat runtime, atau data backend telah berhasil ditulis/dibaca.
