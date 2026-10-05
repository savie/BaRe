# Phase 2 — Reconstruction Evidence

| Field | Value |
|---|---|
| Phase | P2 — Reference Reconstruction |
| Reference | Swift Backup 5.1.0 / versionCode 620 |
| Current scope | **Only unclear/obfuscated Reference filenames** |
| Inventory | 68 unclear Reference files audited; generated `R.java` excluded from rename audit |
| Rule | Reference unclear filename → semantic inspection → BaRe target filename; no filename-equality assumption |
| State | IN PROGRESS — UNCLEAR FILE AUDIT |

## UNCLEAR REFERENCE FILE AUDIT

| # | Reference File | BaRe File / Target | Role | Status |
|---|---|---|---|---|
| 001 | `org/swiftapps/filesystem/a.java` | `org/swiftapps/filesystem/RandomAccessFileWriter.java` | Utility menulis byte ke FileChannel pada offset tertentu / random-access file writer | **MATCH** |
| 002 | `org/swiftapps/swiftbackup/apkshare/a.java` | **UNKNOWN** | APKS/archive utility: SHA-256, archive-entry validation, ZIP/APKS construction | **UNKNOWN** |
| 003 | `org/swiftapps/swiftbackup/appconfigs/data/a.java` | **UNKNOWN** | Parcelable.Creator untuk ConfigSettings.ApplyData | **UNKNOWN** |
| 004 | `org/swiftapps/swiftbackup/appconfigs/data/b.java` | **UNKNOWN** | Parcelable.Creator untuk ConfigSettings | **UNKNOWN** |
| 005 | `org/swiftapps/swiftbackup/appconfigs/edit/a.java` | **UNKNOWN** | Synthetic enum switch-map untuk ConfigEditActivity action | **UNKNOWN** |
| 006 | `org/swiftapps/swiftbackup/appconfigs/list/a.java` | **UNKNOWN** | Config list state/ViewModel; sorting/filtering ConfigsData | **UNKNOWN** |
| 007 | `org/swiftapps/swiftbackup/appconfigs/list/b.java` | **UNKNOWN** | Synthetic enum switch-map untuk field sorting ConfigList | **UNKNOWN** |
| 008 | `org/swiftapps/swiftbackup/apptasks/notifications/a.java` | **UNKNOWN** | Parser request notification policy: mode, userId, packageName, payload file | **UNKNOWN** |
| 009 | `org/swiftapps/swiftbackup/apptasks/notifications/b.java` | **UNKNOWN** | Notification policy request data model | **UNKNOWN** |
| 010 | `org/swiftapps/swiftbackup/apptasks/notifications/c.java` | **UNKNOWN** | Synthetic enum switch-map NotificationPolicyProxy mode | **UNKNOWN** |
| 011 | `org/swiftapps/swiftbackup/apptasks/sba/a.java` | **UNKNOWN** | SBA app-data archive metadata/request helper | **UNKNOWN** |
| 012 | `org/swiftapps/swiftbackup/cloud/orphans/a.java` | **UNKNOWN** | Cloud orphan cleaner state/ViewModel | **UNKNOWN** |
| 013 | `org/swiftapps/swiftbackup/cloud/orphans/b.java` | **UNKNOWN** | Cloud orphan item/data model | **UNKNOWN** |
| 014 | `org/swiftapps/swiftbackup/cloud/orphans/c.java` | **UNKNOWN** | Coroutine continuation untuk cloud orphan processing | **UNKNOWN** |
| 015 | `org/swiftapps/swiftbackup/cloud/protocols/a.java` | **UNKNOWN** | CloudCredentials export/import file helper | **UNKNOWN** |
| 016 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java` | **UNKNOWN** | Filen session/cloud operations implementation | **UNKNOWN** |
| 017 | `org/swiftapps/swiftbackup/common/V.java` | **UNKNOWN** | Singleton secure-preferences/crypto helper; key generation and secure state | **UNKNOWN** |
| 018 | `org/swiftapps/swiftbackup/common/a.java` | **UNKNOWN** | Gson URI adapter factory/configuration | **UNKNOWN** |
| 019 | `org/swiftapps/swiftbackup/contributor/a.java` | **UNKNOWN** | ContributorRegistration state/ViewModel | **UNKNOWN** |
| 020 | `org/swiftapps/swiftbackup/contributor/b.java` | **UNKNOWN** | Synthetic enum switch-map ContributorRegistration type | **UNKNOWN** |
| 021 | `org/swiftapps/swiftbackup/contributor/c.java` | **UNKNOWN** | Synthetic enum switch-map ContributorRegistration type | **UNKNOWN** |
| 022 | `org/swiftapps/swiftbackup/folders/data/a.java` | **UNKNOWN** | FolderItem → folder metadata/helper conversion | **UNKNOWN** |
| 023 | `org/swiftapps/swiftbackup/folders/data/b.java` | **UNKNOWN** | Empty generated/reference class; semantic role not independently proven | **UNKNOWN** |
| 024 | `org/swiftapps/swiftbackup/folders/data/c.java` | **UNKNOWN** | Empty generated/reference class; semantic role not independently proven | **UNKNOWN** |
| 025 | `org/swiftapps/swiftbackup/home/schedule/a.java` | **UNKNOWN** | ScheduleService run-mode/helper operations | **UNKNOWN** |
| 026 | `org/swiftapps/swiftbackup/home/schedule/b.java` | **UNKNOWN** | Parcelable.Creator untuk ScheduleService.RunMode.MultipleSchedules | **UNKNOWN** |
| 027 | `org/swiftapps/swiftbackup/home/schedule/c.java` | **UNKNOWN** | Parcelable.Creator untuk ScheduleService.RunMode.Schedules | **UNKNOWN** |
| 028 | `org/swiftapps/swiftbackup/home/schedule/d.java` | **UNKNOWN** | Parcelable.Creator untuk ScheduleService.RunMode.SingleSchedule | **UNKNOWN** |
| 029 | `org/swiftapps/swiftbackup/home/schedule/data/a.java` | **UNKNOWN** | ScheduleItem → sync/request model factory helpers | **UNKNOWN** |
| 030 | `org/swiftapps/swiftbackup/home/schedule/data/b.java` | **UNKNOWN** | Schedule item UI/state data model | **UNKNOWN** |
| 031 | `org/swiftapps/swiftbackup/home/schedule/data/c.java` | **UNKNOWN** | Synthetic enum switch-map ScheduleData condition | **UNKNOWN** |
| 032 | `org/swiftapps/swiftbackup/home/schedule/data/d.java` | **UNKNOWN** | ScheduleData copy/normalization helper | **UNKNOWN** |
| 033 | `org/swiftapps/swiftbackup/home/schedule/data/e.java` | **UNKNOWN** | Parcelable.Creator untuk ScheduleItem.AppConfig | **UNKNOWN** |
| 034 | `org/swiftapps/swiftbackup/home/schedule/data/f.java` | **UNKNOWN** | Parcelable.Creator untuk ScheduleItem.AppsLabels | **UNKNOWN** |
| 035 | `org/swiftapps/swiftbackup/home/schedule/data/g.java` | **UNKNOWN** | Synthetic enum switch-map ScheduleItem.AppsQuickActions type | **UNKNOWN** |
| 036 | `org/swiftapps/swiftbackup/home/schedule/data/h.java` | **UNKNOWN** | Parcelable.Creator untuk ScheduleItem.AppsQuickActions | **UNKNOWN** |
| 037 | `org/swiftapps/swiftbackup/home/schedule/data/i.java` | **UNKNOWN** | Parcelable.Creator untuk ScheduleItem.CallLogs | **UNKNOWN** |
| 038 | `org/swiftapps/swiftbackup/home/schedule/data/j.java` | **UNKNOWN** | Schedule-item collection/helper operations | **UNKNOWN** |
| 039 | `org/swiftapps/swiftbackup/home/schedule/data/k.java` | **UNKNOWN** | Parcelable.Creator untuk ScheduleItem.Folders | **UNKNOWN** |
| 040 | `org/swiftapps/swiftbackup/home/schedule/data/l.java` | **UNKNOWN** | Parcelable.Creator untuk ScheduleItem.Messages | **UNKNOWN** |
| 041 | `org/swiftapps/swiftbackup/home/schedule/data/m.java` | **UNKNOWN** | Parcelable.Creator untuk ScheduleItem.Wallpapers | **UNKNOWN** |
| 042 | `org/swiftapps/swiftbackup/home/schedule/data/n.java` | **UNKNOWN** | Parcelable.Creator untuk ScheduleItem.Wifi | **UNKNOWN** |
| 043 | `org/swiftapps/swiftbackup/home/schedule/data/o.java` | **UNKNOWN** | ScheduleLastRunDetails persistence/serialization helper | **UNKNOWN** |
| 044 | `org/swiftapps/swiftbackup/intro/a.java` | **UNKNOWN** | Synthetic enum switch-map Intro state/card type | **UNKNOWN** |
| 045 | `org/swiftapps/swiftbackup/intro/b.java` | **UNKNOWN** | IntroActivity sign-in state callback/lambda | **UNKNOWN** |
| 046 | `org/swiftapps/swiftbackup/intro/c.java` | **UNKNOWN** | IntroActivity state callback/lambda | **UNKNOWN** |
| 047 | `org/swiftapps/swiftbackup/intro/d.java` | **UNKNOWN** | Intro flow state/ViewModel/coordination class | **UNKNOWN** |
| 048 | `org/swiftapps/swiftbackup/intro/e.java` | **UNKNOWN** | Coroutine continuation for first-run cloud settings restore | **UNKNOWN** |
| 049 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/a.java` | **UNKNOWN** | Synthetic enum switch-map Calls backup/restore state | **UNKNOWN** |
| 050 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/b.java` | **UNKNOWN** | Calls backup/restore state/ViewModel | **UNKNOWN** |
| 051 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/c.java` | **UNKNOWN** | Coroutine continuation for calls backup/restore | **UNKNOWN** |
| 052 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/d.java` | **UNKNOWN** | Coroutine continuation for calls backup/restore | **UNKNOWN** |
| 053 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/e.java` | **UNKNOWN** | Synthetic enum switch-map Messages backup/restore state | **UNKNOWN** |
| 054 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/f.java` | **UNKNOWN** | Messages backup/restore state/ViewModel | **UNKNOWN** |
| 055 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/g.java` | **UNKNOWN** | Coroutine continuation for messages backup/restore | **UNKNOWN** |
| 056 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/h.java` | **UNKNOWN** | Coroutine continuation for messages backup/restore | **UNKNOWN** |
| 057 | `org/swiftapps/swiftbackup/settings/a.java` | **UNKNOWN** | Settings preference/UI controller class | **UNKNOWN** |
| 058 | `org/swiftapps/swiftbackup/settings/b.java` | **UNKNOWN** | MultipleBackupStrategy default/legacy strategy helper | **UNKNOWN** |
| 059 | `org/swiftapps/swiftbackup/settings/c.java` | **UNKNOWN** | Empty generated/reference class; semantic role not independently proven | **UNKNOWN** |
| 060 | `org/swiftapps/swiftbackup/settings/d.java` | **UNKNOWN** | Empty generated/reference class; semantic role not independently proven | **UNKNOWN** |
| 061 | `org/swiftapps/swiftbackup/settings/e.java` | **UNKNOWN** | Synthetic enum switch-map MultipleBackupStrategy.Type | **UNKNOWN** |
| 062 | `org/swiftapps/swiftbackup/settings/f.java` | **UNKNOWN** | MultipleBackupStrategy representation conversion helper | **UNKNOWN** |
| 063 | `org/swiftapps/swiftbackup/settings/g.java` | **UNKNOWN** | Synthetic enum switch-map MultipleBackupStrategy.NewBackupCondition | **UNKNOWN** |
| 064 | `org/swiftapps/swiftbackup/settings/h.java` | **UNKNOWN** | MultipleBackupStrategy settings UI helper/controller | **UNKNOWN** |
| 065 | `org/swiftapps/swiftbackup/settings/i.java` | **UNKNOWN** | MultipleBackupStrategy settings state model | **UNKNOWN** |
| 066 | `org/swiftapps/swiftbackup/settings/j.java` | **UNKNOWN** | Synthetic enum switch-map MultipleBackupStrategy.Type | **UNKNOWN** |
| 067 | `org/swiftapps/swiftbackup/settings/k.java` | **UNKNOWN** | MultipleBackupStrategy settings ViewModel/state holder | **UNKNOWN** |
| 068 | `org/swiftapps/swiftbackup/views/a.java` | **UNKNOWN** | Synthetic enum switch-map SwiftSegmentedCardGroup position | **UNKNOWN** |

### DISCOVERED DURING APKSHARE/A.JAVA RECONSTRUCTION

These Reference files were encountered directly from the import/dependency graph of `org/swiftapps/swiftbackup/apkshare/a.java`. They extend the existing FILES inventory; no target names are invented.

| 069 | `defpackage/ai.java` | **UNKNOWN** | Direct dependency used by SHA-256 digest formatting path; semantic target not yet reconstructed | **UNKNOWN** |
| 070 | `defpackage/c6.java` | **UNKNOWN** | Direct dependency used for archive validation/error reporting | **UNKNOWN** |
| 071 | `defpackage/cy0.java` | **UNKNOWN** | Direct dependency used for buffered InputStream → OutputStream copy | **UNKNOWN** |
| 072 | `defpackage/f51.java` | **UNKNOWN** | Direct dependency providing Charset used for archive metadata bytes | **UNKNOWN** |
| 073 | `defpackage/f6.java` | **UNKNOWN** | Direct dependency used for archive validation/error reporting | **UNKNOWN** |
| 074 | `defpackage/gv7.java` | **UNKNOWN** | Direct dependency referenced around Gson serialization state | **UNKNOWN** |
| 075 | `defpackage/hl1.java` | **UNKNOWN** | Direct dependency used for collection capacity calculation | **UNKNOWN** |
| 076 | `defpackage/nq7.java` | **UNKNOWN** | Direct dependency used for string/entry-name validation | **UNKNOWN** |
| 077 | `defpackage/q63.java` | **UNKNOWN** | Filesystem abstraction used for archive output/input, existence and size; counterpart absent from current BaRe source | **UNKNOWN** |
| 078 | `defpackage/rs9.java` | **UNKNOWN** | Direct dependency used for closeable exception-safe cleanup | **UNKNOWN** |
| 079 | `defpackage/uh.java` | **UNKNOWN** | Enum defining APK share file role: BASE / SPLIT | **UNKNOWN** |
| 080 | `defpackage/vh.java` | **UNKNOWN** | Reference model identified as `ApkShareFile(sourceFile, archiveName, role)`; BaRe target not mapped | **UNKNOWN** |
| 081 | `defpackage/w14.java` | **UNKNOWN** | Direct dependency used for Gson serialization | **UNKNOWN** |
| 082 | `defpackage/x50.java` | **UNKNOWN** | Direct dependency used for digest/string formatting | **UNKNOWN** |
| 083 | `defpackage/xs1.java` | **UNKNOWN** | Direct dependency used for q63-related error message formatting | **UNKNOWN** |

## GATE

| Requirement | State |
|---|---|
| Scope limited to unclear Reference filenames | PASS |
| Clear/named Reference files excluded | PASS |
| Semantic inspection used instead of filename equality | PASS |
| Unsupported target names invented | NO |
| Confirmed semantic rename already present | `org/swiftapps/filesystem/a.java` → `org/swiftapps/filesystem/RandomAccessFileWriter.java` = MATCH |
| Remaining UNKNOWN mappings | 82 (including 15 newly discovered direct dependencies) |
| Build/runtime verification | NOT STARTED — OUT OF CURRENT SCOPE |

---

## CLASS / TYPE — OBFUSCATED REFERENCE

Class/type inventory is tracked separately from the FILES table. The Reference name is retained exactly; the BaRe column records the current repository condition. No target name is invented before semantic inspection.

| # | Reference | BaRe aktual | Kondisi sekarang | Status |
|---|---|---|---|---|
| 001 | `org/swiftapps/filesystem/a.java::class a` | `org/swiftapps/filesystem/RandomAccessFileWriter.java` | Class already semantically renamed; method still needs separate verification | MATCH |
| 002 | `org/swiftapps/swiftbackup/apkshare/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 003 | `org/swiftapps/swiftbackup/appconfigs/data/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 004 | `org/swiftapps/swiftbackup/appconfigs/data/b.java::class b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 005 | `org/swiftapps/swiftbackup/appconfigs/edit/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 006 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::class a,b` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 007 | `org/swiftapps/swiftbackup/appconfigs/list/b.java::class b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 008 | `org/swiftapps/swiftbackup/apptasks/notifications/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 009 | `org/swiftapps/swiftbackup/apptasks/notifications/b.java::class b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 010 | `org/swiftapps/swiftbackup/apptasks/notifications/c.java::class c` | `same path c.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 011 | `org/swiftapps/swiftbackup/apptasks/sba/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 012 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 013 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::class b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 014 | `org/swiftapps/swiftbackup/cloud/orphans/c.java::class c` | `same path c.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 015 | `org/swiftapps/swiftbackup/cloud/protocols/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 016 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::class c` | `same path c.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 017 | `org/swiftapps/swiftbackup/common/V.java::class V` | `same path V.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 018 | `org/swiftapps/swiftbackup/common/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 019 | `org/swiftapps/swiftbackup/contributor/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 020 | `org/swiftapps/swiftbackup/contributor/b.java::class b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 021 | `org/swiftapps/swiftbackup/contributor/c.java::class c` | `same path c.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 022 | `org/swiftapps/swiftbackup/folders/data/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 023 | `org/swiftapps/swiftbackup/folders/data/b.java::class b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 024 | `org/swiftapps/swiftbackup/folders/data/c.java::class c` | `same path c.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 025 | `org/swiftapps/swiftbackup/home/schedule/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 026 | `org/swiftapps/swiftbackup/home/schedule/b.java::class b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 027 | `org/swiftapps/swiftbackup/home/schedule/c.java::class c` | `same path c.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 028 | `org/swiftapps/swiftbackup/home/schedule/d.java::class d` | `same path d.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 029 | `org/swiftapps/swiftbackup/home/schedule/data/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 030 | `org/swiftapps/swiftbackup/home/schedule/data/b.java::class b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 031 | `org/swiftapps/swiftbackup/home/schedule/data/c.java::class c` | `same path c.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 032 | `org/swiftapps/swiftbackup/home/schedule/data/d.java::class d` | `same path d.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 033 | `org/swiftapps/swiftbackup/home/schedule/data/e.java::class e` | `same path e.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 034 | `org/swiftapps/swiftbackup/home/schedule/data/f.java::class f` | `same path f.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 035 | `org/swiftapps/swiftbackup/home/schedule/data/g.java::class g` | `same path g.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 036 | `org/swiftapps/swiftbackup/home/schedule/data/h.java::class h` | `same path h.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 037 | `org/swiftapps/swiftbackup/home/schedule/data/i.java::class i` | `same path i.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 038 | `org/swiftapps/swiftbackup/home/schedule/data/j.java::class j` | `same path j.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 039 | `org/swiftapps/swiftbackup/home/schedule/data/k.java::class k` | `same path k.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 040 | `org/swiftapps/swiftbackup/home/schedule/data/l.java::class l` | `same path l.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 041 | `org/swiftapps/swiftbackup/home/schedule/data/m.java::class m` | `same path m.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 042 | `org/swiftapps/swiftbackup/home/schedule/data/n.java::class n` | `same path n.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 043 | `org/swiftapps/swiftbackup/home/schedule/data/o.java::class o` | `same path o.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 044 | `org/swiftapps/swiftbackup/intro/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 045 | `org/swiftapps/swiftbackup/intro/b.java::class b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 046 | `org/swiftapps/swiftbackup/intro/c.java::class c` | `same path c.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 047 | `org/swiftapps/swiftbackup/intro/d.java::class a,b,d` | `same path d.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 048 | `org/swiftapps/swiftbackup/intro/e.java::class e` | `same path e.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 049 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 050 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/b.java::class a,b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 051 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/c.java::class c` | `same path c.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 052 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/d.java::class d` | `same path d.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 053 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/e.java::class e` | `same path e.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 054 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/f.java::class a,f` | `same path f.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 055 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/g.java::class g` | `same path g.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 056 | `org/swiftapps/swiftbackup/messagescalls/backuprestore/h.java::class h` | `same path h.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 057 | `org/swiftapps/swiftbackup/settings/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 058 | `org/swiftapps/swiftbackup/settings/b.java::class b` | `same path b.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 059 | `org/swiftapps/swiftbackup/settings/c.java::class c` | `same path c.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 060 | `org/swiftapps/swiftbackup/settings/d.java::class d` | `same path d.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 061 | `org/swiftapps/swiftbackup/settings/e.java::class e` | `same path e.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 062 | `org/swiftapps/swiftbackup/settings/f.java::class f` | `same path f.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 063 | `org/swiftapps/swiftbackup/settings/g.java::class g` | `same path g.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 064 | `org/swiftapps/swiftbackup/settings/h.java::class h` | `same path h.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 065 | `org/swiftapps/swiftbackup/settings/i.java::class i` | `same path i.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 066 | `org/swiftapps/swiftbackup/settings/j.java::class j` | `same path j.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 067 | `org/swiftapps/swiftbackup/settings/k.java::class k` | `same path k.java` | Class has not been semantically reconstructed yet | UNKNOWN |
| 068 | `org/swiftapps/swiftbackup/views/a.java::class a` | `same path a.java` | Class has not been semantically reconstructed yet | UNKNOWN |

