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

## GATE

| Requirement | State |
|---|---|
| Scope limited to unclear Reference filenames | PASS |
| Clear/named Reference files excluded | PASS |
| Semantic inspection used instead of filename equality | PASS |
| Unsupported target names invented | NO |
| Confirmed semantic rename already present | `org/swiftapps/filesystem/a.java` → `org/swiftapps/filesystem/RandomAccessFileWriter.java` = MATCH |
| Remaining UNKNOWN mappings | 67 |
| Build/runtime verification | NOT STARTED — OUT OF CURRENT SCOPE |

---

## SYMBOL-LEVEL OBFUSCATION INVENTORY

This table is supplemental to the file audit above. The existing file-level table is preserved unchanged. This register adds the symbol-level layer for the currently identified unclear/obfuscated Reference files.

Rule: short/obfuscated names are recorded as candidates only. No semantic target name is invented here. Until the symbol is inspected and mapped, the status remains UNKNOWN.

| # | Reference file | Obfuscated class / type candidates | Obfuscated method/function candidates | Current BaRe condition | Status |
|---|---|---|---|---|---|
| 001 | org/swiftapps/filesystem/a.java | a | - | org/swiftapps/filesystem/RandomAccessFileWriter.java | UNKNOWN |
| 002 | org/swiftapps/swiftbackup/apkshare/a.java | a | b,c,d | same path a.java | UNKNOWN |
| 003 | org/swiftapps/swiftbackup/appconfigs/data/a.java | a | - | same path a.java | UNKNOWN |
| 004 | org/swiftapps/swiftbackup/appconfigs/data/b.java | b | - | same path b.java | UNKNOWN |
| 005 | org/swiftapps/swiftbackup/appconfigs/edit/a.java | a | - | same path a.java | UNKNOWN |
| 006 | org/swiftapps/swiftbackup/appconfigs/list/a.java | a,b | j,k,l | same path a.java | UNKNOWN |
| 007 | org/swiftapps/swiftbackup/appconfigs/list/b.java | b | - | same path b.java | UNKNOWN |
| 008 | org/swiftapps/swiftbackup/apptasks/notifications/a.java | a | - | same path a.java | UNKNOWN |
| 009 | org/swiftapps/swiftbackup/apptasks/notifications/b.java | b | - | same path b.java | UNKNOWN |
| 010 | org/swiftapps/swiftbackup/apptasks/notifications/c.java | c | - | same path c.java | UNKNOWN |
| 011 | org/swiftapps/swiftbackup/apptasks/sba/a.java | a | - | same path a.java | UNKNOWN |
| 012 | org/swiftapps/swiftbackup/cloud/orphans/a.java | a | b,j,k,l,m,n,o,p,q,r,s,t | same path a.java | UNKNOWN |
| 013 | org/swiftapps/swiftbackup/cloud/orphans/b.java | b | a,c,d | same path b.java | UNKNOWN |
| 014 | org/swiftapps/swiftbackup/cloud/orphans/c.java | c | - | same path c.java | UNKNOWN |
| 015 | org/swiftapps/swiftbackup/cloud/protocols/a.java | a | b | same path a.java | UNKNOWN |
| 016 | org/swiftapps/swiftbackup/cloud/protocols/filen/c.java | c | a,b,d,e | same path c.java | UNKNOWN |
| 017 | org/swiftapps/swiftbackup/common/V.java | V | - | same path V.java | UNKNOWN |
| 018 | org/swiftapps/swiftbackup/common/a.java | a | - | same path a.java | UNKNOWN |
| 019 | org/swiftapps/swiftbackup/contributor/a.java | a | - | same path a.java | UNKNOWN |
| 020 | org/swiftapps/swiftbackup/contributor/b.java | b | - | same path b.java | UNKNOWN |
| 021 | org/swiftapps/swiftbackup/contributor/c.java | c | - | same path c.java | UNKNOWN |
| 022 | org/swiftapps/swiftbackup/folders/data/a.java | a | - | same path a.java | UNKNOWN |
| 023 | org/swiftapps/swiftbackup/folders/data/b.java | b | - | same path b.java | UNKNOWN |
| 024 | org/swiftapps/swiftbackup/folders/data/c.java | c | - | same path c.java | UNKNOWN |
| 025 | org/swiftapps/swiftbackup/home/schedule/a.java | a | b | same path a.java | UNKNOWN |
| 026 | org/swiftapps/swiftbackup/home/schedule/b.java | b | - | same path b.java | UNKNOWN |
| 027 | org/swiftapps/swiftbackup/home/schedule/c.java | c | - | same path c.java | UNKNOWN |
| 028 | org/swiftapps/swiftbackup/home/schedule/d.java | d | - | same path d.java | UNKNOWN |
| 029 | org/swiftapps/swiftbackup/home/schedule/data/a.java | a | b,c,d | same path a.java | UNKNOWN |
| 030 | org/swiftapps/swiftbackup/home/schedule/data/b.java | b | - | same path b.java | UNKNOWN |
| 031 | org/swiftapps/swiftbackup/home/schedule/data/c.java | c | - | same path c.java | UNKNOWN |
| 032 | org/swiftapps/swiftbackup/home/schedule/data/d.java | d | a | same path d.java | UNKNOWN |
| 033 | org/swiftapps/swiftbackup/home/schedule/data/e.java | e | - | same path e.java | UNKNOWN |
| 034 | org/swiftapps/swiftbackup/home/schedule/data/f.java | f | - | same path f.java | UNKNOWN |
| 035 | org/swiftapps/swiftbackup/home/schedule/data/g.java | g | - | same path g.java | UNKNOWN |
| 036 | org/swiftapps/swiftbackup/home/schedule/data/h.java | h | - | same path h.java | UNKNOWN |
| 037 | org/swiftapps/swiftbackup/home/schedule/data/i.java | i | - | same path i.java | UNKNOWN |
| 038 | org/swiftapps/swiftbackup/home/schedule/data/j.java | j | a,b | same path j.java | UNKNOWN |
| 039 | org/swiftapps/swiftbackup/home/schedule/data/k.java | k | - | same path k.java | UNKNOWN |
| 040 | org/swiftapps/swiftbackup/home/schedule/data/l.java | l | - | same path l.java | UNKNOWN |
| 041 | org/swiftapps/swiftbackup/home/schedule/data/m.java | m | - | same path m.java | UNKNOWN |
| 042 | org/swiftapps/swiftbackup/home/schedule/data/n.java | n | - | same path n.java | UNKNOWN |
| 043 | org/swiftapps/swiftbackup/home/schedule/data/o.java | o | a,b,c,d | same path o.java | UNKNOWN |
| 044 | org/swiftapps/swiftbackup/intro/a.java | a | - | same path a.java | UNKNOWN |
| 045 | org/swiftapps/swiftbackup/intro/b.java | b | - | same path b.java | UNKNOWN |
| 046 | org/swiftapps/swiftbackup/intro/c.java | c | - | same path c.java | UNKNOWN |
| 047 | org/swiftapps/swiftbackup/intro/d.java | a,b,d | j,k,l,m,n,o,p | same path d.java | UNKNOWN |
| 048 | org/swiftapps/swiftbackup/intro/e.java | e | - | same path e.java | UNKNOWN |
| 049 | org/swiftapps/swiftbackup/messagescalls/backuprestore/a.java | a | - | same path a.java | UNKNOWN |
| 050 | org/swiftapps/swiftbackup/messagescalls/backuprestore/b.java | a,b | - | same path b.java | UNKNOWN |
| 051 | org/swiftapps/swiftbackup/messagescalls/backuprestore/c.java | c | - | same path c.java | UNKNOWN |
| 052 | org/swiftapps/swiftbackup/messagescalls/backuprestore/d.java | d | - | same path d.java | UNKNOWN |
| 053 | org/swiftapps/swiftbackup/messagescalls/backuprestore/e.java | e | - | same path e.java | UNKNOWN |
| 054 | org/swiftapps/swiftbackup/messagescalls/backuprestore/f.java | a,f | - | same path f.java | UNKNOWN |
| 055 | org/swiftapps/swiftbackup/messagescalls/backuprestore/g.java | g | - | same path g.java | UNKNOWN |
| 056 | org/swiftapps/swiftbackup/messagescalls/backuprestore/h.java | h | - | same path h.java | UNKNOWN |
| 057 | org/swiftapps/swiftbackup/settings/a.java | a | d,l,q,r,s,t,u,v | same path a.java | UNKNOWN |
| 058 | org/swiftapps/swiftbackup/settings/b.java | b | a,c,d | same path b.java | UNKNOWN |
| 059 | org/swiftapps/swiftbackup/settings/c.java | c | - | same path c.java | UNKNOWN |
| 060 | org/swiftapps/swiftbackup/settings/d.java | d | - | same path d.java | UNKNOWN |
| 061 | org/swiftapps/swiftbackup/settings/e.java | e | - | same path e.java | UNKNOWN |
| 062 | org/swiftapps/swiftbackup/settings/f.java | f | a,b | same path f.java | UNKNOWN |
| 063 | org/swiftapps/swiftbackup/settings/g.java | g | - | same path g.java | UNKNOWN |
| 064 | org/swiftapps/swiftbackup/settings/h.java | h | a | same path h.java | UNKNOWN |
| 065 | org/swiftapps/swiftbackup/settings/i.java | i | a | same path i.java | UNKNOWN |
| 066 | org/swiftapps/swiftbackup/settings/j.java | j | - | same path j.java | UNKNOWN |
| 067 | org/swiftapps/swiftbackup/settings/k.java | k | j | same path k.java | UNKNOWN |
| 068 | org/swiftapps/swiftbackup/views/a.java | a | - | same path a.java | UNKNOWN |
| 069 | defpackage/q63.java | q63 | A,B,C,D,E,F,G,H,I,J,K,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,v,w,x,y,z | MISSING from current BaRe source; unresolved consumers remain | UNKNOWN |

### SYMBOL-LEVEL GATE

| Requirement | State |
|---|---|
| Existing file-level audit above preserved | PASS |
| Unclear Reference file rows expanded with class/function candidates | PASS |
| defpackage/q63.java explicitly included | PASS |
| Semantic target names invented | NO |
| Symbol mapping / implementation work performed by this table | NO |
| Current symbol status default | UNKNOWN |
