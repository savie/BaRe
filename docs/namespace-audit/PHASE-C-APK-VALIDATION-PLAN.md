# Phase C — APK Validation and Deterministic Build Plan

## Baseline

Use the last verified successful artifact as the comparison baseline:

- Actions run: [39982975194](https://github.com/savie/BaRe/actions/runs/39982975194)
- Build commit: `e3d2ad5839cb057ca2fc94a075cb7f94e8f6bd89`
- APK SHA-256: `c56a1f741eb3b9f0f1f7761cc3a91c6573c76152dd5cdfb5e5fb394a3a7932b8`
- Workflow source: [namespace-barebackup.yml at build commit](https://github.com/savie/BaRe/blob/e3d2ad5839cb057ca2fc94a075cb7f94e8f6bd89/.github/workflows/namespace-barebackup.yml)

Do not overwrite or relabel this artifact as a newer build.

## Gate C1 — Provenance

Before changing build behavior, the next CI run should record:

- checked-out implementation commit SHA;
- exact `rewrite` commit SHA resolved by the current workflow;
- SHA-256 of `tools/native-jni-replacement/native-lib.cpp`;
- SHA-256 of the decompiled source inputs that are built;
- Apktool version and JAR SHA-256;
- Java full version;
- Android build-tools version actually selected;
- NDK version;
- SHA-256 of final unsigned, aligned, and signed APKs.

Never print Firebase API keys, client secrets, keystore data, or other secret material in logs. Record hashes/commit identifiers, not secret values.

## Gate C2 — Independent final APK inspection

Use Android SDK tools against the final signed APK, not only against `build-src`:

- `aapt dump badging` or `apkanalyzer manifest application-id` to verify package ID;
- decode manifest and verify app version code/name, launcher activity, app label, exported components, permissions, and provider authorities;
- verify Firebase resource names exist and that Firebase app ID/project identifiers are present without logging API keys;
- list native libraries and verify all four intended ABIs;
- inspect exported JNI symbols for each `libnative-lib.so`;
- verify signing certificate fingerprint and `apksigner verify`;
- compare resource table/package identity against the Run #21 baseline and explicitly classify expected differences.

Fail the build if the final APK does not match the intended identity. Save inspection output as a separate CI artifact with sensitive values redacted.

## Gate C3 — Runtime tests

Run on an emulator/device where practical:

1. clean install and launch;
2. upgrade install over the previous BΛR☰ test build signed with the same CI key;
3. Google login and session persistence;
4. backup creation and restore from a known fixture;
5. archive read/write and integrity checks;
6. file-provider and content URI access;
7. local-network permission detection;
8. smoke tests on each supported ABI where an emulator/device is available.

A successful build or signature check must not be described as proof these runtime flows work.

## Gate C4 — Make inputs immutable

Recommended follow-up change, only after input ownership is agreed:

- Replace moving-branch reads from `rewrite` with either reviewed files committed in `bare-implementation/` or a pinned immutable commit SHA.
- If using a pinned commit, log and verify the exact SHA and fail if it does not match the expected SHA.
- Pin Android build-tools and platform package versions explicitly rather than selecting the newest installed directory.
- Use stable, pinned action revisions where feasible.
- Keep CI transformations idempotent and test that applying them twice produces no additional diff.
- Produce a build manifest containing the immutable input identifiers and hashes.

## Explicit non-goals for this phase

- No broad package namespace replacement.
- No changes to `reference/` or `BareApp.kt`.
- No automatic migration of backup/archive data formats.
- No claim that the reconstructed JNI library is behaviorally equivalent without tests.
- No printing Firebase API keys, OAuth secrets, signing secrets, or private credentials.

## Acceptance criteria

The phase is complete only when an independent reviewer can identify every input from immutable identifiers, inspect the final APK identity from the actual signed binary, reproduce the build with the documented toolchain, and see runtime test results distinct from structural build checks.
