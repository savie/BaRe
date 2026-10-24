# Run #21 Workflow Provenance Audit

## Scope

- Repository: `savie/BaRe`
- Branch used by CI: `feature/namespace-barebackup`
- Build commit: `e3d2ad5839cb057ca2fc94a075cb7f94e8f6bd89`
- Workflow: `.github/workflows/namespace-barebackup.yml`
- Workflow blob at build commit: `2feec429fca318df1a48d057fad72a374b12cbfd`
- Actions run: [39982975194](https://github.com/savie/BaRe/actions/runs/39982975194)
- Job: `build-namespace-apk`, job ID `120514787226`

This audit records what the workflow actually does. It does not change app source, `reference/`, or `BareApp.kt`.

## Run and artifact identity

- Run conclusion: success.
- Build commit printed by checkout: `e3d2ad5839cb057ca2fc94a075cb7f94e8f6bd89`.
- Uploaded artifact: `barebackup-namespace-test`, artifact ID `12514008798`.
- Artifact ZIP SHA-256: `0a63d998ea83ef670251d3e00ea982903ab08db9f4f4cf399aeade0fea6bc376`.
- APK SHA-256 from CI log and local artifact inspection: `c56a1f741eb3b9f0f1f7761cc3a91c6573c76152dd5cdfb5e5fb394a3a7932b8`.
- Signing certificate SHA-256: `1baf08dcac7aee98e4769795a71e3f74070fdb56b03a44c3119d273a66722391`.
- CI reports APK signature verification successful with V2 and V3 signatures.
- Artifact retention configured as 14 days.

## Build inputs and mutable dependencies

The workflow checks out `feature/namespace-barebackup` at the branch head, with `fetch-depth: 1`. It then runs:

```bash
git fetch --no-tags --depth=1 origin rewrite
git show FETCH_HEAD:app/google-services.json > build/google-services.json
git show FETCH_HEAD:app/src/main/res/values/strings.xml > build/rewrite-strings.xml
```

The log confirms that the fetch resolved a branch named `rewrite`, but the workflow does not record or pin the resolved commit SHA. Therefore the exact Firebase and string inputs used by Run #21 cannot be reconstructed from the workflow log alone if that branch later moves. This is a reproducibility gap.

Tool inputs also include Java 17, Android SDK/build-tools selected by the newest installed version, NDK `27.2.12479018`, and Apktool `2.11.1`. Apktool and NDK are pinned; Java is pinned to major version only, while Android build-tools are selected dynamically.

## Mutations made only in the CI working copy

The workflow copies `bare-implementation/` to `build-src/` and mutates that copy. The source tree in the checkout is not rewritten by these commands. Specifically, the script:

1. Reads Firebase configuration from the fetched `rewrite` branch and inserts Firebase resource values into `build-src/res/values/strings.xml`.
2. Copies user-facing string values from the fetched rewrite branch into the existing decompiled APK resource keys. The log reports 1,384 strings copied. This preserves existing resource identifiers, but content comes from another branch.
3. Changes the manifest package from `org.swiftapps.swiftbackup` to `com.bareapps.barebackup`.
4. Rewrites selected provider/permission authorities in the manifest and across selected Smali/resource trees. It intentionally retains implementation class names under the old Java package.
5. Inserts `FirebaseApp.initializeApp(Context)` immediately after the `Application.onCreate()` super call in `SwiftApp.smali`.
6. Changes the default app label to `BΛR☰`.
7. Changes Apktool metadata to versionCode `102` and versionName `1.0.2`.
8. Replaces `libnative-lib.so` for four ABIs with a library compiled from `tools/native-jni-replacement/native-lib.cpp`.

## Native replacement validation limits

The CI checks that the reconstructed library exports three expected JNI names for each of four ABIs and rejects an unexpected `JNI_OnLoad` and `libc++_shared.so` dependency. The log records hashes for the four compiled libraries.

Those checks establish that compilation and selected symbol/dependency checks passed. They do not establish instruction-level equivalence or behavioral parity with the original native library. Runtime tests are still needed for both Google auth client-ID methods and local-network permission detection on supported ABIs.

## Validation already evidenced by Run #21

- Apktool rebuild completed.
- Unsigned APK passed `unzip -t`.
- `resources.arsc` was checked as uncompressed and 4-byte aligned.
- `zipalign -c -v 4` passed.
- `apksigner verify --verbose --print-certs` passed.
- APK SHA-256 and signer certificate were logged.

## Gaps before calling this a deterministic, fully validated build

1. Pin and log the exact `rewrite` commit SHA, or migrate required inputs into a versioned, reviewed source location in this branch.
2. Pin Android build-tools version instead of choosing the latest installed directory.
3. Record hashes for every external/input file used to produce the APK, including source APK/decompiled tree inputs and JNI source.
4. Decode the final APK manifest/resources to independently verify application ID, version code/name, launcher label, authorities, and Firebase resource presence.
5. Add runtime install/launch/login/backup/restore/archive tests; current CI success is not proof these flows work.
6. Compare the reconstructed native implementation against known expected behavior, not only exported symbol names.
7. Preserve a clean distinction between checked-in source and build-time transformations. Any migration of generated values into source must be reviewed for secret exposure and compatibility first.

## Guardrails

No changes to `reference/` or `BareApp.kt` are authorized by this audit. Do not run broad package replacement across third-party namespaces, resource IDs, JNI exports, or persisted backup formats without a specific mapping and tests.
