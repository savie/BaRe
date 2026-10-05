# Phase 2 — Reconstruction Evidence Ledger

**State:** IN PROGRESS — NOT VERIFIED

## Purpose

This ledger records evidence for Reference reconstruction. Source existence and structural compilation are not semantic verification.

## Reference Baselines

### PH2-REF-001 — Manifest
Reference contains 1 Application, 95 Activities, 10 Services, 10 Receivers and 4 Providers, plus 34 permissions, 4 features, 22 intent-filters, 23 metadata entries and 2 uses-library entries.

**Classification:** REFERENCE EVIDENCE.

### PH2-REF-002 — Resources
Reference `res/` inventory contains 1,491 files.

**Classification:** REFERENCE EVIDENCE.

### PH2-REF-003 — Build Metadata
Reference records AGP 9.2.1, compileSdk 37, minSdk 26, targetSdk 37, versionName 5.1.0 and versionCode 620.

**Classification:** REFERENCE EVIDENCE.

### PH2-REF-004 — Dependency Families
Reference evidence identifies AndroidX, Firebase, Google Play Services, Billing, MSAL, pCloud, YubiKit, AppAuth, TedPermission, Shizuku, Play Core/Integrity and DataTransport families.

**Classification:** REFERENCE EVIDENCE.

## Semantic Mapping Register

**State:** REQUIRED — EXECUTION NOT COMPLETE

This register records the identity relationship between Reference symbols and BaRe symbols whenever reconstruction changes names, paths, packages, ownership, implementation mechanism, or representation.

### Required Granularity

Mapping is required at every applicable level: file/path, package, class/interface/enum, superclass/interfaces, field, constructor, method/function, parameter, return type, referenced dependency/type, resource, and manifest/component configuration.

### Required Record

Each non-trivial mapping must record:

```text
Reference symbol
Reference file/package
Reference descriptor/signature
Reference semantic role
Reference evidence
Consumers/callers
Dependencies/types
BaRe target file/package
BaRe target symbol
BaRe descriptor/signature
Mapping reason
Implementation/delegation
Verification evidence
Classification
State
```

### Ambiguous / Obfuscated / Obsolete Coverage

This register explicitly covers short filenames such as `a.java`, short classes such as `q63`, short methods/functions such as `z()`, short fields and parameters, decompiler-only symbols, generated/synthetic symbols, dependency-owned symbols, renamed or moved symbols, merged/split symbols, and symbols proposed for deletion.

**Short or ugly naming is evidence of ambiguity, not evidence of obsolescence.**

### Mapping Example

The following names are format examples only and are not implementation claims:

| Reference | BaRe target | Evidence required |
|---|---|---|
| `a.java` | `Folder.java` | role, hierarchy, callers, fields, methods, resources |
| class `a` | class `Folder` | semantic identity and contract |
| field `b` | field `path` | field usage and type |
| constructor `a(...)` | constructor `Folder(...)` | signature and initialization contract |
| method `z(...)` | method `exists(...)` | descriptor, callers, control flow and behavior |
| parameter `x` | parameter `entry` | position, type and semantic role |

### No Silent Symbol Disappearance

If a Reference symbol has no direct BaRe symbol, the evidence ledger must explicitly classify the reason: proven obsolete, generated/reproduced, delegated to a verified dependency, merged into another symbol, split across multiple symbols, authorized deviation, UNKNOWN, or BLOCKED.

A missing symbol without such a record is incomplete reconstruction, not PASS.

## Semantic Findings

### PH2-SEM-001 — `defpackage`
JADX emits `defpackage` for classes whose binary descriptors do not contain a package component.

**Result:** decompiler namespace, not sufficient proof of original Java package identity.

### PH2-SEM-002 — `q63`
Reference `q63` is a filesystem abstraction used across APK import, working directories, storage/folder models, manifest parsing and compression.

**Result:** required internal semantic component.

**Classification:** MATCH for semantic identification; BaRe rehome/reconstruction pending.

### PH2-SRC-003 — Remaining `defpackage.*`
Current BaRe source still imports `defpackage.*` after the old namespace was intentionally deleted.

**Result:** reconstruction incomplete.

**Classification:** BLOCKED until each import is resolved.

### PH2-SRC-004 — Short/obfuscated filenames
Current repository contains 68 one/two-character Java filenames.

