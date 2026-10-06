package org.swiftapps.swiftbackup.folders.data;

import defpackage.el1;
import defpackage.fz5;
import defpackage.pe4;
import defpackage.xs1;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class Manifest {
    private final String backupId;
    private final BackupType backupType;
    private final Changes changes;
    private final long created;
    private final FolderState currentState;
    private final int manifestVersion;
    private final String parentBackupId;
    private final String sourcePath;

    public Manifest(int i, String str, BackupType backupType, String str2, long j, String str3, FolderState folderState, Changes changes) {
        str.getClass();
        backupType.getClass();
        str3.getClass();
        folderState.getClass();
        changes.getClass();
        this.manifestVersion = i;
        this.backupId = str;
        this.backupType = backupType;
        this.parentBackupId = str2;
        this.created = j;
        this.sourcePath = str3;
        this.currentState = folderState;
        this.changes = changes;
    }

    public static /* synthetic */ Manifest copy$default(Manifest manifest, int i, String str, BackupType backupType, String str2, long j, String str3, FolderState folderState, Changes changes, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = manifest.manifestVersion;
        }
        if ((i2 & 2) != 0) {
            str = manifest.backupId;
        }
        if ((i2 & 4) != 0) {
            backupType = manifest.backupType;
        }
        if ((i2 & 8) != 0) {
            str2 = manifest.parentBackupId;
        }
        if ((i2 & 16) != 0) {
            j = manifest.created;
        }
        if ((i2 & 32) != 0) {
            str3 = manifest.sourcePath;
        }
        if ((i2 & 64) != 0) {
            folderState = manifest.currentState;
        }
        if ((i2 & 128) != 0) {
            changes = manifest.changes;
        }
        Changes changes2 = changes;
        String str4 = str3;
        long j2 = j;
        BackupType backupType2 = backupType;
        String str5 = str2;
        return manifest.copy(i, str, backupType2, str5, j2, str4, folderState, changes2);
    }

    public final long baseOriginalSize() {
        Iterator<T> it = this.currentState.getFiles().values().iterator();
        long size = 0;
        while (it.hasNext()) {
            size += ((FileEntry) it.next()).getSize();
        }
        return size;
    }

    public final int component1() {
        return this.manifestVersion;
    }

    public final String component2() {
        return this.backupId;
    }

    public final BackupType component3() {
        return this.backupType;
    }

    public final String component4() {
        return this.parentBackupId;
    }

    public final long component5() {
        return this.created;
    }

    public final String component6() {
        return this.sourcePath;
    }

    public final FolderState component7() {
        return this.currentState;
    }

    public final Changes component8() {
        return this.changes;
    }

    public final Manifest copy(int i, String str, BackupType backupType, String str2, long j, String str3, FolderState folderState, Changes changes) {
        str.getClass();
        backupType.getClass();
        str3.getClass();
        folderState.getClass();
        changes.getClass();
        return new Manifest(i, str, backupType, str2, j, str3, folderState, changes);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Manifest)) {
            return false;
        }
        Manifest manifest = (Manifest) obj;
        return this.manifestVersion == manifest.manifestVersion && pe4.d(this.backupId, manifest.backupId) && this.backupType == manifest.backupType && pe4.d(this.parentBackupId, manifest.parentBackupId) && this.created == manifest.created && pe4.d(this.sourcePath, manifest.sourcePath) && pe4.d(this.currentState, manifest.currentState) && pe4.d(this.changes, manifest.changes);
    }

    public final String getBackupId() {
        return this.backupId;
    }

    public final BackupType getBackupType() {
        return this.backupType;
    }

    public final Changes getChanges() {
        return this.changes;
    }

    public final long getCreated() {
        return this.created;
    }

    public final FolderState getCurrentState() {
        return this.currentState;
    }

    public final int getManifestVersion() {
        return this.manifestVersion;
    }

    public final String getParentBackupId() {
        return this.parentBackupId;
    }

    public final String getSourcePath() {
        return this.sourcePath;
    }

    public int hashCode() {
        int iHashCode = (this.backupType.hashCode() + fz5.g(Integer.hashCode(this.manifestVersion) * 31, 31, this.backupId)) * 31;
        String str = this.parentBackupId;
        return this.changes.hashCode() + ((this.currentState.hashCode() + fz5.g(xs1.f(this.created, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31), 31, this.sourcePath)) * 31);
    }

    public final long incrementalOriginalSize() {
        Iterator it = el1.g1(this.changes.getFilesAdded(), this.changes.getFilesModified()).iterator();
        long size = 0;
        while (it.hasNext()) {
            FileEntry fileEntry = this.currentState.getFiles().get((String) it.next());
            size += fileEntry != null ? fileEntry.getSize() : 0L;
        }
        return size;
    }

    public String toString() {
        return "Manifest(manifestVersion=" + this.manifestVersion + ", backupId=" + this.backupId + ", backupType=" + this.backupType + ", parentBackupId=" + this.parentBackupId + ", created=" + this.created + ", sourcePath=" + this.sourcePath + ", currentState=" + this.currentState + ", changes=" + this.changes + ")";
    }
}
