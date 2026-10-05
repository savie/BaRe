# Phase 2 — Dependency / Delegation Register

**State:** NOT VERIFIED

## Delegation Contract

A dependency-owned Reference component is delegated only when all are proven:
1. dependency declaration;
2. class resolution;
3. package/class identity;
4. manifest registration;
5. authority/metadata/configuration;
6. relevant runtime behavior;
7. required compatibility identifiers.

## Current Dependency-Owned Set

The existing 37 dependency-owned manifest entities remain BLOCKED until the contract above is proven.

Families include:
- AppAuth;
- TedPermission;
- MSAL;
- Firebase Auth/Sessions;
- AndroidX Credentials/ProfileInstaller/Room/Startup/Core;
- Google Sign-In/GMS;
- Billing;
- pCloud;
- YubiKit;
- Play Core;
- DataTransport;
- Shizuku.

## Source Deletion Rule

Dependency-owned Java source in `app/src/main/java` is not deleted merely because a Gradle coordinate exists.

Delete only after delegation is verified and no Reference contract is lost.

## Per-Entity Evidence

| Field | Required |
|---|---|
| Reference symbol | yes |
| Owner family | yes |
| Exact version evidence | yes or UNKNOWN |
| BaRe coordinate | yes or BLOCKED |
| Class resolution | yes |
| Manifest parity | yes |
| Runtime evidence | yes |
| Source disposition | KEEP / DELEGATE / DELETE / BLOCKED |

## Current Gate

No dependency-owned component is VERIFIED solely from source presence or declared coordinates.
