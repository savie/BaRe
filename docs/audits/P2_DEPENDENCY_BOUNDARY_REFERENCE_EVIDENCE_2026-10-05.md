# P2 Dependency-Bound Reference Evidence — 2026-10-05

## Scope

This audit is the dependency-bound continuation of P2. Evidence source is the canonical Swift Backup 5.1.0 (versionCode 620) ZIP/APK defined by `docs/bare.md`.

No Reference artifact is modified. No Supabase migration/schema/RLS/backend mutation is performed. No build, install, runtime, or device verification is claimed.

## Authority

`docs/bare.md` defines the reconstruction as Reference 1:1 except explicitly authorized deviations, requires the canonical ZIP/APK to remain read-only evidence, and requires UNKNOWN/BLOCKED when evidence is insufficient.

## Dependency-bound components

### AppAuth

Reference manifest declares:

- `net.openid.appauth.RedirectUriReceiverActivity`
  - exported=true
  - four VIEW/BROWSABLE callback filters
  - schemes/hosts observed in Reference:
    - `org.swiftapps.swiftbackup`
    - `db-mzc5bxvbe0960q1://1/connect`
    - `org.swiftapps.swiftbackup.box://oauth`
    - `org.swiftapps.swiftbackup.yandex://oauth`
- `net.openid.appauth.AuthorizationManagementActivity`
  - exported=false
  - launchMode=singleTask
  - theme=`@style/Theme.AppCompat.Translucent.NoTitleBar`

Reference source also contains AppAuth classes and app-side consumers of the AppAuth callback extras.

**Version status: BLOCKED/UNKNOWN.**

The supplied ZIP exposes the AppAuth implementation and license entry, but no direct AppAuth version metadata was found in the inspected Reference resources. No speculative version is added to `app/build.gradle`.

### TedPermission

Reference manifest declares:

- `com.gun0912.tedpermission.TedPermissionActivity`
  - theme=`@style/Theme.Transparent.Permission`
  - screenOrientation=unspecified
  - Reference configChanges preserved in manifest evidence
- `com.gun0912.tedpermission.provider.TedPermissionProvider`
  - exported=false
  - authority=`org.swiftapps.swiftbackup.tedpermissionprovider`

Reference source contains both dependency classes and app-side consumers.

License metadata identifies:
- TedPermission
- TedPermission-Normal

**Version status: BLOCKED/UNKNOWN.**

No direct version metadata was found in the inspected ZIP. No speculative version is added.

The provider authority contains the Reference application identity and therefore requires an explicit compatibility/normalization decision before target implementation. It is not changed blindly in P2.

### YubiKit

Reference manifest declares:

- `com.yubico.yubikit.android.ui.OtpActivity`
  - theme=`@style/YubiKitPromptDialogTheme`
  - label=`@string/yubikit_otp_activity_title`
  - excludeFromRecents=true
- `com.yubico.yubikit.android.ui.YubiKeyPromptActivity`
  - theme=`@style/YubiKitPromptDialogTheme`
  - label=`@string/yubikit_prompt_activity_title`
  - excludeFromRecents=true

Reference source contains YubiKit Android UI classes and app-side consumers. Reference license metadata identifies:
- Yubico YubiKit Android
- Yubico YubiKit Core
- Yubico YubiKit Piv

**Version status: BLOCKED/UNKNOWN.**

No direct YubiKit version metadata was found in the inspected ZIP. No speculative version is added.

### Play Integrity

Reference ZIP contains:

`integrity.properties`

with:

- version=1.3.0
- client=integrity
- integrity_client=1.3.0

Reference source also imports Play Integrity model/error constants.

**Version status: CLOSED — 1.3.0.**

Target dependency was added:

`com.google.android.play:integrity:1.3.0`

This is an evidence-backed dependency addition, not a backend change.


## Deep forensic pass — ZIP/APK metadata

A second forensic pass inspected the canonical ZIP and APK for additional version-bearing surfaces, including:

- META-INF/*.version
- dependency .properties files
- META-INF/version-control-info.textproto
- APK/DEX strings around the three dependency package namespaces
- decompiled source trees for version-like literals
- third-party license metadata
- dependency-owned resource names/styles/layouts

Observed result:

- APK contains explicit version files for several AndroidX/Google/Firebase/other libraries, demonstrating that this artifact does preserve version metadata for some dependencies.
- No corresponding AppAuth, TedPermission, or YubiKit version file was found.
- META-INF/version-control-info.textproto identifies the APK build revision, not dependency versions.
- The AppAuth/TedPermission/YubiKit decompiled package trees expose only the dependency implementation classes used by the Reference; no version literal was recovered from those package source trees.
- Third-party license metadata identifies the libraries but carries no dependency version for these three libraries.
- YubiKit resources/styles/layouts are present in the Reference, confirming the dependency-owned UI surface, but still do not establish the Maven version.

Therefore the previous UNKNOWN/BLOCKED classification is **reconfirmed after deeper artifact inspection**. This is not a missing-search-effort issue inside the supplied ZIP/APK; the supplied artifacts do not expose enough evidence to prove those exact versions.

## Evidence boundary for target dependency declarations

The target may only add an exact dependency version when one of the following becomes available:

1. explicit version metadata in the supplied Reference artifact;
2. an explicit project decision/source authorizing that exact version; or
3. another evidence source explicitly permitted by the project scope.

Until then, adding a guessed version would violate the evidence-first reconstruction rule.


## Important distinction

The presence of dependency source inside the decompile archive proves that the Reference APK contains those dependency surfaces. It does **not** by itself prove the Maven version.

Therefore:

- AppAuth: present, version UNKNOWN
- TedPermission: present, version UNKNOWN
- YubiKit: present, version UNKNOWN
- Play Integrity: present, version 1.3.0

No fake BaRe replacement classes are created for these dependency-owned packages.

## P2 decision

**CLOSED FROM EVIDENCE:**
- dependency ownership classification
- manifest contract evidence
- Play Integrity exact version

**REMAINS BLOCKED:**
- AppAuth exact dependency version
- TedPermission exact dependency version
- YubiKit exact dependency version
- final normalization/compatibility treatment for dependency callback/provider identifiers

These blockers are evidence blockers, not implementation permission to guess.

## Next allowed step

Proceed only when the next evidence source or explicit project decision resolves the blocked dependency versions/contracts. Until then, preserve the dependency boundary and do not clone dependency classes into `app/`.
