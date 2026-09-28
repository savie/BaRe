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
- `FolderMetadata.writeToFirebaseNode()` writes the full FolderMetadata object to the folder ID node, but only after cloud-write validation.
- Reference FolderMetadata persisted shape is exactly three top-level members: FolderItem, BaseBackup, and map<String, IncrementalBackup>.
- BaseBackup and IncrementalBackup share the persisted fields: backupLink, backupSize, originalSize, manifestLink, manifestSize, timestamp, plus transient isBaseBackup.
- Reference FolderMetadata.isValid() only delegates to FolderItem.isValid(); writeToFirebaseNode() performs stricter backup/link validation.
- Home cloud summary reads apps, folders, SMS count and call-log count.

### Billing
- `appData/activeSkus` returns a Firebase list of strings.
- Entries beginning `subs:` are subscription SKUs after removing the prefix.
- Entries beginning `inapp:` are one-time/in-app SKUs after removing the prefix.
- Other entries are ignored by the Reference billing catalog flow.
- Purchase verification is a Boolean at the obfuscated child node.

### Account lifecycle
- Reference `d45.c()` signs out auth, clears anonymous state, clears local app data for a non-anonymous user, resets account/migration state, resets first-start/cloud-restore flags, cancels scheduled alarms, and re-runs account initialization.

## BaRe contracts added/updated
- `FolderMetadata` evidence-backed domain contract with nested BaseBackup/IncrementalBackup
- `CloudFolderRepository.writeFolderMetadata()`
- `CloudFolderRepository.writeFolderItem()`
- `CloudSummaryRepository` + service
- `BillingCatalogRepository` + `BillingSkuService`
- `AccountLifecyclePolicy`
- `PurchaseVerificationRepository` Boolean state boundary
- corrected `CloudAppMetadata.hasBackups()`

## Explicitly not invented
- No Supabase tables/columns/RLS/auth claims yet.
- No SMS/call count writer payload.
- No contributor mutation payload.
- No purchase verification payload.
- No secrets or Supabase keys.

## Remaining before backend freeze
1. Finish remaining cloud_v1/apps readers/writers outside the audited summary path.
2. Finish contributor mutation search and SMS/call count writer search.
3. Complete billing verification update path and anonymous → Google/sign-in migration execution.
4. Freeze evidence-backed backend contract.
5. Read Supabase skill and implement adapter/schema only after freeze.
6. Wire Home to concrete repositories.
7. Build/install/runtime verification.

## Verification rule
No parity claim from build alone. Required sequence: build → install → runtime → visual → behavior → feature → deviation audit → verification.

Do not restart the Reference inventory from zero.
