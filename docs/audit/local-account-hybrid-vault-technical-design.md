# BΛR☰ — Hybrid Persistent Local Account Vault
## Technical Design & Dependency Audit

**Date:** 2026-10-30  
**Repository:** savie/BaRe  
**Branch inspected:** Working  
**Selected policy:** Hybrid — device-bound by default, reinstall recovery, explicit cross-device transfer  
**Status:** design + static dependency audit only; no application implementation or runtime verification.

## 1. Executive decision

Hybrid persistence is feasible, with an important distinction:

- A local account is **device-associated by default**.
- Reinstall on the same Android user/device restores the same Local Account ID from the external vault.
- A new device cannot silently adopt a copied vault; it must enter an explicit transfer/recovery flow.
- Recovery requires a user-held recovery secret. The recovery secret must not be stored in plaintext beside the ciphertext.

A .enc file by itself cannot guarantee both secure encryption and recovery if every decryption secret is also stored beside it. If the only available artifact is a ciphertext file and there is no user-held secret or surviving device-held key, recovery is cryptographically impossible by design.

**Recommended user-visible rule:** ordinary reinstall on the same device restores the existing account; a detected device change asks the user to explicitly transfer/recover. A successful transfer rebinds the vault to the new device and preserves the account UID.

## 2. Repository and evidence baseline

The inspected branch is Working; GitHub branch search returned only the branch Working.

| Path | Blob SHA | Evidence |
|---|---|---|
| bare-implementation/AndroidManifest.xml | ff70e2ac0031f0a34e12fec6b49e8f117c37986c | Package com.bareapps.barebackup; declares READ/WRITE_EXTERNAL_STORAGE and MANAGE_EXTERNAL_STORAGE; app requests legacy external storage; compile SDK metadata 37. |
| bare-implementation/smali/com/bareapps/barebackup/common/V.smali | 128775626e1b6e4ccd8dde6a2af23a0edf32fc16 | getNon()/setNon() store serialized MFirebaseUser JSON in SharedPreferences key 456987168448. |
| bare-implementation/smali/b45.smali | c939599a27b0af668c8785ba6766077b39094358 | Creates pseudo-anonymous MFirebaseUser; UID originates from APK signing Signature.hashCode(), then transformation/reversal. Not a unique device identity. |
| bare-implementation/smali/d45.smali | c92856a7cd0a43d798783a1a063984a10a720c0b | Resolver first reads V.getNon(); if absent, maps Firebase Auth current user; otherwise returns null. |
| bare-implementation/smali/qy5.smali | c58d7e4d041fa2a557dd23700052a1d9e14a5ac8 | e(MFirebaseUser) takes first 16 hex chars of MD5 UID for an account storage namespace. This is a path identifier, not a cryptographic key. |
| bare-implementation/smali/g67.smali | 492395585d9cf443349e965e509410bd62c54922 | w(String) computes MD5 hex. Not suitable as a new encryption/key derivation design. |
| bare-implementation/smali/ry5.smali | 93226026d432304b27c4cfc6085a9fa1a7b86c6f | Builds the existing storage namespace {root}/accounts/{16-hex-key}/ and backup subdirectories. |
| bare-implementation/smali/q63.smali | e665420c8430dc689e65096483f584d72d7650ae | File abstraction wraps java.io.File and exposes filesystem operations. |
| bare-implementation/smali_classes2/q9.smali | ce91405cf3769b2454a4579cff860a1122fa5eea | Runtime permission mapping selects MANAGE_EXTERNAL_STORAGE on newer Android; legacy read/write permissions otherwise. |

The root README describes the repository content as a Swift Backup reference/decompilation snapshot. Root build.gradle, settings.gradle, and gradle/libs.versions.toml were not found. The current checked-out artifact therefore does **not** expose a verified native source/build project in which a new Android feature can safely be compiled and tested.

### Evidence levels

- **Static-confirmed:** declarations and call paths listed above.
- **Inferred:** expected lifecycle behavior and design consequences.
- **Unknown:** actual device runtime behavior, source build configuration, dependency versions, exact target SDK for the BΛR☰ product build, and uninstall/reinstall behavior on target OEM devices.

Do not treat decompiled smali as the authoritative source project or a successful runtime implementation.

## 3. Domain model