**Result:** filename alone cannot establish obsolescence.

**Classification:** UNKNOWN until semantic mapping.

### PH2-DEP-005 — Embedded dependency source
Current repository contains source under third-party/dependency namespaces.

**Result:** ownership must be classified before deletion.

**Classification:** UNKNOWN/BLOCKED until delegation is verified.

## Structural Compile

Previous javac evidence proves only structural compilation against explicit compile-only Android/AndroidX stubs.

It does not prove Android Gradle build, dependency resolution, runtime behavior or semantic parity.

**Classification:** COMPILED only.

## Current Gate

P2 is **NOT VERIFIED** until semantic mapping, reconstruction, dependency delegation and real Android build evidence are complete.


---

# Consolidated Phase 2 Evidence Registers

# Phase 2 — Source Disposition Register

**State:** IN PROGRESS — AUDIT BASELINE

## Purpose

This register answers the practical P2 question:

> Which current files are kept, reconstructed, delegated, generated, renamed/re-homed, or deleted?

Disposition is based on Reference semantics, not filename appearance.

## Confirmed Dispositions

| Current path / family | Disposition | Reason |
|---|---|---|
| old `defpackage/` source tree | DELETE | intentionally removed decompiler namespace; semantics must still be reconstructed |
| `org/swiftapps/filesystem/a.java` | REVISE / RENAME-CANDIDATE | Reference class is a filesystem utility; current name is R8/JADX-obfuscated |
| `org/swiftapps/swiftbackup/apkshare/a.java` | REVISE / RENAME-CANDIDATE | Reference class implements SHA-256/file archive utility behavior around `q63` |
| `org/swiftapps/swiftbackup/apkshare/ApkImportActivity.java` | KEEP / RECONSTRUCT | Reference feature component; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/apptasks/AppsWorkingDir.java` | KEEP / RECONSTRUCT | Reference working-directory contract; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/folders/data/BackupInfo.java` | KEEP / RECONSTRUCT | Reference domain contract; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/folders/data/BackupResult.java` | KEEP / RECONSTRUCT | Reference domain contract; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/folders/data/ManifestInfo.java` | KEEP / RECONSTRUCT | Reference domain contract; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/apkreader/ApkManifestParser.java` | KEEP / RECONSTRUCT | Reference parser; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/compress/Packer.java` | KEEP / RECONSTRUCT | Reference compression flow; currently depends on unresolved `q63` |
| `org/swiftapps/swiftbackup/anonymous/MFirebaseUser.java` | KEEP in P2 | internal Reference Firebase contract; migration is a later authorized deviation |
| `org/swiftapps/swiftbackup/model/firebase/*` | KEEP in P2 | Reference model contract; Firebase→Supabase migration deferred |
| `org/swiftapps/swiftbackup/SwiftApp.java` | KEEP / RECONSTRUCT | Reference Application contract |
| `com/swiftapps/sba/*` | KEEP / VERIFY | native/reference ABI boundary; do not remove from P2 without evidence |
| `androidx/*` source copies | DELEGATE-CANDIDATE | dependency-owned; delete only after dependency verification |
| `com/google/*` source copies | DELEGATE-CANDIDATE | dependency-owned; delete only after dependency verification |
| `com/android/billingclient/*` | DELEGATE-CANDIDATE | dependency-owned; delete only after dependency verification |
| `com/microsoft/identity/*` | DELEGATE-CANDIDATE | dependency-owned; delete only after dependency verification |
| `com/pcloud/*` | DELEGATE-CANDIDATE | dependency-owned; delete only after dependency verification |
| `net/openid/appauth/*` | DELEGATE-CANDIDATE | dependency-owned; exact Reference version still unresolved |
| `com/gun0912/tedpermission/*` | DELEGATE-CANDIDATE | dependency-owned; exact Reference version still unresolved |
| `com/yubico/*` | DELEGATE-CANDIDATE | dependency-owned; exact Reference version still unresolved |
| `rikka/shizuku/*` | DELEGATE-CANDIDATE | dependency-owned; exact Reference version still unresolved |
| `MDatabase_Impl.java` | GENERATED-CANDIDATE | Room-generated implementation; remove only after Room generation/build reproduces the contract |
| short `a/b/c...` synthetic enum helpers | RECONSTRUCT / GENERATED | inspect consumers; inline/replace only when Reference switch semantics are preserved |

