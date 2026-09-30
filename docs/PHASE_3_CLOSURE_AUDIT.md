# BΛR☰ Phase 3 Total Audit — Closure Evidence

## Document Role

**SUPPORTING EVIDENCE / AUDIT LEDGER.**

The active P3 work order lives exclusively in:

`docs/PHASE_3_STATUS.md`

This document records evidence and findings produced by the P3 TOTAL AUDIT. It is not an independent work queue.

## Audit Baseline

- Reference: Swift Backup 5.1.0, versionCode 620
- Reference source: supplied decompiled archive
- Target repository: savie/BaRe
- Target branch: rewrite
- P2 Reference Skeleton: **CLOSED / FROZEN**
- P2 inventory baseline: **71 Activities / 3 Services / 8 Receivers / 0 Reference-owned Providers**
- P3 implementation pass: treated as the completed implementation baseline for audit purposes
- Previous Activity classification: **71/71 GREEN**
- Build/install/runtime/visual verification: **not performed**
- Engine/provider/backend/runtime success: **not claimed**

## Why This Audit Exists

The P3 implementation pass was treated as completed, including the 71 Activity surface, Services, Receivers, and required dependency boundaries.

A fresh total audit is required because an implementation-complete claim is not itself proof that every parity contract is closed.

Therefore the previous mixed gate statuses are **not carried forward as final verdicts**.

The P3 TOTAL AUDIT starts with all 15 domains at:

> **🟡 AUDIT REQUIRED**

Yellow is an audit state, not a defect finding.

## 15-Domain Audit Matrix

| # | Domain | Initial state | Final verdict |
|---:|---|---|---|
| 1 | Resource | 🟡 **OPEN** | Evidence audit completed; application-owned matrix still required for closure. |
| 2 | Strings | 🟡 **OPEN** | Evidence audit completed; application-owned string matrix and P3 usage classification are still required for closure. |
| 3 | Dimensions | 🟢 **CLOSED / PASS** | Evidence supports closure for the defined P3 dimension scope. |
| 4 | Styles / Themes / Colors | 🔴 **FAIL / DEFECT** | Concrete static theme/style/color contract gaps established; implementation follow-up required after total audit. |
| 5 | Manifest | 🔴 **FAIL / DEFECT** | Concrete static manifest contract gaps established; implementation follow-up required after total audit. |
| 6 | Intent | 🔴 **FAIL / DEFECT** | Concrete static external intent/URI contract gaps established; implementation follow-up required after total audit. |
| 7 | Permissions | 🟡 **OPEN / NEEDS FOLLOW-UP** | Static manifest/request comparison leaves one Reference-defined custom permission boundary unresolved; runtime permission verification remains unperformed. |
| 8 | Navigation | 🔴 **FAIL / DEFECT** | Reference parentActivity and launch-mode contracts are materially reduced in BaRe; static source navigation exists but manifest back-stack topology is not yet reconciled. |
| 9 | Lifecycle / State | 🟡 | Pending audit |
| 10 | Dialog / Error / Loading | 🔴 **FAIL / DEFECT** | Reference application surfaces use multiple dialog/error/loading mechanisms and persisted dialog state; BaRe has partial replacements and P3 boundary dialogs, but application-wide parity is not established. |
| 11 | Branding | 🟡 | Pending audit |
| 12 | Java-only | 🟡 | Pending audit |
| 13 | Fake / Stub | 🟡 | Pending audit |
| 14 | Boundary | 🟡 | Pending audit |
| 15 | Static Hygiene | 🟡 | Pending audit |

### Verdict definitions

- 🟢 **CLOSED / PASS** — evidence supports closure for the defined P3 scope.
- 🟡 **OPEN / UNKNOWN** — evidence is incomplete, contradictory, or requires follow-up.
- 🔴 **FAIL / DEFECT** — evidence identifies a concrete P3 defect.

## Audit Protocol

For each domain:

1. Identify the exact P3 scope.
2. Check current repository evidence.
3. Compare against the supplied Reference evidence where applicable.
4. Record concrete findings.
5. Assign one verdict.
6. Record required follow-up, if any.
7. Move to the next domain.

The audit does **not** make implementation changes.

