# BΛR☰ Reconstruction Status

## Baseline
- Reference: Swift Backup 5.1.0, version code 620
- Reference artifact: supplied `SwiftBackup-5.1.0-620-decompiled.zip`
- Reconstruction branch: `rewrite`
- Target: 1:1 Reference fidelity except explicitly Authorized Deviations

## Current phase
**PHASE 2 — BACKEND CONTRACT FREEZE PREPARATION**

## Latest verified Reference behavior
### Cloud backend
- `re3.c()` → current cloud tag `apps` node.
- `re3.d()` → current cloud tag `callLogBackupsCount` node.
- `re3.e(id)` → `users/{uid}/cloud_v1/{id}`.
- `re3.g()` → current cloud directory under `users/{uid}/cloud_v1/{sanitized-current-cloud-dir}`.
- `re3.h()` → current cloud tag `folders` node.
- `re3.i()` → current cloud tag `smsBackupsCount` node.
- `re3.l()` → purchase verification Boolean node under the current UID and obfuscated child key.
- `FolderItem.writeToFirebaseNode()` writes a valid item to `folders/{folderId}/folderItem`.
- `FolderMetadata.writeToFirebaseNode()` writes the full FolderMetadata object to the folder ID node after validity/cloud-link checks.
- Reference FolderMetadata persisted shape is FolderItem + BaseBackup + Map<String, IncrementalBackup>.
- App metadata is read from `apps/{packageName with dots removed}` and written to the same app child during app backup upload after `prepareForFirebaseUpload()`.
- SMS backup tasks write `null` when no backups exist, otherwise the integer backup count to `smsBackupsCount`.
- Call-log backup tasks write `null` when no backups exist, otherwise the integer backup count to `callLogBackupsCount`.
- Package cloud-directory names are sanitized by removing `/`, `.`, `#`, `$`, `[`, and `]`.

### Billing
- `appData/activeSkus` returns a Firebase list of strings.
- Billing reads raw SKU strings from that list; normalization into subscription/in-app groups is now ported.
- `purchase_verifications/{uid}/{obfuscated-key}` is observed as a Boolean.
- Reference listener copies the Boolean into local premium-verification state; no writer to this verification node was found in the audited call graph.
- When no purchase is recognized, Reference writes a default/empty premium transaction object under `users/{uid}/transactions/premium`; this is distinct from purchase verification.

### Contributor
- Contributor registration is read/listened at `contributorDetails/{uid-prefix}`.
- Registration fields: status, type, name, locales, Telegram ID, Crowdin ID, PayPal ID.
- Translator validity: name + Telegram + Crowdin.
- Community Helper validity: name + Telegram.
- No contributor mutation/write call-site was found in the audited Reference graph; keep mutation contract UNKNOWN rather than inventing one.

### Account lifecycle
- Reference sign-out clears auth, anonymous state, non-anonymous local app data, migration/account state, first-start/cloud-restore flags, scheduled alarms, then reinitializes account state.

## BaRe contracts added/updated
- `CloudAppRepository`
- `ReferenceCloudKey`
- `CloudSummaryRepository` + service
- `FolderMetadata`
- `CloudFolderRepository.writeFolderItem()`
- `CloudFolderRepository.writeFolderMetadata()`
- `BackupCountsRepository.writeSmsCount()`
- `BackupCountsRepository.writeCallLogCount()`
- `BillingCatalogRepository` + `BillingSkuService`
- `AccountLifecyclePolicy`
- `PurchaseVerificationRepository` Boolean state boundary
- corrected `CloudAppMetadata.hasBackups()`

## Explicitly not invented
- No Supabase tables/columns/RLS/auth claims yet.
- No contributor mutation payload because Reference write call-site is absent.
- No purchase-verification writer because Reference audited graph contains only listener/read behavior.
- No secrets or Supabase keys.

## Remaining before backend freeze
1. Audit the remaining app-cloud delete/cleanup flows and any cloud-v1 consumers outside upload/summary paths.
2. Finish anonymous → Google/sign-in migration execution audit.
3. Freeze evidence-backed backend contract.
4. Read Supabase skill and implement adapter/schema only after freeze, as requested.
5. Wire Home to concrete repositories.
6. Build/install/runtime verification.

## Verification rule
No parity claim from build alone. Required sequence: build → install → runtime → visual → behavior → feature → deviation audit → verification.

Do not restart the Reference inventory from zero.
