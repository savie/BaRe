# Struktur-First Migration (BΛR☰ ↔ SwiftBackup 5.1.0)

Tujuan: **samakan peta file/package dulu; putuskan file mana dipakai setelah struktur dan referensinya jelas.**

Jangan mulai dengan refactor arsitektur besar. Jangan menghapus file hanya karena belum dipahami.

## Aturan sederhana

1. Referensi utama adalah source dekompilasi SwiftBackup 5.1.0 (620) dan spesifikasi parity yang disediakan.
2. Cocokkan package, folder, class/interface, model, resource, manifest component, dan dependency.
3. Untuk file yang sudah dipahami, port atau sesuaikan implementasinya dengan aturan proyek BΛR☰.
4. Untuk file yang belum dipahami, buat tempat/entri mapping yang tepat dan beri komentar:
   `// TODO: VERIFY WITH SWIFTBACKUP REFERENCE — do not implement guessed behavior`
5. Jangan menyalin nama class obfuscated `defpackage/*` sebagai desain permanen. Telusuri caller/callee lalu catat nama semantik dan hubungan file-nya.
6. Jangan menyatakan fitur selesai hanya karena file, resource, manifest entry, atau dependency sudah ada.
7. Jangan hapus/menyatakan tidak terpakai sampai ada bukti call site, manifest/DI registration, reflection/JNI use, resource lookup, atau lifecycle use.
8. Jangan menjalankan build, test, atau CI sebagai bagian dari pekerjaan dokumentasi/inventory kecuali diminta pengguna.

## Tahapan

### Tahap A — Inventaris referensi dan target

Untuk setiap item, catat:
- path/package referensi;
- nama class/interface dan tanggung jawab yang terbukti;
- path target yang cocok atau status `MISSING`;
- relasi penting: caller/callee, manifest, DI, resource, JNI/native, Binder/Parcelable;
- status: `MATCHED`, `PORT NEEDED`, `UNKNOWN`, atau `NOT NEEDED (evidence required)`.

Hasil tahap ini adalah daftar perbedaan struktur, bukan klaim fitur.

### Tahap B — Samakan struktur

- Pertahankan struktur package dan relasi semantik sedekat mungkin dengan referensi.
- Gunakan Kotlin untuk implementasi di `com/bareapps/*`; Java hanya di luar package tersebut.
- Untuk class yang belum dipahami, tandai `TODO` dan catat bukti yang masih perlu dicari. Jangan membuat implementasi placeholder yang mengaku sukses.
- Resource dan manifest dipetakan terpisah dari source class.
- Native/JNI dan Binder/AIDL diperlakukan sebagai kontrak khusus; package atau urutan parcel tidak boleh diubah sembarangan.

### Tahap C — Klasifikasi pemakaian (setelah struktur dipetakan)

Baru setelah tahap B, klasifikasikan:
- **USED** — ada bukti jalur pemanggilan/lifecycle nyata;
- **SUPPORT** — digunakan secara tidak langsung, misalnya reflection, JNI, manifest, resource, atau callback;
- **UNKNOWN** — bukti belum cukup, pertahankan;
- **UNUSED CANDIDATE** — belum ditemukan penggunaan; perlu pemeriksaan tambahan;
- **NOT NEEDED** — alasan dan bukti dicatat sebelum penghapusan.

Tidak ditemukannya referensi lewat pencarian teks saja bukan bukti final bahwa file tidak dipakai.

### Tahap D — Implementasi per alur

Implementasikan satu alur penuh pada satu waktu: input → validasi → operasi → progress/cancel → result/error → recovery. Sesuaikan dengan kontrak referensi; catat perbedaan yang belum selesai.

## Output yang diharapkan

- Peta struktur referensi vs target.
- Daftar file yang sudah cocok, perlu dipindahkan/ditambahkan, atau belum dipahami.
- Daftar penggunaan dengan bukti.
- Daftar keputusan dan alasan untuk item yang dinyatakan tidak diperlukan.

## Kondisi saat ini

- Ini adalah aturan kerja migrasi, bukan hasil inventaris lengkap.
- `docs/reference-mapping/sba-rootservice-contract.md` sudah memuat kontrak root service/SBA yang ditelusuri.
- `docs/architecture/foundation-current-state-and-reference-map.md` berisi audit awal pondasi aplikasi.
- File, class, atau feature yang belum terverifikasi tetap berstatus `UNKNOWN`; jangan mengubah status menjadi selesai hanya berdasarkan komentar atau deklarasi.
