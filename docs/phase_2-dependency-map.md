# Phase 2 — Dependency Artifact Map

**State:** REFERENCE MAPPED — DELEGATION NOT VERIFIED

## Rule

Reference dependency identity is evidence. It is not automatically a valid BaRe dependency declaration.

| Family | Reference evidence | P2 treatment |
|---|---|---|
| AndroidX | versions observed | delegate after resolution |
| MSAL | 8.3.2 observed | delegate after resolution |
| Billing | 8.3.0 observed | delegate after resolution |
| pCloud | 1.11.0 observed | delegate after resolution |
| Firebase Auth | 24.1.0 observed | preserve P2 baseline; migration deferred |
| Firebase Sessions | 3.0.6 observed | preserve P2 baseline; migration deferred |
| Firebase Database | 22.0.1 observed | preserve P2 baseline; migration deferred |
| Firebase Crashlytics | 20.0.6 observed | preserve P2 baseline; migration deferred |
| Google Sign-In/GMS | versions observed | delegate after resolution |
| Play Core/Integrity | versions observed | delegate after resolution |
| DataTransport | 3.3.0 observed | delegate after resolution |
| AppAuth | family observed; exact version unresolved | UNKNOWN/BLOCKED |
| TedPermission | family observed; exact version unresolved | UNKNOWN/BLOCKED |
| YubiKit | Android/Core/Piv family observed; exact version unresolved | UNKNOWN/BLOCKED |
| Shizuku | family observed; exact version unresolved | UNKNOWN/BLOCKED |

## P2 Boundary

Firebase→Supabase migration is an authorized deviation but is **not executed in P2**.

No dependency is removed merely because a current public coordinate exists.

## Exit

Every dependency-owned Reference contract must be delegated and verified, reconstructed where appropriate, or explicitly UNKNOWN/BLOCKED.