If a defect is found, it becomes a documented follow-up item. Fixes happen only after the 15-domain audit establishes the actual remaining work.

## Historical Evidence — Not Current Verdicts

The repository contains earlier P3 evidence such as:

- dimension parity work;
- restored/confirmed resource contracts;
- manifest corrections;
- intent/navigation checks;
- lifecycle/state checks;
- branding cleanup;
- Java-only / Android Views/XML constraints;
- P3 boundary classifications;
- static resource-reference checks.

These records remain useful as **audit evidence**, but they do not automatically become current 🟢 verdicts.

The fresh audit must re-evaluate them against the current repository state.

## Runtime Boundary

The absence of runtime/build/install/visual verification is not itself a P3 implementation defect.

Where a domain can be established statically, use static evidence.

Where runtime evidence is genuinely required, record the limitation as part of the verdict rather than silently converting it into PASS.

No build, install, runtime, or visual verification is authorized by this audit document.

## Phase 4 Boundary

Phase 4 remains **GATED / NOT STARTED**.

The existence of a Phase 4 guide does not mean Phase 4 implementation has begun.

P3 must first complete its 15-domain audit and any resulting P3 follow-up work.

## Closure Rule

P3 may only be considered closed after:

1. all 15 domains have a documented verdict;
2. all 🔴 P3 defects are resolved;
3. all required 🟡 follow-ups are either resolved or explicitly classified as downstream/out-of-scope;
4. P3 boundary/deferred execution remains explicit;
5. documentation is internally consistent;
6. Phase 4 remains gated until those conditions are met.

Until then:

> **P3 = ACTIVE / TOTAL AUDIT IN PROGRESS**


## Audit #1 — Resource — Findings

**Verdict: 🟡 OPEN / NEEDS FOLLOW-UP**

The Resource domain was audited statically without changing the app.

### Evidence

Reference Phase 1 inventory records 1,491 decoded resources under `res/`, with major counts including 341 layouts, 44 menus, 445 drawables, 18 XML, 12 raw, 7 fonts, 41 anim, 42 animator, and 199 colors.

Current direct directory comparisons show materially smaller BaRe sets, including:
- layout: Reference 341 / BaRe 121
- menu: Reference 44 / BaRe 29
- drawable: Reference 445 / BaRe 79
- drawable-nodpi: Reference 33 / BaRe 1
- color: Reference 199 / BaRe 1
- xml: Reference 18 / BaRe 1

These deltas are **not** themselves defects because the Reference decoded tree includes dependency/library resources.

Earlier P3 evidence also records multiple application-owned resource corrections. However, those records do not constitute a single exhaustive current application-owned Reference→BaRe matrix.

### Audit conclusion

The Resource domain remains:

> **🟡 OPEN / NEEDS FOLLOW-UP**

Reason: the evidence is sufficient to establish that the domain is not yet proven closed, but insufficient to classify every Reference-only resource as an application defect.

### Follow-up, not implementation

The next Resource work required after the 15-domain audit is an application-owned resource matrix separated from dependency/library resources.

**No app/resource fix was performed.**


## Audit #2 — Strings — Findings

**Verdict: 🟡 OPEN / NEEDS FOLLOW-UP**

The Strings domain was audited statically without changing the app.

### Evidence

Reference res/values/strings.xml contains **1,384** base string entries. Current BaRe app/src/main/res/values/strings.xml contains **523** entries.

Direct name comparison yields **1,041 Reference names absent from BaRe's current base strings file** and **177 target-only names**. The Reference decoded resource tree includes dependency/library strings, so these raw deltas are not themselves defects.

Static tracing of R.string.* references under the Reference org.swiftapps.swiftbackup Java source found **300 distinct application-source string names**, all defined by the Reference base strings file. Representative Reference application strings used by that source but absent from the current BaRe base strings file include:

- add_apps
- account_email
- active_backup_tag
- apk_import_ready_title
- app_data
- app_parts
- apps_empty_list_error
- auth_failed
- backup_all
- backup_and_restore
- backup_call_logs
- backup_content

This is enough to establish that the current string set is not exhaustively reconciled at application scope.

Earlier historical P3 documentation recorded a P3-visible string parity PASS, but the fresh total audit does not carry that forward as a final verdict.

