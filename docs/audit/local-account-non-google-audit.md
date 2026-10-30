# Audit Akun Lokal / Non-Google — BΛR☰

**Tanggal audit:** 2026-10-30  
**Repository:** `savie/BaRe`  
**Branch:** `Working`  
**Commit yang diperiksa:** `f96b5ff72e702ad4e08014f5d0059a78c257fe83`  
**Cakupan:** hanya alur akun lokal/pseudo-anonymous non-Google di `bare-implementation/`.  
**Jenis audit:** analisis statis terhadap hasil decompile Smali; belum merupakan pengujian runtime.

## 1. Ringkasan hasil

Asumsi “tidak login Google berarti aplikasi membuat Firebase Anonymous User” **tidak cocok dengan jalur onboarding non-Google yang ditemukan**.

Pada jalur onboarding yang bertuliskan **“Signing in Anonymously”**, aplikasi:

1. Membuat objek `MFirebaseUser` sendiri melalui `b45.a()`.
2. Menandai objek tersebut `isAnonymous = true`, dengan `providerId = "anonymous"`.
3. Menyimpannya melalui `V.setNon(...)` ke SharedPreferences aplikasi.

Tidak ditemukan pemanggilan `FirebaseAuth.signInAnonymously()` pada jalur ini maupun pemanggilan tersebut di source aplikasi yang dicari. Jadi istilah *anonymous* di sini merujuk pada **pseudo-account yang dibuat dan dikelola oleh aplikasi**, bukan bukti bahwa Firebase Authentication membuat user anonymous.

Temuan paling penting tentang ID:

- **Canonical UID:** 32 karakter heksadesimal, dibuat deterministik dari signing certificate APK. Bukan UUID dan bukan Firebase Auth UID yang dibuat oleh proses sign-in.
- **Account storage key:** 16 karakter heksadesimal pertama dari hasil MD5 atas Canonical UID. Nilai inilah yang dipakai pada segmen path `accounts/{key}/`.
- Angka “setengah dari 32 menjadi 16” yang diingat kemungkinan besar adalah **account storage key**, bukan Canonical UID.

## 2. Alur pembuatan dan penyimpanan akun

### 2.1 Onboarding non-Google

Di [intro/d.smali](../../bare-implementation/smali_classes2/com/bareapps/barebackup/intro/d.smali), handler onboarding memanggil:

```text
b45.a()
  -> menghasilkan MFirebaseUser
V.setNon(MFirebaseUser)
  -> menyimpan objek akun lokal
```

Jika proses tersebut melempar exception, handler mengosongkan nilai dengan `V.setNon(null)`. Pemanggilan ini adalah bukti langsung bahwa objek hasil builder lokal disimpan oleh aplikasi.

### 2.2 Algoritme Canonical UID

Di [b45.smali](../../bare-implementation/smali/b45.smali), method `a()` menyusun UID dengan urutan berikut:

1. Mengambil signing certificate aplikasi melalui `BareApp.Companion.e()`. Implementasi pengambilan signature ada di [BareApp$Companion.smali](../../bare-implementation/smali/com/bareapps/barebackup/BareApp$Companion.smali); kode memilih signature pertama yang tersedia.
2. Memanggil `Signature.hashCode()`, yang menghasilkan nilai bertipe integer.
3. Mengubah integer itu ke string desimal melalui `String.valueOf(...)`.
4. Memproses string tersebut dengan `sz8.E(...)`. Implementasi [sz8.smali](../../bare-implementation/smali/sz8.smali) menggunakan pola mixing MurmurHash3 x64 128-bit dan membentuk representasi heksadesimal 128-bit.
5. Membalik urutan karakter hasil hash, kemudian menyatukannya kembali.
6. Menggunakan string tersebut sebagai argumen `uid` pada constructor `MFirebaseUser`.

Output hash disusun dari dua bagian 64-bit yang masing-masing dipad menjadi 16 karakter hex; hasilnya 32 karakter hex sebelum pembalikan. Jadi format UID tampak seperti 32 digit hex, tetapi **bukan UUID**.

Objek yang dibuat juga diisi metadata berikut:

| Field | Nilai |
|---|---|
| `isAnonymous` | `true` |
| `providerId` | `anonymous` |
| `email` | `anonymous@barebackup.app` |
| `displayName` | `Anonymous user` |
| `photoUrl` | `null` |
| `providerData` | kosong |

Field tersebut adalah isi objek model aplikasi. Email `anonymous@barebackup.app` bukan bukti adanya mailbox atau akun Firebase Auth dengan alamat tersebut.

### 2.3 Persistensi lokal

Di [common/V.smali](../../bare-implementation/smali/com/bareapps/barebackup/common/V.smali):

