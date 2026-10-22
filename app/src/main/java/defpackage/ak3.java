package defpackage;

import org.swiftapps.swiftbackup.folders.data.BackupResult;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ak3 {
    public static BackupResult.Failure a(kj3 kj3Var, FolderItem folderItem) {
        try {
            FolderMetadata folderMetadataH = kj3Var.h();
            if (folderMetadataH == null) {
                folderMetadataH = new FolderMetadata(folderItem, null, null, 6, null);
            }
            FolderMetadata folderMetadataRefreshLocalMetadataFile = folderMetadataH.refreshLocalMetadataFile(kj3Var);
            if (!kj3Var.b) {
                return null;
            }
            pz4.g.l(folderMetadataRefreshLocalMetadataFile);
            return null;
        } catch (Exception e) {
            String strI = xs1.i(kj3Var.d(), "Failed saving folder metadata at ");
            vr6.e$default(vr6.INSTANCE, "FolderBackupHelper", strI, e, null, 8, null);
            String message = e.getMessage();
            if (message != null) {
                strI = message;
            }
            return new BackupResult.Failure(strI);
        }
    }
}
