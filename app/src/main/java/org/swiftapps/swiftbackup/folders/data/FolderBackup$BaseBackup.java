package org.swiftapps.swiftbackup.folders.data;

import defpackage.jl0;
import defpackage.pe4;
import defpackage.q63;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FolderBackup$BaseBackup extends FolderBackup$FolderLocalSnapshot {
    private final q63 backupDir;
    private String backupFilename;
    private boolean isBaseBackup;
    private String manifestFilename;

    public FolderBackup$BaseBackup(q63 q63Var) {
        q63Var.getClass();
        this.backupDir = q63Var;
        this.backupFilename = "folder-base.fld";
        this.manifestFilename = "folder-base.flm";
        this.isBaseBackup = true;
    }

    public static /* synthetic */ FolderBackup$BaseBackup copy$default(FolderBackup$BaseBackup folderBackup$BaseBackup, q63 q63Var, int i, Object obj) {
        if ((i & 1) != 0) {
            q63Var = folderBackup$BaseBackup.backupDir;
        }
        return folderBackup$BaseBackup.copy(q63Var);
    }

    public final q63 component1() {
        return this.backupDir;
    }

    public final FolderBackup$BaseBackup copy(q63 q63Var) {
        q63Var.getClass();
        return new FolderBackup$BaseBackup(q63Var);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FolderBackup$BaseBackup) && pe4.d(this.backupDir, ((FolderBackup$BaseBackup) obj).backupDir);
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
    public jl0 getCopy() {
        return copy$default(this, null, 1, null);
    }

    @Override // org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot
    public String getManifestFilename() {
        return this.manifestFilename;
    }

    public int hashCode() {
        return this.backupDir.a.hashCode();
    }

    @Override // org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot
    public boolean isBaseBackup() {
        return this.isBaseBackup;
    }

    public void setBackupFilename(String str) {
        str.getClass();
        this.backupFilename = str;
    }

    public void setBaseBackup(boolean z) {
        this.isBaseBackup = z;
    }

    public void setManifestFilename(String str) {
        str.getClass();
        this.manifestFilename = str;
    }

    public String toString() {
        return "BaseBackup(backupDir=" + this.backupDir + ")";
    }
}
