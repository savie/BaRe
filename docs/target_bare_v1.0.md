# Target BaRe v1.0

## Project Branches

- **Working branch:** `v1.0/rebaseline`
  - Branch aktif untuk implementation BaRe v1.0.
  - Semua perubahan dan pengembangan v1.0 dilakukan dari sini.

- **Reference branch:** `reference`
  - Berisi hasil decompile APK menggunakan apktool + JADX.
  - Digunakan sebagai baseline untuk mempelajari UI, flow, behavior, dan capability.
  - Reference bukan source code yang dicopy ke BaRe.
  - Implementation tetap ditulis ulang di working branch.

## Product Identity

Penulisan nama produk memiliki dua bentuk resmi:

- **`app_name`** → `B Λ R ☰`
- **`app_text`** → `BΛR☰`

Gunakan sesuai konteks resource masing-masing.

```xml
<string name="app_name">B Λ R ☰</string>
<string name="app_text">BΛR☰</string>
```

Jangan menukar kedua bentuk tersebut dan jangan membuat variasi penulisan lain untuk identitas produk.

Nama produk tidak perlu dipaksakan ke dalam kalimat UI jika memang tidak diperlukan.

## Product and Engineering Language

- **Product language:** English.
- **Engineering documentation:** Bahasa Indonesia, mengikuti Governance.
- **Source code:** English untuk class, function, variable, enum, package, resource key, dan technical identifier.
- **User-facing text:** English dan disimpan di `strings.xml`.

## 1. Tujuan

BaRe v1.0 ditargetkan menjadi implementasi ulang dari capability, UI, dan flow yang dapat dipelajari dari Reference APK, dengan implementation code ditulis ulang oleh BaRe sendiri.

Reference menjadi patokan utama untuk parity.

## 2. Reference adalah baseline

Reference bukan hanya bahan referensi.

Yang dapat dibuktikan dari Reference dipakai sebagai baseline untuk:

- UI
- posisi dan susunan komponen
- navigation
- action
- flow
- state
- dialog / popup
- behavior
- error handling
- capability

**Default-nya: sama dengan Reference.**

Kalau ada perbedaan, perbedaan tersebut harus merupakan keputusan yang memang disengaja.

## 3. UI harus identik terlebih dahulu

Prioritas utama adalah UI parity.

Yang perlu mengikuti Reference antara lain:

- posisi tombol
- ukuran komponen
- spacing
- hierarchy
- icon
- label
- menu
- dialog
- popup
- screen layout
- navigation
- state visual
- empty / loading / error state

Jangan melakukan redesign atau improvisasi UI hanya karena menurut kita lebih bagus.

### Exception yang sudah ditentukan

Untuk sementara:

- **4 tabs** adalah exception.
- **Global header + local sub-header** adalah exception/desain BaRe.

Selain exception yang sudah diputuskan, default-nya tetap mengikuti Reference.

## 4. Behavior Reference dipelajari, bukan disalin

Behavior dari Reference boleh dibedah untuk memahami:

```
Action
→ prerequisite
→ process
→ result
→ state
→ error
→ navigation
```

Source code hasil decompile tidak menjadi implementation code BaRe.

BaRe tetap menulis ulang implementation dengan struktur dan boundary milik BaRe.

## 5. BaRe boleh punya capability lebih

Parity dengan Reference tidak berarti BaRe harus dibatasi oleh kemampuan Reference.

Contoh:

- Root
- Non-root
- Local
- Account

Kalau BaRe mampu memberikan capability tambahan, capability tersebut boleh tetap ada.

Yang penting capability tambahan tidak mengubah UI/flow Reference tanpa keputusan yang jelas.

## 6. Root dan non-root

BaRe harus mempertahankan kemampuan untuk membedakan capability berdasarkan environment.

- Root → capability penuh jika tersedia.
- Non-root → capability yang memang tersedia tanpa root.

UI dan behavior harus menjelaskan kondisi capability dengan jelas.

## 7. Local dan Account

Untuk v1.0:

### Local

Data dan identity berada secara lokal.

### Account

Account sudah menjadi konsep/boundary tersendiri, tetapi implementation provider v1.0 masih lokal.

```
Account
└── Local implementation
```

Belum perlu Supabase atau cloud backend.

Nanti provider dapat dikembangkan menjadi:

```
Account
├── Local
└── Cloud
```

Tanpa harus mengubah seluruh flow aplikasi.

Untuk sementara mekanisme recovery Account dapat menggunakan mekanisme recovery lokal yang sama.

Jangan mengklaim Account v1.0 sudah cloud.

## 8. Header

Setiap flow menggunakan struktur:

```
Global Header
        ↓
Local Sub-header
        ↓
Content
```

### Global Header

Konsisten di seluruh aplikasi.

### Local Sub-header

Menunjukkan context flow atau halaman yang sedang dibuka.

Contoh:

```
Apps
└── App Detail

Backup
└── Backup Configuration

Recovery
└── Recovery
```

Screen tidak membuat variasi global header sendiri.

## 9. Struktur source

Source harus disusun berdasarkan **feature / capability / boundary**, bukan sekadar kumpulan file berdasarkan tipe.

Tujuannya:

- mudah dicari
- mudah dipahami
- dependency lebih jelas
- behavior tidak tersebar
- shared code benar-benar shared
- mengurangi file/helper yang tidak jelas pemiliknya

Jangan melakukan pemindahan folder hanya demi terlihat rapi jika belum ada manfaat boundary yang jelas.

## 10. Semua text ke resources

Semua user-facing text harus berada di `strings.xml`.

Termasuk:

- title
- subtitle
- button
- menu
- dialog
- error
- empty state
- status
- snackbar
- accessibility text

Contoh identitas produk:

```xml
<string name="app_name">B Λ R ☰</string>
<string name="app_text">BΛR☰</string>
```

## 11. Reference → BaRe

Untuk setiap capability yang ditemukan:

```
Reference
   ↓
Understand
   ↓
BaRe design
   ↓
BaRe implementation
   ↓
Test
   ↓
Verify
```

Bukan:

```
Reference
   ↓
copy code
```

## 12. Perbedaan harus jelas

Jika BaRe berbeda dari Reference, statusnya harus bisa dijelaskan sebagai salah satu dari:

- **Intentional** — memang diputuskan berbeda.
- **Not implemented** — belum selesai.
- **Unknown** — behavior Reference belum cukup dipahami.
- **Blocked** — belum bisa diverifikasi.
- **Capability extension** — BaRe memang memiliki kemampuan tambahan.

Jangan sampai perbedaan UI dianggap normal padahal sebenarnya implementation belum selesai.

## 13. Prinsip utama v1.0

> **Sama dulu. Bedakan hanya kalau memang diputuskan berbeda.**

Prioritasnya:

**Reference parity → implementation BaRe → capability extension → architecture cleanup.**

Jangan mendahulukan improvisasi atau refactor yang membuat hasil makin jauh dari Reference.
