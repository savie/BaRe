# BΛR☰ Feature Traceability

Evidence levels: **Static-confirmed**, **Inferred**, **Runtime-unverified**, **Implemented**, **Blocked**.

| ID | Reference evidence | Target requirement | Premium | Target implementation | Acceptance / current state |
|---|---|---|---|---|---|
| APP-001 | 71 Activity source files in decompiled package | Independent app identity and navigable feature surface | N/A | `BareApp`, package `com.bareapps.barebackup` | Build/launcher CI pending |
| FOLDER-001 | `folders/ui/FolderPickerActivity`, `FolderDetailActivity`; source archive | Folder backup using user-granted URI | Incremental strategy statically marked premium | `folders/data/LocalBackupEngine` | Unit tests and CI; device acceptance pending |
| FOLDER-002 | Reference folder backup/restore classes | Verify integrity before restore; avoid overwrite | Strategy-dependent | `LocalBackupEngine`, `common/BackupPathPolicy` | Manifest/checksum/path tests; device restore pending |
| APP-BATCH-001 | `AppsBatchActivity.java`: `User not premium! Finishing.` | Batch app operations available without payment, subject to Android access | Confirmed gate | Not implemented | Open |
| CONFIG-001 | `AppsConfigRunActivity.java`: `User not premium! Finishing.` | Config execution available without payment | Confirmed gate | Existing `appconfigs/` scaffold retained | Open |
| FOLDER-BATCH-001 | `FoldersBatchActivity.java`: `User not premium! Finishing.` | Batch folder operations without payment | Confirmed gate | Existing `folders/ui/batch/` scaffold retained | Open |
| MULTI-VER-001 | `MultipleBackupStrategy.isPremium()` | Multiple versions without purchase entitlement | Confirmed strategy gate | Not implemented | Open |
| SCHEDULE-001 | `home/schedule/` source and Premium card evidence | Background scheduling with Android constraints | Premium card evidence | Existing `home/schedule/` scaffold retained | Runtime and implementation open |
| LABEL-001 | `LabelsActivity`, `LabelEditActivity` | Labels and filtering | Premium card evidence | Existing `appslist/ui/labels/` scaffold retained | Open |
| CLOUD-001 | Provider sign-in Activity source and resource strings | Independent provider adapters and token handling | Premium card evidence | Existing `cloud/` scaffold retained | Runtime unverified; no backend reuse |
| MSG-001 | `MessagesBackupRestoreActivity`, `CallsBackupRestoreActivity` | Message/call backup where OS roles and permissions allow | Platform-gated | Existing `messagescalls/` scaffold retained | Blocked pending device/role testing |
| APP-BACKUP-001 | App list/detail/task source | APK/app-data workflows bounded by Android/root/Shizuku | Mixed / audit incomplete | Existing `appslist/`, `apptasks/` scaffold retained | Open |
| BACKEND-001 | Reference Firebase URL in strings | Independent BΛR☰ data/backend contract | N/A | No reference endpoint reused | Design/integration open |
| RELEASE-001 | Repository workflow | Build, test, verify package, artifact provenance | N/A | `.github/workflows/BΛR☰-Rebuild-CI.yml` | Run result pending |

## Known constraints

- Static decompilation is not runtime proof.
- Android app sandboxing, default SMS role, permissions, root/Shizuku and OEM behavior are real boundaries.
- Backup archive sample format has not been validated for restore compatibility.
- The target has no full cloud backend/provider implementation yet.