## Short Filename Rule

The current repository has 68 one/two-character Java filenames.

They are **not** a deletion batch.

Each is individually classified as:
- semantic internal class;
- generated/synthetic helper;
- dependency-owned class;
- obsolete artifact;
- UNKNOWN/BLOCKED.

## Immediate P2 Revision Targets

Highest-priority internal reconstruction targets are the high fan-out unresolved classes, beginning with:
1. `q63`;
2. internal base hierarchy represented by `il0`, `sa1`, `zm`, `er6` and related classes;
3. filesystem helpers;
4. data/storage models;
5. task/service primitives;
6. remaining `defpackage.*` imports.

## Deletion Gate

A source file may move to DELETE only when:
- Reference counterpart is identified;
- ownership is established;
- consumers are mapped;
- replacement/reconstruction exists where needed;
- no Reference contract is lost;
- verification evidence is recorded.

**No mass deletion by filename pattern is authorized.**


# Phase 2 — Reference Reconstruction Matrix

**State:** EXECUTION REGISTER — NOT VERIFIED

## Purpose

This is the manifest-facing component register for P2, but a row is accepted only when its Reference semantics, ownership, consumers/dependencies and implementation/delegation are traceable.

## Target Set

- 1 Application
- 95 Activities
- 10 Services
- 10 Receivers
- 4 Providers
- **120 manifest-facing entities**

## Required Fields

| Field | Requirement |
|---|---|
| Entity ID | required |
| Reference symbol | required |
| Ownership | internal / dependency / platform / generated / unknown |
| Semantic role | required |
| BaRe symbol | required |
| Strategy | reconstruct / rehome / delegate / generated / blocked |
| Reference evidence | required |
| Consumers/dependencies | required |
| Verification evidence | required |
| State | required |
| Disposition | required |

## Existing Manifest Inventory

The 120 Reference rows below remain the manifest inventory baseline. Their previous skeleton-only status is not sufficient for P2 verification.

