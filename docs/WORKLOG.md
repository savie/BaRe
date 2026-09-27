# BaRe Worklog

## Current State

- Working branch: `rewrite`
- Reference: Swift Backup 5.1.0 (620)
- Target: BΛR☰ / BaRe
- Reconstruction mode: reference-driven 1:1 reconstruction
- Backend requirement: Supabase; Firebase is not used.
- Premium requirement: entitlement granted/free.

## Current Focus

Fresh-install first-run lifecycle:
`state/persistence → auth boundary → Premium entitlement → permission state → transition`.

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

### State / persistence

Added `IntroStateStore` with the Reference key names and defaults. Completion persists:
- `KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED=true`
- `KEY_FIRST_START=false`

### Auth boundary

Replaced the Reference Firebase authentication boundary with a BaRe Supabase boundary:
- Supabase project URL: `https://fbiazqbrkwovzrirnzpb.supabase.co`
- Google OAuth entry point uses Supabase Auth.
- Anonymous/Skip uses Supabase Auth endpoint.
- OAuth callback uses `bare://auth/callback`.
- Only a publishable/anon key is used by the client; no service-role key is embedded.

**Verification gap:** Supabase project is currently named `Varnexis-Workspace` and its inspected public database schema is unrelated to BaRe's backup domain. Google/anonymous Auth provider configuration was not exposed by the available project metadata, so provider enablement and redirect allowlisting remain **UNKNOWN**.

### Premium

Added a centralized `PremiumEntitlement` boundary. BaRe returns granted unconditionally, as required.

### Permissions

First-run UI now reads actual Android permission state for:
- storage
- notifications

The installed-apps card is currently treated as satisfied on unsupported/non-Xiaomi devices, matching the Reference concept that this is device-specific.

### Transition

Added `HomeActivity` and wired first-run completion to launch it.

### Build foundation

Added Android ViewPager dependency required by the reconstructed Reference component boundary and normalized theme attribute references.

## Verification

**Verified from Reference:**
- persistence key names/defaults
- IntroActivity first-run decision structure
- auth boundary in Reference is Firebase
- Reference permission checks and permission-card wiring
- Reference transition target is HomeActivity

**Not yet verified:**
- BaRe APK build
- runtime
- Google OAuth end-to-end
- Supabase anonymous auth end-to-end
- exact permission behavior on Xiaomi/root/Shizuku devices
- cloud settings restore parity
- visual/pixel parity after runtime
- complete HomeActivity parity
- global Premium gate coverage

## Next Action

Continue from first-run completion into the actual Reference HomeActivity reconstruction, while replacing every Reference Firebase boundary encountered with Supabase equivalents and preserving Reference behavior/UI structure.
