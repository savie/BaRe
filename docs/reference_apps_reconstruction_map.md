# Peta Rekonstruksi Apps2 — Referensi Apps

## Status

Status: BASELINE / ARCHITECTURE FROZEN

Dokumen ini diturunkan dari audit Reference Apps sampai Checkpoint 8.

Batas:
- Reference runtime belum diverifikasi.
- Apps2 belum diimplementasikan.
- Nama class/package Apps2 di bawah adalah proposal mapping, bukan bukti implementasi.
- Legacy Apps bukan dependency default.
- Shared hanya untuk foundation/global infrastructure yang benar-benar terbukti cocok.

## Boundary Produk

BaRe Home → Apps entry → Apps2 Shell → Swift Apps surfaces.

Apps2 harus mempunyai visual identity Reference-like yang konsisten agar berbeda jelas dari Legacy BaRe UI.

## Peta Layer

### Shell / Navigation

| Reference | Apps2 proposal |
|---|---|
| AppListActivity | apps2.ui.list.Apps2ListActivity |
| app_list_activity.xml | apps2/ui/list/apps2_list_activity.xml |
| appbar_with_filters.xml | apps2/ui/list/apps2_appbar_with_filters.xml |
| toolbar_mini.xml | apps2/ui/common/apps2_toolbar_mini.xml |
| menu_apps.xml | apps2/ui/list/apps2_menu_apps.xml |

### App List Presentation

| Reference | Apps2 proposal |
|---|---|
| ws | Apps2AppListAdapter |
| tr | Apps2AppListItemPresenter/ViewHolder |
| AppListItemLayout | Apps2AppListItemLayout |
| AppItemContentLayout | Apps2AppItemContentLayout |
| AppRowLabelsView | Apps2AppRowLabelsView |
| AppSwipeActionRevealLayout | Apps2AppSwipeActionRevealLayout |

### List State / Repository

| Reference | Apps2 proposal |
|---|---|
| dv | Apps2RepositoryState |
| tt | Apps2AppListStateController |
| kz4 | Apps2LocalAppsRepository |
| ua1 | Apps2CloudAppsRepository |
| g00 local inventory boundary | Apps2AppDiscovery |
| ji | Apps2App |
| qx | Apps2AppSize |
| gm | Apps2LocalBackupRecord |
| AppCloudBackup | Apps2CloudBackup |
| AppCloudBackups | Apps2CloudBackups |
| LocalMetadata | Apps2LocalMetadata |
| CloudMetadata | Apps2CloudMetadata |

### Search / Filter / Sort

| Reference | Apps2 proposal |
|---|---|
| ns0 | Apps2AppSearch |
| sc3 | Apps2FilterStateScreen |
| qq | Apps2AppFilterEngine |
| nd3 | Apps2FilterOption |
| od3 | Apps2PersistedFilter |
| ud3 | Apps2SelectedLabelsState |
| xd3 | Apps2TemporarySelectedLabels |
| iy | Apps2SortState |
| sx | Apps2SortMode |

### App Item Actions

| Reference | Apps2 proposal |
|---|---|
| oy | Apps2AppItemAction |
| Launch | Apps2LaunchAction |
| EnableDisable | Apps2EnableDisableAction |
| Uninstall | Apps2UninstallAction |
| ForceStop | Apps2ForceStopAction |
| PlayStore | Apps2PlayStoreAction |
| ClearData | Apps2ClearDataAction |
| AppInfo | Apps2AppInfoAction |
| ShareApk | Apps2ShareApkAction |

Action availability tetap dipisahkan dari side effect execution.

### Selection / Batch

| Reference | Apps2 proposal |
|---|---|
| gm7 | Apps2SelectionState |
| AppsBatchActivity | Apps2BatchActivity |
| l20 | Apps2BatchAdapter |
| r20 | Apps2BatchState |

Selection tidak menjadi state global Legacy Apps.

### Detail

