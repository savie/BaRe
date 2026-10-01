# N-06 INTENT — TOTAL AUDIT

## Status

**AUDIT COMPLETE — REGISTERED / IMPLEMENTATION PENDING**

- Domain: **N-06 Intent**
- Phase: P3
- Reference: Swift Backup 5.1.0 / versionCode 620
- Canonical Reference: local ZIP
- Canonical SHA-256: `148e9b4ef265ead284cb4af060c89f44898dcb81747702ef6bef50c863f92948`
- Target: `savie/BaRe` / branch `rewrite`
- N-01 dependency source: `docs/audits/N01_RESOURCE_TOTAL_AUDIT.md`
- Build/install/runtime: **NOT PERFORMED**
- Reference mutation: **NO**

## 1. N-01 inputs consumed

N-01 identifies Intent/deep-link resource contracts as N-06 ownership and requires explicit cross-domain transfer.

Relevant N-01 contract families:
- XML/resource contracts that participate in intent/deep-link configuration;
- resource IDs used by intent-driven UI surfaces;
- identity-sensitive deep-link resources transferred to N-11;
- manifest-linked XML remains N-05-owned;
- navigation semantics remain N-08-owned.

N-06 therefore audits the **Intent contract itself** rather than reimplementing N-01 resources or N-05 manifest configuration generically.

## 2. Reference static inventory

Canonical ZIP inspection of `output/jadx/sources/org/swiftapps/swiftbackup` found:

- 32 application-package Java files reading `getIntent()`.
- 25 application-package Java files containing `new Intent(...)`.
- 15 application-package files using `putExtra(...)`.
- 7 files using `getStringExtra(...)`.
- 9 files using `getBooleanExtra(...)`.
- 4 files using `getIntExtra(...)`.
- 15 files using `getParcelableExtra(...)`.
- 5 files using `getSerializableExtra(...)`.
- 1 file using `getParcelableArrayListExtra(...)`.
- 2 files using `setDataAndType(...)`.
- 6 files using `startActivityForResult(...)`.

These counts are source-surface counts, not runtime execution counts.

## 3. Manifest intent-filter inventory

Reference APK manifest contains **22 intent-filter blocks**.

### App-facing / target-sensitive contracts

1. Intro launcher:
   - ACTION_MAIN
   - CATEGORY_DEFAULT
   - CATEGORY_LAUNCHER

2. Home file/APK share:
   - ACTION_SEND
   - CATEGORY_DEFAULT
   - MIME: application/octet-stream, application/zip, application/x-zip, application/x-zip-compressed, application/vnd.android.package-archive

3. Home file/APK VIEW:
   - ACTION_VIEW
   - CATEGORY_DEFAULT + BROWSABLE
   - schemes: content, file
   - same APK/archive MIME family

4. AppInfo MSAL callback:
   - ACTION_VIEW
   - DEFAULT + BROWSABLE
   - scheme: msauth
   - host/path are Reference package/signature-derived values

5. TeraBox callback:
   - ACTION_VIEW
   - DEFAULT + BROWSABLE
   - scheme/host are Swift-identity-derived

6. SMS/MMS default-handler contracts:
   - ComposeSmsActivity: SEND + SENDTO, sms/smsto/mms/mmsto
   - HeadlessSmsSendService: RESPOND_VIA_MESSAGE, same schemes

7. Locale / boot / SMS / MMS receiver contracts:
   - LOCALE_CHANGED
   - BOOT_COMPLETED
   - SMS_DELIVER
   - WAP_PUSH_DELIVER + MMS MIME

### Dependency-owned / library boundary contracts

8. OpenID redirect:
   - org.swiftapps.swiftbackup scheme
   - db-mzc5bxvbe0960q1://1/connect
   - Box OAuth callback
   - Yandex OAuth callback
   - owner: dependency/library redirect activity

9. Firebase auth / recaptcha:
   - genericidp://firebase.auth/
   - recaptcha://firebase.auth/
   - Firebase-specific dependency surface

10. PCloud OAuth:
   - pcloud-oauth://org.swiftapps.swiftbackup
   - owner: PCloud/library AuthorizationActivity

11. AndroidX ProfileInstaller:
   - INSTALL_PROFILE
   - SKIP_FILE
   - SAVE_PROFILE
   - BENCHMARK_OPERATION

N-06 must not blindly copy dependency-owned filters into BaRe.

## 4. Target-vs-Reference findings

| ID | Contract | Target evidence | Classification |
|---|---|---|---|
| N06-01 | Launcher MAIN/DEFAULT/LAUNCHER | present on BaRe IntroActivity | MATCH |
| N06-02 | Home APK SEND filter | currently attached to ApkImportActivity rather than Reference HomeActivity | UNAUTHORIZED DEVIATION / ownership mismatch |
| N06-03 | Home APK VIEW filter | currently attached to ApkImportActivity rather than Reference HomeActivity | UNAUTHORIZED DEVIATION / ownership mismatch |
| N06-04 | OpenID redirect filters | redirect dependency Activity absent from target source manifest | DEPENDENCY-OWNED / UNKNOWN until dependency merge evidence |
| N06-05 | AppInfo msauth callback | app Activity exists, callback filter absent | UNKNOWN / dependency + identity/signature dependent |
| N06-06 | Box/Yandex/TeraBox identity callbacks | Yandex/TeraBox target uses BaRe identity | AUTHORIZED IDENTITY DEVIATION where applicable |
| N06-07 | PCloud OAuth filter | dependency Activity/filter absent | DEPENDENCY-OWNED / UNKNOWN |
| N06-08 | Firebase auth/recaptcha filters | absent; Firebase prohibited by handoff | AUTHORIZED BACKEND/DEPENDENCY DEVIATION |
| N06-09 | ProfileInstaller filters | absent | DEPENDENCY-OWNED |
| N06-10 | Locale/boot/SMS/MMS receiver filters | structurally present in target | MATCH at manifest-contract level |
| N06-11 | ComposeSmsActivity filter | present in target | MATCH |
| N06-12 | HeadlessSmsSendService filter | present in target | MATCH |

