package defpackage;

import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.data.a;
import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class do3 extends eo3 {
    public final FolderItem a;
    public final kj3 b;
    public final FolderMetadata c;
    public final FolderRestoreStrategy d;
    public final String e;

    public do3(FolderItem folderItem, kj3 kj3Var, FolderMetadata folderMetadata, FolderRestoreStrategy folderRestoreStrategy, String str) {
        folderItem.getClass();
        folderRestoreStrategy.getClass();
        this.a = folderItem;
        this.b = kj3Var;
        this.c = folderMetadata;
        this.d = folderRestoreStrategy;
        this.e = str;
        if (folderMetadata != null) {
            this.b = a.a(folderMetadata.getFolderItem(), true, true);
        }
    }

    @Override // defpackage.eo3
    public final FolderItem a() {
        return this.a;
    }

    @Override // defpackage.eo3
    public final boolean b() {
        return this.c != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof do3)) {
            return false;
        }
        do3 do3Var = (do3) obj;
        return pe4.d(this.a, do3Var.a) && pe4.d(this.b, do3Var.b) && pe4.d(this.c, do3Var.c) && this.d == do3Var.d && pe4.d(this.e, do3Var.e);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        kj3 kj3Var = this.b;
        int iHashCode2 = (iHashCode + (kj3Var == null ? 0 : kj3Var.hashCode())) * 31;
        FolderMetadata folderMetadata = this.c;
        int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (folderMetadata == null ? 0 : folderMetadata.hashCode())) * 31)) * 31;
        String str = this.e;
        return Boolean.hashCode(false) + ((iHashCode3 + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        FolderItem folderItem;
        String id = this.a.getId();
        FolderMetadata folderMetadata = this.c;
        String id2 = (folderMetadata == null || (folderItem = folderMetadata.getFolderItem()) == null) ? null : folderItem.getId();
        String str = this.e;
        if (str == null) {
            str = "default";
        }
        return dj7.n(u48.p("Restore(localBackupId=", id, ", cloudBackupId=", id2, ", customTargetFolderPath="), str, ", isForceRedo=false)");
    }
}
