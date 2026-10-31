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


---

# 15. Product-flow and existing-code integration addendum (2026-10-30)

This addendum refines the Hybrid design based on the owner's clarification. It supersedes earlier wording where inconsistent.

## 15.1 Intro Skip means Local Account

The existing Intro button (intro_skip_sign_in_button.xml, ID btn_anonymous, text skip_for_now) is the entry point to Local Account resolution. Skip means "continue without Google", not "bypass account resolution or security".

- Existing valid vault: authenticate/unlock and continue with the same account.
- No vault and no migratable legacy local account: create a new Local Account.
- Existing but unreadable/tampered vault: recovery/error state; never silently create a replacement account.
- Different device binding: require recovery proof and explicit transfer confirmation.
- After new account creation, route through the existing Password Strategy screen if the backup-encryption strategy is not configured.

Static target artifacts include bare-implementation/smali_classes2/com/bareapps/barebackup/intro/IntroActivity.smali and bare-implementation/res/layout/intro_skip_sign_in_button.xml. The click listener and full Intro state transitions must be traced before selecting a patch point.

## 15.2 Reuse the existing Password Strategy

A fresh repository inspection found these existing BΛR☰ artifacts:

| Artifact | Static evidence | Design use |
|---|---|---|
| password/PasswordStrategyActivity.smali | Persists saved_password_mode and saved_user_password; handles STANDARD_PASSWORD and USER_PASSWORD | Reuse existing strategy selection and state semantics |
| password/UserPasswordActivity.smali | Existing user-password activity | Reuse the existing user-defined password flow |
| res/layout/password_strategy_activity.xml | Existing strategy screen | Reuse UI |
| res/layout/password_strategy_item.xml | Existing strategy card and set-password control | Reuse UI |
| reference/jadx/sources/org/swiftapps/swiftbackup/password/PasswordStrategyActivity.java | Reference implementation of selection handling | Behavioral reference only |

The corresponding strings describe:
- **Standard:** app-generated passwords for encrypted backups, described as account/feature-dependent in the reference.
- **Advanced:** user-entered password contributes to the final encrypted-backup password; losing it can prevent backup decryption/restoration.

**Critical distinction:** the existing Password Strategy is a backup-encryption feature. It is not yet proven to be a stable Local Account vault recovery credential. Standard's per-feature generated backup passwords must not be assumed to be one portable recovery code. Reuse the existing screen and implementation for backup encryption, but keep vault recovery independently defined and testable until the generator and data flow are audited.

The existing activity writes saved_user_password to SharedPreferences. Whether V.getZ() is encrypted/protected storage is unknown. A string description saying a password is encrypted is not proof that this BΛR☰ preference path is encrypted at rest. Audit the preference implementation before reusing it for vault recovery.

If Advanced is later allowed to protect the vault too, derive separate purpose-specific keys with separate salts/context labels. Never reuse one derived key directly for both vault encryption and backup payload encryption.

## 15.3 First-time Local Account flow

When Skip is pressed and no vault or migratable legacy account exists:

1. Check shared-storage access and existing account files.
2. Create a provisional LocalAccountId and random VaultDEK in memory.
3. If no valid backup Password Strategy exists, open the existing PasswordStrategyActivity.
4. Apply Standard or Advanced to the existing encrypted-backup behavior.
5. Provision the vault's separate recovery wrapper. Recommended default remains a generated high-entropy recovery code, displayed once with save/confirmation.
6. Do not publish a completed vault until required metadata, wrapped DEK, recovery setup, and selected account state are valid.
7. Commit atomically, then continue Intro completion.

A future option to create a Local Account without configuring backup encryption must be represented as an explicit pending state, not a partially valid vault.

## 15.4 Changing Password Strategy

Changing Standard/Advanced in Account > Settings > Encryption Password Strategy affects encrypted-backup behavior only. It must not silently rotate vault recovery, LocalAccountId, LegacyUid, or the existing qy5.e() namespace. Vault recovery rotation is a separate authenticated operation with atomic write and reopen/verify.

## 15.5 Local Account to Google: link provider, preserve account

Preferred behavior is to **link Google as an additional authentication method for the existing BΛR☰ account**, not replace the account's stable data identity with a new Firebase UID.