- `getNon()` membaca preference key `456987168448`.
- Nilai yang ditemukan di-deserialize menjadi objek `MFirebaseUser`.
- `setNon(user)` men-serialize objek menjadi JSON dan menyimpannya ke key yang sama.
- Jika diberikan `null`, nilai cache akun tersebut dikosongkan.

Nama SharedPreferences yang diinisialisasi aplikasi adalah `<packageName>_preferences`. Dengan demikian, yang dipersistenkan oleh jalur ini adalah **objek akun pseudo-anonymous dalam preferences aplikasi**, bukan Firebase Auth session yang dibuat oleh `signInAnonymously()`.

### 2.4 Resolver akun saat aplikasi membutuhkan user

Di [d45.smali](../../bare-implementation/smali/d45.smali), `d45.a()` memprioritaskan sumber berikut:

1. Memanggil `V.getNon()`. Jika cache berisi objek, objek lokal itu langsung dikembalikan.
2. Jika cache kosong, membaca `FirebaseAuth.getInstance().currentUser` dan memetakan user Firebase yang sudah aktif ke `MFirebaseUser`.
3. Jika kedua sumber tidak menghasilkan user, mengembalikan `null`.

Artinya, Firebase Auth current user adalah **fallback resolver** saat cache lokal tidak ada. Ini tidak mengubah fakta bahwa onboarding anonymous yang ditelusuri membuat objek sendiri melalui `b45.a()`.

## 3. Arti ID 32 karakter dan 16 karakter

Dua nilai ini punya peran berbeda dan tidak boleh dipertukarkan.

| Nilai | Cara pembentukan | Fungsi |
|---|---|---|
| **Canonical UID (32 hex)** | `reverse(MurmurHash3_x64_128(String.valueOf(Signature.hashCode())))` | UID pada objek `MFirebaseUser` pseudo-anonymous |
| **Account storage key (16 hex)** | `substring(0, 16, MD5(UTF-8(Canonical UID)))` | Komponen path `accounts/{key}/` |

Bukti pembentukan account storage key:

- [g67.smali](../../bare-implementation/smali/g67.smali), method `w(String)`, menghitung MD5 atas input UTF-8 dan mengubah digest 16-byte menjadi 32 karakter hex lowercase.
- [qy5.smali](../../bare-implementation/smali/qy5.smali), method `e(MFirebaseUser)`, mengambil UID, memanggil `g67.w(uid)`, lalu mengambil `substring(0, length / 2)`.
- [ry5.smali](../../bare-implementation/smali/ry5.smali) memakai hasil tersebut untuk membentuk segmen `accounts/{key}/`.

Karena output MD5 direpresentasikan sebagai 32 karakter hex, pemotongan setengah menghasilkan **16 karakter hex** (`0–9` dan `a–f`), bukan selalu 16 angka desimal. Path `accounts/{key}/` dibangun di bawah root storage BΛR☰ yang dipilih; karena itu jangan menyebutnya sebagai Firebase UID atau selalu menganggapnya sebagai folder internal aplikasi.

## 4. Apakah objek ini benar-benar Firebase Anonymous User?

Dari jalur yang diperiksa, **tidak ada bukti bahwa onboarding lokal membuat Firebase Authentication anonymous user**:

- Builder `b45.a()` hanya mengambil signing certificate, menghitung UID, dan membuat objek `MFirebaseUser`. Method tersebut tidak memanggil FirebaseAuth.
- Handler onboarding menyimpan hasil builder ke `V.setNon(...)`.
- Pencarian source aplikasi untuk `signInAnonymously` tidak menemukan pemanggilan aplikasi.
- Pada [ah8$a.smali](../../bare-implementation/smali_classes2/ah8$a.smali), `fromDatabase(...)` mendeteksi `isAnonymous == true` dan langsung membuat model lokal. `updateInDatabase(...)` juga keluar lebih awal untuk model anonymous, tanpa menjalankan jalur tulis `userInfo` yang dipakai model non-anonymous.

Firebase SDK dan inisialisasi Firebase pada aplikasi tidak dengan sendirinya berarti Firebase Anonymous Authentication sedang dilakukan. Kesimpulan yang didukung source adalah: **jalur lokal membuat pseudo-account pada sisi aplikasi**.

## 5. Temuan risiko yang langsung terkait dengan desain ID

### 5.1 UID bukan identitas unik per perangkat atau per pemasangan

Input utama UID adalah `Signature.hashCode()` dari signing certificate aplikasi, bukan Android ID, installation ID, UUID acak, atau nilai acak per user.

