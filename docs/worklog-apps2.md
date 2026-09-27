# Worklog Apps2

## Current State

Status: PLANNED

Apps2 belum diimplementasikan.

Legacy Apps tetap tidak diubah dan tetap berada di luar scope implementation Apps2.

Branch kerja: `v1.0/rebaseline`

Baseline repository saat inisiatif ini dimulai:
`4bc7387c04ddd9aec88603e311d6923eb7385f0e`

## Current Task

Menyiapkan dan membangun subsystem Apps2 di BaRe sebagai port/rewrite bagian Apps dari Swift Reference, dengan seluruh jalur Apps baru diarahkan melalui Apps2 tanpa menjadikan implementation Apps lama sebagai dependency.

## Task Scope

Apps2 mencakup seluruh jalur Apps yang terbukti ada pada Reference, termasuk sesuai hasil discovery:

- daftar aplikasi
- tab/section Apps
- pencarian
- filter
- sort
- selection
- detail aplikasi
- backup
- restore
- backup history/version/parts
- inventory
- refresh/invalidation
- navigation
- state dan flow terkait Apps

Scope final mengikuti hasil discovery terhadap Reference. Hal yang belum terbukti dari source Reference tidak boleh ditulis sebagai fact.

## Dependencies

### Reference

Swift Reference/decompiled source menjadi sumber utama untuk merekonstruksi bagian Apps, termasuk:

- class
- package/struktur
- repository
- model
- state
- UI
- navigation
- flow
- behavior

Apps2 akan menulis ulang struktur dan jalur tersebut ke BaRe, bukan menjadikan source Reference sebagai runtime dependency.

### BaRe

BaRe menjadi environment implementation dan sumber untuk capability yang memang berbeda atau tidak tersedia identik pada Reference, termasuk bila relevan:

- root
- encryption
- storage
- backup/restore capability
- platform integration
- project-wide foundation

Setiap dependency akan diverifikasi sebelum digunakan.

### Shared

Default Apps2 adalah isolated.

Yang dapat shared tanpa membuat coupling Apps lama adalah resource/foundation yang benar-benar global, seperti strings, theme, dan foundation UI/global resource yang memang tidak membawa Apps-specific behavior.

Implementation Apps-specific dari legacy Apps tidak otomatis shared.

## Latest Checkpoint

Inisiatif Apps2 disepakati sebagai subsystem baru yang terisolasi dari legacy Apps.

Home → Apps akan menjadi entry point menuju Apps2 setelah implementation dan verification memenuhi acceptance criteria.

Legacy Apps tidak menjadi jalur implementation Apps2.

## Completed

- Menetapkan kebutuhan subsystem Apps2 terpisah dari legacy Apps.
- Menetapkan bahwa bagian Apps dari Swift Reference akan menjadi basis rewrite/port Apps2.
- Menetapkan bahwa struktur/class Apps Reference dipertahankan sedekat mungkin; jika terjadi collision dengan implementation BaRe yang existing, Apps2 menggunakan class/namespace baru seperti suffix `2` sesuai kebutuhan.
- Menetapkan bahwa shared dependency harus sangat terbatas dan tidak semua Common otomatis boleh masuk Apps2.
- Menetapkan bahwa strings dan resource/foundation yang benar-benar global dapat tetap shared.
- Menetapkan bahwa legacy Apps tidak boleh menjadi dependency Apps2 secara default.
- Membuat worklog khusus Apps2 agar lifecycle ini tidak bercampur dengan `docs/worklog.md`.

## In Progress

Belum ada implementation.

Tahap berikutnya adalah discovery dan rekonstruksi bagian Apps pada Swift Reference secara class-per-class sebelum implementation Apps2 dimulai.

## Verification

Status: PENDING

Belum ada implementation atau runtime verification Apps2.

Acceptance dan verification matrix akan ditetapkan setelah discovery Reference menghasilkan scope dan flow yang terverifikasi.

## Blocked

Tidak ada blocker teknis yang terverifikasi pada tahap planning.

## Deferred

- Perubahan Home → Apps ke Apps2.
- Implementation Apps2.
- Evaluasi final dependency backup/restore engine.
- Cutover dari legacy Apps ke Apps2.
- Penghapusan atau perubahan legacy Apps.

Semua item tersebut menunggu discovery, design/port, implementation, testing, dan verification yang sesuai.

## Known Limitations

- Struktur final Apps2 belum ditentukan seluruhnya karena discovery Reference belum dilakukan secara lengkap pada initiative ini.
- Belum ada claim parity, implementation, build, runtime, atau verification.
- Reference behavior yang belum terobservasi tetap UNKNOWN.

## Decisions

### Apps2 sebagai rewrite/port Apps Reference

Apps2 bukan patch atau refactor lanjutan dari legacy Apps.

Apps2 akan menjadi subsystem baru yang mengambil bagian Apps dari Swift Reference sebagai basis struktur, class, responsibility, flow, dan behavior, lalu menuliskannya ulang agar berjalan pada BaRe.

### Class dan struktur Reference dipertahankan

Jika Reference memiliki class yang relevan untuk Apps, class tersebut menjadi blueprint langsung untuk Apps2.

Jangan mengganti decomposition Reference dengan architecture baru hanya karena ingin membuat struktur sendiri.

Jika nama/class collision terjadi dengan BaRe atau legacy implementation, gunakan namespace/class baru seperti `*2` sesuai kebutuhan agar Apps2 tetap terisolasi.

### Shared dependency dibatasi

Jangan menggunakan legacy Apps-specific implementation hanya karena sudah tersedia.

Dependency hanya boleh masuk Apps2 setelah terbukti sesuai boundary dan tidak membawa coupling/behavior yang tidak diinginkan.

### Entry point

Target product flow:

`Home → Apps → Apps2`

Perubahan entry point belum dilakukan pada checkpoint ini.

### Legacy Apps

Legacy Apps dipertahankan sebagai implementation terpisah dan tidak diubah sebagai bagian dari initiative Apps2, kecuali terdapat authorization dan scope baru yang secara eksplisit membutuhkannya.

## Next Action

Lakukan discovery terhadap bagian Apps pada Swift Reference secara menyeluruh dan class-per-class.

Hasil discovery harus memisahkan:

- OBSERVED
- VERIFIED
- INFERENCE
- ASSUMPTION
- UNKNOWN

Setelah scope dan structure Reference cukup terpetakan, lanjutkan ke design/port Apps2 sesuai dependency boundary yang telah ditetapkan.
