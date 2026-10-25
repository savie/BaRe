# Firebase-first backend and Supabase fallback

## Policy

- Firebase Realtime Database is the primary/authoritative backend for user data.
- Supabase is a fallback replica, not a second authority.
- For payloads migrated in this change (`configs` and `labelsData`), reads try the existing Firebase-backed repository first and consult Supabase only when that repository has no usable state.
- Existing explicit user-mutation paths continue writing Firebase and enqueueing the Supabase mirror write. These writes are asynchronous and do **not** yet prove strict cross-backend equality.

## Important consistency distinction

“Identical” means the same logical payload for the same Firebase UID and payload key, not that Firebase RTDB and PostgreSQL have identical schemas. A successful Firebase write followed by a failed Supabase mirror can leave the replica stale. The current mirror writer has no durable outbox, version/conflict resolution, or repair/reconciliation job; therefore this PR does not claim strong consistency or automatic healing.

## Scope of this PR

Implemented:
- Firebase-first repository read order for `configs`.
- Firebase-first repository read order for `labelsData`.
- Supabase fallback when the Firebase-backed repository has no usable state.
- Build-time regression checks for that read order.

Not yet migrated / not yet proven identical:
- `appSettings` first-run restore currently reads the Supabase payload directly; it needs a verified Firebase RTDB read/error result before it can safely become Firebase-first.
- Other data paths such as Favorites, Blacklist, schedules, and remaining user metadata are not all mirrored.
- Strict equality under partial outages requires durable queued writes, payload versions, idempotent retries, and a reconciliation test.

## Safety rules

1. Never replace a valid Firebase payload with an older Supabase payload just because a fallback read is available.
2. A missing Firebase value and a Firebase transport/auth failure must eventually be distinguishable; this PR uses the existing repository's usable-state signal and does not claim a full RTDB health detector.
3. Do not relax Firebase RTDB rules to make fallback work.
4. Do not disable or delete Supabase until all in-scope paths have migration coverage and restore/failover tests.
5. Validate with CI build and device tests for online Firebase, Firebase unavailable with a valid Supabase replica, both backends unavailable, and malformed fallback payload.
