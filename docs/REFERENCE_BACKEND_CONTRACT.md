# Reference Backend Contract

## Evidence

Recovered from the Reference 5.1.0 (version code 620) decompilation, primarily re3, ah8, and d45.

This records Reference Firebase paths and behavior. It is not a Supabase schema proposal.

## Confirmed Reference paths

- appData
- users/{uid}
- users/{uid}/userInfo
- users/{uid}/cloud_v1
- tags/{cloudTag}/apps
- tags/{cloudTag}/folders
- tags/{cloudTag}/smsBackupsCount
- tags/{cloudTag}/callLogBackupsCount
- purchase_verifications/{uid}/<obfuscated key>

re3.j() obtains the current authenticated UID. re3.k() resolves users/{uid}. ah8.fromDatabase() loads userInfo for non-anonymous users and creates a local record directly for anonymous users.

## Identity behavior

Reference d45.a() maps the authenticated identity to MFirebaseUser fields including UID, email, display name, photo URL, provider data, and provider ID.

Reference d45.c() signs out, clears anonymous/sign-in state, may clear app data for a non-anonymous account, resets migration state, and re-runs account initialization.

Crashlytics setUserId(uid) and custom uid are telemetry behavior, not database state.

## Migration rule

Do not translate these paths mechanically into SQL tables. The eventual Supabase adapter must preserve observed behavior while deriving tables, relations, RLS, and auth semantics from the complete audited call graph.

Unknown Firebase nodes remain UNKNOWN until their call sites and payload models are audited.