Konsekuensinya, instalasi yang memakai signing certificate pertama yang sama akan menghasilkan input yang sama dan, secara deterministik, Canonical UID serta account storage key yang sama. Jika identitas ini dimaksudkan sebagai identitas pengguna/perangkat yang terisolasi, ini merupakan risiko collision lintas pengguna/perangkat dan dapat membuat namespace account bertabrakan.

### 5.2 Hash 128-bit tidak menambah entropy input

Walaupun helper menghasilkan string hash 128-bit, input sebelum hashing adalah nilai integer dari `Signature.hashCode()`. Hashing dan pembalikan karakter tidak mengubah sumber awal itu menjadi UUID acak atau identitas dengan entropy 128-bit. Nilai hash 32-bit yang sama akan menghasilkan UID sama.

### 5.3 Signing certificate menjadi bagian dari kontinuitas identitas

Perubahan signing certificate dapat mengubah `Signature.hashCode()`, sehingga Canonical UID dan account storage key berpotensi berubah. Karena itu, jangan mengganti signing key atau algoritme pembentukan UID sebelum dampaknya terhadap data lama diperiksa.

### 5.4 Account storage key bukan kredensial keamanan

MD5 dan pemotongan menjadi 16 karakter dipakai untuk membentuk namespace path. Source yang diperiksa tidak menjadikannya bukti autentikasi atau otorisasi. Nilai ini tidak boleh diperlakukan sebagai token login maupun rahasia.

## 6. Siklus hidup yang terkonfirmasi

- **Pembuatan:** onboarding memanggil `b45.a()`.
- **Penyimpanan:** hasilnya ditulis ke preference melalui `V.setNon()`.
- **Pemulihan state:** resolver `d45.a()` mencoba cache lokal lebih dulu.
- **Sign-out/clear:** jalur sign-out di `d45.smali` memanggil `V.setNon(null)`, sehingga cache pseudo-account dikosongkan.
- **Profil user anonymous:** model dibuat lokal oleh `ah8$a.fromDatabase(...)`; jalur `updateInDatabase(...)` melewati write `userInfo` untuk model dengan `isAnonymous == true`.

Perilaku persis setelah reinstall, perubahan signing key, atau dua instalasi aktif belum diuji pada perangkat; pernyataan tentang hasil lintas instalasi di atas merupakan konsekuensi deterministik dari algoritme statis.

## 7. Hal yang belum diverifikasi

Audit ini belum menjalankan APK pada perangkat. Karena itu, hal berikut masih memerlukan uji runtime:

1. Mengonfirmasi UID aktual yang dihasilkan pada build rilis dan build pengembangan.
2. Memastikan dua perangkat dengan APK dan signing certificate yang sama benar-benar memperoleh Canonical UID yang sama.
3. Memastikan perilaku cache setelah force-stop, reboot, clear app data, dan reinstall.
4. Mengonfirmasi bahwa perubahan signing certificate menghasilkan identitas baru dan mengetahui dampaknya terhadap data yang sudah ada.

## 8. Canonical source references

- [intro/d.smali](../../bare-implementation/smali_classes2/com/bareapps/barebackup/intro/d.smali) — onboarding non-Google yang menyimpan hasil builder.
- [b45.smali](../../bare-implementation/smali/b45.smali) — pembuatan pseudo-anonymous `MFirebaseUser` dan Canonical UID.
- [sz8.smali](../../bare-implementation/smali/sz8.smali) — helper hash 128-bit yang dipakai pembentuk UID.
- [BareApp$Companion.smali](../../bare-implementation/smali/com/bareapps/barebackup/BareApp$Companion.smali) — pengambilan signing certificate aplikasi.
- [MFirebaseUser.smali](../../bare-implementation/smali/com/bareapps/barebackup/anonymous/MFirebaseUser.smali) — model dan metadata user anonymous.
- [common/V.smali](../../bare-implementation/smali/com/bareapps/barebackup/common/V.smali) — persistensi objek akun pada preferences.
- [d45.smali](../../bare-implementation/smali/d45.smali) — resolver user dan pengosongan cache saat sign-out.
- [g67.smali](../../bare-implementation/smali/g67.smali) — fungsi MD5 hex.
- [qy5.smali](../../bare-implementation/smali/qy5.smali) — pemotongan MD5 menjadi account storage key.
- [ry5.smali](../../bare-implementation/smali/ry5.smali) — pembentukan path `accounts/{key}/`.
- [ah8$a.smali](../../bare-implementation/smali_classes2/ah8$a.smali) — perlakuan model anonymous pada alur profil user.

**Batas audit:** hasil di atas adalah pembacaan statis file `bare-implementation` pada commit yang dicatat. Audit tidak mengubah source aplikasi dan tidak mengklaim telah menguji session atau perilaku Firebase pada runtime.