| Reference | Apps2 proposal |
|---|---|
| DetailActivity | apps2.ui.detail.Apps2DetailActivity |
| AppInfoActivity | apps2.ui.info.Apps2AppInfoActivity |
| detail_activity.xml | apps2/ui/detail/apps2_detail_activity.xml |
| detail_card_app_backup.xml | apps2/ui/detail/apps2_detail_card_app_backup.xml |
| detail_card_app_info.xml | apps2/ui/detail/apps2_detail_card_app_info.xml |
| detail_card_app_storage.xml | apps2/ui/detail/apps2_detail_card_app_storage.xml |

### Backup / Restore Request

| Reference | Apps2 proposal |
|---|---|
| iu | Apps2AppPart |
| sk0 | Apps2BackupRequirement |
| hz | Apps2BackupRequest |
| jz | Apps2RestoreRequest |
| c40 | Apps2AppsTask |
| vl | Apps2PerAppBackupManager |
| xw | Apps2PerAppRestoreManager |
| mq | Apps2CloudArtifactDownloadManager |

### Archive / Artifact

Boundary Apps2:

AppPart → Source / Artifact descriptor → Archive → Compression / Encryption boundary → Artifact → Metadata.

Reference archive format dan encryption implementation tidak otomatis dipindahkan.

### Restore

Restore Request → Resolve Capability → Validate Target → Resolve APK / Artifact → Install / Validate APK → Restore DATA / DE-DATA → Restore EXTDATA → Restore EXPANSION → Restore MEDIA → Restore permissions / special data / SSAID → Post-restore state update → Task Result.

Invariant:

Artifact available ≠ APK installed ≠ Data restored ≠ App restore task successful.

### Capability

| Part | Requirement |
|---|---|
| APP | NONE |
| DATA | ROOT |
| EXTDATA | ROOT_OR_SHIZUKU pada kondisi capability Reference |
| EXPANSION | ROOT_OR_SHIZUKU pada kondisi capability Reference |
| MEDIA | NONE |

Apps2 harus memodelkan capability sebagai domain contract, bukan hard-coded pada UI.

### EXPANSION

EXPANSION harus menjadi first-class Apps2 capability: list/filter model, size model, backup source, artifact metadata, cloud artifact, restore target, restore extraction, OBB/expansion finalization, dan failure state.

### Task Boundary

Apps2 UI → Request → Apps2 Task → precondition / capability / progress / cancellation / per-app operation / metadata-state update / result-error.

UI tidak boleh menjadi execution engine.

### Resource Boundary

Default Apps2 resource namespace menggunakan prefix apps2_ atau struktur directory/resource yang terisolasi. Reference resource names dapat dipertahankan bila tidak collision dan tidak menciptakan dependency Legacy.

### Shared Boundary

Boleh shared: Android/Material foundation, truly global BaRe theme/design tokens, generic logging, generic task framework bila benar-benar framework-level, dan global capability/root abstraction bila contract-nya generic.

Tidak boleh otomatis shared: Legacy Apps repository, model, filter state, backup inventory, organization/labels, backup/restore behavior, dan UI state.

## Implementation Order

1. Apps2 shell + identity.
2. Apps2 app model + discovery contract.
3. Apps2 repository state.
4. Apps2 list + item.
5. Search / filter / sort.
6. Selection / item actions.
7. Batch.
8. Detail.
9. Backup request/task boundary.
10. Backup per-app/archive.
11. Restore request/task boundary.
12. Restore per-app/install/data/external/expansion/media.
13. Labels/config/quick actions.
14. Integration Home → Apps.
15. Runtime verification dan regression.

## Open Items Sebelum Coding

- validasi nama class/package final terhadap actual BaRe namespace;
- cek dependency global yang benar-benar reusable;
- tentukan UI technology yang paling sesuai dengan Reference shell existing BaRe;
- map exact Reference resources → Apps2 resources;
- map complete mv installer request;
- map decompiled gaps pada archive format 2/4/5/6;
- map complete permission precondition request;
- runtime verification Reference bila feasible.

