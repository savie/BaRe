# BΛR☰ — Audit Implementasi Local Account Lifecycle (Intro Skip → Sign-out)

**Tanggal audit:** 2026-10-31  
**Repository:** savie/BaRe  
**Branch:** Working  
**Baseline commit:** fecd922498ff2c77191ff5b55046e86f1d2b3f83  
**Scope implementasi:** bare-implementation/ (APKTool/Smali decompilation)  
**Jenis audit:** analisis statis; tidak mengubah implementasi  
**Status verifikasi:** source-level findings; runtime/build/device belum diverifikasi

---

## 1. Executive summary

Local Account flow saat ini tidak terpisah secara konsisten dari Firebase/cloud flow. Tombol **Skip for now** membuat pseudo-anonymous MFirebaseUser lokal dan menyimpannya di SharedPreferences. Jalur ini bukan Firebase Anonymous Authentication.

Resolver kemudian menetapkan V.getA() = false untuk user lokal. Sementara itu, beberapa repository masih menggunakan flag tersebut dan/atau Firebase helper untuk operasi yang seharusnya tetap tersedia secara lokal:

1. **ConfigRepo** (br1.a()) berhenti sebelum membaca cache lokal ketika V.getA() == false. Saat online, br1.b() mencoba Firebase melalui cf3.a(..., true), yang menolak pseudo-anonymous user.
2. **LabelRepo** (lr4.a()) dapat membaca cache lokal, tetapi jalur online lr4.b() juga memanggil cf3.a(..., true) dan ditolak untuk pseudo-anonymous user. Handler perubahan label (gr4) memiliki guard V.getA(); pada mode Local, operasi save dapat menjadi no-op.
3. **Sign-out** (d45.c()) mengosongkan Local Account cache dengan V.setNon(null) dan selalu memanggil SharedPreferences.Editor.clear(). Untuk user non-anonymous, method juga menjalankan g00.c(packageName, true), yang membangun perintah pm clear --user ... melalui Shizuku. Ini adalah cakupan pembersihan yang jauh lebih luas daripada sekadar mengakhiri sesi.
4. Observer sign-out di k3.smali memanggil Const.E("onUserSignedOut"), yang menjalankan restart flow. String log menyebut un-scheduling background tasks, tetapi callback yang diperiksa sendiri hanya meneruskan alasan restart; pemanggilan pembatalan scheduler tidak terlihat di callback tersebut.

**Kesimpulan:** error LabelRepo: Permission denied dan ConfigRepo: Permission denied konsisten dengan penolakan eksplisit helper Firebase terhadap user pseudo-anonymous. Akar masalah yang lebih luas adalah repository belum menjalankan local CRUD secara independen dari cloud authorization. Jangan memperbaikinya dengan membuka Firebase Rules untuk semua anonymous user.

---

## 2. Repository dan batas bukti

### 2.1 Baseline

- Branch Working menunjuk ke commit fecd922498ff2c77191ff5b55046e86f1d2b3f83.
- bare-implementation/ berisi artefak APKTool: manifest, resources, native libraries, dan Smali.
- Folder ini bukan Android source set Kotlin/Java yang dapat dibangun secara langsung. Pada tracked tree yang diperiksa, app/ tidak menyediakan app/src/ sebagai sumber aplikasi native.
- Audit ini membuktikan alur statis yang terlihat pada Smali, tetapi tidak membuktikan hasil runtime, hasil build, konfigurasi Firebase Rules aktif, atau perilaku pada perangkat tertentu.

### 2.2 Bukti yang diperiksa

