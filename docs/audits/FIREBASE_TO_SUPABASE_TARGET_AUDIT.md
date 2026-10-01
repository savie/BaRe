# Firebase → Supabase Target Boundary Audit

## Scope

Target BaRe branch `rewrite`, application source/resources.

## Findings

### Firebase SDK dependency

`app/build.gradle` was inspected directly.

There is **no Firebase SDK dependency** in the current target dependency list, and no Google Services plugin is configured there.

Therefore the target did not have an active Firebase SDK integration to uninstall.

### Residual target references

Residual Firebase-specific target references were found in:
- diagnostics UI copy;
- diagnostics ViewModel naming;
- backend-boundary comments;
- a Firebase-specific unused cloud-key helper.

These were target artifacts and were removed/replaced.

### Changes

- `showFirebaseDiagnostics` → `showBackendDiagnostics`
- `getShowFirebaseDiagnostics()` → `getShowBackendDiagnostics()`
- `setShowFirebaseDiagnostics()` → `setShowBackendDiagnostics()`
- `Firebase Database connection` → `Supabase Database connection`
- Firebase backend diagnostic copy → Supabase backend diagnostic copy
- Firebase-specific implementation comments → backend/provider-neutral comments
- removed unused `ReferenceCloudKey.java`, whose sanitization encoded Firebase path restrictions that are not a Supabase schema contract.

## Supabase boundary

The target is now **Firebase-free at the inspected application/dependency surface** and uses Supabase as the named backend destination.

This does **not** claim that the Supabase SDK/auth/database implementation is already complete. Actual Supabase integration remains a P4 backend/auth task.

## Reference preservation

Reference/audit documents may still contain the word Firebase where they document observed Reference APK behavior. Those are source records and were not rewritten as if the Reference APK used Supabase.

## Verification

Direct fetch verification after edits:
- target diagnostics source: no `Firebase` token;
- target DashboardViewModel: no `Firebase` token;
- target notice layout: no `Firebase` token;
- target strings: no Firebase diagnostic key/value;
- `app/build.gradle`: no Firebase dependency/plugin.

No build/install/runtime performed.