### Audit conclusion

The Strings domain remains:

> **🟡 OPEN / NEEDS FOLLOW-UP**

### Follow-up, not implementation

Build an application-owned Reference→BaRe string matrix, classify dependency/library strings separately, then classify missing Reference application strings as P3-visible, authorized branding replacement, or legitimately deferred/downstream. Reconcile relevant locale/qualifier coverage where required.

**No app/resource fix was performed.**


## Audit #3 — Dimensions — Findings

**Verdict: 🟢 CLOSED / PASS**

The Dimensions domain was re-audited statically without changing the app.

### Evidence

Reference evidence establishes **839 unique dimension names across 20 values*/dimens.xml files**. The prior application-scope reconciliation isolated **67 project-facing/non-library-prefixed dimension names**, and all 67 were reconciled into BaRe with Reference values.

Current tree spot checks confirm the Reference-sensitive qualifier overrides:

- values-land: activity_horizontal_margin = 64.0dp
- values-w820dp: activity_horizontal_margin = 64.0dp
- values-w320dp-land: clock_face_margin_start = 24.0dp
- values-w600dp-land: clock_face_margin_start = 64.0dp

Current base values also confirm the corrected Reference-facing values:

- label_chip_corner_radius = 11.0dp
- label_chip_stroke_width = 1.5dp
- subtitle_small = 13.0sp
- subtitle_smaller = 12.0sp
- title = 16.0sp

The dimension reconciliation predates the current documentation-only audit commits; no app/resource changes occurred after it.

### Audit conclusion

The Dimensions domain is:

> **🟢 CLOSED / PASS**

No implementation follow-up is required from this audit domain.

**No app/resource fix was performed.**


## Audit #4 — Styles / Themes / Colors — Findings

**Verdict: 🔴 FAIL / DEFECT**

The Styles / Themes / Colors domain was audited statically without changing the app.

### Evidence

Reference `res/values/styles.xml` defines the application theme around `SwiftTheme`, with `SwiftThemeDark`, `SwiftThemeBlack`, `HomeTheme*`, dialog themes, `TransparentActivityTheme`, `ToolbarTheme`, and related contracts. The Reference `SwiftTheme` carries extensive custom attributes for text/popup appearance, bars, cards, buttons/dialogs, bottom sheets, toolbar, warnings/errors, segmented lists, and related UI behavior.

Current BaRe `values/styles.xml` instead defines `BaReTheme` with a much smaller Material3 contract. The current manifest explicitly points the application at `@style/BaReTheme`. The Reference `SwiftTheme` family is not present in the current BaRe style tree.

Specific retained-style differences are also concrete: Reference `CardStyleNormal` includes width/height, background, corner radius, elevation, and compat-padding settings; current BaRe's same-named style only carries corner radius and elevation. Reference `M3ButtonFilled` includes the Reference state-list animator, font, and icon-gravity contracts; current BaRe does not preserve those items.

Current BaRe `values/colors.xml` contains only `intro_surface`, while Reference base colors contain hundreds of entries. Static Reference Java tracing also shows multiple application-facing colors such as `acnt`, `ambr`, `apps`, `blk`, `blu`, `calls`, `color_primary_10`, `dialogErrorText`, `favorites`, `folders`, `grn`, `messages`, `premium`, `red`, `trans`, `wht`, and `wifi`.

### Findings

1. The application theme contract is statically different: `SwiftTheme` vs `BaReTheme`, with substantial missing custom attributes/styles.
2. Several shared style names are materially reduced, so this is not only a branding rename.
3. Application-owned color parity is not established and multiple Reference-facing colors are absent from the current target base color set.
4. These differences are concrete static contract gaps; no runtime inference is required for the domain to remain open/failed.

### Audit conclusion

The Styles / Themes / Colors domain is:

> **🔴 FAIL / DEFECT**

### Follow-up, not implementation

After the 15-domain audit completes, build the application-owned style/theme/color matrix, separate dependency/library resources, reconstruct the Reference theme contract behind the authorized BΛR☰ theme identity, and reconcile the missing application-owned colors/styles.

**No app/code/resource fix was performed.**

Next audit domain: **#5 Manifest**.


## Audit #5 — Manifest — Findings