| File | Method / area | Bukti utama |
|---|---|---|
| smali_classes2/com/bareapps/barebackup/intro/IntroActivity.smali | Intro view/listener | Activity mengikat listener UI intro; tombol anonymous berasal dari layout intro. |
| res/layout/intro_activity.xml | btn_anonymous | Tombol skip memakai intro_skip_sign_in_button. |
| smali_classes2/com/bareapps/barebackup/intro/d.smali | m(Z, IntroActivity) | Jalur boolean true menjalankan “Signing in Anonymously”, membentuk model lokal, memanggil V.setNon(), lalu memicu resolver/listener. |
| smali/b45.smali | a() | Membentuk UID pseudo-account dari signing certificate aplikasi. |
| smali/com/bareapps/barebackup/common/V.smali | getNon()/setNon() | Membaca/menyimpan model MFirebaseUser melalui SharedPreferences. |
| smali/d45.smali | a()/b()/c() | Resolver account, observer perubahan user, dan sign-out. |
| smali/br1.smali | ConfigRepo a()/b()/d() | Cache read, fetch online/offline, dan publikasi state Config. |
| smali/lr4.smali | LabelRepo a()/b()/l() | Cache read, fetch online/offline, dan publikasi state Label. |
| smali/gr4.smali | label save callback | Perubahan Label dibatasi oleh V.getA(). |
| smali_classes2/cf3.smali | Firebase RTDB helper a()/b()/c() | Menolak operasi read/transaction/write untuk model user anonymous pada jalur yang memakai guard. |
| smali_classes2/k3.smali | observer sign-out | Menerima status signed-out dan memanggil Const.E("onUserSignedOut"). |
| smali/com/bareapps/barebackup/common/Const.smali | E(String) | Menjalankan restart task/activity berdasarkan launch intent aplikasi. |
| smali/g00.smali | c(String, boolean) | Menyusun perintah pm clear --user dan mengeksekusinya melalui Shizuku. |

---

## 3. Lifecycle trace

### 3.1 Intro → Skip for now

Observed flow:

    IntroActivity
      └─ btn_anonymous / skip_for_now
          └─ intro/d.m(Z = true)
              ├─ set intro state = RUNNING
              ├─ b45.a()
              │   └─ create MFirebaseUser pseudo-anonymous
              ├─ V.setNon(MFirebaseUser)
              │   └─ serialize model into SharedPreferences
              └─ d45.b()
                  └─ notify registered account listeners

Temuan:

- Tombol Skip bukan bypass menuju guest screen tanpa identity. Jalur tersebut membuat model user lokal.
- Label log “Signing in Anonymously” tidak membuktikan Firebase Anonymous Authentication.
- Pencarian source pada branch ini tidak menemukan pemanggilan FirebaseAuth.signInAnonymously() pada jalur Skip.
- Jika pembuatan/persistensi model melempar exception, handler menjalankan V.setNon(null); state failure kemudian diteruskan melalui callback.
- Jalur Google adalah cabang terpisah dari jalur boolean true; keduanya tidak boleh diperlakukan sebagai account type yang sama.

**Assessment:** Local Account entry point ada secara statis, tetapi kontraknya masih memakai model bernama MFirebaseUser dan belum memiliki local account domain object yang terpisah.

### 3.2 Local identity creation

b45.a() membentuk pseudo UID dari signing certificate:

1. Mengambil signature aplikasi.
2. Memanggil Signature.hashCode().
3. Mengubah nilai integer ke string.
4. Memproses string melalui fungsi hash/mixing yang ada.
5. Membalik urutan karakter hasil dan memakai hasilnya sebagai UID model.

Implikasi:

- Nilai tersebut deterministik untuk signing identity, bukan random device identity.
- Dua instalasi pada perangkat berbeda yang memakai signing certificate sama dapat memperoleh identitas pseudo-account yang sama.
- UID ini bukan Firebase Auth UID yang diterbitkan oleh Firebase Authentication.
- Jangan memakai nilai ini sebagai bukti autentikasi, secret, encryption key, atau hardware-bound device identity.

Audit terdahulu juga membedakan Canonical UID 32-hex dan storage namespace key 16-hex (MD5-derived). Namespace tersebut bukan kredensial keamanan.

### 3.3 Local identity persistence and resolver

V.getNon()/setNon() melakukan serialisasi/deserialisasi MFirebaseUser di SharedPreferences aplikasi.

Resolver d45.a() menjalankan urutan:

1. Baca V.getNon().
2. Jika ada, set V.setA(false) dan langsung mengembalikan model lokal.
3. Jika tidak ada, baca Firebase Auth current user dan map ke MFirebaseUser.
4. Jika keduanya kosong, return null.

**Konsekuensi penting:** saat Local Account aktif, resolver sendiri menetapkan V.getA() = false. Flag ini kemudian dipakai oleh beberapa repository/handler. Walaupun arti bisnis lengkap flag tersebut perlu ditelusuri lebih lanjut, pada jalur yang diperiksa ia bertindak sebagai gate yang memblokir sejumlah operasi Local Account.

