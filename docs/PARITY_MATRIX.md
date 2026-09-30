# BΛR☰ Parity Matrix

## Canonical Target Guard

Parity is defined by `docs/bare.md`, not by this matrix. This file is a high-level map only. A domain is not MATCH merely because a BaRe contract is similar, smaller, substituted, or sufficient for P3; the concrete Reference contract must be reconciled first. The supplied Swift Backup 5.1.0 (620) decompile archive is the primary Reference evidence source.


## Purpose

This document is the **high-level parity map**.

It is not the active P3 work queue and it is not a second status document.

For the active P3 audit, use:

`docs/PHASE_3_STATUS.md`

For audit evidence/history, use:

`docs/PHASE_3_CLOSURE_AUDIT.md`

## Classification

- **🟢 CLOSED / PASS** — evidence supports closure for the defined scope.
- **🟡 OPEN / UNKNOWN** — evidence is incomplete, contradictory, or still being audited.
- **🔴 FAIL / DEFECT** — concrete defect is established.
- **AUTHORIZED DEVIATION** — an intentional project deviation is explicitly allowed.
- **BLOCKED** — required verification cannot currently be performed because its execution evidence is unavailable or unauthorized.

The current P3 follow-up cycle is active; the domain verdicts below are the reconciled audit baseline. Current follow-up changes must be recorded separately from historical audit findings.

## Phase Gate Summary

| Phase | Status | Meaning |
|---|---|---|
| P1 Foundation | **COMPLETE / FROZEN** | Reference inventory/evidence foundation is established. |
| P2 Reference Skeleton | **COMPLETE / FROZEN** | Reference-owned structural skeleton is established: 71 Activities, 3 Services, 8 Receivers, 0 Reference-owned Providers. |
P3 UI + Navigation | **ACTIVE / FOLLOW-UP EXECUTION** | The 15-domain total audit is complete; bounded follow-up execution and re-audit/checkpoint cycles are active. |
| P4 Core Behavior | **GATED / NOT STARTED** | Downstream engine/provider/core behavior is not being implemented during this audit. |
| P5 Features | **DEFERRED** | Full backup/restore/feature execution remains outside the current P3 audit. |
| P6 Authorized Deviations | **DEFINED / GATED** | Authorized deviation rules remain separately controlled. |
| P7 Runtime | **BLOCKED / GATED** | Build/install/execute has not been authorized. |
| P8 Parity | **NOT EXECUTED** | Runtime evidence is reserved for the later runtime phase. |
| P9 Deviation Audit | **NOT FINAL** | Final deviation classification follows later parity evidence. |

## P3 Total Audit Matrix

| # | Domain | Current classification |
|---:|---|---|
| 1 | Resource | 🟡 OPEN / NEEDS FOLLOW-UP |
| 2 | Strings | 🟡 OPEN / NEEDS FOLLOW-UP |
| 3 | Dimensions | 🟢 CLOSED / PASS |
| 4 | Styles / Themes / Colors | 🔴 FAIL / DEFECT |
| 5 | Manifest | 🔴 FAIL / DEFECT |
| 6 | Intent | 🔴 FAIL / DEFECT |
| 7 | Permissions | 🟡 OPEN / NEEDS FOLLOW-UP |
| 8 | Navigation | 🔴 FAIL / DEFECT |
| 9 | Lifecycle / State | 🔴 FAIL / DEFECT |
| 10 | Dialog / Error / Loading | 🔴 FAIL / DEFECT |
| 11 | Branding | 🟡 OPEN / NEEDS FOLLOW-UP |
| 12 | Java-only | 🟢 CLOSED / PASS |
| 13 | Fake / Stub | 🟡 OPEN / NEEDS FOLLOW-UP |
| 14 | Boundary | 🟡 OPEN / NEEDS FOLLOW-UP |
| 15 | Static Hygiene | 🟡 OPEN / NEEDS FOLLOW-UP |

This table is the reconciled high-level result of the current total-audit cycle.

## P2 → P3 Boundary

P2 answered:

> **What Reference-owned structural components exist?**

Baseline:

- 71 Activities
- 3 Services
- 8 Receivers
- 0 Reference-owned Providers

P2 is **CLOSED / FROZEN**.

P3 answered:

> **Can the identified skeleton be worked through as the UI/navigation/state/dependency-boundary reconstruction?**

