package org.swiftapps.swiftbackup.folders.data;

import defpackage.pe4;
import defpackage.q63;
import defpackage.xs1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class BackupInfo {
    private final q63 backupFile;
    private final String backupId;
    private final BackupType backupType;
    private final long created;
    private final q63 manifestFile;
    private final BackupStats stats;

    public BackupInfo(String str, BackupType backupType, long j, q63 q63Var, q63 q63Var2, BackupStats backupStats) {
        str.getClass();
        backupType.getClass();
        q63Var.getClass();
        q63Var2.getClass();
        backupStats.getClass();
        this.backupId = str;
        this.backupType = backupType;
        this.created = j;
        this.manifestFile = q63Var;
        this.backupFile = q63Var2;
        this.stats = backupStats;
    }

    public static /* synthetic */ BackupInfo copy$default(BackupInfo backupInfo, String str, BackupType backupType, long j, q63 q63Var, q63 q63Var2, BackupStats backupStats, int i, Object obj) {
        if ((i & 1) != 0) {
            str = backupInfo.backupId;
        }
        if ((i & 2) != 0) {
            backupType = backupInfo.backupType;
        }
        if ((i & 4) != 0) {
            j = backupInfo.created;
        }
        if ((i & 8) != 0) {
            q63Var = backupInfo.manifestFile;
        }
        if ((i & 16) != 0) {
            q63Var2 = backupInfo.backupFile;
        }
        if ((i & 32) != 0) {
            backupStats = backupInfo.stats;
        }
        BackupStats backupStats2 = backupStats;
        q63 q63Var3 = q63Var;
        long j2 = j;
        return backupInfo.copy(str, backupType, j2, q63Var3, q63Var2, backupStats2);
    }

    public final String component1() {
        return this.backupId;
    }

    public final BackupType component2() {
        return this.backupType;
    }

    public final long component3() {
        return this.created;
    }

    public final q63 component4() {
        return this.manifestFile;
    }

    public final q63 component5() {
        return this.backupFile;
    }

    public final BackupStats component6() {
        return this.stats;
    }

    public final BackupInfo copy(String str, BackupType backupType, long j, q63 q63Var, q63 q63Var2, BackupStats backupStats) {
        str.getClass();
        backupType.getClass();
        q63Var.getClass();
        q63Var2.getClass();
        backupStats.getClass();
        return new BackupInfo(str, backupType, j, q63Var, q63Var2, backupStats);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BackupInfo)) {
            return false;
        }
        BackupInfo backupInfo = (BackupInfo) obj;
        return pe4.d(this.backupId, backupInfo.backupId) && this.backupType == backupInfo.backupType && this.created == backupInfo.created && pe4.d(this.manifestFile, backupInfo.manifestFile) && pe4.d(this.backupFile, backupInfo.backupFile) && pe4.d(this.stats, backupInfo.stats);
    }

    public final q63 getBackupFile() {
        return this.backupFile;
    }

    public final String getBackupId() {
        return this.backupId;
    }

    public final BackupType getBackupType() {
        return this.backupType;
    }

    public final long getCreated() {
        return this.created;
    }

    public final q63 getManifestFile() {
        return this.manifestFile;
    }

    public final BackupStats getStats() {
        return this.stats;
    }

    public int hashCode() {
        return this.stats.hashCode() + ((this.backupFile.a.hashCode() + ((this.manifestFile.a.hashCode() + xs1.f(this.created, (this.backupType.hashCode() + (this.backupId.hashCode() * 31)) * 31, 31)) * 31)) * 31);
    }

    public String toString() {
        return "BackupInfo(backupId=" + this.backupId + ", backupType=" + this.backupType + ", created=" + this.created + ", manifestFile=" + this.manifestFile + ", backupFile=" + this.backupFile + ", stats=" + this.stats + ")";
    }
}
