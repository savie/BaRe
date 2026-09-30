# BΛR☰ Parity Matrix

## Classification

- MATCH — equivalent to Reference.
- AUTHORIZED DEVIATION — difference explicitly permitted by docs/bare.md.
- UNAUTHORIZED DEVIATION — difference not permitted.
- UNKNOWN — insufficient evidence.
- BLOCKED — verification cannot proceed because required evidence is unavailable.

## Phase 1/2 gate
| Gate | Result |
|---|---|
| Phase 1 — Reference inventory/evidence | COMPLETE (100%) |
| Phase 2 — Reference-owned component skeleton | COMPLETE (100%) |
| Runtime/build verification | BLOCKED / permission-gated |
| Feature parity | UNKNOWN / ongoing |

Authoritative records: `docs/PHASE_1_INVENTORY.md`, `docs/PHASE_2_SKELETON.md`.

## Current matrix

| Area | Reference | BaRe | Status |
|---|---|---|---|
| Product identity | Swift Backup 5.1.0 (620) | BaRe/BΛR☰ | AUTHORIZED DEVIATION |
| Repository branch | Reference baseline | rewrite | AUTHORIZED CONFIGURATION |
| Implementation language | Java | Java | MATCH (bootstrap) |
| UI technology | Android Views/XML | Android Views/XML | MATCH (bootstrap) |
| Kotlin source | Not permitted by handoff | None | MATCH |
| Compose | Not permitted by handoff | Disabled | MATCH |
| Application namespace | Reference package evidence required | com.bare | AUTHORIZED DEVIATION |
| Application ID | Reference identity evidence required | com.bare | AUTHORIZED DEVIATION |
| Branding | Swift Backup | BΛR☰ / BaRe | AUTHORIZED DEVIATION |
| Premium | Reference behavior | Not reconstructed yet | UNKNOWN |
| Backend | Reference behavior | Supabase target designated | UNKNOWN |
| Database | Reference behavior | Not reconstructed yet | UNKNOWN |
| Backup/restore | Reference behavior | Not reconstructed yet | UNKNOWN |
| Navigation | Reference behavior | Home 4-page navigation structure + Reference bottom-nav menu/selectors reconstructed; detailed navigation behavior remains UNKNOWN | UNKNOWN |
| Resources | Reference resources | Reference-derived Home navigation/resources partially reconstructed; remaining resources not yet ported/audited | UNKNOWN |
| Runtime behavior | Reference runtime | Not runtime-verified; build/install intentionally blocked | BLOCKED |
| Visual parity | Reference UI | Home structure/resources partially reconstructed; no visual verification yet | BLOCKED |

## Rule

No UNKNOWN or BLOCKED row may be promoted to MATCH without evidence.

## 2026-09-29 Phase 3 continuation

- Ported `bare_logo.png` from `v1.0/rebaseline` to `rewrite` as an exact Git blob; this is the authorized BΛR☰ branding asset.
- Refined Schedule Home XML toward the Reference hierarchy: scroll container, schedule card boundary, schedule notice boundary, schedule list, and progress indicator.
- Refined Cloud Home XML toward the Reference hierarchy: storage card boundary, warning card boundary, status field, scroll container, and progress indicator.
- These UI changes do not claim runtime/visual parity; custom Reference behavior and runtime verification remain UNKNOWN/BLOCKED.

## 2026-09-29 UI reconstruction continuation

- Account fragment now follows the Reference hierarchy with a dedicated profile-card include and preserved supported account fields.
- Profile-card action fields not supported by current BaRe evidence remain UNKNOWN rather than being invented.
- Cloud and Schedule fragment parity remains UNKNOWN while their Reference-specific custom view dependencies are being reconstructed.

## 2026-09-29 reconstruction audit

- Reference Activity coverage: **71/71** mapped to BaRe Activity classes.
- Reference Android Service coverage: **3/3** mapped in the manifest.
- Reference Receiver coverage: **8/8** mapped in the manifest.
- Home navigation resource batch now uses Reference-derived menu/selectors/vectors/tint and Reference Home container/app-bar structure, with only authorized BΛR☰ branding substitution.
- ScheduleFabMenuView is currently an explicit behavior boundary; its runtime behavior remains UNKNOWN.
- No build, APK generation, install, runtime verification, or Supabase implementation was performed.