**Persistence gap:** model Local Account yang terlihat di sini hanya disimpan di SharedPreferences. Ini tidak membuktikan adanya persistent vault yang survive uninstall/reinstall. Lihat juga local-account-persistence-design-audit.md dan local-account-hybrid-vault-technical-design.md.

---

## 4. Repository audit dan akar error

### 4.1 ConfigRepo — local cache path terblokir

br1.a() melakukan urutan:

1. Memanggil V.getA().
2. Jika false, langsung return.
3. Jika true, memastikan method berjalan bukan di main thread.
4. Membaca ConfigsData dari encrypted local store q63/w14.
5. Mempublikasikan hasil melalui br1.d().

Karena d45.a() menetapkan flag false ketika Local Account ditemukan, ConfigRepo tidak mencapai pembacaan cache lokal pada mode Local.

br1.b():

- Jika offline, memanggil br1.a(); tetapi jalur ini tetap terhenti oleh flag.
- Jika online, memanggil cf3.a(configsPath, true); helper menolak pseudo-anonymous user sebelum remote read dilakukan.

**Result:** pada Local Account, baik online path maupun offline fallback yang diperiksa tidak memberikan jalur Config yang sehat. Ini adalah bug implementasi lokal yang terpisah dari Firebase Rules.

### 4.2 LabelRepo — read cache ada, cloud fetch ditolak, local save ter-gate

lr4.a() membaca LabelsData dari encrypted local store dan tidak memiliki early-return V.getA() pada method yang diperiksa.

lr4.b():

- Jika offline, memanggil lr4.a() untuk cache.
- Jika online, memanggil cf3.a(labelsPath, true).
- Jika hasil helper gagal, error message dipublikasikan dengan tag LabelRepo.

Callback penyimpanan label di gr4.smali:

- Memeriksa V.getA().
- Jika false, keluar tanpa menjalankan update model label.
- Jika true, memperbarui map label dan meneruskan update ke jalur penyimpanan/projection.

**Result:** local Label cache read tersedia, tetapi online fetch tetap melewati cloud helper dan local label mutation dapat menjadi no-op pada Local Account. Dengan demikian, adanya cache read tidak sama dengan local CRUD yang lengkap.

### 4.3 Firebase helper — penolakan anonymous terjadi di client boundary

cf3.a(path, true) membaca account melalui d45.a(), memeriksa MFirebaseUser.isAnonymous(), lalu mengembalikan error result apabila nilainya true. Helper tidak melanjutkan Firebase read untuk kondisi tersebut.

Pola guard serupa terlihat pada:

- cf3.b(): transaction helper.
- cf3.c(): setValue/write helper.

Artinya, untuk jalur yang memakai guard ini, error bukan bukti bahwa Firebase Security Rules telah menerima request lalu menolaknya. Penolakan dapat terjadi lebih awal di aplikasi.

**Interpretasi log:**

| Log | Penjelasan berbasis source |
|---|---|
| ConfigRepo: Permission denied | Cocok dengan online Config fetch yang menerima error dari helper read karena current model pseudo-anonymous. Config offline fallback juga terhambat oleh guard V.getA() di br1.a(). |
| LabelRepo: Permission denied | Cocok dengan online Label fetch yang menggunakan helper read dengan guard anonymous. Local cache read memiliki jalur terpisah. |

String log aktual yang diberikan berasal dari runtime pengguna; audit statis tidak dapat mengikat setiap baris log ke satu invocation tertentu tanpa stack trace/correlation ID. Namun source menunjukkan mekanisme penolakan yang konsisten dengan gejala tersebut.

**Security decision:** jangan menghapus guard anonymous di cf3 atau membuka Firebase Rules untuk seluruh anonymous user sebagai workaround. Local CRUD harus berhenti memanggil cloud helper.

### 4.4 Root cause summary

Ada tiga lapisan yang saat ini tercampur:

- **Identity:** MFirebaseUser.isAnonymous dipakai untuk mewakili Local Account.
- **Local entitlement/state gate:** V.getA() dipakai oleh Config/Label handlers untuk menentukan apakah beberapa operasi berjalan.
- **Cloud authorization:** cf3 memblokir remote operation ketika model user anonymous.

Ketiganya bukan satu hal. Local Account yang valid harus memiliki izin mengakses data lokal miliknya sendiri tanpa Firebase session. Cloud access tetap harus memerlukan Firebase identity yang benar-benar authenticated, linked, dan diotorisasi server.

