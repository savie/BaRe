# ADB Runtime via Termux

## Purpose

This is the no-laptop runtime path for validating BaRe's `ADB` capability.
BaRe connects to an ADB host/server on `127.0.0.1:5037`; Termux is the host-side ADB environment.

## Android prerequisite

Android 11+ supports Wireless Debugging with a pairing code. The pairing endpoint and the later connection endpoint are separate. See the official Android ADB documentation before testing.

## Termux setup

Install a supported Termux build and make `adb` available in Termux. Then pair the device's Wireless Debugging endpoint and connect to the device itself.

Typical flow:

```sh
pkg update
pkg install android-tools
adb pair 127.0.0.1:<PAIRING_PORT>
# enter the six-digit pairing code shown by Wireless Debugging
adb connect 127.0.0.1:<CONNECT_PORT>
adb devices
```

The pairing port and connection port are normally different. Keep the ADB server running on Termux port `5037` while testing BaRe.

## BaRe verification

1. Open BaRe.
2. Select `ADB` mode.
3. Tap `Test ADB`.
4. Expected status:

```text
ADB verified: <identity> via localhost:5037
```

5. Select an installed package such as Acode or Adobe Express.
6. Tap `Backup APK (ADB)`.
7. Expected archive metadata contains `privilegeMode: ADB` and the APK components pulled through the ADB transport.

## Verification boundaries

- `ADB provider implemented` does not mean the device path is verified.
- `Test ADB` proves the local ADB server/transport and shell identity.
- `Backup APK (ADB)` proves package-path discovery, ADB pull, archive creation, and archive integrity for that package.
- App-data backup is outside this P0 slice.
