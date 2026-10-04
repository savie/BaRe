# P2 Reference Skeleton Implementation Audit — 2026-10-05

## Scope

P2 verification is limited to:

- `docs/bare.md`
- Phase 1 / Phase 2 target contract
- canonical Reference Swift Backup 5.1.0 (620) ZIP/APK
- `app/` on branch `rewrite`

Supabase is not modified in this P2 pass. No migration, schema, RLS, backend mutation, build, install, runtime, or device test is performed.

## Reference manifest evidence

Canonical Reference manifest contains:

| Component | Reference |
|---|---:|
| Activity | 95 |
| Service | 10 |
| Receiver | 10 |
| Provider | 4 |
| **Total** | **119** |

Ownership split from the canonical manifest:

| Component | App-owned | External/dependency |
|---|---:|---:|
| Activity | 71 | 24 |
| Service | 3 | 7 |
| Receiver | 8 | 2 |
| Provider | 0 | 4 |

The app-owned component set is therefore **82 components**.

## Target `app/` verification

The current BaRe manifest declares the 71 app-owned Reference Activities, 3 app-owned Services, and 8 app-owned Receivers under the normalized `com.bare` namespace.

Static repository tree verification found a corresponding Java source file for all **82/82 app-owned manifest components**.

No app-owned manifest component is missing from the current `app/src/main/java` skeleton.

Application owner is present as:

`com.bare.BaReApp`

The two target Providers currently declared by the app are dependency/Android infrastructure contracts:

- `rikka.shizuku.ShizukuProvider`
- `androidx.core.content.FileProvider`

The remaining Reference Providers are dependency-owned and are expected to be supplied by their dependency boundaries rather than cloned as BaRe classes.

## Dependency evidence closed in this P2 pass

The Reference ZIP/APK provides direct version evidence for:

- MSAL: 8.3.2
- pCloud SDK: 1.11.0
- AndroidX Credentials: 1.6.0
- Credentials Play Services Auth: 1.6.0
- Room runtime: 2.8.4
- ProfileInstaller: 1.4.0
- Billing: 8.3.0
- Google Play Services Auth: 21.5.1
- Android DataTransport runtime: 3.3.0
- Play Integrity: 1.3.0

Play Integrity 1.3.0 has been added to the target dependency set because the Reference ZIP contains `integrity.properties` identifying version 1.3.0 and the Reference classes use the Play Integrity API.

## External dependency boundaries not guessed

Reference contains external component contracts for:

- AppAuth
- TedPermission
- YubiKit
- Firebase-origin authentication/session components

Exact direct dependency versions for AppAuth, TedPermission, and YubiKit are not directly established by the supplied Reference ZIP evidence inspected in this pass. They are therefore not assigned speculative versions.

Firebase is an authorized deviation boundary from `docs/bare.md`. Firebase SDK components are not reintroduced merely to reproduce Reference manifest numbers. Their application/backend contracts remain reconstruction evidence for the later backend-deviation work.

## Phase 1 static identity check

Repository code search on the current default branch (`rewrite`) returned no `firebase` or `swift` matches under `app/`.

Reference-only occurrences remain under `reference/` and documentation/evidence surfaces and are not implementation-target hygiene violations.

## P2 status

**APP-OWNED SKELETON: VERIFIED — 82/82**

**REFERENCE MANIFEST INVENTORY: VERIFIED — 119/119**

**DEPENDENCY VERSION COVERAGE: PARTIAL / EVIDENCE-BOUND**

**BACKEND/SUPABASE: FROZEN FOR P2**

P2 does not claim runtime parity, build success, feature parity, or backend completion.

Next reconstruction work should proceed from Reference evidence into the next allowed application phase, without modifying Supabase.
