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
- `re3.l()` → purchase verification Boolean node under the current UID and an obfuscated child key.
- `FolderItem.writeToFirebaseNode()` writes a valid item to `folders/{folderId}/folderItem`.
- `FolderMetadata.writeToFirebaseNode()` writes valid cloud metadata to the folder ID node, but its complete payload has NOT been ported field-by-field yet.
- Home cloud summary reads apps, folders, SMS count and call-log count.

### Billing
- `appData/activeSkus` returns a Firebase list of strings.
- Entries beginning `subs:` are subscription SKUs after removing the prefix.
- Entries beginning `inapp:` are one-time/in-app SKUs after removing the prefix.
- Other entries are ignored by the Reference billing catalog flow.
- Purchase verification is a Boolean at the obfuscated child node.

### Account lifecycle
- Reference `d45.c()` signs out auth, clears anonymous state, clears local app data for a non-anonymous user, resets account/migration state, resets first-start/cloud-restore flags, cancels scheduled alarms, and re-runs account initialization.
- A provider-neutral `AccountLifecyclePolicy` is now ported; provider-specific execution remains to be implemented behind the repository boundary.

## BaRe contracts added/updated
- `CloudSummaryRepository` + `CloudSummaryService`
- `CloudFolderRepository.writeFolderItem()`
- `BillingCatalogRepository`
- `BillingSkuService`
- `AccountLifecyclePolicy`
- `PurchaseVerificationRepository` Boolean state boundary
- corrected `CloudAppMetadata.hasBackups()`

## Explicitly not invented
- No Supabase tables/columns/RLS/auth claims yet.
- No generic FolderMetadata JSON schema.
- No invented SMS/call count writer payload.
- No invented contributor mutation payload.
- No invented purchase verification payload.
- No invented secrets or Supabase keys.

## Remaining before backend freeze
1. Complete field-level audit of `FolderMetadata` and its write/read consumers.
2. Finish cloud app writer/readers outside the Home summary path.
3. Finish contributor mutation search and SMS/call count writer search.
4. Complete billing purchase-state flow and exact verification update path.
5. Audit anonymous → Google/sign-in migration execution.
6. Freeze evidence-backed backend contract.
7. Read Supabase skill and implement adapter/schema only after freeze.
8. Wire Home to concrete repositories, then build/install/runtime verification.

## Verification rule
No parity claim from build alone. Required sequence: build → install → runtime → visual → behavior → feature → deviation audit → verification.

Do not restart the Reference inventory from zero.
