package org.swiftapps.swiftbackup.folders.data;

import defpackage.eq3;
import defpackage.ij3;
import defpackage.jl0;
import defpackage.jz2;
import defpackage.pe4;
import defpackage.q63;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FolderBackup$IncrementalBackup extends FolderBackup$FolderLocalSnapshot {
    public static final ij3 Companion = new ij3();
    private static final String INCREMENTAL_BACKUP_PREFIX = "folder-inc-";
    private final q63 backupDir;
    private final String backupFilename;
    private final boolean isBaseBackup;
    private final String manifestFilename;
    private final String timestamp;

    public FolderBackup$IncrementalBackup(q63 q63Var, String str) {
        q63Var.getClass();
        str.getClass();
        this.backupDir = q63Var;
        this.timestamp = str;
        this.backupFilename = eq3.k(INCREMENTAL_BACKUP_PREFIX, str, ".fld");
        this.manifestFilename = eq3.k(INCREMENTAL_BACKUP_PREFIX, str, ".flm");
    }

    public static /* synthetic */ FolderBackup$IncrementalBackup copy$default(FolderBackup$IncrementalBackup folderBackup$IncrementalBackup, q63 q63Var, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            q63Var = folderBackup$IncrementalBackup.backupDir;
        }
        if ((i & 2) != 0) {
            str = folderBackup$IncrementalBackup.timestamp;
        }
        return folderBackup$IncrementalBackup.copy(q63Var, str);
    }

    public final q63 component1() {
        return this.backupDir;
    }

    public final String component2() {
        return this.timestamp;
    }

    public final FolderBackup$IncrementalBackup copy(q63 q63Var, String str) {
        q63Var.getClass();
        str.getClass();
        return new FolderBackup$IncrementalBackup(q63Var, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FolderBackup$IncrementalBackup)) {
            return false;
        }
        FolderBackup$IncrementalBackup folderBackup$IncrementalBackup = (FolderBackup$IncrementalBackup) obj;
        return pe4.d(this.backupDir, folderBackup$IncrementalBackup.backupDir) && pe4.d(this.timestamp, folderBackup$IncrementalBackup.timestamp);
    }

    @Override // org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot
    public q63 getBackupDir() {
        return this.backupDir;
    }

    @Override // org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot
    public String getBackupFilename() {
        return this.backupFilename;
    }

    @Override // org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot, defpackage.jl0
    @jz2
    public jl0 getCopy() {
        return copy$default(this, null, null, 3, null);
    }

    @Override // org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot
    public String getManifestFilename() {
        return this.manifestFilename;
    }

    public final String getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        return this.timestamp.hashCode() + (this.backupDir.a.hashCode() * 31);
    }

    @Override // org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot
    public boolean isBaseBackup() {
        return this.isBaseBackup;
    }

    public String toString() {
        return "IncrementalBackup(backupDir=" + this.backupDir + ", timestamp=" + this.timestamp + ")";
    }
}
