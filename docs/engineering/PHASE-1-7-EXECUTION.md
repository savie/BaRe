# BΛR☰ — Phase 1–7 Execution Record

Baseline commit: `2fe2d34247e5f7896d2e46d19ab40fd6015bdb24` (`rewrite`, preserved as parent).
Reference: SwiftBackup 5.1.0 (620), package `org.swiftapps.swiftbackup`.
Target identity: `com.bareapps.barebackup`.
Entry point: `com.bareapps.barebackup.BareApp`.

## Phase 1 — Static discovery

- Decompiled source archive extracted and scanned locally: 12,611 source files total.
- 71 Activity source files found under the reference application package.
- 63 Java source files matched a static search for `premium`, `isPremium`, or the known premium-gate text.
- Confirmed static gate text in `AppsBatchActivity`, `AppsConfigRunActivity`, and `FoldersBatchActivity`.
- Confirmed strategy-level premium checks in `FolderBackupStrategy`, `MultipleBackupStrategy`, and callers including `bo3`, `rj3`, `hl0`.
- Provider strings identify S3-compatible, WebDAV/NAS, SMB, SFTP, FTP, Dropbox, Google Drive, OneDrive, Box, pCloud, MEGA, Filen, TeraBox, and Yandex-related surfaces. Strings alone do not prove provider operations work.
- Sample archive contains `com.bare.app`, `com.bare.dat`, and `com.bare.xml`; schema/restore compatibility is not established.

## Phase 2 — Premium gate audit

- Confirmed batch app, app-config execution, and batch folder gate call sites by source text.
- Confirmed premium strategy flags and strategy-dependent UI/selection call sites.
- The 63-file textual scan is a candidate inventory, not proof every indirect/server-side gate has been exhaustively traced.
- Product decision: BΛR☰ does not implement purchase/paywall entitlement for supported BΛR☰ features. Android privilege restrictions remain separate.

## Phase 3 — Reference runtime validation

**Blocked / not run in this environment.** No reference device, authorized test account, or runtime session was available. Do not infer runtime parity from decompiled code or resource strings.

## Phase 4 — Requirements and architecture

- Preserve the existing `com/bareapps/barebackup/` scaffold and its feature folders.
- Add the launcher as `BareApp`; no `MainActivity` entry point is introduced.
- Keep app identity independent from SwiftBackup.
- Use Storage Access Framework (SAF) for the initial complete local-folder workflow.
- Keep cloud/provider, SMS/call, cross-app private data, scheduling, and privileged operations as separate follow-up slices with explicit feasibility gates.

## Phase 5 — Vertical implementation

Implemented source slice:
- User selects a source folder and a backup destination through SAF.
- Backup creates a versioned manifest and payload tree with SHA-256 digests.
- A staging folder marks incomplete work; completion metadata is written only after payload creation.
- Verification checks manifest/payload integrity.
- Restore writes into a new destination tree rather than overwriting an existing tree.
- Path validation rejects traversal/absolute paths and malformed segments.
- Unit tests cover safe paths, traversal rejection, and SHA-256 known vector.

This slice is not full SwiftBackup feature parity.

## Phase 6 — Integration and parity verification

- Unit/build CI is configured in the repository workflow.
- Actual GitHub Actions result for this commit must be checked after push; this record does not claim it passed.
- Device-level backup/verify/restore acceptance remains unverified here.
- Feature-by-feature status is tracked in `FEATURE-TRACEABILITY.md`.

## Phase 7 — Release and evolution

- Application ID is independent: `com.bareapps.barebackup`.
- Release signing secrets are not committed.
- No release APK is claimed until CI produces and verifies an artifact from this exact commit.
- Remaining work includes reference runtime capture, full premium-gate call-graph audit, cloud adapters, schedules, app backups, messages/calls, multiple versions, labels/configurations, security review, and device restore tests.

## Evidence discipline

Implemented ≠ tested. Build passed ≠ runtime verified. Provider name present ≠ provider operational. Backup created ≠ restore verified. No full-parity claim is made.
