# N-10 DIALOG / ERROR / LOADING — TOTAL AUDIT

## Metadata

- Reference: Swift Backup 5.1.0 / versionCode 620
- Target: savie/BaRe / branch `rewrite`
- Canonical Reference: `/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`
- Reference: read-only
- Build/install/runtime: not executed

## 1. Authority and boundary

N-10 follows:
`N-01 → audit N-10 → register → split → implementation → re-audit → closure`.

Phase-3 scope is the **visible dialog/error/loading surface**:
- error states;
- loading states;
- progress indicators;
- visible warning/notice surfaces;
- dialog UI boundaries;
- retry/close actions;
- backend error surface identity where the UI exists.

Provider/backend error production and actual Supabase execution remain P4.

The project backend contract was consulted. `docs/REFERENCE_BACKEND_CONTRACT.md` remains a Reference/backend evidence document and was not rewritten. Its Firebase terminology documents observed Reference behavior; the BaRe target applies the explicit handoff rule that backend implementation is Supabase.

## 2. Reference evidence

Canonical Reference resource/source inspection identified these important app-owned dialog/error/loading surfaces:

- `error_layout.xml`
- `error_view.xml`
- `progress_bar.xml`
- `folder_detail_card_loading_view.xml`
- `detail_card_storage_loading.xml`
- `firebase_connection_error_view.xml`
- `cloud_info_card_warning.xml`
- `notice_item.xml`
- `schedule_notice_view.xml`
- multiple feature-specific dialog resources and programmatic Material dialogs.

The Reference source also contains explicit loading/error state transitions in Activities such as:
- LabelsActivity;
- AppListActivity;
- AppsBatchActivity;
- AppsConfigRunActivity;
- FolderDetailActivity;
- FolderPickerActivity;
- ScheduleFolderSelectActivity;
- Cloud connection/local-server discovery flows;
- ManageSpaceActivity;
- StorageSwitchActivity;
- ConfigListActivity.

## 3. Register and classification

### N10-1 — Common error surface
Reference `error_view.xml` was missing from target.

**Action:** reconstructed in target.

**Result:** PASS.

### N10-2 — Common progress surface
Reference `progress_bar.xml` was missing from target.

**Action:** reconstructed using Material `CircularProgressIndicator`.

**Result:** PASS.

### N10-3 — Detail loading skeletons
Reference:
- `folder_detail_card_loading_view.xml`
- `detail_card_storage_loading.xml`

were missing from target.

**Action:** reconstructed as Reference-shaped skeleton/loading surfaces using target-owned attributes/colors.

**Result:** PASS.

### N10-4 — Backend error surface
Reference contains `firebase_connection_error_view.xml`.

Because BΛR☰ explicitly does not use Firebase, this resource was **not copied literally**.

Target implementation:
- `supabase_connection_error_view.xml`
- Supabase-specific title/message strings.

This is an **AUTHORIZED BACKEND DEVIATION** under `docs/bare.md`.

**Result:** PASS.

### N10-5 — Notice/warning surfaces
Target already contains:
- `notice_item.xml`
- `cloud_info_card_warning.xml`

Their visible P3 surfaces are retained. Firebase-specific copy in the notice was replaced with Supabase wording.

**Result:** PASS.

### N10-6 — Programmatic dialogs
Target already has Material dialog boundaries across the relevant Activities:
- Settings;
- SLog;
- Home Cloud;
- Task;
- Locale;
- Detail;
- Walls;
- Manage Space;
- Preconditions;
- Blacklist;
- Shortcuts;
- Intro;
- Password;
- cloud sign-in flows;
- Folder flows;
- Premium;
- Schedule;
- App/Config flows;
- Labels;
- APK import;
- Messages/Calls;
- Cloud diagnostics.

No blind duplicate dialog layouts were added solely because Reference used a layout resource. Where target already expresses the dialog as a programmatic Material dialog, the P3 surface remains owned by the Activity.

**Result:** PASS at P3 boundary.

## 4. Strings added/reconciled

Added P3 error/loading contract strings:
- `loading`
- `error`
- `unknown_error_occured`
- `m3_loading_indicator_content_description`
- `supabase_backend_diagnostics_title`

Existing Firebase diagnostic message was renamed/replaced with:
- `supabase_backend_diagnostics_message`

## 5. Re-audit

Direct target fetch verification after implementation:

- `error_view.xml`: present; no Firebase token.
- `progress_bar.xml`: present; no Firebase token.
- `folder_detail_card_loading_view.xml`: present.
- `detail_card_storage_loading.xml`: present.
- `supabase_connection_error_view.xml`: present.
- target strings: Firebase diagnostic key/value absent; Supabase diagnostic contract present.
- Dashboard backend diagnostic state: Firebase-specific API name removed.
- Cloud diagnostics UI: Supabase wording present.
- Reference-specific `firebase_connection_error_view.xml` was not copied into target.

## 6. Explicit P4 handoff

Not claimed by N-10:
- actual Supabase connectivity;
- Supabase error propagation;
- database/auth failure mapping;
- backup/restore engine progress;
- cloud provider transfer progress;
- task engine progress;
- diagnostic engine execution;
- runtime visual verification.

These remain downstream P4/backend/engine work.

## 7. Closure

**N-10 → 🟢 CLOSED / STATIC PASS — P3 dialog/error/loading surface.**

Reference remained read-only. No build/install/runtime was performed.
