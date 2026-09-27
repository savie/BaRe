# Worklog Apps2

## Kondisi Saat Ini

Status: AKTIF / IMPLEMENTASI / FIRST VERTICAL SLICE

Apps2 sedang dibangun sebagai subsystem baru yang terisolasi dari Legacy Apps.

Legacy Apps tetap tidak diubah dan tidak menjadi dependency Apps2.

Branch kerja: `v1.0/rebaseline`

## Tugas Saat Ini

Membangun subsystem Apps2 di BaRe sebagai rewrite/port bagian Apps dari Swift Referensi, dengan boundary Apps2 sendiri dan tanpa menjadikan implementasi Apps lama sebagai jalur implementasi.

## Cakupan

Scope Apps2 mengikuti evidence Reference yang sudah diaudit, termasuk:

- Apps shell/list
- local/cloud inventory boundary
- search
- filter
- sort
- selection/batch
- item actions
- detail
- backup
- restore
- backup history/parts
- task/precondition/capability boundary
- metadata/invalidation
- navigation
- EXPANSION

Hal yang belum terbukti dari Reference atau belum terimplementasi di BaRe tidak boleh dipresentasikan sebagai implemented/verified.

## Architecture

Architecture freeze:

- package root: `com.bare.feature.apps2`
- Compose + Material 3 untuk presentation
- Reference XML/layout menjadi blueprint geometry/component behavior
- Apps2 tidak membuat monolithic `AppsScreens.kt`
- Apps2 memiliki state/navigation/domain/task boundary sendiri
- Legacy Apps bukan middleman
- EXPANSION first-class
- capability explicit
- task execution terpisah dari UI
- Reference encryption tidak otomatis digunakan
- implementation dikerjakan sebagai vertical slices

Target product flow:

`Home → Apps → Apps2`

Home cutover tetap ditunda sampai Apps2 memenuhi verification gate.

## Implementation Checkpoint 1 — First Vertical Slice

Files Apps2 yang sudah ada:

- `app/src/main/java/com/bare/feature/apps2/domain/Apps2App.kt`
- `app/src/main/java/com/bare/feature/apps2/data/Apps2AppDiscovery.kt`
- `app/src/main/java/com/bare/feature/apps2/state/Apps2RepositoryState.kt`
- `app/src/main/java/com/bare/feature/apps2/state/Apps2ListState.kt`
- `app/src/main/java/com/bare/feature/apps2/ui/Apps2Screen.kt`
- `app/src/main/java/com/bare/feature/apps2/ui/shell/Apps2Shell.kt`
- `app/src/main/java/com/bare/feature/apps2/ui/list/Apps2ListScreen.kt`
- `app/src/main/java/com/bare/feature/apps2/ui/list/Apps2AppItemAction.kt`

Scope yang telah dibuat:

- isolated Apps2 package boundary;
- canonical local app model awal;
- PackageManager installed-app discovery;
- Loading / Success / Error repository state;
- search;
- user/system filter;
- sort Name / Install date / Update date;
- ascending/descending;
- selection;
- Reference-like Apps2 header dengan identity subtitle **Swift on BaRe**;
- Search / Filter / Refresh / Sort controls;
- app item icon/name/package/type/selection/overflow;
- concrete actions Launch, Play Store, App info.

Tidak dilakukan:

- tidak menambah Apps2 state ke Legacy `Screen`;
- tidak mengubah `com.bare.feature.apps`;
- tidak melakukan Home cutover;
- tidak membuat fake backup/restore;
- action privileged/destructive/Share APK belum ditawarkan ketika implementation/capability belum tersedia.

## Implementation Checkpoint 2 — First-Slice State Test Coverage

Test artifact baru:

- `app/src/test/java/com/bare/feature/apps2/state/Apps2ListStateTest.kt`

Test cases yang sekarang didefinisikan:

- search berdasarkan app name;
- search berdasarkan package name;
- user/system filtering;
- Name / Install Date / Update Date sorting;
- ascending/descending ordering;
- selection toggle;
- select-all terhadap visible apps;
- clear selection.

### Engineering status

**IMPLEMENTED:** test source sudah ditambahkan ke branch.

**UNVERIFIED:** test belum dieksekusi oleh local build/test runner pada environment ini.

