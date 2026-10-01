# BΛR☰ Documentation Map

## Operating model

Keep one document authoritative for each layer. Do not duplicate live status tables, queues, or phase roadmaps across documents.

| Document | Role | Authority |
|---|---|---|
| `docs/bare.md` | Project roadmap / handoff / target definition | **Canonical project definition** |
| `docs/PHASE_1_INVENTORY.md` | Phase 1 evidence and inventory gate | **Frozen P1 gate** |
| `docs/PHASE_2_SKELETON.md` | 71/3/8 Reference structural inventory | **Frozen P2 gate** |
| `docs/PHASE_3_GATE.md` | Current P3 scope, Activity audit baseline, 15-domain register, N-level closure, exit gate | **Single P3 authority** |
| `docs/RECONSTRUCTION_CHECKPOINT.md` | Short current project dashboard / phase position | **Dashboard only** |
| `docs/RECONSTRUCTION_STATUS.md` | Detailed implementation notes, Reference findings, historical checkpoints | **Evidence/history ledger; not a queue** |
| `docs/REFERENCE_AUDIT.md` | Reference artifact inventory/evidence | Reference evidence |
| `docs/REFERENCE_FEATURE_MAP.md` | Reference feature/component mapping | Reference evidence |
| `docs/REFERENCE_BACKEND_CONTRACT.md` | Verified Reference backend contracts | Reference evidence; not a Supabase schema |

## Deduplication rules

- `PHASE_3_GATE.md` owns the **live P3 status**. Other documents must point to it instead of copying its 15-domain table.
- `RECONSTRUCTION_CHECKPOINT.md` owns only the **short roadmap dashboard**. It must not contain a second P3 work queue or detailed audit matrix.
- `RECONSTRUCTION_STATUS.md` owns **detailed evidence/history**. Historical entries may retain old counts, but they must not be presented as the current P3 state.
- `PHASE_2_SKELETON.md` owns the canonical 71/3/8 component inventory. Do not copy the full component list elsewhere.
- Historical/retired P3 work-package, parity, closure-audit, and resource-matrix documents are not active authorities.
- Reference artifacts remain read-only; implementation belongs in `app/`.

## Reading order

### Daily work

1. `docs/RECONSTRUCTION_CHECKPOINT.md` — current project position
2. `docs/PHASE_4_GATE.md` — frozen P4 boundary and closure
3. `docs/audits/P4_CONTRACT_REGISTER.md` — P4 contract evidence
4. `docs/RECONSTRUCTION_STATUS.md` — detailed evidence/history
5. `docs/bare.md` — roadmap/handoff/target definition
6. Relevant `REFERENCE_*.md` — Reference evidence when needed

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

## Current state

**P1 frozen → P2 frozen → P3 frozen → P4 frozen at the static contract boundary → P5 downstream / not yet opened by a dedicated gate.**

For exact P4 status, use `docs/PHASE_4_GATE.md` and `docs/audits/P4_CONTRACT_REGISTER.md`.
