# Phase 2 — Reference Skeleton Contract

**State:** SPECIFICATION — NOT VERIFIED

## 1. Purpose

Phase 2 creates the Java source skeleton required to represent the Phase 1 target.

Target:

```
1 Application + 119 Manifest Components = 120 Entities
```

Phase 2 is structural. It does not implement feature behavior.

## 2. Inputs

- `docs/bare.md`
- `docs/phase_1-foundation.md`
- `docs/phase_1-evidence.md`
- locked Reference baseline

## 3. Scope

Included:
- Java source structure
- package/class mapping
- inheritance contract
- manifest-facing component structure
- internal base classes when proven necessary
- dependency delegation when proven valid

Excluded:
- business logic
- backup/restore logic
- feature behavior
- UI implementation
- layout/XML implementation
- backend implementation
- premium logic
- runtime parity

## 4. Java-Only Rule

Allowed:
- `.java`

Forbidden:
- `.kt`
- Jetpack Compose
- speculative generated implementations

## 5. Skeleton Contract

### Application

Reference:

`org.swiftapps.swiftbackup.SwiftApp`

BaRe target package/class is decided by explicit mapping.

Application superclass must be evidence-backed. Standard `android.app.Application` is acceptable where the platform contract is sufficient.

No feature initialization in Phase 2.

### Activities

Activity superclass must be determined from Reference evidence.

Do not automatically substitute `AppCompatActivity` when Reference inheritance is unknown.

Lifecycle code must be minimal and must not introduce behavior.

`setContentView()` is forbidden in Phase 2.

### Services

Superclass and binding/start contract must be evidence-backed.

Do not invent dummy binders or lifecycle semantics merely to compile.

### Receivers

Use the Reference inheritance/contract.

No business behavior in `onReceive()`.

### Providers

A provider may be:
- reconstructed;
- delegated to a verified dependency;
- blocked pending contract evidence.

Delegation requires:
1. dependency declared;
2. class resolves;
3. manifest contract matches;
4. authority/configuration matches;
5. relevant behavior is verifiable;
6. compatibility identifiers are recorded where required.

## 6. Internal Base Classes

If a Reference component inherits from an internal base class, reconstruct that base class when required by the contract.

Do not invent a base class solely to simplify implementation.

## 7. Static Hygiene

Apply `docs/bare.md` classification.

Do not perform blind/global replacement.

Every compatibility-preserved occurrence is recorded in the hygiene ledger.

## 8. Skeleton Restrictions

The skeleton must not contain:
- business logic
- UI state
- navigation logic
- storage behavior
- network behavior
- backup/restore behavior
- Firebase/Supabase behavior
- payment behavior
- speculative lifecycle semantics

No dummy resource files are created.

## 9. Entity Acceptance

For each of the 120 entities:

| Field | Required |
|---|---|
| Entity ID | yes |
| Reference symbol | yes |
| Ownership | yes |
| BaRe symbol | yes |
| Strategy | direct / base-class / delegated / blocked |
| Evidence | yes |
| State | yes |

Entity is not VERIFIED merely because a `.java` file exists.

## 10. Phase 2 Outputs

- Java skeleton source
- 120-entity mapping
- inheritance evidence
- delegation register
- static hygiene ledger
- compile evidence
- UNKNOWN/BLOCKED register

## 11. Exit Criteria

Phase 2 can become VERIFIED only when:

- [ ] all 120 entities are represented or validly delegated;
- [ ] every entity has mapping evidence;
- [ ] inheritance is evidence-backed or explicitly UNKNOWN/BLOCKED;
- [ ] no `.kt` exists;
- [ ] no Compose exists;
- [ ] no business/UI behavior exists;
- [ ] no dummy XML/layout was introduced;
- [ ] static hygiene is audited;
- [ ] delegated dependencies resolve;
- [ ] project compilation succeeds;
- [ ] compilation evidence is retained;
- [ ] no unresolved blocker affects the Phase 2 contract.

## 12. Gate

Build success alone is insufficient.

Required:

```
Skeleton exists
    ↓
Contract checked
    ↓
Compile succeeds
    ↓
Evidence retained
    ↓
Phase 2 VERIFIED
```

Runtime execution is intentionally deferred to the Runtime phase.
