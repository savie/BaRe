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

`TOTAL AUDIT → CATAT REGISTER → KLASIFIKASI → PECAH PEKERJAAN BILA PERLU → IMPLEMENTASI → RE-AUDIT TOTAL → CLOSURE`

Jangan membuat sub-batch hanya untuk membagi pekerjaan secara administratif. Sub-batch dibuat ketika scope, dependency, atau volume pekerjaan memang membuat implementasi total tidak praktis dalam satu batch.
