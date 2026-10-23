# BaRe — Reference APK Rebuild Audit 01

- **Tanggal:** 2026-10-23
- **Repository:** [savie/BaRe](https://github.com/savie/BaRe)
- **Branch audit:** `audit/rebuild-reference`
- **Workflow commit:** `40f1c06d4d675eab5b8d957ea7fc2ae42c8cb135`
- **GitHub Actions run:** [Reference APK Rebuild Audit #1](https://github.com/savie/BaRe/actions/runs/39932200611)
- **Artifact:** `reference-rebuild-audit`
- **Status:** Build round-trip passed; runtime parity remains unverified.

## Ringkasan eksekutif

GitHub Actions berhasil membangun APK unsigned dari snapshot hasil decompile menggunakan Apktool 2.11.1. APK asli dan APK hasil rebuild kemudian didekode ulang menggunakan versi Apktool yang sama dan dibandingkan berdasarkan path relatif serta SHA-256 per file.

Hasil perbandingan yang tercatat pada audit ini:

- 16.011 file hasil decode pada masing-masing sisi.
- Seluruh path hasil decode cocok.
- 15.988 file identik byte-for-byte.
- 23 file berbeda byte-for-byte.
- 20 file Smali berbeda.
- 32/32 native libraries identik byte-for-byte.
- 5/5 assets identik byte-for-byte.
- Manifest XML hasil decode identik.

**Batas klaim:** ini mendukung structural round-trip, bukan bukti formal kesetaraan seluruh bytecode atau perilaku aplikasi. Instalasi dan pengujian runtime belum dilakukan.

## 1. Sumber dan metode

1. APK asli: `5.1.0 (620).apk`.
2. APK rebuild: `build/reference-rebuilt-unsigned.apk` dari artifact CI.
3. Tool build/decode: Apktool 2.11.1.
4. Metode: hitung file, bandingkan path relatif hasil decode, lalu bandingkan SHA-256 masing-masing file.
5. Branch `reference` dipertahankan tanpa perubahan; eksperimen dilakukan di branch audit.

## 2. Perbandingan APK mentah

| Metrik | APK asli | APK rebuild unsigned |
|---|---:|---:|
| Ukuran file | 14.878.797 byte | 15.549.971 byte |
| Entri ZIP | 1.708 | 1.708 |
| File DEX | 2 | 2 |
| Native libraries | 32 | 32 |
| Assets | 5 | 5 |
| SHA-256 | `d04267dd0431c0b58d5ff04766696affd5c9ebd59c8b428c54f6ee6f1928621d` | `81f02d1f942f00023f62eb7273574d81a40f0391b451be4b0e2618f0c6770aae` |

Hash APK berbeda tidak dengan sendirinya menunjukkan perbedaan fungsional. Proses pengemasan ulang dapat mengubah kompresi/order ZIP, resource table, hasil assembly DEX, metadata, dan signature. APK rebuild sengaja unsigned; jangan perlakukan sebagai APK yang ditandatangani penerbit asli.

## 3. Klasifikasi 23 file berbeda

| Kategori | Jumlah | Catatan |
|---|---:|---|
| Smali | 20 | Perbedaan representasi field default dan dua file dengan perubahan cakupan try/catch |
| `res/values/attrs.xml` | 1 | Urutan deklarasi enum/flag berbeda |
| `apktool.yml` | 1 | Nama file APK berbeda |
| `original/AndroidManifest.xml` | 1 | Salinan biner manifest berbeda; XML manifest hasil decode identik |
| **Total** | **23** | |

Kebanyakan perbedaan Smali berupa deklarasi nilai default yang eksplisit dihilangkan saat decode ulang, misalnya `= false`, `= null`, atau `= 0x0`. Ini dapat menjadi normalisasi representasi; tetap jangan menyimpulkan ekuivalensi formal tanpa pemeriksaan DEX.

### File Smali yang berbeda

Daftar path berikut diambil dari hasil perbandingan lokal:

- `smali/com/nimbusds/jose/crypto/ECDSAVerifier.smali`
- `smali_classes2/defpackage/cy0.smali`

Catatan: daftar di atas menandai dua file yang perlu pemeriksaan khusus terhadap rentang try/catch. Daftar lengkap 20 path Smali perlu diperiksa dari hasil diff lokal bila laporan ini digunakan sebagai bukti audit formal.

### Pemeriksaan khusus: ECDSAVerifier.smali

Diff teks menunjukkan rentang try yang berdekatan pada hasil decode asli menjadi satu rentang di hasil decode rebuild, dengan target catch JOSEException yang sama. Label pada blok InvalidKeyException dan SignatureException juga berubah. Ini mungkin normalisasi hasil DEX assembly/decode, tetapi kesetaraan cakupan exception handler belum dibuktikan secara formal.

### Pemeriksaan khusus: cy0.smali

Diff teks menunjukkan rentang try/catch Exception yang terpisah pada hasil decode asli menjadi satu rentang yang mencakup pemanggilan berurutan pada hasil decode rebuild. Target handler sama. Perlakukan ini sebagai item verifikasi, bukan otomatis sebagai bug atau aman.

## 4. Interpretasi

### Terverifikasi

- Workflow rebuild unsigned selesai sukses.
- APK asli dan APK rebuild dapat didekode ulang.
- Seluruh path hasil decode cocok.
- 15.988 file hasil decode identik byte-for-byte; 23 berbeda.
- 32 native libraries dan 5 assets identik byte-for-byte.
- XML manifest hasil decode identik.

### Belum terverifikasi

- Ekuivalensi instruksi DEX dan exception table secara formal.
- Kesetaraan semua resource ID/resource table.
- Instalasi dan peluncuran pada perangkat/emulator.
- Alur login, backup/restore, izin, akses root, dan perilaku pada berbagai versi Android.
- Feature parity menyeluruh.

## 5. Langkah audit berikutnya

1. Disassemble DEX dari kedua APK ke representasi instruksi yang konsisten.
2. Bandingkan metode dan encoded exception tables pada `ECDSAVerifier` dan `cy0`.
3. Bandingkan resource ID serta `resources.arsc` dan referensi resource.
4. Buat APK test yang ditandatangani dengan kunci uji khusus; jangan menimpa atau menyamar sebagai APK asli.
5. Jalankan smoke test di emulator/perangkat: install, launch, navigasi awal, izin, dan alur backup/restore menggunakan data uji.
6. Simpan log, versi Android, ABI, dan hash artifact dalam laporan berikutnya.

## 6. Referensi

- [Branch audit/rebuild-reference](https://github.com/savie/BaRe/tree/audit/rebuild-reference)
- [Workflow YAML](https://github.com/savie/BaRe/blob/audit/rebuild-reference/.github/workflows/reference-rebuild-test.yml)
- [GitHub Actions run #1](https://github.com/savie/BaRe/actions/runs/39932200611)

---
Dokumen ini mencatat hasil structural audit. Tidak ada klaim bahwa APK hasil rebuild sudah lolos pengujian runtime atau setara fungsional sepenuhnya.