| ID | Type | Reference Symbol | Ownership | BaRe Symbol | Strategy | Evidence | State | Result |
|---|---|---|---|---|---|---|---|---|
| APP-001 | Application | `org.swiftapps.swiftbackup.SwiftApp` | INTERNAL | PH2-INTERNAL-SOURCE | direct | ... | IMPLEMENTED | ... |
| ACT-001 | Activity | `org.swiftapps.swiftbackup.intro.IntroActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-002 | Activity | `org.swiftapps.swiftbackup.home.HomeActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-003 | Activity | `org.swiftapps.swiftbackup.home.search.HomeSearchActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-004 | Activity | `org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-005 | Activity | `org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-006 | Activity | `org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-007 | Activity | `org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-008 | Activity | `org.swiftapps.swiftbackup.detail.DetailActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-009 | Activity | `org.swiftapps.swiftbackup.apkshare.ApkImportActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-010 | Activity | `org.swiftapps.swiftbackup.appinfo.AppInfoActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-011 | Activity | `org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-012 | Activity | `org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-013 | Activity | `org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-014 | Activity | `org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-015 | Activity | `org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-016 | Activity | `org.swiftapps.swiftbackup.settings.SettingsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-017 | Activity | `org.swiftapps.swiftbackup.blacklist.BlacklistActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-018 | Activity | `org.swiftapps.swiftbackup.notice.NoticeListActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-019 | Activity | `org.swiftapps.swiftbackup.settings.SettingsDetailActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-020 | Activity | `org.swiftapps.swiftbackup.settings.AppSwipeActionsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-021 | Activity | `org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-022 | Activity | `org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-023 | Activity | `org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-024 | Activity | `org.swiftapps.swiftbackup.locale.LocaleActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-025 | Activity | `org.swiftapps.swiftbackup.contributor.ContributorRegActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-026 | Activity | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-027 | Activity | `org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-028 | Activity | `org.swiftapps.swiftbackup.manage.ManageSpaceActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-029 | Activity | `org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-030 | Activity | `org.swiftapps.swiftbackup.premium.PremiumActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-031 | Activity | `org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-032 | Activity | `org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-033 | Activity | `org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-034 | Activity | `org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-035 | Activity | `org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-036 | Activity | `org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-037 | Activity | `org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-038 | Activity | `org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-039 | Activity | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-040 | Activity | `org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-041 | Activity | `org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-042 | Activity | `org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-043 | Activity | `org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-044 | Activity | `org.swiftapps.swiftbackup.folders.ui.FolderEditActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-045 | Activity | `org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-046 | Activity | `org.swiftapps.swiftbackup.slog.SLogActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-047 | Activity | `org.swiftapps.swiftbackup.wifi.WifiActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-048 | Activity | `org.swiftapps.swiftbackup.walls.WallsDashActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-049 | Activity | `org.swiftapps.swiftbackup.walls.WallsManageActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-050 | Activity | `org.swiftapps.swiftbackup.walls.WallApplyActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-051 | Activity | `org.swiftapps.swiftbackup.notice.NoticeViewActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-052 | Activity | `org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-053 | Activity | `org.swiftapps.swiftbackup.password.PasswordStrategyActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-054 | Activity | `org.swiftapps.swiftbackup.password.UserPasswordActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-055 | Activity | `org.swiftapps.swiftbackup.settings.MultipleBackupsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-056 | Activity | `org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-057 | Activity | `org.swiftapps.swiftbackup.tasks.ui.TaskActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-058 | Activity | `org.swiftapps.swiftbackup.tasks.PreconditionsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-059 | Activity | `org.swiftapps.swiftbackup.settings.LicensesActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-060 | Activity | `org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-061 | Activity | `org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-062 | Activity | `org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-063 | Activity | `org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-064 | Activity | `org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-065 | Activity | `org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-066 | Activity | `org.swiftapps.swiftbackup.cloud.connect.YandexSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-067 | Activity | `org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-068 | Activity | `org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-069 | Activity | `org.swiftapps.swiftbackup.cloud.connect.CsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-070 | Activity | `org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-071 | Activity | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.ComposeSmsActivity` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| ACT-072 | Activity | `net.openid.appauth.RedirectUriReceiverActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-073 | Activity | `com.gun0912.tedpermission.TedPermissionActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-074 | Activity | `com.microsoft.identity.client.BrowserTabActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-075 | Activity | `com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-076 | Activity | `com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-077 | Activity | `com.microsoft.identity.client.helper.BrokerHelperActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-078 | Activity | `com.microsoft.identity.client.CurrentTaskBrowserTabActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-079 | Activity | `com.microsoft.identity.common.internal.providers.oauth2.SilentAuthorizationActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-080 | Activity | `com.microsoft.identity.common.internal.broker.BrokerActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-081 | Activity | `com.microsoft.identity.common.internal.broker.InstallCertActivityLauncher` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-082 | Activity | `com.google.firebase.auth.internal.GenericIdpActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-083 | Activity | `com.google.firebase.auth.internal.RecaptchaActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-084 | Activity | `androidx.credentials.playservices.controllers.identityauth.HiddenActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-085 | Activity | `androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-086 | Activity | `com.google.android.gms.auth.api.signin.internal.SignInHubActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-087 | Activity | `net.openid.appauth.AuthorizationManagementActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-088 | Activity | `com.android.billingclient.api.ProxyBillingActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-089 | Activity | `com.android.billingclient.api.ProxyBillingActivityV2` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-090 | Activity | `com.google.android.gms.common.api.GoogleApiActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-091 | Activity | `com.pcloud.sdk.AuthorizationActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-092 | Activity | `com.pcloud.sdk.CustomTabActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-093 | Activity | `com.yubico.yubikit.android.ui.OtpActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-094 | Activity | `com.yubico.yubikit.android.ui.YubiKeyPromptActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| ACT-095 | Activity | `com.google.android.play.core.common.PlayCoreDialogWrapperActivity` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-001 | Service | `org.swiftapps.swiftbackup.tasks.TaskService` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| SRV-002 | Service | `org.swiftapps.swiftbackup.home.schedule.ScheduleService` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| SRV-003 | Service | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.HeadlessSmsSendService` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| SRV-004 | Service | `com.google.firebase.components.ComponentDiscoveryService` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-005 | Service | `androidx.credentials.playservices.CredentialProviderMetadataHolder` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-006 | Service | `com.google.android.gms.auth.api.signin.RevocationBoundService` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-007 | Service | `com.google.firebase.sessions.SessionLifecycleService` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-008 | Service | `androidx.room.MultiInstanceInvalidationService` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-009 | Service | `com.google.android.datatransport.runtime.backends.TransportBackendDiscovery` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| SRV-010 | Service | `com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| RCV-001 | Receiver | `org.swiftapps.swiftbackup.jobs.AlarmReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-002 | Receiver | `org.swiftapps.swiftbackup.common.LocaleChangedReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-003 | Receiver | `org.swiftapps.swiftbackup.jobs.BootReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-004 | Receiver | `org.swiftapps.swiftbackup.tasks.NotificationTaskCancelReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-005 | Receiver | `org.swiftapps.swiftbackup.common.PackageInstallResultReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-006 | Receiver | `org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-007 | Receiver | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.SmsReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-008 | Receiver | `org.swiftapps.swiftbackup.messagescalls.defaulthandler.MmsReceiver` | PH2-INTERNAL-SOURCE | ... | direct/base/delegated | ... | IMPLEMENTED | ... |
| RCV-009 | Receiver | `androidx.profileinstaller.ProfileInstallReceiver` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| RCV-010 | Receiver | `com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver` | PH2-DEPENDENCY-BLOCKED | ... | direct/base/delegated | ... | BLOCKED | ... |
| PRV-001 | Provider | `androidx.core.content.FileProvider` | PH2-DEPENDENCY-BLOCKED | ... | direct/delegated | ... | BLOCKED | ... |
| PRV-002 | Provider | `rikka.shizuku.ShizukuProvider` | PH2-DEPENDENCY-BLOCKED | ... | direct/delegated | ... | BLOCKED | ... |
| PRV-003 | Provider | `com.gun0912.tedpermission.provider.TedPermissionProvider` | PH2-DEPENDENCY-BLOCKED | ... | direct/delegated | ... | BLOCKED | ... |
| PRV-004 | Provider | `androidx.startup.InitializationProvider` | PH2-DEPENDENCY-BLOCKED | ... | direct/delegated | ... | BLOCKED | ... |

