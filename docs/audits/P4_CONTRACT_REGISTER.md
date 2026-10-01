# BΛR☰ P4 Contract Register

## Status

**P4.0 — ACTIVE / INITIAL INVENTORY**

This is the technical output of the Phase 4 boundary-and-contract inventory. It reconciles frozen P3 surfaces with existing Reference evidence and current BaRe evidence.

This is static evidence only. It is not runtime verification and does not authorize build/install/runtime execution.

## Classification

- PASS — contract sufficiently evidenced at the current static boundary.
- GAP — required P4 behavior is missing/incomplete.
- STUB — boundary exists but is intentionally non-functional/static.
- DOWNSTREAM — execution belongs to P5+.
- UNKNOWN — evidence is insufficient; no assumption is allowed.
- FAIL — current behavior contradicts established Reference evidence.

## Initial inventory

| ID | Boundary | Reference evidence | Current BaRe evidence | Classification | Next action |
|---|---|---|---|---|---|
| P4-C01 | Lifecycle / state | Reference lifecycle/state evidence; N-09 audited recreation and selected-navigation state | N-09 is closed at P3 boundary; deeper feature state ownership still needs P4 mapping | P4 | Map transient vs persisted state required by selected P3 flows |
| P4-C02 | Permission | Runtime permission, storage-management/AppOps, notification, Installed Apps, Root/Shizuku paths are evidenced in Reference | P3 has live permission boundaries; real Root/Shizuku detection and privileged engine are deferred | GAP / P4 | Define exact permission state/result/retry contract |
| P4-C03 | Storage | Reference storage/path selection and persistence boundary | P3 storage action exists; real coordinator and preferred-storage persistence are deferred | GAP / P4 | Inventory selected location, default, persistence, invalid state |
| P4-C04 | Account / session | Reference account initialization, anonymous/non-anonymous state, userInfo, migration and sign-out lifecycle | BaRe has UserInfo/UserInfoRepository plus AccountMigrationRepository/AccountLifecyclePolicy | P4 / PARTIAL | Reconcile exact P3 consumers and remaining local state |
| P4-C05 | Settings | Reference settings/default/read-write/dependency behavior must be mapped per frozen P3 consumer | Settings UI reconstruction exists, but contract-by-contract P4 inventory is not yet complete | P4 / INVENTORY | Inventory only settings required by frozen P3 flows |
| P4-C06 | Core data contracts | Reference-shaped models are created only where a P3 consumer requires them | Several Reference-shaped contracts already exist, including UserInfo and account/cloud-related contracts | P4 / PARTIAL | Verify actual consumers and contract fields |
| P4-C07 | Job/task state | Reference separates task/state/progress/error boundaries from execution | Feature execution remains downstream | DOWNSTREAM / P5 unless P3 needs the state contract | Define only required state/progress/error contract |
| P4-C08 | Cloud/session boundary | Reference cloud/account metadata and session contracts are statically evidenced | BaRe repository boundaries exist without claiming provider execution | P4 / PARTIAL | Separate local contract from provider execution |
| P4-C09 | Provider/backend execution | Reference contains provider/backend technical evidence | Provider/backend execution is explicitly outside current static P4 scope | DOWNSTREAM / P5+ | Preserve boundary; do not pull execution into P4 |
| P4-C10 | Backup/restore engine | Reference contains detailed backup/restore execution contracts | Actual engine execution remains downstream and runtime-unverified | DOWNSTREAM / P5 | Preserve boundary; do not implement as P4 |

## First P4 blockers

1. Permission contract.
2. Storage/path persistence contract.
3. Account/session contract reconciliation.
4. State ownership/restoration.
5. Settings contract for frozen P3 consumers.

These are inventory findings, not implementation claims.

## Explicit downstream boundaries

Do not pull these into P4 merely because their UI exists:

- backup execution;
- restore execution;
- filesystem/archive/compression/encryption execution;
- provider authentication/execution;
- actual cloud transfer;
- backend mutation;
- billing/entitlement execution;
- runtime/device verification.

## P4.0 exit criteria

Every targeted frozen P3 boundary must have:

- Reference evidence;
- contract;
- current BaRe state;
- owner/consumer;
- classification;
- minimum implementation target;
- deferred execution boundary;
- verification method;
- P3 regression surface.

**Current state: P4.0 is not closed.**

Next: **P4.1 — BaRe Gap / Blocker Analysis.**
