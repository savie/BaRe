# N-07 PERMISSIONS — TOTAL AUDIT

## Status

**AUDIT COMPLETE — IMPLEMENTATION / RE-AUDIT PENDING**

- Domain: **N-07 Permissions**
- Phase: P3
- Reference: Swift Backup 5.1.0 / versionCode 620
- Canonical Reference: `reference/apktool/AndroidManifest.xml`
- Target: `savie/BaRe` / branch `rewrite`
- Reference mutation: **NO**

## 1. Manifest permission inventory

Reference declares **34** `uses-permission` entries.

Target declares **34** entries.

Semantic comparison:
- 33 permission names match exactly.
- 1 package-scoped permission is an authorized identity substitution:
  - Reference: `org.swiftapps.swiftbackup.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`
  - Target: `com.bare.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`

No missing or extra target permission declaration was found in this static comparison.

## 2. Runtime permission contracts

### N07-R1 — SMS
Reference:
- `READ_SMS`
- `READ_CONTACTS`

Target:
- checks both;
- requests both;
- preserves the same permission pair.

**MATCH**

### N07-R2 — Call logs
Reference:
- `WRITE_CALL_LOG`
- `READ_CALL_LOG`
- `READ_CONTACTS`

Target CallsDash:
- checks all three;
- requests all three.

Target CallsBackupRestore:
- checks/requests `READ_CALL_LOG` + `WRITE_CALL_LOG`.

**MATCH**

### N07-R3 — Notifications
Reference Intro flow explicitly gates notification readiness on:
- `POST_NOTIFICATIONS`

Target Intro:
- checks `POST_NOTIFICATIONS` on API 33+;
- requests it through ActivityCompat;
- updates local readiness state.

**MATCH at permission-contract level**

### N07-R4 — Storage / all-files
Reference manifest declares:
- `READ_EXTERNAL_STORAGE`
- `WRITE_EXTERNAL_STORAGE`
- `MANAGE_EXTERNAL_STORAGE`

Target declares the same.

Target Intro explicitly handles:
- `Environment.isExternalStorageManager()`
- `Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION`
- legacy READ/WRITE external storage request.

**MATCH at declared/request flow level**

## 3. Special access boundaries

Reference manifest also declares permission-related capabilities whose actual behavior is broader than ordinary runtime permission dialogs, including:
- `PACKAGE_USAGE_STATS`
- `REQUEST_INSTALL_PACKAGES`
- `REQUEST_DELETE_PACKAGES`
- `QUERY_ALL_PACKAGES`
- `SCHEDULE_EXACT_ALARM`
- `MANAGE_EXTERNAL_STORAGE`
- `moe.shizuku.manager.permission.API_V23`

These are retained in target manifest.

Special-access UI/engine behavior is not promoted to N-07 implementation closure merely from declaration evidence. Where behavior belongs to Settings, root/Shizuku, app engine, or lifecycle domains, it remains downstream-owned.

## 4. Cross-domain ownership

- Manifest declaration linkage → N-05.
- Permission request/result lifecycle → N-07.
- Root/Shizuku execution → downstream engine/authorization domain.
- Special Settings pages → owning feature domain.
- Identity-scoped custom permission → N-11 identity substitution.
- Notification/SMS/call runtime behavior → owning feature domains with N-07 permission contract.

## 5. CEK — once or split

**PECAH required.**

### N07-1 — Declaration contract
- verify 34 Reference permissions vs target;
- verify identity-scoped custom permission rename;
- no blind permission additions.

### N07-2 — Runtime permission contract
- SMS;
- call logs;
- contacts;
- notifications;
- storage/all-files.

### N07-3 — Special-access boundary
- usage stats;
- install/delete packages;
- exact alarms;
- all-files;
- Shizuku/root;
- foreground service permission family.

No implementation is allowed where evidence only proves declaration but not behavior.

## 6. Exit criteria

N-07 can close when:
1. permission declaration set is reconciled;
2. custom identity rename is explicitly recorded;
3. proven runtime permission flows match;
4. no unauthorized permission is added;
5. special-access declarations have explicit downstream ownership;
6. no unexplained actionable N-07 defect remains;
7. Reference remains read-only.


## 7. N07 implementation / re-audit

The previous wording is narrowed to the actual N-07 boundary: **permission contract**, not downstream privileged engine behavior.

Static re-audit confirmed:
- Reference declarations: 34
- Target declarations: 34
- exact semantic match: 33
- authorized identity substitution: 1
- SMS permission contract: PASS
- call-log permission contract: PASS
- notification permission contract: PASS
- storage/all-files declaration + Settings access boundary: PASS

### 7.1 Explicit downstream handoffs

The following are intentionally **not claimed as completed behavior by N-07**:

- Installed-app inventory / app-op behavior → downstream app-management/engine work.
- Root/Shizuku detection, grant callbacks and privileged permission engine → downstream privileged-access/engine work.
- Real storage coordinator / preferred-storage persistence → downstream storage work.
- Schedule/exact-alarm behavior → downstream schedule/lifecycle work.
- Package install/delete execution → downstream package-management work.
- Foreground-service execution/lifecycle semantics → downstream service/lifecycle work.

The current P3 reconstruction may expose explicit action/state boundaries for these surfaces. A P3 boundary or stub is **not counted as engine success** and is not an N-07 defect when the permission declaration/contract itself is reconciled.

### 7.2 Closure decision

N-07 exit criteria are satisfied at the permission-domain boundary:
1. declaration set reconciled;
2. custom identity rename recorded;
3. proven runtime permission contracts reconciled;
4. no unauthorized permission added;
5. special-access declarations have explicit downstream ownership;
6. no unresolved actionable **N-07 permission-contract** defect remains;
7. Reference remains read-only.

**N-07 → 🟢 CLOSED / STATIC PASS — permission contract only.**

This does **not** mean Root/Shizuku, storage, installed-app inventory, package operations, exact-alarm engine, or foreground-service behavior is complete.