Keep these concepts separate:

| Concept | Meaning | Must remain stable? |
|---|---|---|
| LocalAccountId | Stable account identity used by BΛR☰ and existing backup namespace | Yes, including reinstall and authorized transfer |
| LegacyUid | Existing MFirebaseUser.uid value used by current storage namespace | Yes during migration |
| DeviceBindingFingerprint | Non-secret signal used to recognize the same Android installation/device context | Expected to match across normal reinstall; may change after reset, user change, signing identity change, or OS behavior |
| VaultDEK | Random data-encryption key encrypting the vault payload | Stable while vault exists; never logged |
| RecoverySecret | User-held high-entropy recovery phrase/code used to recover the DEK | Not stored in plaintext in the vault directory |
| KeystoreWrappingKey | Optional Android Keystore key used for convenient unlock while installed | Convenience only; never the only recovery route |

The current certificate-derived pseudo UID must not be reused as DeviceBindingFingerprint. A signing certificate is shared by all installations of the same signed APK, so it does not distinguish devices.

## 4. Hybrid cryptographic design

### 4.1 Envelope model

Use envelope encryption:

1. Generate a cryptographically random 256-bit VaultDEK using SecureRandom.
2. Encrypt the serialized account payload using AES-256-GCM with a fresh 96-bit nonce and 128-bit authentication tag.
3. Derive a recovery wrapping key from the user-held RecoverySecret using PBKDF2-HMAC-SHA-256 with a per-vault random salt and stored KDF parameters.
4. Wrap the VaultDEK with AES-256-GCM under the derived recovery wrapping key.
5. While the app is installed, optionally create a non-exportable Android Keystore AES wrapping key and store a second wrapped copy of the VaultDEK. This is a convenience path, not a recovery dependency.
6. Persist only ciphertext, nonces, salts, KDF parameters, wrapped DEK(s), schema metadata, and device binding metadata in the vault file. Do not persist plaintext RecoverySecret or plaintext DEK.

Use platform JCA/JCE APIs where supported by the actual build/runtime. Select and test an approved KDF configuration against the minimum supported Android/device performance. Store algorithm identifiers and parameters in the file format so they can be migrated. Do not hardcode an unbenchmarked iteration count as a universal performance assumption.

### 4.2 Same-device reinstall

- At first enrollment, record a non-secret device-binding fingerprint and the recovery-wrapped DEK.
- While installed, use the Keystore-wrapped DEK for convenient local unlock when available.
- After uninstall, the app-private Keystore alias may be unavailable. Do not assume it survives uninstall.
- After reinstall on the same Android user/device, detect the existing vault and compare the device-binding fingerprint.
- If the local Keystore wrapper is unavailable, request RecoverySecret once, decrypt and authenticate the vault, then provision a fresh local Keystore wrapper.
- Preserve LocalAccountId and LegacyUid. Do not generate a second account.

### 4.3 Cross-device transfer

If the fingerprint differs:

- Do not silently unlock using the ordinary same-device path.
- Show an explicit Transfer existing account to this device flow.
- Require RecoverySecret and an explicit user confirmation.
- Authenticate/decrypt the old vault before making any change.
- Re-wrap the same VaultDEK for the new device's local Keystore key and update the binding metadata.
- Write and verify the new vault atomically before retiring/replacing the old binding.
- Preserve LocalAccountId and LegacyUid. Transfer must not create a new account or new backup namespace.

**Security qualification:** the fingerprint is a device-recognition signal, not a cryptographic secret. It must not be described as strong anti-cloning protection. The real confidentiality boundary is the recovery secret and authenticated encryption. A user who intentionally supplies the recovery secret can authorize a transfer. A copied vault without the recovery secret or a valid local Keystore wrapper must not be decryptable.

### 4.4 Device fingerprint limitations

A candidate is a hash of a stable Android app-scoped identifier (for example SSAID/ANDROID_ID), app package identity, and a vault-specific random salt. Treat this only as a continuity/transfer prompt signal:

- It is not a secret and must not be used alone as an encryption key.
- It can change after factory reset, Android user/profile changes, app signing identity changes, or platform/OEM behavior.
- It is not a reliable proof of physical hardware identity.
- If it changes on the same physical device, recovery remains possible using RecoverySecret; show recovery instead of creating a new account.