Target flow:
1. Unlock/authenticate the Local Account.
2. User selects Connect Google from Account settings.
3. Run the existing Google sign-in flow and validate the Google/Firebase identity.
4. Check whether that Google identity is already linked to another BΛR☰ account.
5. If unclaimed, link it to the current BΛR☰ account.
6. Preserve LocalAccountId and LegacyUid as stable data/backup identity; keep accounts/{16-hex-key}/ unchanged.
7. Keep local vault/recovery available unless the user explicitly disables it after confirming another recovery route.
8. Allow Google as the preferred sign-in route after successful linking.

Conflict/rollback:
- If Google belongs to another BΛR☰ account, stop; no automatic merge, overwrite, or namespace migration.
- If linking fails or is interrupted, keep the Local Account and vault unchanged.
- Do not delete the local vault after linking.
- Google unlink requires a working local recovery method to avoid orphaning the account.

The existing model uses MFirebaseUser and Firebase Auth, but static evidence does not prove that the pseudo-local identity is a Firebase anonymous user or that the current backend supports linking it safely. A BΛR☰ identity mapping/backend contract or explicit Firebase account migration may be required. This is a discovery gate, not an assumed API call.

## 15.6 Resolver/provider selection

The earlier simplistic "Google always wins" rule is replaced with explicit user intent:
- Skip explicitly selects the Local Account route.
- Google sign-in explicitly selects the Google route.
- A pre-existing active Google session must not hijack an explicit Skip action.
- A stale local SharedPreferences model must not hijack an explicitly selected valid Google account.
- If local vault and Google session coexist, resolve their account-link relationship; do not choose by arbitrary precedence.
- On restart, restore the last selected provider only after validating its state.

## 15.7 Patch workspace and build evidence

The owner clarified that engineering/patch-generation work belongs under tools/, but must match the existing decompiled BΛR☰ implementation.

- bare-implementation/ is the target patch baseline and remains unchanged during design/discovery unless patch application is explicitly authorized.
- reference/apktool/ and reference/jadx/ are read-only reference evidence.
- tools/local-account-vault/ is the proposed workspace for audit scripts, patch-generation scripts, patch files, fixtures, and verification records.
- Every generated patch must target actual classes/resources/package paths in bare-implementation/, record source blob SHAs and before/after hashes, and be reproducible.
- Do not create an unrelated native app or claim an un-applied patch is integrated.

**Build inventory correction:** a fresh recursive tree scan of branch Working (HEAD f9ffe4d12bf4eb70e66a63ce8345d2c1ebab1c3d) found reference/apktool/ and reference/jadx/ with extensive decompilation artifacts, including Password Strategy source/resources. It did not find build.gradle, settings.gradle, gradlew, Gradle wrapper, or a version catalog anywhere in tracked files; app/ contained only app/google-services.json. Gradle files may exist in the user's local/untracked workspace, but their presence in tracked reference/ is not supported by this branch snapshot. Request their exact location during build discovery.

## 15.8 Additional acceptance criteria

| ID | Scenario | Expected result |
|---|---|---|
| HV-19 | Intro > Skip, no vault/legacy account | Enters first-time Local Account enrollment; does not bypass account setup |
| HV-20 | Intro > Skip, valid vault | Authenticates and restores same LocalAccountId/LegacyUid/namespace |
| HV-21 | Vault exists but is invalid/unavailable | Recovery/error; no auto-create |
| HV-22 | First enrollment without configured Password Strategy | Opens existing PasswordStrategyActivity |
| HV-23 | Standard selected | Existing backup password generation remains compatible; vault recovery is separate |
| HV-24 | Advanced selected | Existing user-password flow reused; vault recovery remains separately defined |
| HV-25 | Password Strategy changed later | Does not change account identity, vault recovery, or backup namespace |
| HV-26 | Local Account linked to Google | Same BΛR☰ account and backup namespace; Google is an additional login route |
| HV-27 | Google identity already belongs to another account | Conflict; no automatic merge/overwrite |
| HV-28 | Google linking fails | Existing Local Account and vault remain usable |
| HV-29 | Google unlink | Local recovery is verified before unlink |
| HV-30 | Patch generated under tools/ | Targets verified decompiled paths; bare-implementation remains unchanged until authorized application |