**Verdict: 🔴 FAIL / DEFECT**

The Manifest domain was audited statically without changing the app.

### Evidence

Reference declares a broader application-level manifest contract: `SwiftTheme`, `SwiftApp`, resource-backed label/icon, locale and network-security configuration, AndroidX app component factory, `extractNativeLibs`, and `android.max_aspect`. BaRe intentionally changes application identity/branding to `.BaReApp`, `BΛR☰`, and `BaReTheme`, but the current manifest also omits several non-branding Reference configuration elements.

Reference additionally defines `org.swiftapps.swiftbackup.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`; the current target has no corresponding manifest-defined permission. Reference package visibility also includes Microsoft authentication packages and an extra billing-test intent not present in BaRe.

Across the 71 Activity surface, the current manifest structurally registers the components, but many Reference per-Activity attributes are reduced or absent, including `parentActivityName`, labels, `windowSoftInputMode`, and transparent activity themes. These are manifest-level contracts rather than merely source-level behavior.

### Audit conclusion

The Manifest domain is:

> **🔴 FAIL / DEFECT**

### Follow-up, not implementation

After the 15-domain audit, construct the Reference→BaRe manifest matrix, classify authorized deviations, and reconcile the missing application/per-component contracts. Dependency/library components remain separately classified from the P2 Reference-owned skeleton.

**No app/code/resource fix was performed.**

Next audit domain: **#6 Intent**.


## Audit #6 — Intent — Findings

**Verdict: 🔴 FAIL / DEFECT**

The Intent domain was audited statically without changing the app.

### Evidence

Reference's manifest contains an AppAuth `RedirectUriReceiverActivity` with multiple VIEW/BROWSABLE callback filters, including the Reference OAuth scheme plus Box/Yandex provider callbacks. Current BaRe does not preserve that receiver contract and instead routes Yandex/TeraBox callbacks through provider-specific Activities.

Current BaRe source does contain extensive explicit Intent usage across the P3 surface, including internal Activity launches, APK import, browser/email actions, role requests, and cloud authentication. The audit therefore does not classify Intent support as missing wholesale.

A concrete namespace mismatch remains: current Yandex code and manifest use `org.swiftapps.swiftbackup.yandex://oauth`, and TeraBox uses `org.swiftapps.swiftbackup.terabox`, despite the target identity being `com.bare`. Without an explicit authorized provider contract, these are unresolved external intent contracts.

### Audit conclusion

The Intent domain is:

> **🔴 FAIL / DEFECT**

### Follow-up, not implementation

Create the Reference→BaRe intent matrix, classify the AppAuth callback topology, reconcile provider callback namespaces, and re-audit exported/deep-link filters after the implementation phase.

**No app/code/resource fix was performed.**

Next audit domain: **#7 Permissions**.


## Audit #7 — Permissions — Findings

**Verdict: 🟡 OPEN / NEEDS FOLLOW-UP**

### Static manifest result

Direct comparison of the current Reference 5.1.0 (620) manifest and BaRe manifest shows **34 Reference `uses-permission` declarations vs 33 BaRe declarations**. The only Reference-only declaration is:

`org.swiftapps.swiftbackup.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`

The previously documented four-item delta is stale: current BaRe already declares `QUERY_ADVANCED_PROTECTION_MODE`, `com.google.android.providers.gsf.permission.READ_GSERVICES`, and `moe.shizuku.manager.permission.API_V23`.

The Reference also defines the dynamic receiver permission itself with `protectionLevel="signature"`; current BaRe has no corresponding `<permission>` declaration.

### Runtime/request contract evidence

Static source evidence shows BaRe explicitly requests/checks permissions for the reconstructed SMS/contact/call-log and notification surfaces, including `READ_SMS`, `READ_CONTACTS`, `READ_CALL_LOG`, `WRITE_CALL_LOG`, and `POST_NOTIFICATIONS`. Reference source has corresponding permission handling for the same major surfaces.

Reference source also contains Shizuku permission handling for `moe.shizuku.manager.permission.API_V23`, and current BaRe manifest declares that permission. This audit does not infer runtime grant state without execution.

### Conclusion