The exact fingerprint source and behavior must be validated on the actual min/target SDK and supported OEM matrix before implementation.

## 5. Vault file format and filesystem contract

Recommended single-file layout:

    /storage/emulated/0/BΛR☰/accounts/
        local-account-<opaque-id>.enc
        .local-account.lock       # transient lock only; no secrets

The single .enc file is a versioned envelope (binary or canonical JSON container with strict size limits) containing:

- magic bytes and format version;
- opaque LocalAccountId;
- payload algorithm ID, nonce, ciphertext, authentication tag;
- KDF algorithm ID, salt, work parameters;
- recovery-wrapped DEK and its nonce/tag;
- optional Keystore-wrapped DEK metadata (never the Keystore key);
- DeviceBindingFingerprint and binding schema version;
- payload schema version and migration markers.

Do not use an external .key file containing a plaintext key. If compatibility requires several files later, every key-bearing item must be wrapped and the trust model documented.

### Atomic persistence

- Acquire a process-wide mutex and an OS file lock before enrollment, migration, transfer, or deletion.
- Enforce a single active vault. Scan and validate existing *.enc files before creating a new one.
- Write a temporary sibling file, flush/sync, verify the complete envelope by reopening it, then atomically rename/replace.
- Keep a previous valid generation until the replacement has passed validation; avoid deleting the only good vault during rotation.
- Reject symlinks/path traversal and enforce expected parent directory and file-size bounds.
- Do not consider a write successful until the file can be reopened and authenticated.

AtomicFile may be evaluated as a platform helper for app-private paths; its behavior for the required shared-storage path and direct file replacement must be tested. Do not assume a helper automatically supplies inter-process locking.

## 6. Account lifecycle and resolver contract

Target non-Google resolver flow:

    Application start
      -> detect authenticated Google/Firebase user
           -> if active provider is Google: preserve existing Google path
      -> otherwise inspect external local vault
           -> exactly one valid vault: unlock/restore existing local account
           -> one vault but device fingerprint differs: explicit transfer/recovery
           -> vault present but corrupt/key unavailable: recovery-required; never auto-create
           -> no vault + legacy SharedPreferences account: migrate legacy account
           -> no vault + no legacy account: offer first-time local enrollment

The current d45.a() checks V.getNon() before Firebase current user. The product implementation must define provider precedence explicitly so local vault restoration cannot hijack an active Google session. This is a behavior change requiring regression tests.

### Session operations

- signOutLocal(): clear active in-memory/session state only; keep vault.
- unlockLocal(): decrypt and validate vault; restore same account object.
- transferLocal(): explicit user-approved rebind; preserve IDs.
- deleteLocalAccountPermanently(): destructive, separately confirmed, removes vault only after clear confirmation.
- createLocalAccount(): permitted only if no valid vault and no legacy account exists, or after explicit permanent deletion.

Never interpret setNon(null) as a request to erase the persistent vault. Its existing cache semantics must be separated from vault deletion.

## 7. Legacy migration

Migration must be idempotent and non-destructive:

1. Acquire the same vault lock.
2. Read the legacy JSON using V.getNon().
3. Validate required fields and preserve the exact existing UID.
4. Construct a versioned vault payload with the same LocalAccountId mapping and LegacyUid.
5. Require recovery setup before declaring uninstall recovery enabled.
6. Write to a temporary vault, reopen/decrypt/validate it, then atomically publish it.
7. Keep the old SharedPreferences cache until the new vault is verified and resolver reads the new vault successfully.
8. On any failure, retain legacy data and continue to report migration pending; never create a replacement UID.
9. After successful rollout and a safe compatibility period, SharedPreferences may become a disposable cache, not the source of truth.

Existing namespace logic qy5.e() derives a path identifier from UID. Migration must not change that UID or rename backup directories without a separate, verified data migration.

## 8. Android storage and permission dependency audit

### Existing evidence

- Manifest already declares MANAGE_EXTERNAL_STORAGE, READ_EXTERNAL_STORAGE, and WRITE_EXTERNAL_STORAGE.
- Manifest sets requestLegacyExternalStorage=true.
- Runtime permission mapping in q9.smali selects MANAGE_EXTERNAL_STORAGE on newer platform versions and legacy read/write permissions otherwise.
- q63 wraps java.io.File; existing storage code uses filesystem paths.
- The required /storage/emulated/0/BΛR☰/accounts/ is shared external storage, not app-specific external storage.