The prior implementation pass is treated as the **P3 implementation baseline**.

The current question is now:

> **Does the completed P3 implementation actually satisfy all 15 audit domains?**

That is what the total audit determines.

## Important Status Rule

Do not carry forward older statements such as:

- “three gates remain”;
- “two areas remain”;
- “Resource + Style/Theme/Color are the only remaining work”;
- “P3 is closed because 71/71 Activities are green.”

Those statements may remain as historical context where needed, but they are **not the current P3 verdict**.

The current authoritative state is:

> **P3 TOTAL AUDIT — #15 STATIC HYGIENE COMPLETE; P3 CLOSURE NOT ESTABLISHED**

Only the audit can move a domain to 🟢 or 🔴.

## Runtime / Execution Boundary

Nothing in this matrix proves:

- successful backup;
- successful restore;
- successful provider operation;
- successful cloud authentication;
- successful persistence;
- successful billing;
- successful backend execution;
- runtime visual parity.

Build/install/runtime/visual verification remains gated until explicitly authorized.

## Document Roles

| Document | Role |
|---|---|
| docs/PHASE_3_STATUS.md | **Operational source / single P3 audit work order** |
| docs/PHASE_3_CLOSURE_AUDIT.md | **Supporting evidence / audit ledger** |
| docs/PARITY_MATRIX.md | **High-level parity map** |

No document outside these roles should create a competing P3 work queue.


## P3 Total Audit — Resource Result

**#1 Resource: 🟡 OPEN / NEEDS FOLLOW-UP**

Static audit evidence shows large raw Reference/BaRe resource-count differences, but the Reference decoded tree contains dependency/library resources. Therefore count equality is not a valid parity test.

The current evidence does establish an application-owned resource **scope/evidence gap**: prior corrections exist, but a complete Reference→BaRe application-owned resource matrix is not yet documented.

No app/resource change was made during this audit.

Next: **#4 Styles / Themes / Colors**.


## P3 Total Audit — Strings Result

**#2 Strings: 🟡 OPEN / NEEDS FOLLOW-UP**

Static audit found 1,384 Reference base strings versus 523 current BaRe base strings. Raw equality is not a valid criterion because the Reference tree contains dependency/library strings. However, static Reference-source tracing identified 300 distinct R.string.* names used by the Reference application package, and representative application-owned names are absent from the current BaRe base string set.

Therefore the current evidence does not prove application-owned string parity closed. The required next step is an application-owned Reference→BaRe string matrix with explicit classification for dependency/library strings, P3-visible strings, authorized BΛR☰ replacements, and deferred/downstream strings.

No app/resource change was made during this audit.


## P3 Total Audit — Dimensions Result

**#3 Dimensions: 🟢 CLOSED / PASS**

Reference evidence records 839 unique dimension names across 20 values*/dimens.xml files, with 67 project-facing/non-library names reconciled into BaRe. Current tree spot checks confirm the key qualifier overrides and corrected base values. No app/resource changes occurred after the dimension reconciliation; subsequent commits are documentation-only.

No implementation follow-up is required from this audit domain.


## P3 Total Audit — Styles / Themes / Colors Result

**#4 Styles / Themes / Colors: 🔴 FAIL / DEFECT**

Static audit established a concrete application-theme contract gap: Reference uses `SwiftTheme` and a related theme/style family, while the current BaRe manifest points to `BaReTheme`, whose style contract is substantially smaller. Shared style names such as `CardStyleNormal` and `M3ButtonFilled` also have materially reduced item contracts. Current BaRe base colors contain only `intro_surface`, while Reference contains numerous application-facing colors used by the Reference source/theme contracts.

This is a static parity finding, not a runtime claim. No app/code/resource change was made during the audit.

Next: **#5 Manifest**.


## P3 Total Audit — Manifest Result

**#5 Manifest: 🔴 FAIL / DEFECT**

Static audit established concrete manifest contract gaps beyond the authorized package/branding/theme identity deviation: missing Reference-defined dynamic receiver permission, reduced application metadata/configuration, incomplete package-visibility queries, and multiple missing per-Activity labels/parentActivityName/window/theme attributes.

The 71 Reference-owned Activity/Service/Receiver structural skeleton remains distinct from these attribute-level findings. No app/code/resource change was made during the audit.

Next: **#6 Intent**.