| 069 | `defpackage/ai.java::class ai` | `same path ai.java` | Synthetic `mt3` implementation; selector-driven utility callback | UNKNOWN |
| 070 | `defpackage/c6.java::class c6` | `same path c6.java` | Synthetic multi-interface validation/error helper; `f(String)` and `g(...)` throw `IllegalArgumentException` | UNKNOWN |
| 071 | `defpackage/cy0.java::class cy0` | `same path cy0.java` | Abstract stream-copy helper implementing buffered InputStream → OutputStream transfer | UNKNOWN |
| 072 | `defpackage/f51.java::class f51` | `same path f51.java` | Abstract holder with UTF-8 Charset field used by archive metadata path | UNKNOWN |
| 073 | `defpackage/f6.java::class f6` | `same path f6.java` | Direct validation/error dependency encountered from apkshare/a.java | UNKNOWN |
| 074 | `defpackage/gv7.java::class gv7` | `same path gv7.java` | Gson-serialization dependency encountered from apkshare/a.java | UNKNOWN |
| 075 | `defpackage/hl1.java::class hl1` | `same path hl1.java` | Collection-capacity helper dependency encountered from apkshare/a.java | UNKNOWN |
| 076 | `defpackage/nq7.java::class nq7` | `same path nq7.java` | String/archive-entry validation dependency encountered from apkshare/a.java | UNKNOWN |
| 077 | `defpackage/q63.java::class q63` | `same path q63.java` | Filesystem abstraction used for archive input/output, existence, and size | UNKNOWN |
| 078 | `defpackage/rs9.java::class rs9` | `same path rs9.java` | Closeable exception-safe cleanup dependency | UNKNOWN |
| 079 | `defpackage/uh.java::enum uh` | `same path uh.java` | Enum defining APK share file role: BASE / SPLIT | UNKNOWN |
| 080 | `defpackage/vh.java::class vh` | `same path vh.java` | Model identity proven by `toString()` as `ApkShareFile(sourceFile, archiveName, role)` | UNKNOWN |
| 081 | `defpackage/w14.java::class w14` | `same path w14.java` | Gson serialization dependency encountered from apkshare/a.java | UNKNOWN |
| 082 | `defpackage/x50.java::class x50` | `same path x50.java` | Digest/string formatting dependency encountered from apkshare/a.java | UNKNOWN |
| 083 | `defpackage/xs1.java::class xs1` | `same path xs1.java` | q63-related error-message formatting dependency | UNKNOWN |
| 084 | `defpackage/mt3.java::interface mt3` | `same path mt3.java` | Functional callback interface exposing `invoke(Object)`; directly implemented by ai | UNKNOWN |
| 085 | `defpackage/be8.java::class be8` | `same path be8.java` | Singleton returned by ai selector 2/default; semantic filename remains unproven | UNKNOWN |
| 086 | `defpackage/tb1.java::class tb1` | `same path tb1.java` | Static/global cloud-state abstraction referenced by ai selector 2 | UNKNOWN |
| 087 | `defpackage/qb1.java::class qb1` | `same path qb1.java` | Static cloud helper; `t(String)` invoked by ai selector 2 | UNKNOWN |
| 088 | `defpackage/el1.java::class el1` | `same path el1.java` | String/collection formatting helper used by ai selector 3 | UNKNOWN |
| 089 | `defpackage/fl1.java::class fl1` | `same path fl1.java` | Varargs-to-list helper used by ai selector 3 | UNKNOWN |
| 090 | `defpackage/hc1.java::class hc1` | `same path hc1.java` | Synthetic `mt3` implementation instantiated by ai selector 3 | UNKNOWN |

