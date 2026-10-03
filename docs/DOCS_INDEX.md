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
| `docs/audits/P5.0_SCOPE_AUDIT.md` | P5.0 evidence-backed feature universe and entry boundary | **P5.0 scope evidence** |
| `docs/audits/P5.1_FEATURE_REGISTER.md` | P5.1 Reference feature decomposition and evidence register | **P5.1 feature evidence** |
| `docs/audits/P5.1_FEATURE_COVERAGE_GROUPING.md` | P5.1 provisional coverage/grouping ledger and targeted audit queue | **P5.1 coverage/grouping** |
| `docs/audits/P5.2_CONTRACT_OWNER_BOUNDARY.md` | P5.2 contract / owner / boundary static-analysis authority | **P5.2 working authority** |
| `docs/audits/P5.3_GAP_DEPENDENCY_CLASSIFICATION.md` | P5.3 gap/dependency/UNKNOWN classification and closure | **P5.3 static-analysis authority** |
| `docs/audits/P5.4_IMPLEMENTATION_READINESS.md` | P5.4 implementation readiness and batch selection | **P5.4 working authority** |
| `docs/audits/P5.6.5_P6_HANDOFF_READINESS.md` | Pre-P5.7 backend/data/auth/credential/provider handoff audit | **P6 handoff evidence** |
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

### Gate review

## Current state

**P1 frozen → P2 frozen → P3 frozen → P4 frozen at the static contract boundary → P5.0 scope complete → P5.1 feature evidence + coverage/grouping complete → P5.2 contract/owner/boundary complete → P5.3 classification complete → P5.4 readiness complete → P5.5/P5.6 bounded implementation + regression evidence retained → P5.6 CLOSED → P5.6.5 P6 handoff readiness COMPLETE → P5.7 NOT OPENED.**

