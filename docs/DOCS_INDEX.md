# BΛR☰ Documentation Index

This file is **index only**. It maps documentation files to their purpose. It does not own project status, phase decisions, work queues, implementation instructions, or duplicate audit results.

## Core project documents

| File | Function |
|---|---|
| `docs/bare.md` | Canonical project definition: target reconstruction, repository/branch, Reference source, authorized deviations, implementation constraints, and lifecycle roadmap. |
| `docs/DOCS_INDEX.md` | Documentation catalog: file names and the function of each document. |
| `docs/RECONSTRUCTION_CHECKPOINT.md` | Short project dashboard/checkpoint for current lifecycle position. |
| `docs/RECONSTRUCTION_STATUS.md` | Detailed reconstruction evidence/history ledger and implementation notes. |
| `docs/REFERENCE_AUDIT.md` | Reference artifact inventory and evidence record. |
| `docs/REFERENCE_FEATURE_MAP.md` | Mapping between Reference features/components and reconstructed target surfaces. |
| `docs/REFERENCE_BACKEND_CONTRACT.md` | Reference backend contract evidence; documents observed backend semantics and is not a Supabase schema. |

## Phase guides and gates

| File | Function |
|---|---|
| `docs/PHASE_1_INVENTORY.md` | Phase 1 foundation inventory and frozen P1 gate evidence. |
| `docs/PHASE_2_SKELETON.md` | Phase 2 Reference structural skeleton/inventory, including the canonical 71/3/8 component inventory. |
| `docs/PHASE_3_GATE.md` | Phase 3 UI/navigation scope, Activity audit baseline, domain closure, and P3 exit decision. |
| `docs/PHASE_4_GUIDE.md` | Phase 4 working method and execution rules for core-behavior reconstruction. |
| `docs/PHASE_4_GATE.md` | Phase 4 contract boundary, closure evidence, and P4 exit decision. |
| `docs/PHASE_5_GUIDE.md` | Phase 5 feature-reconstruction method, evidence workflow, ownership rules, and phase boundaries. |
| `docs/PHASE_5_GATE.md` | Final Phase 5 exit decision and authoritative P5 → P6 handoff surface. |
| `docs/PHASE_6_SCOPE.md` | Phase 6 evidence-backed execution boundary: what authorized deviations and backend responsibilities are in scope or out of scope. |
| `docs/PHASE_6_GUIDE.md` | Phase 6 working method for authorized target deviations, Supabase backend integration, branding, Premium, security, and standalone backend verification. |

## Audit directory

| File | Function |
|---|---|
| `docs/audits/README.md` | Index and usage guidance for audit artifacts. |
| `docs/audits/REFERENCE_AUDIT.md` | Detailed Reference artifact audit evidence. |
| `docs/audits/P4_CONTRACT_REGISTER.md` | P4 contract register with Reference evidence, ownership, gaps, dependencies, and closure evidence. |
| `docs/audits/P5.0_SCOPE_AUDIT.md` | P5.0 feature-scope audit establishing the evidence-backed P5 feature universe and entry boundary. |
| `docs/audits/P5.0_REFERENCE_COMPONENT_CAPABILITY_TRACE.md` | P5.0 trace from Reference components/capabilities into the P5 feature scope. |
| `docs/audits/P5.1_FEATURE_REGISTER.md` | Frozen P5.1 Reference feature decomposition and F-ID evidence register. |
| `docs/audits/P5.1_FEATURE_COVERAGE_GROUPING.md` | P5.1 coverage/grouping ledger used to organize feature coverage and implementation batches. |
| `docs/audits/P5.2_CONTRACT_OWNER_BOUNDARY.md` | P5.2 contract, canonical owner, consumer, dependency, and boundary authority. |
| `docs/audits/P5.3_GAP_DEPENDENCY_CLASSIFICATION.md` | P5.3 classification of feature gaps, dependencies, downstream boundaries, UNKNOWN, and deviations. |
| `docs/audits/P5.4_IMPLEMENTATION_READINESS.md` | P5.4 implementation-readiness decisions and R-A → R-F batch assignment. |
| `docs/audits/P5.5_FEATURE_IMPLEMENTATION.md` | P5.5 bounded feature implementation and static re-audit evidence for R-A through R-F. |
| `docs/audits/P5.6_REAUDIT_REGRESSION.md` | P5.6 regression, hygiene, consumer, identity, localization, and cross-batch closure evidence. |
| `docs/audits/P5.6.5_P6_HANDOFF_READINESS.md` | P5.6.5 static readiness audit for the later P6 backend/auth/provider/data handoff. |
| `docs/audits/P5.7_FEATURE_CLOSURE.md` | P5.7 final feature-level closure and classification of all 170 unique P5 contracts. |
| `docs/audits/P6.1_BACKEND_CONTRACT_OWNERSHIP.md` | P6.1 static backend contract, canonical ownership, identity/data/credential classification, and verification-boundary authority before Supabase target modeling. |
| `docs/audits/P6.2_REFERENCE_BACKEND_TO_SUPABASE_MODEL.md` | P6.2 bounded Reference-backend-to-Supabase target model, resource ownership, relationships, persistence decisions, and explicit cloud-metadata quarantine. |
| `docs/audits/P6.3_SUPABASE_IMPLEMENTATION.md` | P6.3 direct Supabase implementation record for the approved database model, verification evidence, and security handoff. |
| `docs/audits/FIREBASE_TO_SUPABASE_TARGET_AUDIT.md` | Static audit separating Firebase Reference evidence from the authorized Supabase target backend policy. |

