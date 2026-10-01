# N-05 MANIFEST — TOTAL AUDIT

## Status

**AUDIT COMPLETE — DOCUMENT ONLY / IMPLEMENTATION REGISTER READY**

- Domain: **N-05 Manifest**
- Phase: P3
- Reference: Swift Backup 5.1.0 / versionCode 620
- Canonical Reference: local ZIP
- Canonical SHA-256: `148e9b4ef265ead284cb4af060c89f44898dcb81747702ef6bef50c863f92948`
- Baseline checkpoint: `b723b21f826b1760654bfdfe0e0e7ebcce75f9cc`
- Target branch: `rewrite`
- Build/install/runtime: **NOT PERFORMED**
- Reference mutation: **NO**

## 1. Evidence

Reference manifest canonical content SHA-256:
`287cdbf168ca6b95b842ae15deb7e908c552f3f823723bc9518e44df4f4833f0`

Target manifest blob SHA at audit start:
`b773ad86e241ba1460bc8b5e31ef6bd951b3202c`

Reference structural inventory:
- 95 activities total, including dependency/library activities.
- 10 services total, including dependency/library services.
- 10 receivers total, including dependency/library receivers.
- 4 providers total, all dependency/library territory.
- 34 permissions.
- 4 optional hardware features.
- queries block contains dependency package visibility entries plus 4 intent queries.

P2/P3 ownership boundary remains:
- Reference-owned Activities: 71.
- Reference-owned Services: 3.
- Reference-owned Receivers: 8.
- Reference-owned Providers: 0.

## 2. Finding register

| ID | Contract | Reference | BaRe at audit | Classification | Owner |
|---|---|---|---|---|---|
| N05-01 | `android:localeConfig="@xml/locales_config"` | PRESENT | MISSING | UNAUTHORIZED DEVIATION | N-05 + N-01 resource |
| N05-02 | `android:networkSecurityConfig="@xml/network_security_config"` | PRESENT | MISSING | UNAUTHORIZED DEVIATION | N-05 + N-01 resource |
| N05-03 | `locales_config.xml` | PRESENT | MISSING | UNAUTHORIZED DEVIATION | N-01 resource / N-05 linkage |
| N05-04 | `network_security_config.xml` | PRESENT | MISSING | UNAUTHORIZED DEVIATION | N-01 resource / N-05 linkage |
| N05-05 | Reference app-owned Activity set | 71 | 71 covered | MATCH at P3 ownership level | N-05 |
| N05-06 | Reference app-owned Service set | 3 | 3 structurally declared | MATCH | N-05 |
| N05-07 | Reference app-owned Receiver set | 8 | 8 structurally declared | MATCH | N-05 |
| N05-08 | Reference-owned Provider set | 0 | 0 | MATCH | N-05 |
| N05-09 | Branding label/icon/theme | Swift identity | BΛR☰ identity | AUTHORIZED DEVIATION | N-11 |
| N05-10 | Application class identity | `SwiftApp` | `BaReApp` | AUTHORIZED INTERNAL IDENTITY CHANGE | N-11 / implementation identity |
| N05-11 | Package identity | `org.swiftapps.swiftbackup` | `com.bare` | AUTHORIZED TARGET IDENTITY | N-11 / implementation identity |
| N05-12 | AppComponentFactory | explicit Reference value | omitted in target source manifest | DEPENDENCY/TOOLCHAIN OWNED — DO NOT GUESS | dependency merge |
| N05-13 | MSAL/test package visibility queries | present in Reference | absent in target source manifest | UNKNOWN / DEPENDENCY-OWNED CANDIDATE | dependency manifest merge |
| N05-14 | Billing test companion query | present in Reference | absent in target source manifest | UNKNOWN / DEPENDENCY-OWNED CANDIDATE | dependency manifest merge |
| N05-15 | Dynamic receiver not-exported permission | Reference declares Swift-package-specific permission | target has no equivalent source declaration | UNKNOWN / GENERATED-DEPENDENCY CANDIDATE | dependency/generated manifest |
| N05-16 | Dependency/library activities/services/receivers/providers | present after Reference merge | not duplicated in target source manifest | UNKNOWN until merge evidence; not copied blindly | dependency boundary |

## 3. N-01 handoff

N-01 explicitly registered:
- `locales_config` as a Reference resource whose manifest linkage belongs to N-05.
- `network_security_config` as Reference-present / target implementation not previously proven.

Canonical resource evidence was inspected directly from the supplied ZIP. Both files are app-level XML configuration resources.

## 4. Implementation decision

N-05 is large enough to split by ownership:

### N05-M1 — App-owned manifest/resource linkage
Actionable now:
- reconstruct `locales_config.xml`;
- reconstruct `network_security_config.xml`;
- add corresponding `android:localeConfig` and `android:networkSecurityConfig` application attributes.

### N05-M2 — Dependency/generated manifest merge
Deferred classification:
- MSAL/test package queries;
- billing test companion query;
- AndroidX/generated `DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`;
- dependency/library component declarations.

Do **not** invent source-manifest entries for N05-M2 without dependency evidence.

## 5. Static acceptance criteria

N-05 may close only after:
1. app-owned Reference manifest contracts are accounted for;
2. N-01-linked XML resources are present and linked;
3. 71/71 Reference-owned Activities remain structurally covered;
4. 3/3 Reference-owned Services remain structurally covered;
5. 8/8 Reference-owned Receivers remain structurally covered;
6. no Reference-owned Provider is introduced;
7. authorized BΛR☰ identity deviations remain classified;
8. dependency-owned/generated entries are not blindly copied;
9. Reference remains unchanged;
10. build/install/runtime is not used as closure evidence.

**Current N-05 state: 🟡 AUDITED / IMPLEMENTATION PENDING**
