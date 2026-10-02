# BΛR☰ Documentation Map

## Operating model

Keep one document authoritative for each layer. Do not duplicate live status tables, queues, or phase roadmaps across documents.

| Document | Role | Authority |
|---|---|---|
| `docs/bare.md` | Project roadmap / handoff / target definition | **Canonical project definition** |
| `docs/PHASE_1_INVENTORY.md` | Phase 1 evidence and inventory gate | **Frozen P1 gate** |
| `docs/PHASE_2_SKELETON.md` | 71/3/8 Reference structural inventory | **Frozen P2 gate** |
| `docs/PHASE_3_GATE.md` | Current P3 scope, Activity audit baseline, 15-domain register, N-level closure, exit gate | **Single P3 authority** |
| `docs/PHASE_4_GATE.md` | Frozen P4 boundary, contract closure, and exit gate | **Single P4 authority** |
| `docs/audits/P4_CONTRACT_REGISTER.md` | P4 contract evidence and closure register | P4 evidence |
| `docs/PHASE_5_GUIDE.md` | P5 feature reconstruction method and pre-implementation workflow | **P5 method guide** |
| `docs/audits/P5_SCOPE_AUDIT.md` | P5.0 evidence-backed feature universe and entry boundary | **P5.0 scope evidence** |
| `docs/audits/P5_FEATURE_REGISTER.md` | P5.1 Reference feature decomposition and evidence register | **P5.1 feature evidence** |
| `docs/audits/P5_FEATURE_COVERAGE_GROUPING.md` | P5.1 provisional coverage/grouping ledger and targeted audit queue | **P5.1 coverage/grouping** |
| `docs/RECONSTRUCTION_CHECKPOINT.md` | Short current project dashboard / phase position | **Dashboard only** |
| `docs/RECONSTRUCTION_STATUS.md` | Detailed implementation notes, Reference findings, historical checkpoints | **Evidence/history ledger; not a queue** |
| `docs/REFERENCE_AUDIT.md` | Reference artifact inventory/evidence | Reference evidence |
| `docs/REFERENCE_FEATURE_MAP.md` | Reference feature/component mapping | Reference evidence |
| `docs/REFERENCE_BACKEND_CONTRACT.md` | Verified Reference backend contracts | Reference evidence; not a Supabase schema |

## Deduplication rules

- Each phase gate owns its live phase decision surface. Other documents must point to it instead of copying its live status table.
- `PHASE_5_GUIDE.md` owns the **P5 method**, not live P5 status.
- A future `PHASE_5_GATE.md` will own the **live P5 status** once P5 is formally opened.
- `RECONSTRUCTION_CHECKPOINT.md` owns only the **short roadmap dashboard**. It must not contain a second P5 work queue or detailed feature matrix.
- `RECONSTRUCTION_STATUS.md` owns **detailed evidence/history**. Historical entries must not be presented as the current P5 state.
- `PHASE_2_SKELETON.md` owns the canonical 71/3/8 component inventory. Do not copy the full component list elsewhere.
- Historical/retired P3 work-package, parity, closure-audit, and resource-matrix documents are not active authorities.
- Reference artifacts remain read-only; implementation belongs in `app/`.

## Reading order

### Daily work

1. `docs/RECONSTRUCTION_CHECKPOINT.md` — current project position
2. `docs/PHASE_4_GATE.md` — frozen P4 boundary and closure
3. `docs/audits/P4_CONTRACT_REGISTER.md` — P4 contract evidence
4. `docs/PHASE_5_GUIDE.md` — P5 method and pre-implementation rules
5. `docs/audits/P5_SCOPE_AUDIT.md` — P5.0 scope/entry evidence
6. `docs/audits/P5_FEATURE_REGISTER.md` — P5.1 feature evidence
7. `docs/RECONSTRUCTION_STATUS.md — detailed evidence/history
6. `docs/bare.md` — roadmap/handoff/target definition
7. Relevant `REFERENCE_*.md` — Reference evidence when needed

### P5 pre-implementation work

1. `docs/bare.md` — canonical P5 scope and target rules
2. `docs/PHASE_4_GATE.md` — frozen predecessor boundary
3. `docs/PHASE_5_GUIDE.md` — P5 workflow
4. Relevant Reference evidence/audits
5. `docs/audits/P5_SCOPE_AUDIT.md` — P5.0 scope/entry result
6. `docs/audits/P5_FEATURE_REGISTER.md` — P5.1 Reference feature audit
7. Establish the P5 gate/register only after the evidence-backed pre-implementation audit is ready

### Daily P3 work

1. `docs/RECONSTRUCTION_CHECKPOINT.md` — where the project is
2. `docs/PHASE_3_GATE.md` — what P3 currently requires
3. `docs/RECONSTRUCTION_STATUS.md` — evidence behind the selected task
4. Relevant `REFERENCE_*.md` — Reference evidence when needed
5. `docs/PHASE_2_SKELETON.md` — component identity only when needed

### Gate review

1. `docs/bare.md`
2. `docs/PHASE_1_INVENTORY.md`
3. `docs/PHASE_2_SKELETON.md`
4. `docs/PHASE_3_GATE.md`
5. `docs/PHASE_4_GATE.md`
6. `docs/audits/P4_CONTRACT_REGISTER.md`
7. `docs/PHASE_5_GUIDE.md` — method only; P5 gate is not yet opened

## Current state

**P1 frozen → P2 frozen → P3 frozen → P4 frozen at the static contract boundary → P5.0 scope complete → P5.1 feature evidence + coverage/grouping complete → P5 gate not yet opened.**

For exact P4 status, use `docs/PHASE_4_GATE.md` and `docs/audits/P4_CONTRACT_REGISTER.md`.

For P5 method, use `docs/PHASE_5_GUIDE.md`. The guide does not authorize P5 implementation.
