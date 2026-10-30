# Local Account Vault implementation slice

This directory contains the first executable implementation slice for the Hybrid Local Account Vault defined in `docs/audit/local-account-hybrid-vault-technical-design.md`.

## Scope in this PR

- Versioned single-file envelope.
- 256-bit random DEK; AES-256-GCM payload encryption and DEK wrapping.
- User-held recovery secret; PBKDF2-HMAC-SHA-256 parameters are stored in the envelope and supplied/configured by the caller.
- Device-binding fingerprint is a continuity signal only. A mismatch blocks the ordinary unlock path.
- Explicit transfer requires a separate confirmation flag and preserves LocalAccountId and LegacyUid.
- Process mutex + OS file lock, bounded parsing, authenticated reopen-before-publish, sibling temp file, fsync, and retained previous generation.
- No CI workflow is added or modified.

## Deliberate boundaries

This is a pure-Java engine intended for integration into the authoritative Android source when that source/build project is supplied. The tracked repository currently contains a decompiled/reference snapshot, not a verifiable Gradle source project. Therefore this PR does **not** pretend to wire the engine into decompiled smali, alter `bare-implementation/`, or claim an APK build/runtime pass.

The Android integration adapter still needs to:
1. Resolve the exact shared-storage location and check the actual runtime grant before calling this engine.
2. Obtain a stable app-scoped Android identifier and package identity, then call `deviceFingerprint`. This value is not hardware attestation.
3. Present/export the generated recovery secret once and require user confirmation before publishing the vault.
4. Supply a benchmarked PBKDF2 iteration count for the minimum supported device/API matrix.
5. Integrate optional Android Keystore wrapping as a convenience unlock path; it must never replace recovery wrapping.
6. Call `transfer` only after explicit user confirmation.
7. Preserve the existing MFirebaseUser UID and `accounts/{16-hex-key}/` namespace during migration.
8. Keep Google sign-in routing explicit; this engine does not select providers or link Firebase identities.

## API outline

- `generateRecoverySecret()`: creates a 256-bit hex recovery secret. Display it once; do not persist it.
- `create(...)`: creates and verifies one vault; refuses to overwrite an existing vault.
- `unlock(...)`: ordinary same-binding unlock.
- `transfer(..., confirmed)`: decrypts an existing vault, then atomically rebinds it to the new fingerprint while preserving IDs.
- `inspect(...)`: reports absent/valid/binding mismatch/corrupt without silently creating an account.

The payload is opaque UTF-8 JSON bytes so the integration layer can serialize the existing MFirebaseUser model without changing its schema.

## Local verification

No CI is configured. The Java source is dependency-free and targets Java 8 language/runtime APIs. It should be compiled and exercised by the integration owner on the chosen JDK/Android toolchain before application wiring. Runtime device verification remains required for Android storage permissions, uninstall/reinstall, Keystore lifecycle, and OEM behavior.