### Implications

- Do not place the only vault in getFilesDir() or getExternalFilesDir(): app-specific files are removed on uninstall.
- Direct File API access to arbitrary shared-storage paths on modern Android generally requires the appropriate all-files access grant; declaring the permission does not mean the user has granted it.
- The implementation must check Environment.isExternalStorageManager() (or equivalent platform gate) and storage mount/write state before operating.
- WRITE_EXTERNAL_STORAGE does not provide modern broad shared-storage write access for apps targeting Android 11+.
- Google Play restricts MANAGE_EXTERNAL_STORAGE to eligible core use cases and requires policy declaration/review. BΛR☰'s backup/restore purpose may be relevant, but approval is not guaranteed.
- SAF can be a privacy-friendlier alternative, but it is URI/document-provider based and does not guarantee that a selected directory maps to the exact literal filesystem path requested. The product must choose whether exact path is mandatory or whether a user-selected persistent document tree is acceptable fallback.
- Permission denied, storage unmounted/read-only, or path unavailable must produce a visible setup/recovery state; never silently create a private replacement vault.

**Dependency verdict:** the current manifest already contains the principal broad-storage permission declaration. No new storage permission should be added blindly. Runtime flow, policy eligibility, target SDK, and exact-path behavior still need device/build verification.

## 9. Cryptography and library dependency audit

### Existing static evidence

The decompiled tree contains platform JCA/JCE references (for example javax.crypto.Cipher, SecretKeySpec, and GCMParameterSpec) in other subsystems and bundled libraries. It also contains crypto code for unrelated libraries/protocols (including Nimbus JOSE and Microsoft identity components).

This proves that crypto-related classes exist in the decompiled artifact; it does **not** prove that an existing helper is appropriate for the local account vault, that it is called by the local-account path, or that its key management is safe for uninstall recovery.

No direct account-vault use of Android Keystore, PBKDF2, or AES-GCM was confirmed in the inspected local-account call path. No dependency manifest/build file was available to establish the exact resolved library versions.

### Recommended dependency strategy

- Prefer Android/JDK platform cryptography APIs first: SecureRandom, Cipher, SecretKeyFactory, PBEKeySpec, GCMParameterSpec, KeyStore, and AndroidKeyStore, subject to API-level/provider compatibility tests.
- Avoid adding a third-party crypto library unless a documented compatibility/security requirement cannot be met by platform APIs.
- Do not reuse MD5 helpers from g67 or the MD5-derived storage key from qy5 for encryption, key derivation, or authentication.
- Do not reuse the Microsoft identity or Nimbus JOSE crypto helper simply because those classes exist in the APK.
- Add a cryptography test suite for known-answer vectors, tamper detection, nonce uniqueness, wrong recovery secret, malformed envelope, and supported Android providers.

**Dependency verdict:** no new third-party dependency is justified at design time. Actual build dependency audit remains blocked until the native Gradle/source project is available.

## 10. Dependency register

| Dependency | Current evidence | Use in design | Status |
|---|---|---|---|
| Android shared storage / File API | Manifest + q63 filesystem wrapper | Read/write required external vault path | Existing capability; runtime grant not verified |
| MANAGE_EXTERNAL_STORAGE | Declared in manifest; runtime mapping in q9 | Exact shared path on modern Android | Existing declaration; user grant and distribution policy unknown |
| SharedPreferences | V.getNon/setNon | Legacy migration and disposable cache | Existing; not uninstall persistence |
| Firebase Auth | d45.a() fallback | Preserve Google/Firebase provider path | Existing; precedence must be regression-tested |
| Java JCA/JCE | References in other decompiled components | AES-GCM, KDF, secure random, Keystore adapter | Platform APIs available in principle; build/runtime provider compatibility unknown |
| Android Keystore | No confirmed account-vault use | Optional local DEK wrapper | Proposed; lifecycle and hardware backing must be tested |
| Atomic write helper | Android platform offers AtomicFile; no account-vault use confirmed | Crash-safe vault replacement | Proposed; shared path semantics require test |
| Gradle/AGP/Kotlin/dependency lock | Root build files not found | Compile and dependency resolution | Blocked / unknown |
| Device test infrastructure | Not inspected / not present in checked evidence | uninstall/reinstall, OEM, API matrix | Unknown |

