# BΛR☰ Documentation Map

## Purpose

This file defines the role of every document under `docs/` so the reconstruction work has one clear operating model.

## Working authority

| Document | Role | Use it for |
|---|---|---|
| `docs/bare.md` | **ROADMAP / HANDOFF AUTHORITY** | Target definition, 1:1 rule, Authorized Deviations, phase order, implementation constraints |
| `docs/RECONSTRUCTION_CHECKPOINT.md` | **CURRENT PROJECT DASHBOARD** | Current phase, gates, urgency, what is complete/deferred/blocked |
| `docs/PHASE_3_GATE.md` | **CURRENT P3 GATE / SINGLE AUTHORITY** | Phase 3 scope, 71-Activity result, 15-domain closure register, N-level closure rule, exit gate |
| 

## Frozen evidence / gate records

| Document | Role | Status |
|---|---|---|
| `docs/PHASE_1_INVENTORY.md` | Phase 1 evidence/inventory gate | **FROZEN** |
| `docs/PHASE_2_SKELETON.md` | Canonical 71/3/8 structural inventory + Phase 2 gate | **FROZEN** |

These are acceptance records. Do not use them as the day-to-day P3 task list.

## Detailed evidence / historical reconstruction records

| Document | Role | Use it for |
|---|---|---|
| `docs/RECONSTRUCTION_STATUS.md` | Detailed reconstruction log / evidence ledger | Exact implementation notes, Reference findings, contracts, historical P3 batches |
| `docs/REFERENCE_AUDIT.md` | Reference artifact audit record | Reference identity, raw inventory and manifest evidence |
| `docs/REFERENCE_FEATURE_MAP.md` | Reference domain/component map | Finding where a Reference feature/component belongs |
| `docs/REFERENCE_BACKEND_CONTRACT.md` | Reference backend evidence contract | Verified Firebase paths/semantics; not a Supabase schema |

## Redundancy policy

The following overlap is intentional but has different authority:

- `PHASE_1_INVENTORY.md` is the **frozen Phase 1 gate**; `REFERENCE_AUDIT.md` is the **underlying Reference audit record**.
- `PHASE_2_SKELETON.md` is the **frozen canonical component inventory**; do not duplicate its 71-name list elsewhere.
- `RECONSTRUCTION_STATUS.md` is the **detailed history/evidence log**; it should not become the primary task queue.
- `RECONSTRUCTION_CHECKPOINT.md` is the **current roadmap dashboard**.
- `PHASE_3_STATUS.md` is the **current Activity-level Phase 3 queue**.
- `PARITY_MATRIX.md` is intentionally high-level and must not duplicate the full 71-Activity inventory.

## Files that should not be duplicated

Do not create another document containing:
- the full 71/3/8 component list;
- another copy of the phase roadmap;
- another generic parity matrix;
- another chronological reconstruction log.

If a new audit is needed, update the appropriate role above instead.

## Current reading order

For daily work:

1. `RECONSTRUCTION_CHECKPOINT.md`
2. `PHASE_3_GATE.md`
3. `RECONSTRUCTION_STATUS.md` for the exact evidence behind the selected task
4. `PHASE_2_SKELETON.md` only when checking component identity
5. `REFERENCE_*.md` when auditing the relevant Reference domain

For project gates:

1. `bare.md`
2. `PHASE_1_INVENTORY.md`
3. `PHASE_2_SKELETON.md`
4. `RECONSTRUCTION_CHECKPOINT.md`
5. `PHASE_3_GATE.md`

## Current state

The project is:

**P1 frozen → P2 frozen → Phase 3 active**, with `PHASE_3_GATE.md` as the single P3 authority.

P3 remains the active work queue.