The remaining custom dynamic-receiver permission is tied to the Reference package identity and may represent dependency/generated manifest integration rather than an application-owned permission. The source evidence available in this audit does not establish its current BaRe runtime necessity or an authorized exemption.

Therefore the domain remains **🟡 OPEN / NEEDS FOLLOW-UP**, not PASS.

### Required follow-up

- Classify the Reference-defined dynamic receiver permission as dependency-generated, application-owned, or authorized identity migration.
- If application-owned, reconcile it under the BaRe namespace and re-audit receiver registration boundaries.
- Complete static Reference→BaRe permission/request matrix, then perform runtime verification only when runtime work is authorized.

**No app/code/resource fix performed during this audit.**

Next audit domain: **#8 Navigation**.


## Audit #8 — Navigation — Findings

**Verdict: 🔴 FAIL / DEFECT**

### Static manifest comparison

Reference declares **32 `parentActivityName` relationships** across its application Activities; the current BaRe manifest contains only **1**. Reference launch-mode declarations are also materially richer: **66 `singleTop`, 6 `singleTask`, and 2 `standard`** declarations versus BaRe's **64 `singleTop` and 2 `singleTask`** declarations.

The Reference navigation topology therefore is not preserved by manifest metadata alone. This is especially material for chains such as Home → AppList → Detail and Settings → SettingsDetail, where Reference explicitly declares parent relationships.

### Source navigation evidence

BaRe does contain real explicit navigation contracts. Static examples include:

- `AppListActivity` → `AppsQuickActionsActivity` and `LabelsActivity`.
- `FoldersBatchActivity` → `FolderEditActivity` with `extra_folder_item`, and → `SettingsDetailActivity` with `category`.
- `ScheduleLabelsSelectActivity` → `LabelEditActivity` via `startActivityForResult`.
- `YandexSignInActivity` → external authorization via `ACTION_VIEW` + `startActivityForResult`.
- `MessagesBackupRestoreActivity` → SMS role request via `startActivityForResult`.
- `ApkImportActivity` → installer flow via `startActivityForResult`.

There are also explicit Back/Up implementations in several Activities, including folder picker, schedule selectors, sign-in screens, and settings-related surfaces.

### Conclusion

The issue is **not absence of navigation code**. The defect is that the Reference navigation graph's manifest-level parent/back-stack contracts are substantially reduced, and launch-mode parity is not reconciled. Static source evidence also shows a mix of P3 boundary implementations, so runtime equivalence cannot be inferred.

### Required follow-up

- Build a Reference→BaRe navigation matrix for all 71 application Activities.
- Reconcile `parentActivityName`, `launchMode`, and relevant `excludeFromRecents`/task-affinity/back-stack attributes.
- Reconcile explicit Intent destinations and required extras/result contracts.
- Re-audit Up/back behavior against the resulting parent graph.

**No app/code/resource fix performed during this audit.**

Next audit domain: **#9 State / Lifecycle**.


## Audit #9 — State / Lifecycle — Findings

**Verdict: 🔴 FAIL / DEFECT**

### Reference evidence

Static Reference source inspection shows application-owned Activities explicitly persisting screen state in `onSaveInstanceState()`. Examples include:

- `HomeActivity`: selected Home fragment/item id (`saved_fragment`).
- `AppInfoActivity`: internal screen state through its backing state object.
- `PremiumActivity`: expanded-plan state and selected plan.
- `LocaleActivity`: screen state before recreation.
- `DropboxSignInActivity`: auth-started/result-received flags.
- `CloudConnectActivity`: persisted cloud connection state.
- `CloudDiagnosticsActivity`: result visibility and latest report.
- `RestoreSpecialDataDetailsActivity`: configuration settings parcelable.
- `AppsConfigRunActivity`: active run state.
- `AppBackupLimitsActivity`: limits list.
- `AppVisibilityDiagnosticsActivity`: scroll position and search query.

The Reference also relies on Android/AndroidX saved-state machinery for fragments and stateful views.

### BaRe evidence

BaRe does implement targeted state persistence in several important Activities, including:

- `ApkImportActivity`: URI/kind/package state.
- `YandexSignInActivity`: authorization/handled-result flags.
- `TeraBoxSignInActivity`: browser/result flags.
- `PremiumActivity`: expanded state and selected plan.
- `FolderDetailActivity`: folder parcelable.
- `FolderEditActivity`: existing folder item.
- `FoldersBatchActivity`: action/selection state.
- `FolderPickerActivity`: current folder.
- `LabelsActivity`: labels and selected IDs.
- `LabelEditActivity`: name/color.
- `CallsDashActivity`: cloud-card highlight.
- `ChatActivity`: conversation title.
- `MultipleBackupsActivity`: strategy.

BaRe also contains ViewModel-backed Home data surfaces such as Dashboard, Account, Cloud, and Schedule, plus lifecycle refreshes in Settings fragments.

### Gap

The evidence establishes **partial state/lifecycle reconstruction**, not parity. Reference persistence is broader and frequently preserves screen-specific state that is coupled to ViewModel/UI state. Several BaRe Activities are explicit P3 boundary shells rather than full Reference state engines, so static presence of `onSaveInstanceState()` alone cannot establish behavioral equivalence.

Runtime recreation/background/foreground behavior has not been verified.

### Required follow-up

- Build Reference→BaRe lifecycle/state matrix for all application Activities and major Fragments.
- Identify every Reference application-owned saved-state key and map its BaRe counterpart.
- Reconcile `onCreate` restoration paths with `onSaveInstanceState` contracts.
- Audit `onNewIntent`, `onResume`, permission-result, activity-result, and configuration-change paths where state depends on external returns.
- Distinguish ViewModel-retained state from Bundle-restored state.
- Runtime recreation verification only after explicit authorization.

**No app/code/resource fix performed during this audit.**

Next audit domain: **#10 Dialog / Error / Loading**.


## Audit #10 — Dialog / Error / Loading — Findings

**Verdict: 🔴 FAIL / DEFECT**

### Reference evidence

Static Reference evidence shows several distinct user-facing feedback mechanisms:

- Material/Alert dialogs, including application-specific dialog themes and custom layouts.
- Snackbar flows in Intro for permission/error feedback, including actions such as proceeding after a permission issue.
- Toast feedback for application actions and transient status messages.
- Dialog visibility/state persistence: `IntroActivity` saves `KEY_FIREBASE_ERROR_DIALOG_MODE` when its error dialog is showing.
- Multiple application Activities explicitly guard/show dialogs with `isShowing()` to avoid duplicate presentation.
- Task/WiFi/cloud flows contain explicit dialog presentation and dismissal paths.

Reference resources also include application-specific dialog layouts such as storage-setup failure and Material dialog styling contracts.

### BaRe evidence

BaRe has substantial partial feedback reconstruction:

- Many Activities use `MaterialAlertDialogBuilder` for P3 boundary/error surfaces.
- `IntroActivity` uses a Material dialog and Toast for current boundary paths.
- `AppListActivity`, `CallsBackupRestoreActivity`, `MessagesBackupRestoreActivity`, `AppVisibilityDiagnosticsActivity`, and provider-boundary flows use Toast feedback.
- Some Activities expose explicit loading/result shells or guard actions through boundary dialogs.

However, the observed BaRe dialogs are frequently **P3 boundary dialogs**, not demonstrated reconstructions of the corresponding Reference error/loading semantics.

### Gap

The current evidence does not establish parity for:

- Reference application-specific dialog content/layout/style contracts.
- Snackbar action flows and their triggers.
- Loading/progress lifecycle, including cancel/dismiss semantics.
- Error-to-retry/recover transitions.
- Dialog state restoration across recreation.
- Full mapping of Reference transient feedback to BaRe equivalents.

This is especially relevant because Audit #4 already established a missing/reduced Reference style/theme contract, including dialog-related styles.

### Required follow-up

- Build Reference→BaRe matrix for application-owned dialogs, Snackbars, Toasts, loading/progress indicators, and error states.
- Map trigger → visible state → action → dismissal/cancel → recovery behavior.
- Reconcile application-owned dialog layouts/themes and strings.
- Reconcile loading/progress state with Activity/ViewModel lifecycle.
- Re-audit saved dialog state together with Audit #9.
- Runtime visual/interaction verification only after explicit authorization.

**No app/code/resource fix performed during this audit.**

Next audit domain: **#11 Branding / Swift Identity**.