## 11. Implementation boundary and repository hygiene

Do not edit bare-implementation/ for this feature.

The current repository evidence is a decompiled/reference snapshot and does not expose a verified native Gradle source project. Before application integration:

1. Locate the authoritative BΛR☰ native source/build repository or module.
2. Verify branch, HEAD SHA, build system, package ID, min/target SDK, Kotlin/Java version, test setup, and dependency lock.
3. If no native source project exists, create a separate implementation workspace under tools/local-account-vault/ for a testable prototype/specification, not an unconnected code drop that is represented as integrated into the app.
4. Define the narrow integration interface before wiring it into the account resolver.
5. Keep the decompiled folder read-only as audit evidence.

## 12. Acceptance and verification matrix

| ID | Scenario | Expected result |
|---|---|---|
| HV-01 | Fresh install + first local enrollment | One vault only; random LocalAccountId and DEK; recovery setup completed |
| HV-02 | Second enrollment attempt | Existing vault detected; no second account or overwrite |
| HV-03 | Force-stop / reboot | Same LocalAccountId restored |
| HV-04 | Uninstall + reinstall, same device, vault intact | Same LocalAccountId and LegacyUid restored; no new account |
| HV-05 | Reinstall without Keystore alias | RecoverySecret unlocks vault; new local wrapper provisioned |
| HV-06 | Copy vault to different device without RecoverySecret | Cannot decrypt; transfer flow not silently bypassed |
| HV-07 | Copy vault to different device with RecoverySecret | Explicit transfer confirmation; same account IDs preserved; device binding updated |
| HV-08 | Factory reset / changed fingerprint | Recovery flow; no silent new account |
| HV-09 | Wrong RecoverySecret / modified ciphertext | Authentication fails; original file preserved |
| HV-10 | Sign out local account | Session/cache cleared; vault remains |
| HV-11 | Explicit permanent deletion | Confirmed vault deletion; subsequent enrollment may create new account |
| HV-12 | Legacy SharedPreferences migration | Exact old UID retained; old namespace unchanged; migration idempotent |
| HV-13 | Google/Firebase session active | Existing Google path remains active; local vault does not hijack it |
| HV-14 | Permission revoked / external storage unavailable | Explicit error/recovery state; no silent fallback |
| HV-15 | Two concurrent first-run processes | Single vault wins; second process loads existing vault |
| HV-16 | Crash during write/transfer | Previous valid vault remains recoverable |
| HV-17 | Storage full / read-only volume | Operation fails safely without partial success |
| HV-18 | Supported Android/OEM matrix | Permission, path, Keystore, SSAID, uninstall behavior recorded per device |

No HV test is claimed passed. These are future acceptance criteria.

## 13. Open decisions / implementation gates

The selected Hybrid policy resolves the product mode. Remaining engineering gates:

1. **Recovery UX:** choose user-entered passphrase vs generated high-entropy recovery code (recommended: generated recovery code with explicit export/confirmation, optionally user passphrase as secondary wrapper).
2. **Exact path vs SAF fallback:** confirm whether the literal path is mandatory on every supported device or whether a SAF-selected folder can be offered if broad access is unavailable.
3. **Distribution channel:** establish whether Google Play is a target, because MANAGE_EXTERNAL_STORAGE approval is a release risk.
4. **Authoritative source/build:** identify the native Gradle source project; current checked repo does not provide one.
5. **Device support matrix:** choose minimum Android version and representative OEMs for uninstall/reinstall and Keystore/SSAID testing.

## 14. Final status

- Hybrid design: **specified**.
- Static account-flow audit: **partially confirmed**.
- Storage permission dependency: **declared in manifest; runtime grant unknown**.
- Crypto implementation for local vault: **not present/confirmed in the inspected account path**.
- Build/dependency resolution: **blocked by absent native build files**.
- Implementation: **not started**.
- Runtime verification: **not started**.
- bare-implementation/: **unchanged**.

The next valid step is to resolve the implementation gates and locate the authoritative source/build project. Do not start application integration against decompiled smali.