---

## 5. Google account transition / linking

Yang dapat dibuktikan dari jalur yang diperiksa:

- Intro memiliki cabang Google yang berbeda dari Skip.
- Resolver dapat memetakan Firebase current user menjadi MFirebaseUser apabila local cache kosong.
- d45.c() membaca preference is_migrating_to_google_sign_in untuk log/status migrasi.

Yang **belum terbukti**:

- Bahwa pseudo Local Account benar-benar dibuat sebagai Firebase anonymous user.
- Bahwa Google sign-in menautkan provider ke LocalAccountId yang sama.
- Bahwa Firebase UID dan ownership record dipetakan secara atomik ke LocalAccountId.
- Bahwa konflik Google identity ditangani tanpa overwrite/merge otomatis.
- Bahwa backup namespace lama dipertahankan saat linking.

Karena itu, jangan menyebut alur Local → Google sebagai account linking yang telah terverifikasi hanya berdasarkan flag migrasi atau keberadaan Google sign-in UI.

Target contract:

1. Autentikasi/unlock Local Account terlebih dahulu.
2. Jalankan Google authentication sebagai metode login tambahan.
3. Validasi bahwa Google identity belum terhubung ke BΛR☰ account lain.
4. Link identity tanpa mengganti LocalAccountId/LegacyUid/backup namespace.
5. Konflik harus berhenti untuk resolusi eksplisit.
6. Jika linking gagal, Local Account dan vault tidak berubah.

---

## 6. Sign-out lifecycle

### 6.1 Observed sign-out sequence

    d45.c()
      ├─ resolve current MFirebaseUser
      ├─ read is_migrating_to_google_sign_in
      ├─ resolve account and check isAnonymous
      ├─ FirebaseAuth.getInstance().signOut()
      ├─ V.setNon(null)
      ├─ if account is NOT anonymous:
      │    └─ g00.c(packageName, true)
      │         └─ Shizuku: pm clear --user <userId> <packageName>
      ├─ V.setG(false)
      ├─ V.getZ().edit().clear().commit()
      └─ d45.b() notify listeners

    HomeActivity observer (k3)
      └─ Const.E("onUserSignedOut")
           └─ restart activity/app flow

### 6.2 Sign-out defects and risks

**P0 — Local Account cache is cleared by sign-out**

d45.c() memanggil V.setNon(null) tanpa membedakan Local Account dari permanent account deletion. Ini menghapus objek account pseudo-local dari SharedPreferences.

**P0 — Global preferences clear**

Method selalu menjalankan V.getZ().edit().clear().commit(). Operasi ini tidak dibatasi pada Firebase token/session keys. State lain yang tinggal di preference yang sama berisiko ikut terhapus, termasuk konfigurasi onboarding/password strategy dan preferensi aplikasi. Dampak tepat bergantung pada isi preference runtime.

**P1 — Google sign-out can clear the package data**

Untuk model non-anonymous, method memanggil g00.c(packageName, true). Helper menyusun perintah pm clear --user ... dan mengeksekusinya melalui Shizuku. Ini bukan operasi sign-out biasa; ini dapat membersihkan data paket secara luas. Perlu validasi produk dan proteksi eksplisit sebelum mempertahankan perilaku tersebut.

**P1 — Local sign-out and account deletion are conflated**

Tidak ada pemisahan yang cukup antara:
- mengakhiri active session;
- menghapus token/provider session;
- menghapus Local Account vault;
- menghapus seluruh data aplikasi.

Permanent deletion harus menjadi aksi terpisah, eksplisit, terkonfirmasi, dan memiliki kontrak cakupan data yang jelas.

**P2 — Restart log overstates the observed callback**

Callback k3 mencatat pesan “Un-scheduling background tasks & Restarting app” lalu memanggil Const.E("onUserSignedOut"). Method Const.E yang diperiksa menjalankan restart activity/app. Tidak terlihat pemanggilan pembatalan WorkManager/alarm di callback itu sendiri. Penjadwalan mungkin ditangani di bagian lain, tetapi belum terbukti dari callback ini.

### 6.3 Required sign-out behavior