## 2026-09-29 Home UI dependency batch
- Schedule now uses Reference-shaped segment/card, dropdown, notice, and RecyclerView resource boundaries.
- Cloud now uses Reference-shaped storage, warning, active-tag, and storage-detail resource boundaries; active-tag remains hidden pending data-contract reconstruction.
- Account now uses the Reference profile-card hierarchy and IDs, with current BaRe account data bound only where evidence exists.
- Added Java boundary classes for the audited Reference custom view roles; their full rendering/segment behavior remains UNKNOWN.
- This is structural reconstruction only. Runtime and visual parity remain BLOCKED because build/install/runtime verification is still gated.


## 2026-09-29 Settings UI reconstruction
- SettingsActivity shell: MATCH at structural/resource boundary; runtime verification remains BLOCKED.
- Settings PreferenceScreen categories and audited preference keys: reconstructed from Reference resource evidence.
- Reference settings icons required by the screen: ported.
- Settings action semantics: UNKNOWN until the corresponding Reference behavior is reconstructed and verified.
- AndroidX Preference dependency: added to support the Reference PreferenceScreen contract.


## 2026-09-29 Settings Detail
- SettingsDetailActivity toolbar/extras/category selector: reconstructed from Reference evidence.
- Category 1..8 fragment mapping: UNKNOWN / unresolved due obfuscated Reference classes.
- No backend or device-state behavior invented.


## 2026-09-29 Apps-list UI resource batch
- Added Reference-shaped Apps-list layout hierarchy and supporting toolbar/error resources.
- Added Java/View boundaries for `MAppBarLayout` and fast-scroll role without inventing provider behavior.
- Apps inventory/filter/search/sort/drawer semantics remain UNKNOWN; runtime and visual parity remain BLOCKED until build/install/runtime verification is authorized.


## 2026-09-29 Apps-list P3 flow
- Apps List is now an interactive P3 flow surface rather than an inert screen: Search, Filter boundary, Refresh boundary, navigation drawer, drawer routes, Back handling, and Batch entry are wired.
- Search/filter/refresh do not claim feature-engine behavior; their data semantics remain UNKNOWN/P4-bound.
- Reference-audited drawer targets are wired where BaRe component boundaries already exist.


### 2026-09-29 Apps-item P3 flow
- Reference-shaped app row hierarchy is now reconstructed with live P3 interaction boundaries for row/detail, menu, favorite, and swipe actions.
- Detail navigation uses the existing BaRe DetailActivity boundary; no Reference app parcelable is fabricated.
- App Info, favorite persistence, backup/restore, and app-management actions remain explicit UNKNOWN/P4 boundaries where their concrete data/provider contracts are not yet reconstructed.


### 2026-09-29 Apps-item geometry deepening
- AppItemContentLayout: Reference-derived custom measurement/layout roles reconstructed; structural parity is improved, runtime/visual verification remains BLOCKED.
- AppListItemLayout: Reference card-first measurement and reveal-row sizing reconstructed at the P3 boundary.
- AppSwipeActionRevealLayout: action-child sizing now derives from resolved row height, matching the audited Reference measurement role.
- AppRowLabelsView: Reference-shaped chip rendering boundary reconstructed for explicitly supplied label text.
- App-item checkbox boundary is now present.


### 2026-09-29 Apps Quick Actions
- Apps Quick Actions now has a Reference-derived three-category P3 surface and interactive action boundaries.
- Reference overflow targets App Backup Settings and Settings are wired.
- Action execution remains UNKNOWN/P4; no side effects are claimed.


### 2026-09-29 Apps Batch
- Apps Batch now exposes a Reference-derived toolbar/menu/action-FAB/list boundary.
- Search/filter/select-all are P3 presentation boundaries; inventory/selection semantics remain UNKNOWN.
- Batch backup/restore remain P4 engine boundaries.


### 2026-09-29 SwiftLogger
- SwiftLogger now has a Reference-derived list/FAB/menu P3 surface.
- Share Logs and Clear Logs remain explicit behavior boundaries; actual log state is UNKNOWN.


### 2026-09-29 Configuration / license / cloud-auth P3
- Apps Config Run: Reference-derived list/progress/action/menu boundary reconstructed; config payload and execution remain UNKNOWN/P4.
- Licenses: Reference-derived toolbar + RecyclerView boundary reconstructed; catalog remains UNKNOWN.
- MEGA: Reference-derived authentication form reconstructed; provider auth remains P4.
- Dropbox: Reference-derived logo/status surface reconstructed; OAuth launch remains P4.
- pCloud: Reference WebView/auth boundary reconstructed; token exchange remains P4.

