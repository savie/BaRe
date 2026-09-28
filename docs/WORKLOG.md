# BaRe Worklog

## Current State

- Working branch: `rewrite`
- Reference: Swift Backup 5.1.0 (620)
- Target: BΛR☰ / BaRe
- Reconstruction mode: reference-driven 1:1 reconstruction
- Backend requirement: Supabase; Firebase is not used.
- Premium requirement: entitlement granted/free.

## Current Focus

Reference-driven Home lifecycle reconstruction:
`HomeActivity → Dashboard → Cloud → Schedule → Account → Search`

Immediate priority:
`compile-safety/static audit → behavior parity → runtime verification`

## Reference Evidence Used

Directly inspected Reference Apktool/JADX artifacts:
- `intro/IntroActivity.java`
- `intro/d.java`
- `intro/IntroPermissionCardView.java`
- first-run layout/resources
- Reference manifest and permission declarations

Verified Reference persistence keys:
- `KEY_FIRST_START` default `true`
- `KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED` default `false`
- `saved_password_mode`

Verified Reference transition condition:
- first-run is completed only after the required first-run flow succeeds;
- Reference can enter `HomeActivity` through its main-flow coordinator after completion.

## Implemented

### Existing foundation
- Intro first-run persistence and transition are implemented from the Reference structure.
- Firebase boundary is replaced by BaRe Supabase Auth.
- Premium entitlement is granted unconditionally.
- HomeActivity, Dashboard, Cloud, Schedule, Account, and Search structures are reconstructed from the Reference.

### Compile-safety corrections
- Removed duplicate home navigation string resources by deleting `home_strings.xml`.
- Removed duplicate `viewPager`, `container_btn_new_schedule`, and `primaryNavigation` ID definitions from `ids.xml`, retaining `home_ids.xml`.
- Removed duplicate dashboard style definitions by deleting `dashboard_styles.xml`.
- Static scan of branch `res/values` currently reports no duplicate `string`, `style`, `dimen`, `color`, or `attr` definitions.

### Backend
- BaRe uses Supabase only; no migrations were created or required for this phase.
- Current Supabase public schema remains intentionally empty for this phase.

## Verification

**Verified from Reference:**
- Intro first-run decision structure and persistence keys/defaults.
- Reference HomeActivity navigation/pager/reselection structure.
- Reference Home/Search/Cloud/Schedule/Account resource structures used for reconstruction.

**Verified on BaRe source state:**
- `rewrite` branch exists and is 244 commits ahead of `master`.
- Static `res/values` duplicate-resource scan is clean after the corrections above.
- Android build configuration declares AndroidX/Material/ViewPager dependencies and Java/Kotlin 17.

**Not yet verified:**
- APK compilation.
- Runtime/UI behavior.
- Google OAuth and Supabase anonymous-auth end-to-end.
- Exact permission behavior on Xiaomi/root/Shizuku devices.
- Actual cloud provider connection/settings/backup flows.
- Pixel-level parity.
- Complete quick-action execution, schedule creation/service behavior, and Account settings actions.

## Next Action

Continue from first-run completion into the actual Reference HomeActivity reconstruction, while replacing every Reference Firebase boundary encountered with Supabase equivalents and preserving Reference behavior/UI structure.


## Latest Intro Flow Audit

Reference inspection confirmed:
- Intro overflow menu contains Language, SwiftLogger, and Restart.
- Language opens a dedicated Locale Activity in Reference.
- SwiftLogger opens a dedicated SLog Activity in Reference.
- Restart invokes the application's restart mechanism rather than merely recreating the current Activity.
- Skip/sign-in flows remain gated by the Reference first-run state and permission coordinator before first-run completion.

BaRe changes made:
- Intro Language now opens `LanguageActivity`.
- Intro SwiftLogger now opens `BaReLoggerActivity` with BaRe branding.
- Intro Restart now restarts the application task when a launcher intent is available.
- The new destination Activities are registered in the manifest.

Current limitation:
- `LanguageActivity` currently exposes the supported BaRe language set as English only; Reference's full locale catalog/selection behavior is not yet reconstructed.
- `BaReLoggerActivity` is a destination skeleton; the full Reference logger data/actions are not yet reconstructed.
