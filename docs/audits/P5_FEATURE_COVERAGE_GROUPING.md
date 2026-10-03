# BΛR☰ P5.1 Feature Coverage & Grouping

## Status

**P5.1 — REFERENCE FEATURE AUDIT — COVERAGE / GROUPING — 🟢 COMPLETE / STATIC CLOSURE**

Dokumen ini **hanya grouping**. Evidence/canonical detail ada di \`docs/audits/P5_FEATURE_REGISTER.md\`.

## Rule

- Tetap 24 domain besar dari P5.0.
- F-ID dipakai sebagai traceability/coverage mapping.
- Temuan baru: Register dulu, lalu tambahkan F-ID ke domain di sini.
- Jangan menyalin class, XML, method, forensic detail, atau reconciliation narrative ke dokumen ini.
- Grouping bukan P5.2 contract grouping dan bukan implementation task.
- **Static closure di sini hanya menutup coverage/grouping audit; ini bukan penutupan implementasi feature P5.**
- Seluruh F-ID non-P6 tetap berada dalam scope implementasi P5 setelah P5.4 readiness.

## 3. Coverage buckets P5.1

Coverage memakai 24 domain yang sudah ditetapkan oleh P5.0. Domain P5.0 tidak diubah oleh dokumen ini.

| # | P5.0 domain | Current F-ID coverage | Coverage purpose |
|---:|---|---|---|
| 1 | Onboarding | F01, F38, F45, F73, F87, F100, **F163** | first-start, identity, password/settings continuity, restore-related entry dependencies, storage setup/recovery |
| 2 | Home / dashboard | F02, F03, F22, F24, F27, F35, F36, F37 | dashboard/search/orchestration and home-level feature entry |
| 3 | Apps | F04–F08, F38–F44, F53–F71, F77, F83, F93, F124, F159–F162 | core Apps inventory, selection, backup/restore, package execution, special data, row actions, compatibility and artifact materialization |
| 4 | App configuration | F09, F58, F62, F85, F116–F121 | configuration model, labels, task-input projection, persistence and normalization |
| 5 | App detail | F07, F08, F54, F60, F61 | detail actions, app info, restore-card model and detail integrations |
| 6 | APK import | F10, F86, **F167** | APK/APKS import/share artifact path and import-side materialization/validation lifecycle |
| 7 | Folders | F11, F12, F47, F78, F101, F126–F130 | folder model, backup/restore, manifests, strategy, result algebra and metadata lifecycle |
| 8 | Messages | F13, F14, F17, F18, F48, F72, F79, F110 | SMS backup/restore, conversations, default-handler integration, advanced provider state, retention and task execution |
| 9 | Calls | F15, F16, F80, F99, F111 | call-log backup/restore, task execution and retention |
| 10 | Cloud | F19–F21, F42, F51–F52, F87–F88, F96–F105, F131–F153, F164–F165 | cloud connection, access state, provider execution, metadata/cleanup, diagnostics, provider-specific protocols, credentials and cloud-account identity |
| 11 | Scheduling | F22, F50, F74, F107–F114, F122, F166 | schedule selection, execution eligibility, task handoff, per-feature schedule preparation, aggregate persistence, and alarm/boot trigger lifecycle |
| 12 | Settings | F23, F26, F52, F73, F87, F100, F115, F118–F120 | settings and feature policy surfaces consumed by backup/restore |
| 13 | Premium / entitlement | F31, **F168** | Reference premium UI/plan surface plus billing, purchase-state and entitlement reconciliation lifecycle |
| 14 | Password / encryption | F25, F41, F52, F73, F95, F106, F154–F158 | password lifecycle, archive/encryption strategy, cryptographic payload/archive boundaries |
| 15 | Tasks | F27, F43, F70, F75–F82, **F169** | task lifecycle, result aggregation, temporary workspace, feature task executors, and DataSync FGS runtime accounting/quota/reconciliation |
| 16 | Wi-Fi | F28, F49, F81, F113, **F170** | Wi-Fi feature surface, sensitive-access/enterprise policy, device-access/restore adapter, task execution and scheduled preparation |
| 17 | Wallpapers | F29, F82, F112, **F171** | wallpaper management/apply, system-wallpaper materialization, task execution and scheduled preparation |
| 18 | Storage | F24, F44, F89, F125, F161 | storage inventory, app-size measurement, manage-space and execution-time disk-space preflight |
| 19 | Locale | F32, F90 | locale persistence and configuration-change propagation |
| 20 | Blacklist | F30, F123 | blacklist persistence and backup-selection exclusion |
| 21 | Notices / licenses | F34, F92 | content loading, selection and supporting legal/static surfaces |
| 22 | Logging / diagnostics | F35, F51, F60, F64, F84, F102 | local logging, diagnostics, package visibility and transfer-test result surfaces |
| 23 | Contributor | F33, F91 | contributor registration state and persistence |
| 24 | Database / local persistence | F42, F45, F46, F53, F59, F70, F83, F87, F89, F115, F117, F121, F122, F123, F129, F130 | persistence/reconciliation surfaces that support multiple feature families |

## Coverage status

| Status | Arti |
|---|---|
| **COVERED — provisional** | Domain sudah punya evidence/F-ID, tetapi targeted sweep belum membuktikan tidak ada hole. |
| **FOLLOW-UP REQUIRED** | Masih ada lifecycle/boundary yang perlu dicari di Reference. |
| **READY FOR P5.2 REVIEW** | Coverage domain sudah cukup direkonsiliasi untuk dibawa ke P5.2. |

Status di atas hanya status coverage P5.1.

## Current audit position

**P5.1 COMPLETE / STATIC CLOSURE.**

## Static boundary

- Reference read-only.
- ZIP/decompile adalah primary evidence.
- Tidak build/install/runtime/device verification.
- Tidak provider/backend execution.
- P5.2, P5.3, dan P5.4 sudah closed pada static boundary masing-masing; grouping tetap frozen dan tidak menjadi contract register.

## Operating principle

\`REGISTER = evidence history\`

\`GROUPING = coverage map\`
