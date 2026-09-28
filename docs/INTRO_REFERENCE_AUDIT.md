# Audit Intro → Root/Shizuku — Swift Backup 5.1.0 (620)

Tanggal audit: 2026-09-28

## Basis audit

Reference yang dipakai:
- Swift Backup 5.1.0 (620) APK/decompiled source.
- IntroActivity
- IntroPermissionCardView
- intro_activity.xml
- intro_activity_permissions.xml
- IntroVM (org.swiftapps.swiftbackup.intro.d)
- PermissionHelper (defpackage.dz5)
- Root/Shizuku coordinator (nf4, mf4, callback terkait)

BaRe target:
- branch rewrite
- Firebase diganti dengan Supabase sebagai keputusan arsitektur project.
- Tidak membuat migration Supabase.

## Reference behavior yang diverifikasi

### 1. Startup gate

Reference tidak langsung masuk Home hanya karena session sudah ada.

Gate onboarding yang dipakai Reference:
1. user sudah signed in;
2. storage permission tersedia;
3. notification permission tersedia (atau Android < 13);
4. installed-app visibility/permission tersedia sesuai capability device.

Jika gate belum terpenuhi, Intro tetap ditampilkan.

### 2. Sign-in visibility

Saat belum signed in:
- sign-in section tampil;
- bottom sign-in actions tampil;
- permission section belum menjadi bagian onboarding aktif.

Saat sudah signed in:
- sign-in section disembunyikan;
- bottom sign-in actions disembunyikan;
- permission section tampil hanya bila ada permission onboarding yang belum terpenuhi.

### 3. Permission cards

Reference memiliki:
- Storage;
- Notifications;
- Installed apps access pada device yang memang mendukung permission tersebut;
- Root/Shizuku action.

Visibility installed-apps bukan sekadar getPermissionInfo(). Reference juga memeriksa:
- apakah package visibility tersedia;
- owner permission;
- system package status;
- protection level;
- OEM runtime permission setting;
- special Xiaomi owner com.lbe.security.miui.

### 4. Installed-app permission action

Reference membedakan:
- permission/capability tidak didukung → tampilkan pesan unsupported;
- permission perlu diberikan → request permission;
- state tertentu setelah request → dapat diarahkan ke Settings.

BaRe sekarang menggunakan capability detection yang mengikuti struktur tersebut dan menyimpan state first-request untuk retry path.

### 5. Root/Shizuku dialog

Reference dialog berisi:
- Storage
- SMS
- Call logs
- Contacts
- Notifications pada Android 13+
- Installed apps bila capability tersedia

Positive action memulai Root/Shizuku coordinator.

### 6. Root/Shizuku state machine

Reference memiliki state:
- IDLE
- CHECKING_ROOT
- AWAITING_SHIZUKU
- GRANTING_PERMISSIONS

Setelah Shizuku permission result:
- granted → lanjut grant;
- denied → kembali ke idle.

BaRe mempertahankan alur user-facing yang sama:
- cek Shizuku;
- request Shizuku permission bila service tersedia tetapi permission belum diberikan;
- fallback ke root execution;
- execute grant;
- recheck permission state.

### 7. Permission verification

Reference onboarding completion tidak mensyaratkan SMS, contacts, dan call logs untuk keluar dari Intro. Permission tersebut ada di Root/Shizuku one-click grant karena dibutuhkan feature lain.

BaRe sebelumnya salah menjadikan SMS/contacts/call logs sebagai syarat sukses Root grant. Ini sudah diperbaiki.

Current onboarding gate BaRe:
- storage;
- notifications jika Android 13+;
- installed apps hanya jika capability tersedia.

Root/Shizuku tetap mencoba memberikan permission tambahan yang dideklarasikan untuk feature lain.

### 8. Long-press logo

Reference memiliki long-press pada logo yang masuk ke jalur Google sign-in.

BaRe sekarang mempertahankan jalur tersebut menggunakan Supabase Google OAuth.

### 9. Firebase → Supabase divergence

Perilaku account/auth tetap dipertahankan pada level UX/flow, tetapi backend implementation berbeda:
- Reference: Firebase authentication/backend.
- BaRe: Supabase Auth.

Ini adalah divergence yang disengaja, bukan mock.

## Implementasi yang sudah dilakukan

- Startup gate diperketat agar session saja tidak cukup untuk langsung masuk Home.
- Sign-in section dan bottom actions mengikuti state signed-in.
- Permission section hanya aktif setelah signed-in dan masih ada requirement.
- Installed-app capability detection diperketat mengikuti Reference.
- Root/Shizuku verification tidak lagi memakai global mutable Context.
- Root verification memakai context eksplisit.
- Root grant mencakup permission yang memang dideklarasikan oleh Reference:
  - storage;
  - contacts;
  - call logs;
  - SMS;
  - notifications;
  - installed apps jika supported.
- Manifest BaRe menambahkan permission contacts/call logs/SMS yang dibutuhkan Root/Shizuku path.
- Root dialog copy dan styling diselaraskan.
- Storage permission card menggunakan reference blue accent.
- Permission card tint/stroke/background/ripple alpha diselaraskan.
- Installed-app retry path ditambahkan.
- Long-press logo ditambahkan.
- First-run completion menggunakan onboarding gate yang sama dengan permission state.

## Status

**Source/flow audit Intro → Root/Shizuku: substantially implemented.**

Yang sudah dapat dinilai dari source:
- hierarchy;
- visibility rules;
- permission gating;
- installed-app capability;
- root dialog;
- Shizuku request path;
- root/shizuku grant execution path;
- post-grant verification;
- startup gate.

Yang belum diverifikasi:
- compile;
- APK install;
- device runtime;
- actual Root grant pada rooted device;
- actual Shizuku grant pada Shizuku service;
- OEM-specific installed-app permission behavior pada Xiaomi/ROM lain;
- Supabase Google OAuth end-to-end;
- Supabase anonymous sign-in end-to-end.

Karena user menetapkan build/runtime dilakukan belakangan, status di atas sengaja tidak menyatakan build/working/runtime verified.

## Catatan penting

Implemented di source ≠ runtime verified.

Checkpoint berikutnya setelah audit Intro → Root/Shizuku adalah audit Home secara source-level sebelum build.
