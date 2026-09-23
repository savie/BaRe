# BaRe — reference reconstruction

## Evidence used

- `5.1.0 (620).apk`
- `SwiftBackup-5.1.0-620-decompiled.zip` (JADX + Apktool output)
- `data_org.swiftapps.swiftbackup.zip` and `backup_swift_com.bare.zip` as supporting runtime/data evidence.

## Verified observations

- Application package: `org.swiftapps.swiftbackup`.
- Launcher activity: `org.swiftapps.swiftbackup.intro.IntroActivity`.
- Application class: `org.swiftapps.swiftbackup.SwiftApp`.
- Observed activity families include Home, app list/detail, folders, messages/calls, settings, configuration and APK import.
- Supplied APK version: `5.1.0 (620)`.

## Reconstruction status

This branch contains a **new implementation**, not a copy of the decompiled source. Names and behavior are kept explicit where the external contract is known. Internal behavior that cannot be proven from the supplied artifacts is deliberately left for later passes.

Status: **PARTIAL / UNVERIFIED** for feature parity.
