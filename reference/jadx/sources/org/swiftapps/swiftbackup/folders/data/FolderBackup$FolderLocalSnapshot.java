package org.swiftapps.swiftbackup.folders.data;

import defpackage.ej;
import defpackage.fj;
import defpackage.gv7;
import defpackage.jl0;
import defpackage.jz2;
import defpackage.os4;
import defpackage.q63;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class FolderBackup$FolderLocalSnapshot implements jl0 {
    private final os4 backupFile$delegate = new gv7(new ej(this, 20));
    private final os4 manifestFile$delegate = new gv7(new fj(this, 24));

    /* JADX INFO: Access modifiers changed from: private */
    public static final q63 backupFile_delegate$lambda$0(FolderBackup$FolderLocalSnapshot folderBackup$FolderLocalSnapshot) {
        return folderBackup$FolderLocalSnapshot.getBackupDir().J(folderBackup$FolderLocalSnapshot.getBackupFilename());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final q63 manifestFile_delegate$lambda$0(FolderBackup$FolderLocalSnapshot folderBackup$FolderLocalSnapshot) {
        return folderBackup$FolderLocalSnapshot.getBackupDir().J(folderBackup$FolderLocalSnapshot.getManifestFilename());
    }

    @jz2
    public final void delete() {
        getBackupFile().f();
        getManifestFile().f();
    }

    @jz2
    public final boolean exists() {
        return getBackupFile().k() && getManifestFile().k();
    }

    public abstract q63 getBackupDir();

    public final q63 getBackupFile() {
        return (q63) this.backupFile$delegate.getValue();
    }

    public abstract String getBackupFilename();

    @Override // defpackage.jl0
    public abstract /* synthetic */ jl0 getCopy();

    @jz2
    public final long getDate() {
        return getBackupFile().z();
    }

    @Override // defpackage.jl0
    @jz2
    public String getItemId() {
        return getBackupFilename();
    }

    public final q63 getManifestFile() {
        return (q63) this.manifestFile$delegate.getValue();
    }

    public abstract String getManifestFilename();

    @jz2
    public final long getSize() {
        return getManifestFile().A() + getBackupFile().A();
    }

    public abstract boolean isBaseBackup();
}
