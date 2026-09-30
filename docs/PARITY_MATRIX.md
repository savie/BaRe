# BΛR☰ Parity Matrix

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

The current P3 total-audit baseline intentionally starts all 15 P3 domains at **🟡**.

## Phase Gate Summary

| Phase | Status | Meaning |
|---|---|---|
| P1 Foundation | **COMPLETE / FROZEN** | Reference inventory/evidence foundation is established. |
| P2 Reference Skeleton | **COMPLETE / FROZEN** | Reference-owned structural skeleton is established: 71 Activities, 3 Services, 8 Receivers, 0 Reference-owned Providers. |
| P3 UI + Navigation | **ACTIVE / TOTAL AUDIT** | P3 implementation pass is the audit baseline; 15-domain total audit is now in progress. |
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
| 8 | Navigation | 🟡 AUDIT REQUIRED |
| 9 | Lifecycle / State | 🟡 AUDIT REQUIRED |
| 10 | Dialog / Error / Loading | 🟡 AUDIT REQUIRED |
| 11 | Branding | 🟡 AUDIT REQUIRED |
| 12 | Java-only | 🟡 AUDIT REQUIRED |
| 13 | Fake / Stub | 🟡 AUDIT REQUIRED |
| 14 | Boundary | 🟡 AUDIT REQUIRED |
| 15 | Static Hygiene | 🟡 AUDIT REQUIRED |

This table is intentionally neutral. It does not claim that every domain contains a defect.

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

> **P3 TOTAL AUDIT — 15/15 YELLOW**

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