## P3 Total Audit — Intent Result

**#6 Intent: 🔴 FAIL / DEFECT**

Static audit found unresolved external intent contracts: the Reference AppAuth callback receiver topology is not preserved/classified, while current Yandex and TeraBox callback URIs retain the Reference package namespace despite the target identity being `com.bare`. Internal explicit Intent usage is present, so this is a routing/contract parity finding rather than a missing-Intent finding.

No app/code/resource change was made during the audit.

Next: **#7 Permissions**.


## P3 Total Audit — Permissions Result

**#7 Permissions: 🟡 OPEN / NEEDS FOLLOW-UP**

Current static manifest counts are 34 Reference `uses-permission` declarations vs 33 BaRe declarations. Only `org.swiftapps.swiftbackup.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION` remains Reference-only; the other three permissions previously recorded as Reference-only are already present in the current BaRe manifest. BaRe also has static runtime request/check paths for the audited SMS/contact/call-log/notification permission surfaces.

The remaining custom permission is not yet classified as application-owned vs dependency/generated identity surface, and runtime grant behavior has not been verified.

No app/code/resource change was made during the audit.

Next: **#8 Navigation**.


## P3 Total Audit — Navigation Result

**#8 Navigation: 🔴 FAIL / DEFECT**

Static comparison found 32 Reference `parentActivityName` declarations vs 1 in BaRe, plus materially different launch-mode coverage (Reference: 66 `singleTop`, 6 `singleTask`, 2 `standard`; BaRe: 64 `singleTop`, 2 `singleTask`). BaRe nevertheless contains substantial explicit Activity navigation and result flows. The unresolved issue is manifest-level navigation/back-stack parity, not wholesale absence of navigation implementation.

No app/code/resource change was made during the audit.

Next: **#9 State / Lifecycle**.


## P3 Total Audit — State / Lifecycle Result

**#9 State / Lifecycle: 🔴 FAIL / DEFECT**

Reference application Activities contain numerous explicit saved-state contracts, including Home selected fragment, auth flags, premium state, diagnostics/report state, configuration parcelables, search/scroll state, and other screen-specific data. BaRe has meaningful targeted state persistence and ViewModel-backed surfaces, but the current evidence establishes only partial parity. Runtime recreation/background/foreground behavior remains unverified.

No app/code/resource change was made during the audit.

Next: **#10 Dialog / Error / Loading**.


## P3 Total Audit — Dialog / Error / Loading Result

**#10 Dialog / Error / Loading: 🔴 FAIL / DEFECT**

Reference contains application-owned Alert/Material dialogs, Snackbar permission/error flows, Toast feedback, loading/progress dialogs, duplicate-show guards, and persisted dialog state. BaRe has meaningful partial Material dialog and Toast coverage, but many are explicit P3 boundary surfaces and full error/loading/recovery parity is not established. Dialog state restoration and runtime presentation remain unverified.

No app/code/resource change was made during the audit.

Next: **#11 Branding / Swift Identity**.


## P3 Total Audit — Branding / Swift Identity Result

**#11 Branding: 🔴 FAIL / DEFECT**

Static audit and the subsequent EU-06 re-audit confirm that the authorized visible migration from Swift Backup to BΛR☰ is partially present: the manifest label and inspected Intro branding use BΛR☰, and inspected Swift-named resource identifiers currently resolve to BΛR☰ visible text. Internal Swift-named identifiers are not automatically defects under the handoff rules.

The concrete launcher identity/icon gap was resolved statically by EU-06 (manifest icon plus application-owned launcher vector). Full user-visible branding parity is still not exhaustively proven; broader string/provider/deep-link identity remains open and visual verification is gated.

No app/code/resource change was made during this audit.

Next: **#12 Java-only**.


## P3 Total Audit — Java-only Result

**#12 Java-only: 🟢 CLOSED / PASS**

Static repository evidence confirms the BaRe implementation is Java-only, with no target `.kt` source and no Jetpack Compose implementation/configuration found. Kotlin references in the supplied Reference/decompiled surface are dependency/runtime evidence, not target Kotlin source implementation.

No app/code/resource change was made during this audit.

Next: **#14 Boundary**.

## P3 Total Audit — Fake / Stub Result

**#13 Fake / Stub: 🟡 OPEN / NEEDS FOLLOW-UP**

