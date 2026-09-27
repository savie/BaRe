# Referensi rekonstruksi Swift

## Bukti yang digunakan

- `5.1.0 (620).apk`
- `SwiftBackup-5.1.0-620-decompiled.zip` (JADX + Apktool)
- `data_org.swiftapps.swiftbackup.zip` dan `backup_swift_com.bare.zip` sebagai bukti runtime/data pendukung.

## Observasi terverifikasi

- Package aplikasi: `org.swiftapps.swiftbackup`.
- Launcher activity: `org.swiftapps.swiftbackup.intro.IntroActivity`.
- Application class: `org.swiftapps.swiftbackup.SwiftApp`.
- Keluarga activity yang teramati mencakup Home, app list/detail, folders, messages/calls, settings, configuration, dan APK import.
- Versi APK referensi: `5.1.0 (620)`.

## Status rekonstruksi

Dokumen ini adalah reference/evidence, bukan implementation Apps2 dan bukan salinan source hasil dekompilasi. Perilaku internal yang belum dapat dibuktikan tetap ditandai untuk investigasi lanjutan.

Status: **PARTIAL / UNVERIFIED** untuk feature parity.