| ConfigListActivity | P3 | Appbar, list/error boundary, new-config route, sort/help/settings menu | Config data/provider contract not fabricated |
| ConfigSettingsActivity | P3 | Apply-to/labels card, settings container, delete boundary | Config persistence and actual settings semantics remain P4 |
| CloudConnectActivity | P3 | Provider list and provider-specific activity routing | OAuth/token exchange/cloud state remains P4 |
| ShortcutsActivity | P3 | Reference shortcut IDs routed; command boundary shown | Schedule/task execution remains P4 |

| CloudDiagnosticsActivity | P3 | Provider/notice/test list/run presentation | Network, Firebase, provider and transfer diagnostics remain P4 |
| CloudOrphanCleanerActivity | P3 | Scope/status/results/scan/delete presentation | Cloud listing, reference validation and deletion remain P4 |


## Component inventory / checkpoint

The Phase 2 component counts are now backed by a canonical name-by-name inventory:

- **71 Activities** — exact Reference-package Activity list and BaRe mapping: docs/PHASE_2_SKELETON.md
- **3 Services** — TaskService, ScheduleService, HeadlessSmsSendService
- **8 Receivers** — AlarmReceiver, LocaleChangedReceiver, BootReceiver, NotificationTaskCancelReceiver, PackageInstallResultReceiver, ShortcutPinnedReceiver, SmsReceiver, MmsReceiver
- **0 Reference-owned Providers** — the 4 Reference manifest providers are dependency/library providers

**Important:** Phase 2 MATCH means structural component coverage only. It does not mean those Activities/services/receivers are behaviorally complete.

For Activity-level P3 depth and the current 🔴/🟡/🟢 queue, use `docs/PHASE_3_STATUS.md`. The parity matrix remains intentionally high-level.

For the current work order and per-phase checkpoint, use docs/RECONSTRUCTION_CHECKPOINT.md.

### Current roadmap checkpoint — 2026-09-30

| Phase | Status | Interpretation |
|---|---|---|
| P1 Foundation | COMPLETE / FROZEN | Inventory/evidence gate closed. |
| P2 Reference Skeleton | COMPLETE / FROZEN | 71/71 Activities, 3/3 Services, 8/8 Receivers, 0 Reference-owned Providers. |
| P3 UI + Navigation | ACTIVE | Current primary vertical-sweep workstream. |
| P4 Core Behavior | PARTIAL / DEPENDENCY-DRIVEN | Selected contracts reconstructed where P3 requires them; not a phase-completion claim. |
| P5 Features | NOT COMPLETE / DEFERRED | Full backup/restore/feature execution remains UNKNOWN. |
| P6 Authorized Deviations | DEFINED / GATED | Branding/Premium/Supabase rules defined; Supabase implementation remains permission-gated. |
| P7 Runtime | BLOCKED / GATED | Build/install/execute not authorized. |
| P8 Parity | NOT YET EXECUTED | Requires runtime evidence. |
| P9 Deviation Audit | NOT YET FINAL | Final deviation classification comes after parity evidence. |


## 2026-09-30 P3 continuation — APK import + label editor

- `ApkImportActivity`: P3 input contract/state boundary deepened from Reference evidence; parsed package metadata, archive extraction, installer fallback, and import execution remain UNKNOWN/P4-P5.
- `LabelEditActivity`: Reference-derived name preview, color-selection, app-selection boundary, result flows, and recreation state reconstructed; label persistence and app inventory/selection remain UNKNOWN/P4.
- Checkpoint-aligned Activity depth remains **48 🟢 / 23 🟡 / 0 🔴 / 71**; neither Activity is promoted by this batch.
- Manifest verification: **71 Activities, 0 duplicate Activity registrations**. No build/runtime verification performed.


## 2026-09-30 P3 lifecycle exit — ApkImportActivity

- `ApkImportActivity` is now P3 **GREEN** at the evidence-supported UI/navigation/flow boundary.
- Reference-derived input resolution, APK classification, single-APK metadata surface, installer navigation/result boundary, launcher navigation, menu routing, and recreation state are reconstructed.
- Full APKS extraction/install session behavior and backup integration remain UNKNOWN/P4-P5; these are not used to block the P3 exit.
- Activity depth checkpoint: **49 green / 22 yellow / 0 red / 71**.
- Runtime/build/visual parity remains BLOCKED by the existing execution gate.