None of HV-19 through HV-30 is claimed passed.

## 15.9 Updated gates and status

- Trace Standard password generation and anonymous/local behavior.
- Audit V.getZ() and protection of saved_user_password.
- Trace complete Intro Skip click path and Account Settings navigation.
- Inspect Firebase/Auth/backend ownership and safe Google-link feasibility.
- Obtain exact Gradle/build file location if outside tracked Working tree.
- Product flow and target integration are specified; patch and implementation have not started.
- bare-implementation/ remains unchanged.


---

# 16. Owner-approved Local sign-out and Intro Skip restoration behavior (2026-10-31)

This section supersedes any earlier ambiguous UX wording in Sections 6 and 15.

## 16.1 Sign-out contract

- Sign-out exits/closes the application after ending the active Local session.
- It does not delete the Local Account, vault, backup namespace, Config/Label data, recovery metadata, or pending local work.
- It must not call FirebaseAuth.signOut(), the Google package-clear/Shizuku path, or SharedPreferences.Editor.clear() for a Local Account.
- Persist an explicit active-session marker separately from persistent LocalAccount identity. Sign-out marks the Local session inactive, then closes the app. The next cold launch must show Intro rather than silently reactivating the account.
- The existing Google sign-out branch remains unchanged.

## 16.2 Intro > Skip resolver contract

On explicit Skip, inspect `/storage/emulated/0/BΛR☰/accounts/*` and recovery artifacts:

| State | Required behavior |
|---|---|
| Exactly one valid local vault, available for automatic same-device activation | Activate the exact same LocalAccountId and namespace; do not prompt for a credential and do not create a new identity |
| No local vault, but a matching recovery artifact exists | Ask for the recovery credential, validate/decrypt the artifact, and restore the same identity |
| No vault and no recovery artifact | Start first-time Local Account enrollment |
| Corrupt/unreadable vault | Recovery-required error; do not auto-create |
| Multiple or ambiguous vaults | Conflict resolution; never select arbitrarily |
| Storage permission/path unavailable | Visible storage setup/error state; never silently fall back to private storage |

A recovery credential by itself is not an account or data backup. Recovery requires a valid vault or a matching recovery artifact. Password Strategy remains a backup-encryption setting and is not implicitly the Local vault unlock credential.

## 16.3 Required state separation

Maintain distinct values for:

- persistent `LocalAccountId` and vault identity;
- current active-session state;
- recovery capability/artifact metadata;
- existing Google/Firebase authenticated session.

Do not overload `V.getA()`, `V.getG()`, `V.getNon()`, or backup Password Strategy as a substitute for this complete state model without a proven migration contract.

## 16.4 Acceptance criteria

- Sign-out closes app and leaves vault bytes/data intact.
- Cold relaunch displays Intro.
- Intro > Skip with one valid same-device vault activates the same LocalAccountId and backup namespace.
- Intro > Skip with recovery artifact but no active vault requests recovery credential and restores the same identity.
- Intro > Skip with neither vault nor recovery artifact begins enrollment.
- Corrupt/multiple vaults never trigger silent account creation.
- Google sign-in, Google sign-out, Firebase Auth, cloud Config/Label, and cloud sync retain existing behavior.


---

# 17. Owner decision: Direct Filesystem Access (2026-10-31)

The owner selected **Direct Filesystem Access (option B)** over SAF. This supersedes the earlier open choice in Section 15.7. The required Local Account root remains:

`/storage/emulated/0/BΛR☰/accounts/`

## 17.1 Existing permission path to reuse

Static inspection of the current `Working` Smali/manifest confirms:
- `AndroidManifest.xml` already declares `android.permission.MANAGE_EXTERNAL_STORAGE`.
- `dz5.h(String)` checks `Environment.isExternalStorageManager()` for this special access on supported Android versions.
- `dz5.o(...)` creates an intent for `android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION`.
- Intro permission state is initialized from `dz5.n()` in `com/bareapps/barebackup/intro/d.smali`.

