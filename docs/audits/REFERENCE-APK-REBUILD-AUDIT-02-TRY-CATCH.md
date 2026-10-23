# BΛR☰ / BaRe — Audit 02: Smali try/catch round-trip

- **Tanggal:** 2026-10-23
- **Branch:** `audit/rebuild-reference`
- **Base:** workflow commit `40f1c06d4d675eab5b8d957ea7fc2ae42c8cb135`
- **Audit 01:** [Reference APK Rebuild Audit 01](./REFERENCE-APK-REBUILD-AUDIT-01.md)
- **CI artifact:** [Run #1](https://github.com/savie/BaRe/actions/runs/39932200611)
- **Status:** Review source-level Smali diffs selesai; formal DEX exception-table equivalence belum diverifikasi.

## Ringkasan

Dua file Smali yang ditandai Audit 01 adalah:

1. `smali/com/nimbusds/jose/crypto/ECDSAVerifier.smali`
2. `smali/cy0.smali`

Pada kedua file, Apktool menampilkan dua protected range yang berdekatan dengan tipe dan target handler sama sebagai satu range. Di antara range tersebut tidak ada instruksi executable—hanya directive debug/source line dan label. Dengan demikian, **diff teks yang diperiksa konsisten dengan penggabungan range yang berdampingan**, bukan bukti bahwa instruksi baru ditambahkan ke area yang dilindungi.

Namun, kesimpulan ini berasal dari diff Smali hasil decode. Audit ini belum membandingkan encoded exception table secara langsung dari DEX dan belum menjalankan pengujian runtime. Karena itu statusnya adalah *likely representation normalization; formal equivalence pending*, bukan klaim ekuivalensi bytecode yang sudah terbukti.

## 1. ECDSAVerifier.smali

### Perubahan yang diamati

Pada method verifikasi signature:

- Range pertama melindungi pemanggilan `ECDSA.ensureLegalSignature([B, JWSAlgorithm)` dan menangkap `JOSEException` menuju handler `:catch_2`.
- Range berikutnya melindungi pemanggilan `ECDSA.transcodeSignatureToDER([B)` dan instruksi `move-result-object`, dengan tipe exception dan target handler yang sama.
- Pada hasil decode rebuild, kedua range tersebut ditampilkan sebagai satu range `:try_start_0 .. :try_end_0` yang menangkap `JOSEException` menuju `:catch_2`.
- Range terpisah berikutnya untuk `InvalidKeyException` dan `SignatureException` tetap ada; label lokalnya hanya dinomori ulang dari `try_start_2/try_end_2` menjadi `try_start_1/try_end_1`.

### Interpretasi

Dua protected range awal berurutan. Di antara instruksi yang dilindungi tidak ada instruksi executable yang tidak dilindungi; hanya metadata baris sumber. Karena tipe exception dan target handler juga sama, penggabungan tersebut konsisten dengan representasi Smali yang dinormalisasi.

Perubahan label `:try_start_2` menjadi `:try_start_1` tidak dengan sendirinya mengubah perilaku; label adalah penanda lokal di representasi Smali. Hal yang penting untuk kepastian formal adalah rentang alamat instruksi dan urutan handler dalam DEX hasil build.

### Risiko tersisa

- Belum dibuktikan dengan membaca encoded exception table dari kedua DEX.
- Belum dijalankan test positif/negatif untuk signature ECDSA.
- Tidak ada dasar dari diff ini saja untuk menyatakan ada regresi runtime.

## 2. cy0.smali

### Perubahan yang diamati

Pada method yang mengembalikan byte array:

- Range pertama melindungi pemanggilan yang menghasilkan object, diikuti `move-result-object`; target handler adalah `:catch_0` dengan tipe `java.lang.Exception`.
- Range kedua melindungi pemanggilan `Ly0;->i()[B` dan `move-result-object`, menggunakan tipe exception dan handler yang sama.
- Pada hasil decode rebuild, kedua range ditampilkan sebagai satu range `:try_start_0 .. :try_end_0` dengan handler `:catch_0`.
- Di antara kedua range pada representasi awal tidak ada instruksi executable yang tidak dilindungi; hanya directive line dan label.

### Interpretasi

Perubahan ini juga konsisten dengan penggabungan dua protected range yang berdampingan dengan handler sama. Diff Smali tidak menunjukkan instruksi executable baru yang berpindah dari luar ke dalam protected range.

### Risiko tersisa

- Encoded exception table DEX belum dibandingkan langsung.
- Belum ada test runtime khusus untuk exception yang dilempar oleh kedua pemanggilan.
- Karena method berada dalam kelas obfuscated `cy0`, identitas fungsi bisnisnya tidak disimpulkan hanya dari nama kelas.

## 3. Kesimpulan perbandingan

| Pemeriksaan | Hasil |
|---|---|
| Ada perubahan pada teks Smali | Ya |
| Perubahan berupa penggabungan protected range yang berdekatan | Ya, pada dua file yang diperiksa |
| Ada instruksi executable di celah antara dua range lama | Tidak ditemukan |
| Tipe exception dan target handler tetap sama | Ya, pada kedua kasus |
| Encoded DEX exception table dibandingkan secara langsung | Belum |
| Kesetaraan runtime dibuktikan | Belum |

**Kesimpulan teknis:** tidak ada indikasi dari diff Smali ini bahwa penggabungan range memperluas cakupan melewati instruksi executable yang sebelumnya tidak dilindungi. Hasil ini menurunkan kekhawatiran atas dua diff tersebut, tetapi belum menggantikan pemeriksaan DEX-level.

## 4. Langkah berikutnya

1. Gunakan parser DEX untuk membaca try items, encoded handler lists, alamat awal dan panjang range pada method yang bersangkutan di APK asli dan APK rebuild.
2. Normalisasi instruksi menjadi urutan opcode dan operand agar label serta debug metadata tidak mendominasi diff.
3. Bandingkan urutan catch handler, tipe exception, target handler, dan alamat instruksi yang dilindungi.
4. Jika perbandingan DEX konsisten, catat sebagai *DEX-level exception coverage equivalent* untuk dua method ini.
5. Lanjutkan ke smoke test runtime yang relevan sebelum menyatakan behavioral parity.

## 5. Ruang lingkup dan batasan

Audit ini membahas hanya dua diff Smali terkait try/catch yang ditandai pada Audit 01. Ini bukan audit keamanan terhadap library JOSE, bukan verifikasi keseluruhan APK, dan bukan pengujian semua fitur Swift Backup/BΛR☰.

Branch `reference` tidak diubah. Dokumen ini ditambahkan ke branch audit sebagai catatan lanjutan.
