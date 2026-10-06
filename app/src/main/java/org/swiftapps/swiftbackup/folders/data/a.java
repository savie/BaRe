package org.swiftapps.swiftbackup.folders.data;

import defpackage.kj3;
import defpackage.q;
import defpackage.q63;
import defpackage.w14;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static kj3 a(FolderItem folderItem, boolean z, boolean z2) {
        folderItem.getClass();
        FolderMetadata folderMetadata = null;
        if (!folderItem.isValid()) {
            q.d(folderItem, "Invalid metadata: ");
            return null;
        }
        kj3 kj3Var = new kj3(folderItem.getId(), folderItem.getSourceFolder(), z);
        if (z2) {
            if (!kj3Var.b().j()) {
                q63.E(kj3Var.b());
            }
            q63 q63VarD = kj3Var.d();
            if (!q63VarD.j()) {
                q63VarD = null;
            }
            if (q63VarD != null) {
                FolderMetadata.Companion.getClass();
                FolderMetadata folderMetadata2 = (FolderMetadata) w14.b(q63VarD, FolderMetadata.class, true);
                if (folderMetadata2 != null && folderMetadata2.isValid()) {
                    folderMetadata = folderMetadata2;
                }
            }
            if (folderMetadata == null) {
                FolderMetadata folderMetadata3 = new FolderMetadata(folderItem, null, null, 6, null);
                if (z) {
                    folderMetadata3.writeToFile(kj3Var.d());
                    return kj3Var;
                }
                folderMetadata3.refreshLocalMetadataFile(kj3Var);
            }
        }
        return kj3Var;
    }
}