Static target audit found explicit, labeled P3 stubs/boundaries for deferred authentication, Root/Shizuku, cloud/provider auth, backup/restore engines, and other downstream behavior. No target-side `UnsupportedOperationException` or `not implemented` matches were found, and no fabricated provider tokens/storage metrics/engine results were identified in the searched surface. `StorageInfoService.read()` returns `null` by explicit downstream/runtime-layer design and has no current target call site found by static search; it is carried into #14 Boundary rather than classified as a fake value.

No app/code/resource change was made during the audit.

Next: **#14 Boundary**.


## P3 Total Audit — Boundary Result

**#14 Boundary: 🟡 OPEN / NEEDS FOLLOW-UP**

### Evidence

- The P3 surface contains explicit boundary markers for downstream authentication, cloud/provider access, backup/restore engines, app-management side effects, storage/runtime behavior, permissions, diagnostics, contributor persistence, and other deferred execution paths. The Phase 4 guide explicitly states that these markers are temporary engineering markers and are not proof of execution.
- Provider/backend abstractions are separated from UI/domain code through explicit interfaces such as `CloudProviderRepository`, `CloudRepository`, `AccountRepository`, `FolderRepository`, `UserInfoRepository`, `CloudFileDeletionRepository`, and `AccountMigrationRepository`.
- Static search did not find concrete target implementations of those repository interfaces. This is consistent with the current downstream/deferred boundary, but it means the corresponding provider/backend execution contracts remain unimplemented/unverified.
- `BackendResult` and `BackendIdentity` provide provider-neutral data/result boundaries rather than claiming backend success. The Reference backend contract explicitly states that recovered Firebase paths are evidence, not a direct Supabase schema proposal.
- `CloudAccessService` maps provider results into the P3 Home cloud state model, but it still requires a concrete provider adapter.
- `StorageInfoService.read()` returns `null` and is explicitly documented as belonging to the storage/runtime layer; this remains an incomplete downstream contract.
- `app/build.gradle` contains AndroidX/Material dependencies only; no Supabase/Firebase/cloud-provider SDK implementation is present in the target dependency list.
- No build/install/runtime/device/provider/backend verification was performed.

### Boundary classification

| Boundary | Current classification | P3 impact |
|---|---|---|
| Android permission/system APIs | P3-visible contract / runtime dependency | UI/request paths exist; runtime grant behavior unverified |
| Storage/runtime provider | Downstream / incomplete | `StorageInfoService.read()` remains `null` |
| Account/auth provider | Downstream / deferred | repository interface exists; concrete provider not established |
| Cloud providers/OAuth SDKs | Downstream / deferred | explicit provider auth boundaries; SDK execution not claimed |
| Backend/Supabase | Downstream / deferred | provider-neutral contracts only; no backend success claimed |
| Backup/restore engine | Downstream / deferred | UI/action boundaries exist; execution not claimed |
| App-management side effects | Downstream / deferred | no destructive side effects claimed from P3 surfaces |
| Billing/entitlement | Downstream / deferred | no runtime entitlement success claimed |
| Runtime/device verification | Verification boundary | not performed by project guard |

### Findings

1. The project has a deliberate architectural separation between P3 presentation/state contracts and downstream execution boundaries.
2. No evidence was found that a downstream engine/provider/backend has been falsely represented as fully implemented merely because a P3 screen exists.
3. Several provider/backend interfaces currently have no concrete implementation, so the boundary is known and explicit, but not closed as executable behavior.
4. The boundary inventory is not yet exhaustive enough to establish PASS: concrete call-graph ownership for every P3 surface and every downstream interface still needs reconciliation.
5. The unresolved `StorageInfoService.read() == null` contract is a concrete follow-up item, not a fake success value.

### Required follow-up

- Build the complete Reference→BaRe boundary matrix across all 71 Activities plus major Services/Receivers and their downstream calls.
- For every boundary, record owner, input/output contract, deferred phase, and whether the P3-visible side is already reconstructed.
- Reconcile repository interfaces with their eventual concrete adapters without introducing fake success data.
- Carry storage/account/provider/backend/engine boundaries into the post-P3 implementation plan.
- Re-audit any P3 surface whose boundary implementation changes after total-audit closure.

**No app/code/resource fix performed during this audit.**

Next audit domain: **#15 Static Hygiene**.
