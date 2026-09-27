# BaRe Worklog

## Current State

- Working branch: `rewrite`
- Reference: Swift Backup 5.1.0 (620)
- Target: BΛR☰ / BaRe
- Reconstruction mode: reference-driven 1:1 reconstruction
- Backend requirement: Supabase
- Premium requirement: entitlement granted/free

## Current Task

Membangun ulang struktur UI Reference secara bertahap dari artefak Apktool/JADX, dimulai dari Home.

## Evidence

Reference archive yang tersedia secara lokal:
- APK Swift Backup 5.1.0 (620)
- Apktool decode
- JADX sources
- Smali

Hasil inspeksi Reference:
- minSdkVersion: 26
- targetSdkVersion: 37
- versionCode: 620
- versionName: 5.1.0
- package Reference: `org.swiftapps.swiftbackup`
- 1,491 file resource Apktool
- 259 Java source di package `org.swiftapps.swiftbackup`
- 11,752 Smali files
- Manifest mendefinisikan banyak Activity, Receiver, Service, dan provider.

## Implemented

- Menambahkan `home_activity.xml` berdasarkan layout Reference.
- Mengembalikan custom view type Reference pada Home:
  - `org.swiftapps.swiftbackup.views.NoSwipeViewPager`
  - `org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView`
- Menambahkan `home_appbar.xml` berdasarkan Reference.
- Menambahkan `menu_bottom_home.xml` berdasarkan Reference.

## Verification

- Struktur dan isi file Home dibandingkan langsung dengan artefak Apktool Reference.
- Belum build.
- Belum runtime tested.
- Belum visual compared.
- Belum verified 1:1.

## Blocked / Missing

Resource dan dependency yang dirujuk Home belum seluruhnya direkonstruksi ke `rewrite`, termasuk:
- resource IDs lengkap
- dimens/styles/colors lengkap
- font resource
- drawable/icon selectors
- custom view classes
- HomeActivity behavior
- Fragment/ViewPager contents
- application/manifest reconstruction

Karena itu Home saat ini **belum dapat diklaim buildable atau 1:1**.

## Next Action

Lanjutkan reconstruction dari Reference:
1. resource contract Home (IDs, dimens, styles, colors, drawables, fonts)
2. manifest/application contract
3. custom Home view classes
4. HomeActivity behavior/navigation
5. build
6. runtime/visual comparison
7. regression verification