## Architecture Freeze

### Namespace / module boundary

Apps2 berada di bawah `com.bare.feature.apps2` dengan subpackage berdasarkan boundary:

- domain
- data
- state
- ui/shell
- ui/list
- ui/detail
- ui/batch
- task
- capability

Resource Apps2 memakai prefix `apps2_` untuk resource yang perlu global lookup.

### Existing BaRe collision audit

Pada branch `v1.0/rebaseline`:

- belum ada directory `app/src/main/java/com/bare/feature/apps2`;
- Legacy Apps berada di `com.bare.feature.apps`;
- Legacy Apps mempunyai implementasi presentational utama di `AppsScreens.kt`;
- Legacy Apps mempunyai `AppsFilter.kt`;
- Legacy Apps mempunyai `InstalledAppRepository`, `AppFilterStateStore`, `AppOrganizationStore`, `AppBackupEngine`, `AppRestoreBehavior`, dan collaborator Apps-specific lain;
- AndroidManifest saat ini hanya mendaftarkan `MainActivity`; Apps2 belum mempunyai Activity sendiri;
- `Screen` enum Legacy mempunyai banyak Apps-related screen state, tetapi state tersebut bukan contract Apps2.

Kesimpulan collision:

**Apps2 tidak menambah class ke package `com.bare.feature.apps` dan tidak memperluas Legacy `Screen` sebagai Apps2 domain contract.**

Apps2 navigation/state mempunyai boundary sendiri. Integrasi Home dilakukan melalui adapter/entry boundary minimal setelah Apps2 runtime siap.

### UI technology

BaRe saat ini menggunakan Jetpack Compose + Material 3 sebagai presentation foundation.

Architecture baseline Apps2:

- gunakan Compose untuk implementation UI;
- pertahankan decomposition Reference sebagai class/file/resource-equivalent boundaries;
- jangan membuat satu `AppsScreens.kt` monolith untuk Apps2;
- visual geometry, hierarchy, actions, list item, drawer/filter behavior, dan state transitions mengikuti Reference evidence;
- reusable BaRe Material/foundation hanya dipakai pada generic UI foundation;
- Apps2 visual identity/header tetap khusus Apps2;
- Legacy Apps composables bukan Apps2 presentation dependency.

Reference XML diperlakukan sebagai blueprint geometry/component behavior, bukan kewajiban mempertahankan teknologi View/XML yang sama.

### Navigation integration

Integration boundary: BaRe Home → Apps entry adapter → Apps2 Shell.

Home cutover final ditunda sampai Apps2 shell + first vertical slice build/runtime verified.

### First vertical slice

Slice pertama:

Apps2 Shell → Local App Discovery → Canonical Apps2App → Repository State → List rendering → Search → Filter → Sort → App item selection/actions.

Backup/restore execution tidak dipalsukan di slice pertama. Action yang dependency-nya belum implemented harus unavailable/blocked secara eksplisit, bukan fake success.

### Architecture freeze boundaries

Frozen:

- Apps2 isolation;
- Reference-derived decomposition;
- Legacy Apps bukan middleman;
- Compose presentation implementation;
- Apps2-specific state/navigation;
- explicit capability domain;
- explicit task boundary;
- EXPANSION first-class;
- Reference encryption tidak otomatis reused;
- UI + behavior implemented as vertical slices.

Not frozen:

- exact final class names where actual BaRe naming review is still useful;
- exact cloud provider implementation;
- archive implementation details hidden by decompilation gaps;
- runtime parity details;
- Home cutover mechanics after verification.

## Engineering Status

- Audit static: SUBSTANTIAL / CHECKPOINT COMPLETE FOR ARCHITECTURE BASELINE.
- Reconstruction map: BASELINE.
- Architecture freeze: FROZEN WITH OPEN IMPLEMENTATION DETAILS.
- Apps2 implementation: BELUM DIMULAI.
- Home cutover: BELUM.
- Legacy Apps changes: TIDAK ADA.
