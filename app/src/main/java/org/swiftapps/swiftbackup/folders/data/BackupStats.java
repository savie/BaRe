package org.swiftapps.swiftbackup.folders.data;

import defpackage.eq3;
import defpackage.pe4;
import defpackage.xs1;
import java.time.Duration;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class BackupStats {
    private final Duration duration;
    private final int filesAdded;
    private final int filesDeleted;
    private final int filesModified;
    private final int filesScanned;
    private final long totalBytes;

    public BackupStats(int i, int i2, int i3, int i4, long j, Duration duration) {
        duration.getClass();
        this.filesScanned = i;
        this.filesAdded = i2;
        this.filesModified = i3;
        this.filesDeleted = i4;
        this.totalBytes = j;
        this.duration = duration;
    }

    public static /* synthetic */ BackupStats copy$default(BackupStats backupStats, int i, int i2, int i3, int i4, long j, Duration duration, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = backupStats.filesScanned;
        }
        if ((i5 & 2) != 0) {
            i2 = backupStats.filesAdded;
        }
        if ((i5 & 4) != 0) {
            i3 = backupStats.filesModified;
        }
        if ((i5 & 8) != 0) {
            i4 = backupStats.filesDeleted;
        }
        if ((i5 & 16) != 0) {
            j = backupStats.totalBytes;
        }
        if ((i5 & 32) != 0) {
            duration = backupStats.duration;
        }
        Duration duration2 = duration;
        long j2 = j;
        return backupStats.copy(i, i2, i3, i4, j2, duration2);
    }

    public final int component1() {
        return this.filesScanned;
    }

    public final int component2() {
        return this.filesAdded;
    }

    public final int component3() {
        return this.filesModified;
    }

    public final int component4() {
        return this.filesDeleted;
    }

    public final long component5() {
        return this.totalBytes;
    }

    public final Duration component6() {
        return this.duration;
    }

    public final BackupStats copy(int i, int i2, int i3, int i4, long j, Duration duration) {
        duration.getClass();
        return new BackupStats(i, i2, i3, i4, j, duration);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BackupStats)) {
            return false;
        }
        BackupStats backupStats = (BackupStats) obj;
        return this.filesScanned == backupStats.filesScanned && this.filesAdded == backupStats.filesAdded && this.filesModified == backupStats.filesModified && this.filesDeleted == backupStats.filesDeleted && this.totalBytes == backupStats.totalBytes && pe4.d(this.duration, backupStats.duration);
    }

    public final Duration getDuration() {
        return this.duration;
    }

    public final int getFilesAdded() {
        return this.filesAdded;
    }

    public final int getFilesDeleted() {
        return this.filesDeleted;
    }

    public final int getFilesModified() {
        return this.filesModified;
    }

    public final int getFilesScanned() {
        return this.filesScanned;
    }

    public final long getTotalBytes() {
        return this.totalBytes;
    }

    public int hashCode() {
        return this.duration.hashCode() + xs1.f(this.totalBytes, eq3.d(this.filesDeleted, eq3.d(this.filesModified, eq3.d(this.filesAdded, Integer.hashCode(this.filesScanned) * 31, 31), 31), 31), 31);
    }

    public String toString() {
        int i = this.filesScanned;
        int i2 = this.filesAdded;
        int i3 = this.filesModified;
        int i4 = this.filesDeleted;
        long j = this.totalBytes;
        Duration duration = this.duration;
        StringBuilder sbN = xs1.n("BackupStats(filesScanned=", i, ", filesAdded=", ", filesModified=", i2);
        xs1.s(sbN, i3, ", filesDeleted=", i4, ", totalBytes=");
        sbN.append(j);
        sbN.append(", duration=");
        sbN.append(duration);
        sbN.append(")");
        return sbN.toString();
    }
}
