# BΛR☰ account identity and Supabase Google sign-in

## Build configuration

The app has defaults for the BΛR☰ Supabase project URL and publishable client key. To override them, set `SUPABASE_URL` and `SUPABASE_ANON_KEY` as Gradle project properties or environment variables. The GitHub Actions rebuild workflow accepts optional secrets with those names; when absent, it uses the same public project values.

Local build example:

```sh
gradle -PSUPABASE_URL=https://YOUR_PROJECT.supabase.co -PSUPABASE_ANON_KEY=YOUR_PUBLIC_ANON_OR_PUBLISHABLE_KEY :app:assembleDebug
```

These values are the Supabase project URL and public client key, not a service-role key. Never put a service-role key in an Android app.

## Supabase Dashboard

1. Enable Google under Authentication → Sign In / Providers and configure the Google OAuth client ID and secret there.
2. Add `bare://auth-callback` to Authentication → URL Configuration → Redirect URLs.
3. In Google Cloud Console, add `https://fbiazqbrkwovzrirnzpb.supabase.co/auth/v1/callback` as the authorized redirect URI for the Google OAuth web client, then use that client ID/secret in Supabase's Google provider settings.
4. No database schema or table is needed for Google sign-in alone. The CI secrets are optional overrides, not service credentials.

## Identity and local folders

- A stable local UUID is generated once and stored in app-private preferences for the no-account mode.
- The active account directory uses the first 16 lowercase hexadecimal characters of MD5(UID), matching the reference's half-hash convention.
- The public root is `/storage/emulated/0/BΛR☰/`; account files live under `accounts/<half-md5-uid>/`.
- Local and Supabase account folders are kept separate. Signing into Google does not delete or silently merge an existing local account folder.
- Folder creation is attempted when onboarding reaches Home. Android all-files/storage restrictions can still cause creation to fail; the app reports that error rather than pretending the folders exist.

## Scope and limitations

- Google OAuth is routed through Supabase Auth using PKCE; no Firebase Auth dependency is used.
- The Supabase access/refresh tokens are encrypted with an Android Keystore AES-GCM key.
- Cloud backup operations, refresh-token renewal for future API calls, explicit account switching, and safe local-to-Google backup migration are separate follow-up work; this change does not claim those features are complete.