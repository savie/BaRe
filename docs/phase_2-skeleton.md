# Phase 2 — Reference Skeleton Contract

**State:** IN PROGRESS — IMPLEMENTED TRANCHE / VERIFICATION BLOCKED

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


## 13. Executed P2 Tranche

Reference inheritance evidence was inspected from the decompiled JADX sources.

Observed internal base hierarchy used by the skeleton:
`zm ← k28 ← il0 ← sa1`, with specialized branches `er6 ← {dt}`, `je5`, `x01`, `oo8`, and `fq5 ← il0`.

Implemented:
- Application: 1
- Internal manifest components: 82
- Total Java skeleton entities implemented: 83

Structural compile:
- Java compiler: `javac`
- Android/AndroidX types were represented by explicit compile-only contract stubs.
- Result: PASS.
- This is **structural compilation evidence**, not an Android APK build.

Dependency-owned components:
- 37 remain BLOCKED pending BaRe dependency declarations and verified delegation contracts.
- No fake replacement classes were created for these components.

Current Phase 2 gate:
`83/120 IMPLEMENTED` → `37/120 BLOCKED` → **P2 NOT VERIFIED**.

The blocker is specifically dependency/build-contract verification, not Java syntax of the implemented skeleton.


## 14. Dependency Gate Update

Reference-side dependency evidence has now been inspected directly from the decompiled artifact.

Verified Reference families include AndroidX AppCompat 1.7.1, Core 1.18.0, Credentials 1.6.0, Fragment 1.8.9, ProfileInstaller 1.4.0, Room 2.8.4, Startup 1.2.0, Material 1.14.0, and Coroutines 1.11.0.

The 37 external manifest components are now individually registered in `docs/phase_2-dependency-register.md`.

Their Reference manifest/class contracts are known, but BaRe still has no Android build/dependency graph. Therefore these entities remain BLOCKED rather than being falsely marked delegated.

Next required artifact: actual BaRe Android build contract (Gradle/settings/module/dependency declarations) sufficient to resolve and compile the 37 external components.


## 15. Android Build Contract Tranche

The BaRe Android project contract is now represented by:

- settings.gradle
- build.gradle
- gradle.properties
- app/build.gradle
- docs/phase_2-build-contract.md

Reference AGP metadata proves Android Gradle Plugin 9.2.1. Reference application metadata proves compileSdk 37, minSdk 26, targetSdk 37, versionName 5.1.0, and versionCode 620.

Reference-evidenced AndroidX dependency declarations have been added to app/build.gradle.

This does not close the Phase 2 gate. Dependency delegation remains BLOCKED until the external classes resolve from the declared graph and the Android project builds successfully.

## 16. Reference Manifest Materialization Tranche

Reference apktool evidence was inspected directly.

Observed Reference inventory: 95 Activities, 10 Services, 10 Receivers, 4 Providers, plus 1 Application.

BaRe now contains `app/src/main/AndroidManifest.xml` with the same 120 manifest-facing component names and the Reference package/Application identity.

This is a structural P2 implementation step. It does not claim full manifest parity yet: permissions, intent filters, metadata, authorities, exported/configuration flags, and resource contracts still require evidence-backed reconstruction.

Therefore the entity gate remains 83/120 Java implementations, with 37 dependency-owned entities BLOCKED pending valid delegation and Android build verification.
## 17. R8/JADX `defpackage` Finding

Reference artifact inspection established that the apparent `defpackage` namespace is a JADX source-reconstruction namespace, not evidence that the original application classes were declared in Java package `defpackage`.

Direct apktool evidence:
- `er6.smali`: `.class public abstract Ler6;` and `.super Lsa1;`
- `il0.smali`: `.class public abstract Lil0;` and `.super Lk28;`
- `zm.smali`: `.class public abstract Lzm;` and `.super Landroidx/fragment/app/u;`

The class descriptors have no package component. JADX therefore emits these classes under `package defpackage;` to produce compilable Java source.

Reference scale observed: 9,897 JADX Java files are under `sources/defpackage`.

Engineering consequence: BaRe must not treat `defpackage` as a Reference package identity. However, Java source in named packages cannot directly extend/import classes from the Java unnamed package. The current `defpackage` compatibility namespace is therefore retained as a source-level reconstruction mechanism and must not be silently claimed as binary-name parity.

Classification: SOURCE-RECONSTRUCTION CONSTRAINT / BINARY-NAME PARITY UNKNOWN.

Scope decision for Phase 2: reconstruct only internal base classes required by the manifest-facing inheritance contract; do not blindly import all 9,897 decompiled `defpackage` classes into BaRe. Additional classes are added only when Reference evidence proves they are required by the Phase 2 structural contract.

## 18. Reference Materialization Baseline

A direct artifact audit now records the complete Reference manifest/resource baseline in `docs/phase_2-reference-materialization.md`.

The Reference manifest is 39,762 bytes with 120 manifest-facing entities (1 Application + 95 Activities + 10 Services + 10 Receivers + 4 Providers), 34 permissions, 4 features, 22 intent-filters, 23 metadata entries, and 2 optional uses-library entries. The Reference `res/` tree contains 1,491 files.

This changes the reconstruction rule for the remaining P2 work: the Reference manifest/resource definitions are to be materialized from the artifact, not recreated from the 120-name inventory.

## 19. Modifier Contract Tranche

Reference JADX inspection confirms the internal Activity/Service declarations are predominantly `public final class`; receiver evidence distinguishes final and non-final classes where observed.

A first structural tranche aligned five internal Activity declarations to the observed `public final class` contract. No Reference business methods were copied into the skeleton.

P2 remains NOT VERIFIED because complete manifest/resource materialization, dependency resolution, and real Android build verification remain open.