| Action | Local Account | Google-linked account |
|---|---|---|
| End active app session | Clear active session state | Clear active session state |
| Provider sign-out | No Firebase sign-out required if no Firebase session exists | Sign out/revoke Firebase provider session as appropriate |
| Local account identity | Preserve | Preserve |
| Local vault and backup data | Preserve | Preserve |
| Config/Label local data | Preserve | Preserve |
| Sync outbox | Preserve pending work; pause cloud sync | Preserve pending work; resume only after re-auth |
| Scheduler | Cancel/pause only account-owned jobs; keep definitions if policy requires | Same |
| Permanent deletion | Separate explicit action | Separate explicit action |

Jangan menjalankan global preference clear atau pm clear sebagai konsekuensi default dari sign-out.

---

## 7. Severity and issue register

| ID | Severity | Finding | Evidence | Required correction |
|---|---|---|---|---|
| LC-01 | P0 | Local account state removed during ordinary sign-out | d45.c() → V.setNon(null) | Separate session clear from account identity/vault |
| LC-02 | P0 | Whole SharedPreferences store cleared during sign-out | d45.c() → Editor.clear() | Clear only explicit session keys |
| LC-03 | P1 | Config local cache read blocked for Local Account | d45.a() sets V.setA(false); br1.a() returns early | Remove account/cloud gate from local cache read |
| LC-04 | P1 | Config online read rejected for pseudo-anonymous user | br1.b() → cf3.a(..., true) | Local source first; cloud sync separate |
| LC-05 | P1 | Label online read rejected for pseudo-anonymous user | lr4.b() → cf3.a(..., true) | Local source first; cloud sync separate |
| LC-06 | P1 | Label mutation can silently no-op in Local mode | gr4 checks V.getA() and returns | Local CRUD must not depend on cloud/feature flag |
| LC-07 | P1 | Non-anonymous sign-out can invoke package data clear via Shizuku | d45.c() → g00.c() | Remove from normal sign-out or require separate destructive workflow |
| LC-08 | P2 | Local pseudo UID is signing-certificate-derived | b45.a() | Use random stable LocalAccountId + vault/recovery identity |
| LC-09 | P2 | Local Account persistence currently shown in SharedPreferences | V.getNon()/setNon() | Integrate validated persistent vault and idempotent migration |
| LC-10 | P2 | Restart callback does not prove scheduler cancellation | k3 → Const.E() | Trace scheduler owner and test cancellation separately |
| LC-11 | P2 | Existing authorization audit conflicts with current ConfigRepo source | See section 8 | Reconcile audit documents against exact commit/source |

---

## 8. Audit-document discrepancy

The existing bare-implementation/AUTHORIZATION-LOCAL-CLOUD-AUDIT.md says the opening V.getA() early-return in br1.a() had been removed in the audited branch.

However, the source fetched from current Working baseline commit fecd922498ff2c77191ff5b55046e86f1d2b3f83 still contains:

    V.getA()
    if-nez result:
        return

Therefore the prior audit's statement that ConfigRepo local cache read is no longer gated is inconsistent with the current Smali artifact. This report treats the actual fetched Smali as the evidence of record and marks the prior statement stale until the source history is reconciled.

The same existing audit claims that lr4.k(List) has no old gate; this report does not infer from that statement that all Label mutations are ungated. The gr4 save callback itself still contains a V.getA() guard.

---

## 9. Target architecture and remediation sequence

### Phase A — Separate account/session/authorization model

Create an explicit account context:

- localAccountId: stable BΛR☰ data owner identity.
- accountType: LOCAL or GOOGLE_LINKED.
- firebaseUid: optional linked provider identity.
- activeSession: current unlocked/active app session.
- cloudSyncState: derived from valid provider authentication and server authorization.
- vaultState: locked, ready, recovery-required, invalid, or absent.

Do not use MFirebaseUser.isAnonymous or V.getA() as the global authorization decision for local operations.

### Phase B — Make local repositories independent

- ConfigLocalDataSource and LabelLocalDataSource own local read/create/update/delete.
- Local writes commit to durable local storage first.
- UI reads local source of truth regardless of network state or Firebase status.
- Cloud synchronization is a separate worker/boundary.
- Remote failure must not roll back a successful local commit.
- Pending changes and deletes need a durable outbox/tombstone if sync is supported.
- Keep ownership scoped by LocalAccountId; one local account must never read another account's records.

### Phase C — Restrict cloud access safely

