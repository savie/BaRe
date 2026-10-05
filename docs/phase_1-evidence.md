# Phase 1 — Evidence & Baseline Register

**Purpose:** evidence ledger for the Foundation phase.

This document is an evidence artifact, not an implementation status report.

## 1. Evidence Record

Use one record per material claim:

| Field | Required |
|---|---|
| Evidence ID | yes |
| Claim | yes |
| Expected | yes |
| Source | yes |
| Location | yes |
| Observed | yes |
| Result | yes |
| State | yes |
| Notes | optional |

Template:

```
Evidence ID:
Claim:
Expected:
Source:
Location:
Observed:
Result:
State:
Notes:
```

## 2. Required Evidence Groups

### Identity
- package
- versionName
- versionCode
- SDK baseline
- Application class

### Manifest
- all Activities
- all Services
- all Receivers
- all Providers
- launcher
- primary post-intro activity
- application flags
- permissions
- intent filters
- provider authorities
- service/receiver attributes

### Resources
- resource category counts
- resource ownership where relevant
- variant/resource qualifier inventory

### Dependencies
- library/component origin
- class availability
- relevant contract

## 3. Classification

Evidence result must use:

`MATCH / AUTHORIZED DEVIATION / UNAUTHORIZED DEVIATION / UNKNOWN / BLOCKED`

Do not use MATCH when only the Reference side has been observed.

## 4. Baseline Lock

The baseline becomes LOCKED only after:
1. required evidence is collected;
2. unresolved UNKNOWN/BLOCKED items are documented;
3. mapping is complete enough for Phase 2;
4. the Phase 1 gate is explicitly marked VERIFIED.

Until then:

```
PHASE 1 = NOT VERIFIED
```