## N-domain total audits

| File | Function |
|---|---|
| `docs/audits/N01_RESOURCE_TOTAL_AUDIT.md` | Total resource inventory, variants, ownership, dependencies, and resource-level evidence. |
| `docs/audits/N02_STRINGS_TOTAL_AUDIT.md` | Total string/resource-string audit, localization evidence, and string ownership. |
| `docs/audits/N03_DIMENSIONS_TOTAL_AUDIT.md` | Total dimension resource audit and target mapping. |
| `docs/audits/N04_STYLES_THEMES_COLORS_TOTAL_AUDIT.md` | Total styles, themes, colors, attributes, and related visual-resource audit. |
| `docs/audits/N05_MANIFEST_TOTAL_AUDIT.md` | AndroidManifest component, permission, metadata, and configuration audit. |
| `docs/audits/N06_INTENT_TOTAL_AUDIT.md` | Intent/action/deep-link/navigation-trigger audit. |
| `docs/audits/N07_PERMISSIONS_TOTAL_AUDIT.md` | Permission declarations, access semantics, and permission-boundary audit. |
| `docs/audits/N08_NAVIGATION_TOTAL_AUDIT.md` | Navigation graph/resource and destination-transition audit. |
| `docs/audits/N09_LIFECYCLE_STATE_TOTAL_AUDIT.md` | Lifecycle, state ownership, persistence, and transition audit. |
| `docs/audits/N10_DIALOG_ERROR_LOADING_TOTAL_AUDIT.md` | Dialog, error, loading, empty-state, and related UI-state audit. |
| `docs/audits/N11_BRANDING_IDENTITY_TOTAL_AUDIT.md` | Branding, product identity, target naming, and Reference-identity residue audit. |
| `docs/audits/N12_JAVA_ONLY_TOTAL_AUDIT.md` | Java-only implementation constraint and source-language audit. |
| `docs/audits/N13_FAKE_STUB_TOTAL_AUDIT.md` | Detection/audit of fake, placeholder, invented, or non-evidence-backed implementation stubs. |
| `docs/audits/N14_BOUNDARY_TOTAL_AUDIT.md` | Cross-layer ownership, provider/runtime/backend, and execution-boundary audit. |
| `docs/audits/N15_STATIC_HYGIENE_TOTAL_AUDIT.md` | Static source hygiene audit covering target identity, residue, literals, and related reconstruction hygiene. |

## Document relationship

- **Project definition:** `bare.md`
- **Phase scope:** `PHASE_*_SCOPE.md`
- **Method guides:** `PHASE_*_GUIDE.md`
- **Phase decision surfaces:** `PHASE_*_GATE.md`
- **Detailed evidence:** `docs/audits/*.md`
- **Dashboard/history:** `RECONSTRUCTION_CHECKPOINT.md` and `RECONSTRUCTION_STATUS.md`
- **Reference evidence:** `REFERENCE_*.md` and Reference-scoped audit documents

For a phase decision, use its gate. For implementation methodology, use its guide. For scope boundaries, use its scope document. For detailed evidence, use the relevant audit. This index only tells you **where the document is and what it is for**.
