# Audit Repository

Folder ini adalah tempat penyimpanan seluruh artefak audit reconstruction yang bersifat evidence, register, hasil re-audit, dan pembagian pekerjaan berdasarkan hasil audit.

## Aturan

- Audit Reference, audit phase, audit domain, dan audit parity yang bukan dokumen gate aktif disimpan di sini.
- Dokumen gate yang memiliki status/otoritas aktif tetap berada di `docs/`.
- Audit tidak menjadi source implementation. Hasil audit menghasilkan contract, finding, classification, dan pekerjaan implementasi.
- Reference tetap read-only.
- Audit terhadap Reference menggunakan Reference canonical atau mirror lokal yang sudah diverifikasi identik.
- Untuk audit N-01 terbaru, canonical Reference digunakan langsung dari ZIP lokal:
  `/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`

## Urutan audit lintas-domain

**N-01 adalah master resource/dependency audit.**

Sebelum melakukan audit N-domain lain:

1. Baca hasil **N-01 TOTAL AUDIT** terlebih dahulu.
2. Ambil resource, dependency, qualifier, ownership, dan cross-domain findings yang menjadi scope N tersebut.
3. Baru bongkar/inspeksi ZIP canonical secara spesifik untuk memvalidasi domain tersebut.
4. Catat hasil menjadi TOTAL AUDIT N-domain.
5. Jangan mengulang inventory N-01 dari nol kecuali fingerprint Reference berubah atau ada evidence yang membatalkan audit sebelumnya.

Formula:

`N-01 TOTAL AUDIT → baca dependency map → bongkar ZIP secara spesifik → TOTAL AUDIT N → register`

N-01 adalah **master evidence/dependency map**, bukan kewajiban untuk mengimplementasikan seluruh resource di bawah N-01.

Temuan N-01 dapat menjadi pekerjaan N-02 sampai N-15. Setelah N-domain selesai, N-01 cukup menjalani closure verification terhadap finding yang ditransfer kepadanya.

## Pola kerja wajib

Setiap domain mengikuti:

`AUDIT → CATAT → CEK → IMPLEMENTASI → RE-AUDIT → CLOSURE`

Lebih rinci:

1. **AUDIT** — bongkar evidence sesuai scope dan dependency.
2. **CATAT** — tulis seluruh finding/register sebelum mutation.
3. **CEK** — tentukan apakah pekerjaan bisa dikerjakan sekali jalan atau perlu dipecah menjadi sub-batch.
4. **IMPLEMENTASI** — baru lakukan perubahan pada `app/` setelah scope, dependency, ownership, dan pembagian pekerjaan jelas.
5. **RE-AUDIT** — verifikasi kembali hasil terhadap Reference.
6. **CLOSURE** — hanya tandai 🟢 jika exit criterion benar-benar terpenuhi.

Jika audit besar tetapi masih praktis dikerjakan sekali jalan:

`AUDIT → CATAT → CEK: SEKALI JALAN → IMPLEMENTASI → RE-AUDIT → 🟢`

Jika terlalu besar/berisiko:

`AUDIT → CATAT → CEK: PECAH → N-X-1 → RE-AUDIT → N-X-2 → RE-AUDIT → ... → TOTAL RE-AUDIT → 🟢`

**Jangan implementasi sebelum tahap CEK selesai.**

## Audit domain aktif

- `N01_RESOURCE_TOTAL_AUDIT.md` — total audit Resource N-01; inventory, resource graph, qualifier/variant, ownership, orphan register, dan implementation contract.
- `N02_STRINGS_TOTAL_AUDIT.md` — total audit Strings N-02.
- `REFERENCE_AUDIT.md` — baseline audit artefak Reference.

## Pola N-Level

Untuk audit domain:

`N-X`

adalah total audit domain.

Jika hasil total audit terlalu besar untuk dikerjakan dalam satu batch, pekerjaan dipecah menjadi:

`N-X-1`
`N-X-2`
`N-X-3`
dan seterusnya.

Setiap sub-batch tetap memiliki scope, finding, dependency, implementasi, dan re-audit yang jelas.

Contoh:

`N-02` — total audit Strings  
`N-02-1` — implementasi kelompok strings pertama  
`N-02-2` — implementasi kelompok strings berikutnya  
`N-02-3` — cleanup/edge cases  
`N-02` — final re-audit dan closure

## Prinsip kerja

`TOTAL AUDIT → CATAT REGISTER → KLASIFIKASI → CEK SEKALI JALAN / PECAH PEKERJAAN → IMPLEMENTASI → RE-AUDIT TOTAL → CLOSURE`

Jangan membuat sub-batch hanya untuk membagi pekerjaan secara administratif. Sub-batch dibuat ketika scope, dependency, atau volume pekerjaan memang membuat implementasi total tidak praktis dalam satu batch.
