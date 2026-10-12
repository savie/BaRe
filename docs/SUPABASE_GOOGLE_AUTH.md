# BΛR☰ account identity and Supabase Google sign-in

## Build configuration

The app has defaults for the BΛR☰ Supabase project URL and publishable client key. To override them, set `SUPABASE_URL` and `SUPABASE_PUBLISHABLE_KEY` as Gradle project properties or environment variables. The GitHub Actions rebuild workflow accepts optional secrets with those names; when absent, it uses the same public project values.

Local build example:

```sh
gradle -PSUPABASE_URL=https://YOUR_PROJECT.supabase.co -PSUPABASE_PUBLISHABLE_KEY=YOUR_PUBLIC_ANON_OR_PUBLISHABLE_KEY :app:assembleDebug
```

These values are the Supabase project URL and public client key, not a service-role key. Never put a service-role key in an Android app.

## Supabase Dashboard

1. Enable Google under Authentication → Sign In / Providers and configure the Google OAuth client ID and secret there.
2. Add `bare://auth-callback` to Authentication → URL Configuration → Redirect URLs.
3. In Google Cloud Console, add `https://fbiazqbrkwovzrirnzpb.supabase.co/auth/v1/callback` as the authorized redirect URI for the Google OAuth web client, then use that client ID/secret in Supabase's Google provider settings.
4. No database schema or table is needed for Google sign-in alone. The CI secrets are optional overrides, not service credentials.

## Identity and local folders

- A stable local UUID is generated once and stored encrypted using a separate Android Keystore AES-GCM key for the no-account mode. Existing legacy local UUIDs are migrated without changing the UID when possible.
- The active account directory uses the first 16 lowercase hexadecimal characters of MD5(UID), matching the reference's half-hash convention.
- The public root is `/storage/emulated/0/BΛR☰/`; account files live under `accounts/<half-md5-uid>/`.
- Local and Supabase account folders are kept separate. Signing into Google does not delete or silently merge an existing local account folder.
- Folder creation is attempted when onboarding reaches Home. Android all-files/storage restrictions can still cause creation to fail; the app reports that error rather than pretending the folders exist.

## Scope and limitations

- Google OAuth is routed through Supabase Auth using PKCE; no Firebase Auth dependency is used.
- Before opening the browser, the app checks `/auth/v1/settings` and gives a specific error if the Google provider is disabled. The dashboard redirect allow-list still must include `bare://auth-callback`.
- The Supabase access/refresh tokens and local account UID are encrypted with separate Android Keystore AES-GCM keys.
- A refresh-token exchange method is implemented, but automatic refresh scheduling and integration with future cloud API calls are not yet wired into the app lifecycle.
- Cloud backup operations, explicit account switching, and safe local-to-Google backup migration remain separate follow-up work; this change does not claim those features are complete.

## Live project audit (2026-10-13)

- The connected Supabase project `BΛR☰` (`fbiazqbrkwovzrirnzpb`) reports `ACTIVE_HEALTHY` in `ap-southeast-1`.
- Its project URL and active publishable key match the app's default build configuration. The publishable key is intended for client use; no service-role key is embedded.
- The `public` schema currently has no tables, and the migration list is empty. This is expected for Google Auth alone; no schema changes were applied.
- Supabase security advisors returned no performance findings and one warning that leaked-password protection is disabled. That setting is relevant to password-based sign-in, which BΛR☰ is not offering in this flow.
- Auth logs contain a recent `OAuth state parameter missing` event referring to the older `barebackup://auth/callback` redirect. The current app uses `bare://auth-callback` and initiates OAuth via `/auth/v1/authorize`; make sure the Google OAuth web client uses the Supabase callback `https://fbiazqbrkwovzrirnzpb.supabase.co/auth/v1/callback`, not the app deep link.
- The Supabase Management connector does not expose the Google provider's dashboard configuration. The app checks `/auth/v1/settings` before opening the browser and reports a clear error if `external.google` is disabled; a successful live sign-in still requires testing on-device.