**REASON:** container sebelumnya tidak dapat clone repository GitHub karena network/DNS unavailable. Tidak ada workflow run yang terkait dengan commit implementation yang dapat digunakan sebagai verification evidence.

Karena itu:

- test source exists ≠ test passed;
- implementation exists ≠ build verified;
- runtime remains UNKNOWN.

## Verification Gate

Current:

- Static source presence: OBSERVED / VERIFIED melalui repository fetch.
- Apps2 package isolation: OBSERVED dari source path/package boundary.
- Legacy Apps modification: tidak dilakukan pada scope implementation checkpoint ini.
- Unit test execution: UNVERIFIED.
- Android build: UNVERIFIED / BLOCKED.
- Runtime: UNKNOWN.
- Home → Apps2 integration: BELUM.
- Backup/restore: BELUM.

Acceptance gate sebelum Home cutover:

1. build Apps2 compile;
2. Apps2 tests pass;
3. shell renders;
4. local discovery works on device/emulator;
5. search/filter/sort/selection behavior verified;
6. item actions verified;
7. no Legacy Apps regression;
8. only after gates pass, integrate Home → Apps2.

## Next Action

Lanjutkan ke **Apps2 Detail boundary** setelah first-slice state/build verification opportunity tersedia, dengan prioritas:

1. define canonical selected-app/detail state;
2. create isolated `apps2.ui.detail` surface;
3. preserve Reference-derived detail decomposition;
4. keep backup/restore unavailable/blocked until their task/capability contracts are implemented;
5. add tests for detail-state transitions where deterministic.

Do not perform Home cutover yet.

## Governance

Semua dokumentasi/worklog menggunakan Bahasa Indonesia.

Product/app UI text menggunakan Bahasa Inggris.

Technical identifiers, package/class names, code symbols, and source terminology remain unchanged where required.

## Implementation Checkpoint 3 — Apps2 Detail Boundary

Detail boundary awal sudah diimplementasikan secara terisolasi.

### Files baru

- `app/src/main/java/com/bare/feature/apps2/state/Apps2DetailState.kt`
- `app/src/main/java/com/bare/feature/apps2/ui/detail/Apps2DetailScreen.kt`
- `app/src/test/java/com/bare/feature/apps2/state/Apps2DetailStateTest.kt`

### Scope

- selected-app detail state berbasis package identity;
- open / resolve / close transition;
- detail surface terpisah di `ui/detail`;
- list overflow sekarang menyediakan **Details**;
- detail dapat kembali ke list tanpa memakai Legacy `Screen`;
- detail menampilkan canonical Apps2 app information yang sudah tersedia;
- Launch / Play Store / App info tetap menggunakan action behavior yang sudah nyata;
- backup/restore belum dipalsukan dan ditampilkan sebagai belum tersedia pada slice ini.

### Verification

**OBSERVED:** perubahan source berada di package Apps2 dan tidak menambah Legacy Apps contract.

**TEST SOURCE ADDED:** `Apps2DetailStateTest` mencakup open/resolve/close dan missing-package resolution.

**UNVERIFIED:** unit tests belum dieksekusi.

**UNVERIFIED / BLOCKED:** Android build belum dijalankan pada environment ini karena network/DNS sebelumnya tidak memungkinkan clone repository; tidak ada workflow run terkait implementation commit yang tersedia sebagai build evidence.

## Current Engineering State

- Apps2 architecture: FROZEN WITH OPEN IMPLEMENTATION DETAILS.
- Apps2 first vertical slice: IMPLEMENTED AT SOURCE LEVEL.
- Apps2 detail boundary: STARTED.
- Unit test source: ADDED.
- Unit test execution: UNVERIFIED.
- Android build: UNVERIFIED / BLOCKED.
- Runtime: UNKNOWN.
- Home → Apps2: BELUM.
- Legacy Apps: TIDAK DIUBAH.
- Backup/restore: BELUM DIIMPLEMENTASIKAN.

## Next Authorized Action

Prioritas berikutnya adalah **verification opportunity** untuk source/test yang sudah dibuat. Jika build runner tersedia, jalankan compile + unit tests sebelum memperluas backup/restore.

Setelah verification gate tersedia, lanjutkan Detail decomposition dan kemudian batch/task boundary.