## FUNCTION / METHOD — OBFUSCATED REFERENCE

| # | Reference | BaRe aktual | Kondisi sekarang | Status |
|---|---|---|---|---|
| 001 | `org/swiftapps/swiftbackup/apkshare/a.java::b(...)` | `org/swiftapps/swiftbackup/apkshare/a.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 002 | `org/swiftapps/swiftbackup/apkshare/a.java::c(...)` | `org/swiftapps/swiftbackup/apkshare/a.java::c(...)` | Not semantically reconstructed yet | UNKNOWN |
| 003 | `org/swiftapps/swiftbackup/apkshare/a.java::d(...)` | `org/swiftapps/swiftbackup/apkshare/a.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 004 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::j(...)` | `org/swiftapps/swiftbackup/appconfigs/list/a.java::j(...)` | Not semantically reconstructed yet | UNKNOWN |
| 005 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::k(...)` | `org/swiftapps/swiftbackup/appconfigs/list/a.java::k(...)` | Not semantically reconstructed yet | UNKNOWN |
| 006 | `org/swiftapps/swiftbackup/appconfigs/list/a.java::l(...)` | `org/swiftapps/swiftbackup/appconfigs/list/a.java::l(...)` | Not semantically reconstructed yet | UNKNOWN |
| 007 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::b(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 008 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::j(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::j(...)` | Not semantically reconstructed yet | UNKNOWN |
| 009 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::k(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::k(...)` | Not semantically reconstructed yet | UNKNOWN |
| 010 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::l(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::l(...)` | Not semantically reconstructed yet | UNKNOWN |
| 011 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::m(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::m(...)` | Not semantically reconstructed yet | UNKNOWN |
| 012 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::n(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::n(...)` | Not semantically reconstructed yet | UNKNOWN |
| 013 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::o(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::o(...)` | Not semantically reconstructed yet | UNKNOWN |
| 014 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::p(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::p(...)` | Not semantically reconstructed yet | UNKNOWN |
| 015 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::q(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::q(...)` | Not semantically reconstructed yet | UNKNOWN |
| 016 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::r(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::r(...)` | Not semantically reconstructed yet | UNKNOWN |
| 017 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::s(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::s(...)` | Not semantically reconstructed yet | UNKNOWN |
| 018 | `org/swiftapps/swiftbackup/cloud/orphans/a.java::t(...)` | `org/swiftapps/swiftbackup/cloud/orphans/a.java::t(...)` | Not semantically reconstructed yet | UNKNOWN |
| 019 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::a(...)` | `org/swiftapps/swiftbackup/cloud/orphans/b.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 020 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::c(...)` | `org/swiftapps/swiftbackup/cloud/orphans/b.java::c(...)` | Not semantically reconstructed yet | UNKNOWN |
| 021 | `org/swiftapps/swiftbackup/cloud/orphans/b.java::d(...)` | `org/swiftapps/swiftbackup/cloud/orphans/b.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 022 | `org/swiftapps/swiftbackup/cloud/protocols/a.java::b(...)` | `org/swiftapps/swiftbackup/cloud/protocols/a.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 023 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::a(...)` | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 024 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::b(...)` | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 025 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::d(...)` | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 026 | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::e(...)` | `org/swiftapps/swiftbackup/cloud/protocols/filen/c.java::e(...)` | Not semantically reconstructed yet | UNKNOWN |
| 027 | `org/swiftapps/swiftbackup/home/schedule/a.java::b(...)` | `org/swiftapps/swiftbackup/home/schedule/a.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 028 | `org/swiftapps/swiftbackup/home/schedule/data/a.java::b(...)` | `org/swiftapps/swiftbackup/home/schedule/data/a.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 029 | `org/swiftapps/swiftbackup/home/schedule/data/a.java::c(...)` | `org/swiftapps/swiftbackup/home/schedule/data/a.java::c(...)` | Not semantically reconstructed yet | UNKNOWN |
| 030 | `org/swiftapps/swiftbackup/home/schedule/data/a.java::d(...)` | `org/swiftapps/swiftbackup/home/schedule/data/a.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 031 | `org/swiftapps/swiftbackup/home/schedule/data/d.java::a(...)` | `org/swiftapps/swiftbackup/home/schedule/data/d.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 032 | `org/swiftapps/swiftbackup/home/schedule/data/j.java::a(...)` | `org/swiftapps/swiftbackup/home/schedule/data/j.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 033 | `org/swiftapps/swiftbackup/home/schedule/data/j.java::b(...)` | `org/swiftapps/swiftbackup/home/schedule/data/j.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 034 | `org/swiftapps/swiftbackup/home/schedule/data/o.java::a(...)` | `org/swiftapps/swiftbackup/home/schedule/data/o.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 035 | `org/swiftapps/swiftbackup/home/schedule/data/o.java::b(...)` | `org/swiftapps/swiftbackup/home/schedule/data/o.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 036 | `org/swiftapps/swiftbackup/home/schedule/data/o.java::c(...)` | `org/swiftapps/swiftbackup/home/schedule/data/o.java::c(...)` | Not semantically reconstructed yet | UNKNOWN |
| 037 | `org/swiftapps/swiftbackup/home/schedule/data/o.java::d(...)` | `org/swiftapps/swiftbackup/home/schedule/data/o.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 038 | `org/swiftapps/swiftbackup/intro/d.java::j(...)` | `org/swiftapps/swiftbackup/intro/d.java::j(...)` | Not semantically reconstructed yet | UNKNOWN |
| 039 | `org/swiftapps/swiftbackup/intro/d.java::k(...)` | `org/swiftapps/swiftbackup/intro/d.java::k(...)` | Not semantically reconstructed yet | UNKNOWN |
| 040 | `org/swiftapps/swiftbackup/intro/d.java::l(...)` | `org/swiftapps/swiftbackup/intro/d.java::l(...)` | Not semantically reconstructed yet | UNKNOWN |
| 041 | `org/swiftapps/swiftbackup/intro/d.java::m(...)` | `org/swiftapps/swiftbackup/intro/d.java::m(...)` | Not semantically reconstructed yet | UNKNOWN |
| 042 | `org/swiftapps/swiftbackup/intro/d.java::n(...)` | `org/swiftapps/swiftbackup/intro/d.java::n(...)` | Not semantically reconstructed yet | UNKNOWN |
| 043 | `org/swiftapps/swiftbackup/intro/d.java::o(...)` | `org/swiftapps/swiftbackup/intro/d.java::o(...)` | Not semantically reconstructed yet | UNKNOWN |
| 044 | `org/swiftapps/swiftbackup/intro/d.java::p(...)` | `org/swiftapps/swiftbackup/intro/d.java::p(...)` | Not semantically reconstructed yet | UNKNOWN |
| 045 | `org/swiftapps/swiftbackup/settings/a.java::d(...)` | `org/swiftapps/swiftbackup/settings/a.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 046 | `org/swiftapps/swiftbackup/settings/a.java::l(...)` | `org/swiftapps/swiftbackup/settings/a.java::l(...)` | Not semantically reconstructed yet | UNKNOWN |
| 047 | `org/swiftapps/swiftbackup/settings/a.java::q(...)` | `org/swiftapps/swiftbackup/settings/a.java::q(...)` | Not semantically reconstructed yet | UNKNOWN |
| 048 | `org/swiftapps/swiftbackup/settings/a.java::r(...)` | `org/swiftapps/swiftbackup/settings/a.java::r(...)` | Not semantically reconstructed yet | UNKNOWN |
| 049 | `org/swiftapps/swiftbackup/settings/a.java::s(...)` | `org/swiftapps/swiftbackup/settings/a.java::s(...)` | Not semantically reconstructed yet | UNKNOWN |
| 050 | `org/swiftapps/swiftbackup/settings/a.java::t(...)` | `org/swiftapps/swiftbackup/settings/a.java::t(...)` | Not semantically reconstructed yet | UNKNOWN |
| 051 | `org/swiftapps/swiftbackup/settings/a.java::u(...)` | `org/swiftapps/swiftbackup/settings/a.java::u(...)` | Not semantically reconstructed yet | UNKNOWN |
| 052 | `org/swiftapps/swiftbackup/settings/a.java::v(...)` | `org/swiftapps/swiftbackup/settings/a.java::v(...)` | Not semantically reconstructed yet | UNKNOWN |
| 053 | `org/swiftapps/swiftbackup/settings/b.java::a(...)` | `org/swiftapps/swiftbackup/settings/b.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 054 | `org/swiftapps/swiftbackup/settings/b.java::c(...)` | `org/swiftapps/swiftbackup/settings/b.java::c(...)` | Not semantically reconstructed yet | UNKNOWN |
| 055 | `org/swiftapps/swiftbackup/settings/b.java::d(...)` | `org/swiftapps/swiftbackup/settings/b.java::d(...)` | Not semantically reconstructed yet | UNKNOWN |
| 056 | `org/swiftapps/swiftbackup/settings/f.java::a(...)` | `org/swiftapps/swiftbackup/settings/f.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 057 | `org/swiftapps/swiftbackup/settings/f.java::b(...)` | `org/swiftapps/swiftbackup/settings/f.java::b(...)` | Not semantically reconstructed yet | UNKNOWN |
| 058 | `org/swiftapps/swiftbackup/settings/h.java::a(...)` | `org/swiftapps/swiftbackup/settings/h.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 059 | `org/swiftapps/swiftbackup/settings/i.java::a(...)` | `org/swiftapps/swiftbackup/settings/i.java::a(...)` | Not semantically reconstructed yet | UNKNOWN |
| 060 | `org/swiftapps/swiftbackup/settings/k.java::j(...)` | `org/swiftapps/swiftbackup/settings/k.java::j(...)` | Not semantically reconstructed yet | UNKNOWN |

| 061 | `defpackage/uh.java::values()` | **UNKNOWN** | Enum API observed in Reference; BaRe counterpart not proven | UNKNOWN |
| 062 | `defpackage/vh.java::vh(q63,String,uh)` | **UNKNOWN** | Constructor observed; establishes `sourceFile`, `archiveName`, and `role` members | UNKNOWN |
| 063 | `defpackage/vh.java::equals(Object)` | **UNKNOWN** | Method observed in Reference; BaRe counterpart not proven | UNKNOWN |
| 064 | `defpackage/vh.java::hashCode()` | **UNKNOWN** | Method observed in Reference; BaRe counterpart not proven | UNKNOWN |
| 065 | `defpackage/vh.java::toString()` | **UNKNOWN** | Explicitly emits `ApkShareFile(...)` identity | UNKNOWN |
| 066 | `defpackage/ai.java::ai(int)` | **UNKNOWN** | Stores selector used by `invoke` | UNKNOWN |
| 067 | `defpackage/ai.java::invoke(Object)` | **UNKNOWN** | Selector 0 formats Byte as two-digit hex; 1 maps File to q63; 2 calls qb1.t(String) and returns be8.a; 3 formats dotted IPv4; default sleeps on Long and returns be8.a | UNKNOWN |
| 068 | `defpackage/c6.java::f(String)` | **UNKNOWN** | Throws `IllegalArgumentException` with supplied message; direct archive-entry validation/error path | UNKNOWN |
| 069 | `defpackage/c6.java::g(String,Object,Object,Object,Object,Object)` | **UNKNOWN** | Throws `IllegalArgumentException` from concatenated arguments; direct validation/error helper | UNKNOWN |
| 070 | `defpackage/cy0.java::j(InputStream,OutputStream,int)` | **UNKNOWN** | Copies input using supplied buffer size and returns byte count; apkshare/a.java passes 262144 | UNKNOWN |

## FIELD / MEMBER — OBFUSCATED REFERENCE

| # | Reference | BaRe aktual | Kondisi sekarang | Status |
|---|---|---|---|---|
| 001 | `defpackage/vh.java::a` | **UNKNOWN** | Reference field type `q63`; constructor/toString establish semantic member `sourceFile` | UNKNOWN |
| 002 | `defpackage/vh.java::b` | **UNKNOWN** | Reference field type `String`; constructor/toString establish semantic member `archiveName` | UNKNOWN |
| 003 | `defpackage/vh.java::c` | **UNKNOWN** | Reference field type `uh`; constructor/toString establish semantic member `role` | UNKNOWN |
| 004 | `defpackage/ai.java::a` | **UNKNOWN** | Synthetic integer selector | UNKNOWN |
| 005 | `defpackage/c6.java::a` | **UNKNOWN** | Synthetic integer selector stored by constructor | UNKNOWN |
| 006 | `defpackage/f51.java::a` | **UNKNOWN** | Charset field initialized to UTF-8 and used by apkshare/a.java | UNKNOWN |

Field/member rows will be added only from actual Reference evidence. No fields are inferred from class or method names.

### SYMBOL-LEVEL GATE

| Requirement | State |
|---|---|
| Existing FILES table preserved | PASS |
| Class/type layer separated from file audit | PASS |
| Function/method layer separated from file audit | PASS |
| Field/member layer reserved without invented entries | PASS |
| Standalone defpackage/q63 row | NOT INCLUDED — no current BaRe condition |
| Semantic target names invented | NO |
| Symbol reconstruction performed by this ledger | NO |
| Current unverified symbol status | UNKNOWN |