## State Rules

`PLANNED → IMPLEMENTED → COMPILED → TESTED → VERIFIED`

Alternative states:
- UNKNOWN
- BLOCKED
- AUTHORIZED DEVIATION

A Java file does not make an entity VERIFIED.

## P2 Acceptance

A row becomes VERIFIED only when:
- Reference semantics are mapped;
- inheritance/contracts are proven;
- consumers/dependencies are traced;
- manifest/resource relationships are proven;
- implementation or delegation is verified.

## Current Gate

**120 entities inventoried; existing skeleton status is not final P2 verification.**

Internal entities require semantic reconstruction evidence. Dependency-owned entities require delegation evidence. Ambiguous entities require explicit UNKNOWN/BLOCKED state.


# Phase 2 — Dependency Artifact Map

**State:** REFERENCE MAPPED — DELEGATION NOT VERIFIED

## Rule

Reference dependency identity is evidence. It is not automatically a valid BaRe dependency declaration.

| Family | Reference evidence | P2 treatment |
|---|---|---|
| AndroidX | versions observed | delegate after resolution |
| MSAL | 8.3.2 observed | delegate after resolution |
| Billing | 8.3.0 observed | delegate after resolution |
| pCloud | 1.11.0 observed | delegate after resolution |
| Firebase Auth | 24.1.0 observed | preserve P2 baseline; migration deferred |
| Firebase Sessions | 3.0.6 observed | preserve P2 baseline; migration deferred |
| Firebase Database | 22.0.1 observed | preserve P2 baseline; migration deferred |
| Firebase Crashlytics | 20.0.6 observed | preserve P2 baseline; migration deferred |
| Google Sign-In/GMS | versions observed | delegate after resolution |
| Play Core/Integrity | versions observed | delegate after resolution |
| DataTransport | 3.3.0 observed | delegate after resolution |
| AppAuth | family observed; exact version unresolved | UNKNOWN/BLOCKED |
| TedPermission | family observed; exact version unresolved | UNKNOWN/BLOCKED |
| YubiKit | Android/Core/Piv family observed; exact version unresolved | UNKNOWN/BLOCKED |
| Shizuku | family observed; exact version unresolved | UNKNOWN/BLOCKED |

## P2 Boundary