## Implementation Checkpoint 4 — Selection Semantics Correction

Review terhadap first-slice selection menemukan satu semantic gap:

- Reference selection memisahkan selected IDs dari visible list.
- Implementasi awal `selectAll(visibleApps)` mengganti seluruh selection dengan visible apps.
- Ini dapat menghilangkan selection yang berada di luar current search/filter result.

Perubahan:

- `selectAll(visibleApps)` sekarang menambahkan visible package IDs ke selection yang sudah ada.
- Existing selection di luar visible scope dipertahankan.
- Test diperluas untuk membuktikan perilaku tersebut.

### Verification

**SOURCE VERIFIED:** perubahan hanya pada Apps2 state/test boundary.

**TEST SOURCE UPDATED:** regression case untuk selection di luar visible scope sudah ditambahkan.

**TEST EXECUTION:** UNVERIFIED.

**ANDROID BUILD:** UNVERIFIED / BLOCKED.

## Current State

- First vertical slice: IMPLEMENTED AT SOURCE LEVEL.
- Detail boundary: IMPLEMENTED AT SOURCE LEVEL.
- Selection semantics: CORRECTED AT SOURCE LEVEL berdasarkan Reference-derived contract.
- Unit tests: SOURCE ADDED / EXECUTION UNVERIFIED.
- Android build: UNVERIFIED / BLOCKED.
- Runtime: UNKNOWN.
- Home → Apps2: BELUM.
- Legacy Apps: TIDAK DIUBAH.
- Backup/restore: BELUM.

## Next Action

Lanjutkan ke batch boundary secara isolated, tanpa mengaktifkan destructive/privileged behavior yang belum mempunyai capability/task contract.

## Implementation Checkpoint 5 — Isolated Batch Boundary

Batch boundary pertama sudah dibuat tanpa mengaktifkan execution.

### Files baru

- `app/src/main/java/com/bare/feature/apps2/ui/batch/Apps2BatchAction.kt`
- `app/src/main/java/com/bare/feature/apps2/ui/batch/Apps2BatchState.kt`
- `app/src/test/java/com/bare/feature/apps2/ui/batch/Apps2BatchStateTest.kt`

### Scope

- action contract batch terisolasi berdasarkan boundary Apps Reference yang sudah diaudit;
- selection disimpan sebagai package identities dan tidak bergantung pada visible/filter presentation;
- `Apps2BatchRequest` menjadi immutable intent menuju task boundary berikutnya;
- request tidak melakukan execution;
- policy secara eksplisit mengembalikan status **Blocked** untuk seluruh batch action sampai task/capability/artifact contract tersedia;
- tidak ada destructive, privileged, backup, restore, atau APK sharing behavior yang dipalsukan.

### Verification

**SOURCE VERIFIED:** tiga file baru berada di Apps2 batch package dan tidak mengubah Legacy Apps.

**TEST SOURCE ADDED:** mencakup selection isolation, empty-selection guard, request capture, blocked policy, dan clear selection.

**TEST EXECUTION:** UNVERIFIED.

**ANDROID BUILD:** UNVERIFIED / BLOCKED.

### Current Engineering State

- First vertical slice: IMPLEMENTED AT SOURCE LEVEL.
- Detail boundary: IMPLEMENTED AT SOURCE LEVEL.
- Batch boundary: IMPLEMENTED AT SOURCE LEVEL / EXECUTION BLOCKED.
- Unit test source: ADDED.
- Unit test execution: UNVERIFIED.
- Android build: UNVERIFIED / BLOCKED.
- Runtime: UNKNOWN.
- Home → Apps2: BELUM.
- Legacy Apps: TIDAK DIUBAH.
- Backup/restore: BELUM DIIMPLEMENTASIKAN.

## Next Action

Lanjutkan ke **task/capability contract** secara isolated. Fokus berikutnya:

1. definisikan capability resolution Apps2 tanpa mengaktifkan privileged execution;
2. definisikan task request/state boundary untuk batch;
3. pertahankan backup/restore dan destructive actions sebagai Blocked sampai executor + verification contract tersedia;
4. setelah contract stabil, baru hubungkan batch UI tanpa mengubah Legacy Apps;
5. jangan melakukan Home cutover sebelum verification gate terpenuhi.
