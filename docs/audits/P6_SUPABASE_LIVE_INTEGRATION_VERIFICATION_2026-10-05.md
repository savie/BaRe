# P6 Supabase Live Integration Verification — 2026-10-05

## Authority

- Target backend: BΛR☰ Supabase project `fbiazqbrkwovzrirnzpb`.
- Reference ZIP/APK remains read-only.
- Firebase is Reference evidence only; it is not a target dependency.
- No Firebase SDK was added to `app/`.

## Live project discovery

Verified against the actual Supabase control plane:

- Project name: `BΛR☰`
- Project ref: `fbiazqbrkwovzrirnzpb`
- Region: `ap-southeast-1`
- Status: `ACTIVE_HEALTHY`
- PostgreSQL: 17.6.1.147

Project API URL is the approved BΛR☰ Supabase endpoint already recorded by the repository documentation.

## Existing target backend surface

Live `public` schema contains:

### `public.user_profiles`

- `id uuid` primary key
- foreign key to `auth.users(id)`
- `display_name text`
- `email text`
- `photo_url text`
- `latest_app_version integer`
- `current_app_version integer`

### `public.contributor_registrations`

- `user_id uuid` primary key
- foreign key to `auth.users(id)`
- `status text`
- `type text` constrained to `TRANSLATOR` / `COMMUNITY_HELPER`
- `name text`
- `locales text`
- `telegram_id text`
- `crowdin_id text`
- `paypal_id text`

Both tables were empty at inspection time.

## Application-side integration already present

The rewrite branch already contains:

- `SupabaseRestClient`
- `SupabaseSessionSource`
- `SupabaseUserInfoRepository`
- `SupabaseContributorRegistrationRepository`
- `SupabaseBackendRepository`
- `SupabaseBackendFactory`

The application boundary is provider-neutral; Supabase transport/session types do not cross the BaRe backend repository boundary.

No credential is embedded in source.

## Security gap found and corrected

Initial live inspection reported CRITICAL RLS-disabled findings for both public tables.

Before change, there were no policies on either table.

Applied migration:

`20261004182245 / enable_bare_backend_rls`

Changes:

- enabled RLS on `public.user_profiles`;
- enabled RLS on `public.contributor_registrations`;
- `user_profiles`: authenticated users can select/insert/update only their own UUID row;
- `contributor_registrations`: authenticated users can select only their own UUID row.

No anonymous/public write policy was introduced.

Post-change verification:

- both tables report `rls_enabled=true`;
- security advisor returns zero findings;
- migration is present in the live migration history.

## Remaining verification boundary

The following are still not claimed:

- real Android runtime execution;
- authenticated device/session execution;
- end-to-end Auth token acquisition;
- REST read/write smoke test from the APK;
- contributor registration mutation flow;
- full Reference backend parity;
- cloud backup provider execution.

These require the later runtime/device phase and are not fabricated from static/live-control-plane evidence.

## Guard

- Reference ZIP/APK not modified.
- No Firebase dependency added.
- No APK build/install/runtime executed.
- No device verification executed.
- Supabase schema was changed only through the explicit RLS migration above.