- Keep Firebase read/write/transaction restrictions deny-by-default.
- Only a validated Firebase identity linked to the BΛR☰ account may access that account's cloud records.
- Server rules must validate UID ownership per record.
- Local CRUD must not call Firebase RTDB helper methods.
- Map permission failures into cloud-sync status, not local CRUD failure.

### Phase D — Correct sign-out

- Clear active session state only.
- Sign out Firebase only when a real Firebase session exists.
- Preserve LocalAccountId, LegacyUid, vault, local Config/Label data, and pending outbox.
- Pause/cancel account-owned background work according to a documented policy; do not delete schedule definitions unintentionally.
- Remove global preference clearing from ordinary sign-out.
- Remove package-level pm clear from ordinary sign-out.
- Add a separate permanent-delete use case with confirmation and explicit data scope.
- Restart only after cleanup is complete and idempotent.

### Phase E — Reconcile source/build boundary

Do not claim an application fix by editing obfuscated Smali only. Locate or restore the authoritative native Android source/build project, then implement the same contracts there. If a Smali patch is required as a temporary experiment, generate it reproducibly under tools/, record before/after hashes, and verify the rebuilt APK on devices. Keep bare-implementation/ as read-only audit evidence unless a patch task explicitly authorizes otherwise.

---

## 10. Acceptance test matrix

All tests below are **required and not yet claimed passed**.

| ID | Scenario | Expected result |
|---|---|---|
| LC-AT-01 | Fresh install → Intro → Skip | One Local Account enrollment starts; no Firebase anonymous auth is assumed |
| LC-AT-02 | Skip with valid local vault | Same LocalAccountId restored; no duplicate account |
| LC-AT-03 | Skip with corrupt/unreadable vault | Recovery-required; never silently auto-create replacement |
| LC-AT-04 | Local Account, network disabled → read Config | Local Config loads |
| LC-AT-05 | Local Account, network enabled → read Config | Local Config loads; cloud sync reports unavailable/disabled without breaking UI |
| LC-AT-06 | Local Account → create/update/delete Config | Local transaction succeeds and survives restart |
| LC-AT-07 | Local Account → read/create/update/delete Label | Local CRUD succeeds; label-to-package relationships persist |
| LC-AT-08 | Local CRUD with Firebase unavailable | Local operation succeeds; no Firebase dependency |
| LC-AT-09 | Local Account force-stop/reboot | Same account and data restored |
| LC-AT-10 | Local Account ordinary sign-out | Session ends; vault, identity, Config, Label, Password Strategy, and outbox remain |
| LC-AT-11 | Google-linked ordinary sign-out | Firebase session ends; local account and local data remain |
| LC-AT-12 | Sign-out while scheduled jobs exist | Defined jobs are paused/cancelled without deleting account data; no duplicate schedule after restart |
| LC-AT-13 | Explicit permanent account deletion | Confirmation; only documented account-owned data is removed |
| LC-AT-14 | Local → Google link | Same LocalAccountId/LegacyUid/backup namespace preserved |
| LC-AT-15 | Google identity collision | Explicit conflict; no implicit merge or overwrite |
| LC-AT-16 | Unauthorized cloud read/write | Denied by server policy; local data remains usable |
| LC-AT-17 | Two Local Accounts / owner isolation | Account A cannot read or mutate account B data |
| LC-AT-18 | Legacy SharedPreferences migration | Idempotent; existing UID and backup namespace preserved |

---

## 11. Final verdict

**Current status: NOT READY for reliable Local Account lifecycle.**

- Intro Skip pseudo-account creation: **statically traced**.
- Firebase Anonymous Authentication on Skip: **not found in inspected flow**.
- Resolver and SharedPreferences account cache: **statically traced**.
- Config local read: **blocked by current V.getA() guard for Local mode**.
- Label local read: **cache path exists**.
- Label local mutation: **guarded by V.getA() in inspected save callback**.
- Firebase remote access for pseudo-anonymous model: **explicitly rejected by helper guard**.
- Sign-out cache/global preference clearing: **statically traced**.
- Google linking semantics: **not proven**.
- Runtime tests/build/device verification: **not run**.

**Priority order:** (1) stop sign-out from destroying Local Account state, (2) separate local Config/Label CRUD from Firebase helpers and V.getA(), (3) establish stable LocalAccountId/vault ownership, (4) define Google linking, (5) verify scheduler/restart behavior and run device acceptance tests.

