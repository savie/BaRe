# BΛR☰ P5.0 Scope Audit

## Status

**P5.0 — SCOPE / ENTRY CONTROL — COMPLETE**

This artifact records the evidence-backed P5 feature universe and entry boundary. It does **not** open the P5 gate, authorize feature implementation, or claim runtime/provider/backend parity.

## Evidence basis

Primary:
- Supplied Swift Backup 5.1.0 / versionCode 620 decompile ZIP
- `/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`

Repository evidence:
- `docs/bare.md`
- `docs/PHASE_4_GATE.md`
- `docs/audits/P4_CONTRACT_REGISTER.md`
- `docs/REFERENCE_FEATURE_MAP.md`
- `docs/PHASE_5_GUIDE.md`

Target:
- `savie/BaRe`
- branch `rewrite`

## P5.0 entry checks

| Check | Result |
|---|---|
| P4 predecessor frozen | **PASS** — P4 is closed/frozen at the static contract boundary |
| Reference remains read-only | **PASS** |
| P5 guide available | **PASS** |
| Canonical P5 scope identified | **PASS** |
| Feature universe evidence-backed | **PASS — sufficient to begin P5.1 feature audit** |
| Implementation authorized by P5.0 | **NO** |
| Build/install/runtime authorized | **NO** |
| Provider/backend execution authorized | **NO** |
| Backup/restore engine execution authorized | **NO** |

## Reference structural evidence relevant to P5

Direct inspection of the supplied decompile manifest confirms:
- 95 total Activity declarations;
- 71 application-package Activities under `org.swiftapps.swiftbackup`;
- 10 total Service declarations, of which 3 are application-owned;
- 10 total Receiver declarations, of which 8 are application-owned;
- 4 Provider declarations, all dependency/library providers in the Reference inventory.

The P2/P3 frozen inventory remains the authority for the already-covered structural/UI boundary. P5 does not reopen those inventories merely because feature execution consumes their components.

## P5 feature universe

The following domains are the current evidence-backed **feature-audit universe**. This is a scope inventory, not a claim that every domain is already reconstructed or behavior-complete.

| # | Feature/domain | Reference evidence surface | P5 role |
|---:|---|---|---|
| 1 | Onboarding | `intro` | Feature flow / first-run behavior consumed from P4 contracts |
| 2 | Home / dashboard | `home` | Feature orchestration and dashboard behavior |
| 3 | Apps | `appslist`, `appinfo`, `appsquickactions` | Core app backup/restore feature family |
| 4 | App configuration | `appconfigs` | App-specific configuration feature behavior |
| 5 | App detail | `detail` | App detail / action behavior |
| 6 | APK import | `apkshare` | APK import feature flow |
| 7 | Folders | `folders` | Folder backup/restore feature family |
| 8 | Messages | `messagescalls` | Message backup/restore and related flows |
| 9 | Calls | `messagescalls` | Call-log backup/restore and related flows |
| 10 | Cloud | `cloud`, `cloud/connect` | Cloud connection, metadata, transfer and cleanup contracts |
| 11 | Scheduling | `home/schedule`, `ScheduleService` | Scheduled feature execution |
| 12 | Settings | `settings` | Settings-driven feature behavior |
| 13 | Premium / entitlement | `premium`, billing surfaces | Premium feature behavior under the authorized free-entitlement deviation |
| 14 | Password / encryption | `password` | Backup/restore security and password behavior |
| 15 | Tasks | `tasks`, `TaskService`, task models/UI | Feature execution/task orchestration |
| 16 | Wi-Fi | `wifi` | Wi-Fi backup/restore feature |
| 17 | Wallpapers | `walls` | Wallpaper backup/restore feature |
| 18 | Storage | `home/storageswitch`, storage models | Feature storage boundary consumed by backup/restore |
| 19 | Locale | `locale` | Locale/language feature behavior |
| 20 | Blacklist | `blacklist` | Backup-selection/filtering behavior |
| 21 | Notices / licenses | `notice`, `settings.LicensesActivity` | Supporting feature/UI behavior |
| 22 | Logging / diagnostics | `slog`, cloud/app-visibility diagnostics | Feature diagnostics and error/reporting surfaces |
| 23 | Contributor | `contributor` | Contributor registration/status behavior |
| 24 | Database / local persistence | `database`, model/data surfaces | Feature persistence dependencies and execution contracts |

### Feature-universe rule

The table above is the **P5.0 audit universe**, not the final feature register.

P5.1 must decompose these domains into concrete feature units using direct Reference evidence. A domain may produce multiple P5 feature units; a small domain may produce one. Do not infer final unit boundaries from this table alone.

## Explicit P5 vertical scope

P5 includes, as applicable to each Reference feature:
- feature entry/trigger;
- feature owner and consumers;
- backup/restore execution behavior;
- app/folder/message/call/Wi-Fi/wallpaper feature execution;
- task and scheduling behavior required by features;
- cloud transfer/metadata/cleanup behavior;
- settings/password/encryption behavior required by features;
- feature-specific storage/filesystem behavior;
- feature-specific permission/precondition behavior;
- feature result/error/edge states;
- provider/backend contracts required by the feature.

## Cross-phase dependency baseline

P5 feature audits may consume:
- **P1:** Reference inventory, resources, manifest, dependency and feature/package mapping;
- **P2:** component identity and structural ownership;
- **P3:** UI, navigation, lifecycle, dialogs/errors/loading and visible boundaries;
- **P4:** account/lifecycle, permission/storage, settings/password, restore-state and task/job contracts.

Consumption does not reopen a frozen predecessor.

If P5 finds a genuine defect in a frozen P1/P2/P3/P4 authority, the finding must stop at evidence/classification and route through the controlled re-audit rule in `docs/PHASE_5_GUIDE.md`.

## Authorized target constraints

These are project-level target rules, not unresolved P5 parity defects:
- BΛR☰ / BaRe branding is the authorized target identity and has a closed static hygiene boundary.
- Premium entitlement is authorized to be free.
- Supabase is the authorized BaRe backend target.
- Firebase is Reference evidence only.

P5 must preserve these constraints and must not reintroduce Reference-only Firebase or Swift branding into target-owned feature implementation.

## Deferred / excluded from P5.0 execution

P5.0 does not execute or verify:
- build;
- APK generation;
- install;
- device/runtime behavior;
- actual Supabase authentication/database/storage/RLS execution;
- cloud-provider runtime execution;
- privileged Root/Shizuku execution;
- filesystem engine execution;
- backup/restore engine runtime execution.

These remain downstream or permission-gated according to the phase boundaries.

## P5.0 exit decision

**P5.0 — COMPLETE.**

The Reference-backed feature universe is sufficiently established to begin **P5.1 — Reference Feature Audit**.

This does not mean P5 is opened/implemented/closed. The next work is feature-level forensic decomposition directly against the Reference ZIP, followed by contract/owner classification before implementation.
