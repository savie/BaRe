# BΛR☰ Feature-to-Evidence / Acceptance Matrix

Status vocabulary: **STATIC-CONFIRMED** = symbol/resource/source exists; **INFERRED** = intended workflow inferred but not proven; **NOT-RUN** = runtime test not performed; **BLOCKED** = prerequisite unavailable; **PASS** must only be assigned with recorded test evidence.

| ID | Capability / workflow | Reference evidence available | BΛR☰ acceptance evidence required | Current status |
|---|---|---|---|---|
| DISC-01 | APK identity and SDK | Decoded manifest/APK metadata | Target application ID, min/target SDK decision and install test | Static reference confirmed; target decision open |
| DISC-02 | Navigation / Activities | 95 Activity declarations | Screen/navigation inventory tied to acceptance cases | Partial inventory only |
| PREM-01 | App batch | AppsBatchActivity early exit on non-premium | Batch action succeeds without entitlement; permission errors handled | Static-confirmed gate; target not implemented/tested |
| PREM-02 | Config execution | AppsConfigRunActivity early exit on non-premium | Config execution succeeds without entitlement; validation/errors tested | Static-confirmed gate; target not implemented/tested |
| PREM-03 | Folder batch | FoldersBatchActivity early exit on non-premium | Batch folder operation succeeds without entitlement | Static-confirmed gate; target not implemented/tested |
| PREM-04 | Incremental folder backup | FolderBackupStrategy Premium flag | Two versions produce correct incremental chain; restore verifies full content | Static flag; runtime not run |
| PREM-05 | Multiple backup versions | MultipleBackupStrategy Premium logic | Retention and restore work with no purchase/entitlement | Static logic; call tracing and runtime open |
| BACKUP-01 | Local folder backup | Folder UI/model symbols in reference | Atomic/staged write, manifest, checksum, cancellation and cleanup tests | Target blocked by missing build scaffold |
| RESTORE-01 | Restore validation | Backup/restore workflow symbols | Corrupt/unsupported archive rejected before target mutation; successful restore verified | Not run |
| MSG-01 | SMS backup/restore | Activities and manifest permissions | Role/permission preconditions and disposable-device restore test | Static evidence only; platform-sensitive |
| CALL-01 | Call log backup/restore | Activities and manifest permissions | Permission preconditions and exact record-count/content test | Static evidence only; platform-sensitive |
| CLOUD-01 | Cloud providers | Provider/source/resource references | Per-provider auth/list/upload/download/delete/retry/resume/cancel contract tests | Names/source are not runtime proof |
| SCHED-01 | Scheduled backups | Schedule Activity/service symbols | Reboot/process death/Doze/permission revocation tests | Static evidence only; runtime not run |
| LABEL-01 | Labels/configuration | Activity/resource references | Create/edit/apply/export/sync behavior tests | Partial static evidence |
| SECURITY-01 | Independent backend | Reference Firebase URL found in resources | No reference endpoint/credentials; own contract and security review | Target contract open |
| FORMAT-01 | Backup format | Sample archive has .app/.dat/.xml entries | Schema documented; checksum, path traversal, malformed and version tests | Archive semantics unverified |
| RELEASE-01 | Install/upgrade/release | No target build evidence | Reproducible build, signing identity, upgrade and regression tests | Blocked / not run |

## Required evidence fields for every passing row

- Test ID and versioned fixture.
- Commit SHA and implementation path.
- Device/API/OEM and granted permissions/privileges.
- Expected result and observed result.
- Logs with secrets/PII redacted.
- Test result, date, repeatability and known limitations.