Related records:
- [Local Account / Non-Google audit](local-account-non-google-audit.md)
- [Local Account persistence design audit](local-account-persistence-design-audit.md)
- [Hybrid vault technical design](local-account-hybrid-vault-technical-design.md)
- [Local Account / Repository Authorization audit](../../bare-implementation/AUTHORIZATION-LOCAL-CLOUD-AUDIT.md)


---

## 12. Non-negotiable change boundary — preserve working Firebase/Cloud

This is an explicit project constraint for remediation work:

**Fix Local Account behavior without refactoring, replacing, weakening, or otherwise disturbing the existing Firebase/Cloud implementation that already works for Google/cloud accounts.**

### 12.1 Protected surface

Unless a separately approved defect is demonstrated, treat the following as protected:

- Existing Google sign-in/provider authentication flow.
- Existing Firebase Auth configuration and current-user behavior for Google accounts.
- Existing Firebase Realtime Database schema, paths, data, and rules.
- Existing Firebase client initialization and cloud repository operations for authenticated accounts.
- Existing cloud sync behavior, token handling, and ownership/authorization checks.
- Existing cloud data and user records.

Do not change Firebase Security Rules to grant pseudo-anonymous/local users broad access. Do not remove anonymous guards from shared Firebase helpers as a shortcut. Do not migrate or rewrite existing cloud data as part of this Local Account fix.

### 12.2 Allowed Local-only changes

The remediation should be isolated to Local Account branches and local data paths:

1. Identify account mode explicitly (LOCAL versus existing authenticated/cloud account) without changing the meaning of the existing Firebase user/session.
2. For LOCAL mode, read and write Config/Label through local persistence only.
3. Ensure Local Config cache loading does not return early merely because a cloud/account flag is false.
4. Ensure Local Label create/update/delete does not silently no-op due to a cloud authorization flag.
5. Prevent Local Account operations from invoking Firebase read/write/transaction helpers.
6. Give Local Account its own session-ending path that preserves LocalAccountId, vault, Config, Labels, and pending local work.
7. Keep the existing Google/Firebase branch behavior unchanged in the first remediation pass.
8. Add regression tests proving that Local changes work and the existing Google/cloud behavior remains unchanged.

### 12.3 Required routing contract

    ConfigRepo / LabelRepo
          |
          v
      AccountContext
          |
          +-- LOCAL
          |     └─ LocalDataSource only
          |          └─ no Firebase call
          |
          └-- Existing authenticated account
                └─ Existing Firebase/cloud path
                     └─ preserve current behavior

This routing must be explicit and testable. Do not infer cloud authorization from a generic local session flag, and do not treat a pseudo Local Account as a Firebase authenticated identity.

### 12.4 Sign-out isolation

The first fix must add or correct a Local-only sign-out branch before shared destructive cleanup can run. For Local mode:

- End the active Local Session.
- Preserve Local Account identity and local vault.
- Preserve Config, Labels, backup metadata, and pending local work.
- Do not call Firebase signOut when there is no Firebase session owned by this Local Account.
- Do not clear the whole SharedPreferences file.
- Do not invoke package-level pm clear / Shizuku data clearing.
- Return to the appropriate account-entry screen.

For the existing Google/cloud mode, preserve the current implementation during this scoped change. Any separate concern in the Google sign-out path (including broad preference/package clearing) requires its own impact analysis, approval, and regression tests; it must not be silently bundled into the Local Account repair.

### 12.5 Acceptance gates for non-regression

The Local Account repair is not complete until all of these pass:

| Test | Expected result |
|---|---|
| Fresh install → Skip | Local Account is created without Firebase sign-in |
| Local Config CRUD | Works with network on/off and Firebase unavailable |
| Local Label CRUD | Works with network on/off and Firebase unavailable |
| Local sign-out | Ends session but preserves account/vault/data |
| Reopen Local Account | Restores same LocalAccountId and data |
| Existing Google sign-in | Same successful behavior as before the change |
| Existing Google Config/Label cloud operations | Same successful behavior as before the change |
| Existing cloud sync | No regression in data, authorization, or synchronization |
| Firebase Rules/schema | No change required for this Local-only fix |

**Implementation rule:** prefer the smallest Local-only branch/data-source correction that satisfies these gates. Do not refactor shared Firebase code unless later evidence proves an independent cloud defect and the user explicitly approves that scope.
