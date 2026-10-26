# Firebase RTDB → Supabase mirror bridge

## Current behavior

- Firebase RTDB remains the canonical source for the app's existing roots.
- `firebase-rtdb-mirror-worker` currently only drains `public.rtdb_mirror_queue` through `process_firebase_rtdb_mirror_queue(p_batch_size)`.
- `public.enqueue_firebase_rtdb_mirror(...)` validates a caller's Firebase ID token and writes to the queue. It is a client RPC, not an RTDB trigger.
- The RTDB REST endpoint returned HTTP 401 Permission denied when accessed without Firebase credentials. A project URL alone cannot read the protected database.

## Required bridge

Use a client-originated event from the Android app, after the app writes a permitted RTDB root successfully, to send the same root snapshot to the authenticated Supabase RPC `enqueue_firebase_rtdb_mirror`. Include the Firebase ID token as the request authorization context through the Supabase client, the exact Firebase UID as `p_user_id`, a constrained `p_path_key`, the complete JSON snapshot as `p_payload`, and a stable source event ID for retries.

An alternate server-originated bridge requires a Firebase Admin service credential held server-side; do not put that credential in the APK, Git, SQL source, or client-visible settings. No Firebase Admin credential is currently present in Supabase Vault, and unauthenticated RTDB REST access is denied.

## Supported roots

Use the existing database constraints and processor allowlist: `appSettings`, `labelsData`, `configs`, `favoriteApps`, `blacklistApps`, `schedule_data`, `wifi`, `cloud_v1`, `transactions/premium`, `transactions/premium_history`, and `userInfo` where supported. Preserve complete nested JSON payloads and deletion semantics. Never enqueue unrelated users' records.

## Validation

1. Make one non-sensitive change in app (e.g. add a favorite) and confirm the Firebase write succeeds.
2. Verify a queue row appears for that same Firebase UID and `favoriteApps`.
3. Verify the worker drains it (HTTP 200, processed count > 0).
4. Verify `public.user_realtime_data` contains the exact payload and the new favorite.
5. Repeat an update and a deletion to confirm idempotency and null/deletion behavior.

The worker's HTTP 200 with `processed: 0` only proves its queue-draining endpoint is reachable; it does not prove RTDB events are bridged.
