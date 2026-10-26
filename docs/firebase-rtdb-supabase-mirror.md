# Firebase RTDB → Supabase mirror

The scheduled workflow is `.github/workflows/firebase-rtdb-supabase-mirror.yml` and runs every 15 minutes (or manually via Actions → Mirror Firebase RTDB to Supabase → Run workflow).

## Required configuration

Repository Actions secret:
- `FIREBASE_SERVICE_ACCOUNT_JSON`: service-account JSON. Keep private.

Supabase Edge Function secret and GitHub Actions repository secret:
- `RTDB_GITHUB_MIRROR_SECRET`: use the same high-entropy random value in both places. Never commit it or put it in workflow YAML.

Supabase function name: `firebase-rtdb-github-mirror`.

The function is fail-closed until `RTDB_GITHUB_MIRROR_SECRET` is set in Supabase Edge Function secrets. The workflow also fails closed if the GitHub secret is missing.

## Permissions and validation

The Google service account must have read access to the Firebase Realtime Database `/users` path. After configuring the missing shared secret, start a manual workflow run and verify the job completes. If the service account lacks access, grant the narrowest database read-only IAM permission supported by the project; do not put Firebase user ID tokens in GitHub secrets.

This is periodic snapshot mirroring, not real-time event mirroring. It queues a full snapshot for each UID present under `/users`. Account deletions (UIDs absent from a later snapshot) are not inferred by this workflow.