Therefore, Local Account must reuse the existing Intro permission/grant flow (including its existing continuation after the user returns from Settings). Do not introduce SAF, a second permission wizard, or an assumption that manifest declaration means access is granted.

## 17.2 Filesystem gate

Before any vault scan/read/write:
1. On API 30+, require `Environment.isExternalStorageManager()` to be true.
2. On older supported API levels, check the relevant legacy permission using the existing permission helper.
3. Check external storage state is mounted and writable.
4. Check directory/file creation, read, write, flush, and rename results; handle exceptions.
5. If any gate fails, surface a visible storage setup/error state. Never silently fall back to private app storage or SharedPreferences as the vault.

The all-files access permission is special app access. Its manifest declaration is not a grant. Distribution-policy eligibility is a separate release concern and is not guaranteed by this engineering decision.

## 17.3 Storage contract

- Canonical root: `/storage/emulated/0/BΛR☰/accounts/`.
- One account directory per stable `LocalAccountId`.
- Vault files remain encrypted at rest. No plaintext identity secrets, recovery credentials, or vault payloads.
- Use temporary files and verified atomic rename/commit for updates.
- Keep device-bound key material separate from portable recovery material.
- SAF is not an automatic fallback because the owner requires a deterministic literal path discoverable at next launch.
- Permission grant only authorizes storage access; it must not itself create an account or overwrite an existing candidate.

## 17.4 Resolver and lifecycle implications

Intro > Skip continues through the existing permission-grant state. Once permission is verified, run the Local Account resolver against the canonical root:
- one valid vault: activate the same identity/namespace;
- no vault + matching recovery artifact: request recovery credential;
- neither exists: enroll a new Local Account;
- corrupt/multiple candidates: recovery/conflict state;
- storage unavailable: visible error, no enrollment and no private-storage fallback.

Local Sign Out remains limited to deactivating the Local session marker and exiting the app. It must preserve the vault and must not touch Firebase Auth, Google sign-out, Shizuku/package clear, or global preference clear.


---

# 18. Implementation target and integration audit update (2026-10-31)

This section records the owner's latest implementation authorization and supersedes the older read-only-target wording in Sections 11 and 15.7 where inconsistent.

## 18.1 Authorized implementation boundary

- Implement the approved Local Account lifecycle directly in `bare-implementation/` on a dedicated feature branch.
- The implementation PR must contain changes **only** under `bare-implementation/`.
- Do not include `tools/`, workflow, audit/design docs, reference artifacts, or unrelated Firebase/Google changes in that PR.
- Audit/design updates belong on `Working` only when new evidence or a decision requires recording.
- `reference/apktool/` and `reference/jadx/` remain read-only evidence.

## 18.2 Build capability correction

The repository does not contain an authoritative native Gradle source project, but it does contain an APK rebuild workflow:
- `.github/workflows/namespace-barebackup.yml` copies `bare-implementation/` into a build workspace.
- It runs the existing preparation/encrypted-constant migration scripts, rebuilds native JNI libraries, and invokes Apktool to assemble the APK.
- The workflow has `workflow_dispatch`, but its push branch allowlist does not currently include the Local Account feature branch.
- No workflow run or APK build is claimed by this audit. The available GitHub actions integration in this work session can inspect runs/logs but cannot dispatch a new workflow run; manual dispatch through GitHub Actions UI may be needed after a candidate branch is ready.

This means Smali-only patching is a viable target path in principle, but the candidate still needs an actual Apktool assembly and regression verification before PR readiness.

## 18.3 Existing crypto capability and key separation

Static evidence:
- `us2.B()` creates/loads AndroidKeyStore alias `_androidx_security_master_key_`, configures AES-256/GCM/NoPadding, and self-tests encryption/decryption.
- `ty3.e()` / `ty3.c()` perform AES-GCM encrypt/decrypt with associated data.
- These helpers support the existing encrypted-preferences implementation; they do not constitute a Local Account vault or portable recovery design.
- Do not reuse the encrypted-preferences master alias for vault payloads. Create a purpose-specific vault key alias and separately design a recovery wrapper around a high-entropy user-held recovery secret.

## 18.4 Legacy namespace compatibility

