# BaRe Worklog

## Current State

- Working branch: `rewrite`
- Reference: Swift Backup 5.1.0 (620)
- Target: BΛR☰ / BaRe
- Reconstruction mode: reference-driven 1:1 reconstruction
- Backend requirement: Supabase; Firebase is not used.
- Premium requirement: entitlement granted/free.

## Current Focus

Fresh-install first-run screen (`IntroActivity`) is the current reconstruction target, based directly on the Reference Apktool/JADX artifacts and the supplied reference screenshot.

## Reference Evidence Used

- `intro_activity.xml`
- `intro_activity_sign_in.xml`
- `intro_benefit_card_view.xml`
- `intro_permission_card_view.xml`
- `intro_activity_permissions.xml`
- `google_sign_in_button.xml`
- `intro_skip_sign_in_button.xml`
- `menu_intro.xml`
- `IntroActivity.java`
- `IntroBenefitCardView.java`
- `IntroPermissionCardView.java`
- Reference strings and styles/colors/dimens/attrs.

## Implemented

- Reconstructed first-run root hierarchy and sticky bottom action area.
- Reconstructed sign-in heading, subtitle, four benefit cards and their MaterialCardView component.
- Reconstructed overflow menu entries: Language, BaReLogger, Restart app.
- Reconstructed Google sign-in and Skip-for-now button layouts.
- Reconstructed required-permissions section and permission card component contract.
- Restored reference-derived onboarding typography, spacing, colors, theme attributes and card styles.
- Applied authorized BaRe branding.
- Premium copy changed minimally so the entitlement is free rather than purchase-gated.
- Added a BaRe first-run logo resource placeholder; exact binary Reference asset remains a visual-parity item for later replacement/refinement.
- Launcher activity is `com.bare.intro.IntroActivity`.

## Behavior Status

- Overflow menu wiring exists.
- Restart currently recreates the activity.
- Google authentication is NOT implemented yet.
- Anonymous/Skip account flow is NOT implemented yet.
- Supabase authentication integration is NOT implemented yet.
- Reference permission grant behavior is NOT implemented yet.
- Main/home transition after first-run is NOT implemented yet.

## Verification

- Reference XML/JADX was inspected directly.
- Resource hierarchy has been reconstructed from Reference.
- Not build-verified.
- Not runtime-verified.
- Not screenshot/pixel verified.
- Not 1:1 verified.

## Next Action

Continue the first-run lifecycle from the Reference:
1. exact IntroActivity state/persistence behavior
2. Supabase-backed account flow replacing the Reference Firebase auth boundary
3. free Premium entitlement path
4. permission state/action behavior
5. transition into the reconstructed main application
6. runtime and visual comparison against the supplied Reference screenshot