Firebase→Supabase migration is an authorized deviation but is **not executed in P2**.

No dependency is removed merely because a current public coordinate exists.

## Exit

Every dependency-owned Reference contract must be delegated and verified, reconstructed where appropriate, or explicitly UNKNOWN/BLOCKED.


# Phase 2 — Dependency / Delegation Register

**State:** NOT VERIFIED

## Delegation Contract

A dependency-owned Reference component is delegated only when all are proven:
1. dependency declaration;
2. class resolution;
3. package/class identity;
4. manifest registration;
5. authority/metadata/configuration;
6. relevant runtime behavior;
7. required compatibility identifiers.

## Current Dependency-Owned Set

The existing 37 dependency-owned manifest entities remain BLOCKED until the contract above is proven.

Families include:
- AppAuth;
- TedPermission;
- MSAL;
- Firebase Auth/Sessions;
- AndroidX Credentials/ProfileInstaller/Room/Startup/Core;
- Google Sign-In/GMS;
- Billing;
- pCloud;
- YubiKit;
- Play Core;
- DataTransport;
- Shizuku.

## Source Deletion Rule

Dependency-owned Java source in `app/src/main/java` is not deleted merely because a Gradle coordinate exists.

Delete only after delegation is verified and no Reference contract is lost.

## Per-Entity Evidence

| Field | Required |
|---|---|
| Reference symbol | yes |
| Owner family | yes |
| Exact version evidence | yes or UNKNOWN |
| BaRe coordinate | yes or BLOCKED |
| Class resolution | yes |
| Manifest parity | yes |
| Runtime evidence | yes |
| Source disposition | KEEP / DELEGATE / DELETE / BLOCKED |

## Current Gate

No dependency-owned component is VERIFIED solely from source presence or declared coordinates.


# Phase 2 — Android Build Contract

**State:** BUILD CONTRACT — NOT VERIFIED

## Purpose

Define the executable build boundary required to verify the Reference reconstruction.

## Reference Baseline

- AGP 9.2.1
- compileSdk 37
- minSdk 26
- targetSdk 37
- versionName 5.1.0
- versionCode 620

These are Reference facts, not proof of BaRe parity.

## Valid Build Evidence

A P2 build is valid only when:
1. Gradle executes;
2. Android SDK/API 37 is available;
3. dependencies resolve;
4. required Reference classes resolve;
5. manifest and authorities resolve;
6. resources compile;
7. APK packaging succeeds.

A javac structural compile is not an Android build.

## Dependency Verification

A dependency becomes VERIFIED only after:
- declaration;
- class resolution;
- package/class identity match;
- manifest/configuration match;
- relevant runtime verification.

## Current State

Gradle project files and dependency declarations exist, but a real Android Gradle/APK build has not been verified.

**State:** BLOCKED / NOT VERIFIED.

## Required Evidence

Record Gradle/JDK/SDK versions, resolved dependency graph, build command/result, APK artifact and manifest/resource compilation result.


# Phase 2 — Reference Materialization Register

**State:** IN PROGRESS — REFERENCE INVENTORY RECORDED / BARe PARITY OPEN

## Reference Manifest

Baseline:
- 1 Application;
- 95 Activities;
- 10 Services;
- 10 Receivers;
- 4 Providers;
- 34 permissions;
- 4 features;
- 22 intent-filters;
- 23 metadata entries;
- 2 uses-library entries.

Reference manifest SHA-256:
`287cdbf168ca6b95b842ae15deb7e908c552f3f823723bc9518e44df4f4833f`

## Reference Resources

Reference `res/` contains 1,491 files:
- layout 341
- layout-land 2
- layout-sw600dp 2
- layout-w600dp 1
- layout-watch 2
- drawable 445
- drawable-anydpi 2
- drawable-anydpi-v31 1
- menu 44
- xml 18
- raw 12
- font 7
- anim 41
- animator 42
- color 199

## Reconstruction Rule

Do not create dummy resources.

For each required Reference resource:
1. locate the actual definition;
2. trace consumers;
3. materialize it;
4. preserve dependencies;
5. compile;
6. classify deviations.

## Current State

Reference inventory is recorded. BaRe resource parity is not verified.

**State:** NOT VERIFIED.


## Evidence Rule

This ledger is the companion evidence record. Recording evidence does not itself make a claim VERIFIED.