The existing backup root is constructed by `ry5` as `{storageRoot}/accounts/{qy5.e(MFirebaseUser)}/`. The namespace identifier is derived from the existing `MFirebaseUser.uid` through the legacy MD5-based path helper. It is not a cryptographic key.

Vault integration must:
- preserve the exact existing UID for a migrated local account;
- preserve the existing backup namespace path and contents;
- maintain a distinct stable `LocalAccountId`;
- store vault metadata without colliding with the legacy 16-hex account directories.

## 18.5 Sign-out integration safety

The static call graph shows `d45.c()` is shared by multiple flows, including Google credential sign-out, no-GMS sign-out, `Const.Q()`, and the Local-to-Google migration callback (`rc1`, which sets `is_migrating_to_google_sign_in=true) first.

Therefore:
- Do not globally change `d45.c()` to treat every anonymous model as a Local Sign Out request.
- Identify the explicit Local Sign Out UI action and route only that action to a dedicated Local-only handler.
- Keep Google sign-out and migration call-sites unchanged.
- The existing `Const.E()` helper restarts the launch activity; it is not a suitable substitute for the requested Local Sign Out exit behavior.

## 18.6 Remaining implementation gates

1. Identify the explicit user-facing Local Sign Out click path and its owning Activity/ViewModel.
2. Implement a purpose-separated encrypted vault envelope, device wrapper, and portable recovery wrapper.
3. Implement strict candidate scan, atomic write/verify, migration preserving LegacyUid, and resolver states.
4. Integrate Local activation after the existing Intro permission flow, without altering Google provider selection.
5. Route Config/Label local reads/writes away from Firebase while leaving cloud paths intact.
6. Implement dedicated Local Sign Out and persistent inactive-session marker.
7. Run Apktool build and available static checks; arrange a manual workflow dispatch or equivalent CI execution for the feature branch.
8. Complete device/runtime acceptance tests before declaring behavior verified.

No application code, build, or runtime test is claimed complete by this section.


## 18.7 Exact Intro and permission integration point

Static call path:
`IntroActivity` Skip button -> `of` case 6 -> `a14` Local/Google chooser -> callback `IntroActivity.U(true,...)` -> `intro/d.m(true)`.

Current `d.m(true)` immediately persists `b45.a()` with `V.setNon()` before the user necessarily grants the storage special access. The existing All Files Access settings launch is request code `0x2639` (9785) in `dz5.r()`; `IntroActivity.onActivityResult(9785,...)` refreshes state through `d.o()`.

Required integration:
- Preserve the current Intro/permission presentation while Local selection is pending.
- Do not commit a new Local identity before scanning `/storage/emulated/0/BΛR☰/accounts/`.
- Keep provisional Local selection in memory while waiting for the permission return.
- On actual grant, scan and classify vault/recovery/legacy candidates, then activate, recover, migrate, or enroll.
- On denied/unavailable permission, remain in a visible setup/error state and do not enroll.

## 18.8 Exact user-facing Local Sign Out integration point

Static call path:
`account_fragment.xml` -> `profile_card_user.xml#btn_sign_out` -> `o7.onViewCreated()` -> `g7` case 0 -> existing confirmation `Const.K(..., kn3(homeActivity, 9), ...)` -> `kn3` case 9 -> `hz3.c(homeActivity, 3005)` -> Google/No-GMS credential sign-out -> `d45.c()`.

The narrow safe patch point is the confirmed callback `kn3` case 9:
- If `d45.a()` resolves the pseudo-local anonymous model, call a dedicated Local Sign Out handler.
- Otherwise execute the existing `hz3.c(..., 3005)` Google path unchanged.
- Local handler persists inactive-session / Intro-required markers and first-run entry flags without clearing the persistent `V.getNon()` identity cache or the vault, then closes the current task/process.
- `d45.a()` must honor Intro-required marker before returning cached local identity or Firebase current user.
- Explicit Google choice clears the Intro-required marker and continues existing Google sign-in.
- Explicit Skip leaves it set until vault resolution succeeds.

This avoids altering shared `d45.c()` call sites used by Google sign-out and migration.

## 18.9 Recovery credential UX and device-key continuity

- The device Keystore wrapper supports silent activation only while the matching per-vault Keystore alias remains available.
- A normal sign-out/relaunch on the same installation can use that wrapper without prompting.
- Android app uninstall/data-clear may remove app-scoped Keystore keys. An external vault file alone cannot guarantee silent decryption after that event.
- If the key is missing, recovery must use the user-held recovery secret and the recovery-wrapped DEK. Never derive the vault key from public identifiers such as APK signing hash or ANDROID_ID.
- This qualifies the phrase “same-device automatic activation”: it is guaranteed only when the matching device key is still present. After reinstall/key loss, the documented recovery flow applies.


## 18.10 Pending Local selection, persistent identity, and session marker

The current Intro sequence needs a provisional state because the existing Local selection happens before All Files Access is necessarily granted.

Required state transitions:

1. **Local selection pending:** keep a provisional `MFirebaseUser` in memory only so the existing Intro permission UI can continue. Do not persist a new UID or publish a vault yet.
2. **Existing legacy Local identity:** if `V.getNon()` already contains a legacy Local model, preserve it as the migration source; do not replace its UID with `b45.a()` or another generated value.
3. **After storage grant:** scan and classify external vault/recovery candidates first. Existing vault takes precedence over provisional identity.
4. **New enrollment:** only when there is no valid vault, no recovery artifact, and no legacy Local identity. Generate a new random LegacyUid and a separate random LocalAccountId. Do not change `b45.a()` globally because it is referenced by other subsystems.
5. **Activation:** persist the restored/enrolled `MFirebaseUser` cache, mark `local_account_session_active=true`, clear the pending-Intro marker, then notify the existing account observers.
6. **Local Sign Out:** keep persistent vault and legacy identity intact; set `local_account_session_active=false` and `local_signout_pending_intro=true`. The pending-Intro marker takes precedence over cached Local identity and any still-authenticated Firebase session when the app cold-starts.
7. **Explicit Google choice:** clear the pending-Intro marker and run the existing Google path. **Explicit Skip:** keep the marker until vault resolution succeeds.

The pending-Intro marker is session/provider-selection state, not an identity deletion. The cached `V.getNon()` value must not be removed merely to force Intro, because it may be the only legacy identity available for migration.

## 18.11 Identity generator compatibility

`b45.a()` is referenced by several non-Intro classes in addition to `intro/d.m()`. Do not change it globally to randomize UID: that could alter unrelated password/identity behavior. Add a Local Account-specific new-user factory for first-time enrollment. For migration, always preserve the exact legacy UID. The new factory must produce a unique random UID and independent LocalAccountId.


## 18.12 Config/Label CRUD implementation boundary

The existing local JSON file cache (plaintext at rest) is already written on mutation:
- Config mutation: `ah` case 17 schedules `bh` case 14, which serializes `ConfigsData` through `w14.g()` to `br1.g`.
- Label mutation: `bk` case 27 schedules `d76` case 28, which serializes `LabelsData` through `w14.g()` to `lr4.g`.

However, those same mutation callbacks also perform direct Firebase Realtime Database writes:
- Config: `br1.c.i(configsDataValidate)` in `ah` case 17.
- Labels: `re3.k().d("labelsData").i(labelsDataCopy)` in `bk` case 27.

The Local patch must preserve the existing local JSON-file write and skip only these direct cloud writes for `MFirebaseUser.isAnonymous()==true`. Also route online Local fetches to the existing local cache before calling `cf3`. Preserve Google/Firebase behavior for non-Local users. Do not loosen `cf3` guards or Firebase rules.

`b45.a()` is used by several classes beyond Intro; keep it unchanged and add a Local-only random UID factory for first-time enrollment. Legacy migration must preserve the existing UID.


## 18.13 Correction: existing Config/Label cache is not encrypted at rest

A deeper trace of `w14` and `q63` corrects the earlier shorthand “encrypted local cache”:
- Config/Label mutation uses `w14.g(..., false)` -> `q63.K(...)`, which writes serialized JSON bytes through a file output stream.
- Reads use `w14.b(...)` -> `q63.H(...)`, which reads the JSON bytes directly.
- The separate encrypted writer is `w14.f()` through `y32`; it is not the writer used by the audited Config/Label cache paths.

Therefore the existing Config/Label cache is local file persistence but **not encrypted at rest** in the inspected implementation. Preserve its current format/path in this Local Account lifecycle patch for compatibility; do not call it encrypted and do not silently change it without a separate data migration. The new identity vault itself still requires authenticated encryption.


## 18.14 Local Sign Out must not invoke the generic no-user observer

The existing `d45.b()` no-user path can call `AlarmReceiver.a()`. That method disables `KEY_SCHEDULE_ENABLED`, cancels the scheduled AlarmManager PendingIntent, and changes BootReceiver component state. This is broader than Local Sign Out and can interrupt pending local work.

Therefore the Local-only sign-out handler must **not** call `d45.b()` or the generic `onUserSignedOut` restart observer. It must atomically persist:
- `local_account_session_active=false`;
- `local_signout_pending_intro=true`;
- `KEY_FIRST_START=true`;
- `KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED=false`.

Then close the application process. These first-run flags make the next cold launch enter Intro while the existing no-user startup logic skips its alarm-cancellation branch. Do not change `KEY_SCHEDULE_ENABLED`, AlarmManager, BootReceiver, Firebase Auth, Shizuku, package data, or global preferences. Google sign-out remains unchanged.

## 18.14 Runtime follow-up: Local Config/Label permission failures (2026-10-31)

A device log captured after Local Account activation still reports:

- `ConfigRepo: Permission denied`
- `LabelRepo: Permission denied`

The entries occur after anonymous sign-in and HomeActivity startup. This is runtime evidence that the repository routing patch in the feature branch did not yet make Local Config/Label operations independent of Firebase authorization.

The current feature-branch implementation routes `br1.b()` and `lr4.b()` to their local cache loaders only when `LocalAccountVault.isCurrentUserLocal()` returns true. Otherwise they continue to the existing online Firebase fetch path. The direct Firebase mutation calls in `ah` and `bk` are guarded by the same predicate. Therefore, a false-negative Local identity classification leaves both fetch and mutation cloud paths reachable.

**New hypothesis to verify against the active session state:** the lifecycle implementation persists `local_account_session_active=true` only after successful Local activation, but `isCurrentUserLocal()` currently classifies the session by inspecting `isAnonymous()` on a pending or resolved `MFirebaseUser` (or the `d45.a()` result). The active-session marker is not consulted as the first authoritative discriminator. The app can also expose a Firebase Auth anonymous session through `d45.a()`, whose wrapper is not necessarily the same thing as the product's Local Account identity. The Local session marker should take precedence over Firebase wrapper inference, while explicit Google selection must clear it before Google operations resume.

**Implementation direction (feature branch):**
1. Make a committed active Local session marker authoritative for repository routing.
2. Keep pending Local selection classified as Local while resolver/permission flow is active.
3. Keep inactive/sign-out marker and explicit Google selection classified as non-Local.
4. Retain legacy pseudo-user detection only as a compatibility fallback when no lifecycle marker exists.
5. Preserve local JSON cache persistence and skip only direct Firebase Config/Label writes for Local; do not weaken `cf3`, Firebase Rules, or Google paths.
6. Add verification for online and offline Local Config/Label fetch and mutation, app restart, Local sign-out, and Google regression.

**Implementation status (feature branch):** commit `ba8e3aba7a30c9061fb6e60802353273b84dba22` makes the committed `local_account_session_active=true` marker authoritative in `LocalAccountVault.isCurrentUserLocal()` before Firebase wrapper inference. The same shared predicate is consumed by Config/Label fetch routing and direct cloud mutation guards. GitHub Actions run `41198083623` is building this change. This is a targeted implementation correction, not runtime proof.

**Evidence limitation:** the screenshot proves the failures remain but does not alone distinguish a false-negative Local identity predicate from a permission failure inside the local file-cache reader. If either repository still reports permission denial after this patch, capture the exact exception source from `br1.a()` / `lr4.a()` separately from `cf3.a()`. Do not relax Firebase authorization and do not label this defect resolved until device acceptance tests pass.