## 5. Explicit Intent / Extra contract register

The Reference application package has the following contract families.

### UI/application handoff extras

- `category`
- `category_title`
- `extra_config_settings`
- `extra_config_settings_delete`
- `extra_config`
- `extra_message`
- `extra_title`
- `extra_id`
- `cmd`
- `request_code`
- `detail_launched_from_shortcut`
- `KEY_SECTION`
- `source_bounds`
- `EXTRA_CLOUD_MODE`
- `highlight_cloud_card`
- `saveLocalItemFromCloud`

### Parcelable / Serializable handoff extras

- `extra_folder_item`
- `extra_folder_info`
- `extra_initial_folder`
- `EXTRA_FOLDER_BATCH_ACTION_ITEM`
- `extra_conversation`
- `extra_config_run_item`
- `batch_action_item`
- `quick_action_item`
- `labels_extra_app`
- `label_edit`
- `extra_config_settings`
- `EXTRA_SELECTED_FOLDER_ITEMS`
- `schedule_run_mode`
- `cloud_type`

### External/content intent extras

- `android.intent.extra.STREAM`
- `android.intent.extra.EMAIL`
- `android.intent.extra.SUBJECT`
- `android.intent.extra.TEXT`
- `mimeType`
- `package`

### Backup/default-handler extras

- `EXTRA_BACKUP_FILE_PATH`
- `EXTRA_BACKUP_ALL_FOLDERS`
- `extra_is_restoring`
- `extra_selected_folder`
- `extra_selected_labels`
- `extra_already_used_labels`
- `select_mode_replace_existing_labels`
- `EXTRA_REQUEST_CODE`
- `EXTRA_SELECTED_FOLDER_ITEMS`

These are contracts observed from Reference source. N-06 owns the Intent contract; semantic feature behavior remains with the owning N-domain/activity.

## 6. Classification rules

### N06-I — Intent contract
Action:
- preserve action;
- preserve target component;
- preserve extras/key names;
- preserve data/type/flags where Reference evidence proves them.

### N06-D — Dependency-owned intent
Action:
- record dependency ownership;
- do not blindly duplicate library manifest components;
- resolve only when target dependency merge/configuration provides evidence.

### N06-X — Cross-domain
Action:
- transfer navigation semantics to N-08;
- transfer lifecycle/state implications to N-09;
- transfer permission consequences to N-07;
- transfer branding/identity substitutions to N-11;
- transfer manifest linkage itself to N-05.

### N06-U — Unknown
Action:
- retain finding;
- do not invent callback URI/signature/configuration.

## 7. CEK — once or split

**PECAH is required.**

Reason:
1. Manifest/deep-link callback contracts have dependency and identity coupling.
2. Explicit intra-app extras are high-volume and span many Activities.
3. External OAuth callbacks cannot be safely reconstructed from Reference values alone when package/signature identity changes.
4. Dependency-owned filters must not be copied blindly.
5. A single mutation batch would mix N-05/N-11/dependency ownership with app-owned Intent contracts.

### Work packages

**N06-1 — App-owned manifest Intent contracts**
- restore Reference ownership for Home APK SEND/VIEW filters;
- preserve existing launcher/default-handler contracts;
- do not mutate dependency-owned callback filters;
- re-audit manifest Intent contracts.

**N06-2 — Explicit Activity/Service Intent contracts**
- audit and reconcile Reference extra/action/target contracts;
- preserve Java implementation;
- reconcile only target-owned contracts with direct evidence;
- re-audit all actionable N06 explicit-intent findings.

**N06-3 — External/dependency callback closure**
- resolve OpenID/PCloud/MSAL callback contracts only from actual target dependency/config evidence;
- Firebase callback surface remains excluded under authorized Firebase prohibition;
- classify unresolved signature/package-derived callbacks as UNKNOWN/BLOCKED rather than inventing them.

**N06-4 — TOTAL RE-AUDIT**
- full N-06 manifest + explicit intent + dependency classification;
- zero unexplained actionable N06 defect;
- every unresolved item explicitly owned/classified.

## 8. Exit criterion

N-06 can become GREEN only when:

1. all Reference app-owned Intent contracts are accounted for;
2. app-owned manifest filters match Reference semantics;
3. identity substitutions are explicitly classified;
4. explicit extras/actions/targets are reconciled;
5. dependency-owned filters are not blindly copied;
6. no unexplained app-owned Intent contract remains;
7. every cross-domain item has one owner;
8. UNKNOWN/BLOCKED items are explicit and evidence-backed;
9. Reference remains unchanged;
10. build/install/runtime is not used as closure evidence.

**Current N-06 state: 🟡 AUDITED / IMPLEMENTATION PENDING**
