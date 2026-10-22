package defpackage;

import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.data.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ik3 implements bt3 {
    public final /* synthetic */ kk3 a;
    public final /* synthetic */ FolderItem b;
    public final /* synthetic */ boolean c;

    public /* synthetic */ ik3(kk3 kk3Var, FolderItem folderItem, boolean z) {
        this.a = kk3Var;
        this.b = folderItem;
        this.c = z;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        vr6 vr6Var = vr6.INSTANCE;
        kk3 kk3Var = this.a;
        String str = kk3Var.b;
        FolderItem folderItem = this.b;
        vr6.i$default(vr6Var, str, "Updating folder setup with id " + folderItem.getId() + ": " + folderItem, null, 4, null);
        FolderItem folderItem2 = folderItem.isValid() ? folderItem : null;
        if (folderItem2 != null) {
            kj3 kj3VarA = a.a(folderItem2, false, this.c);
            if (kj3VarA.d().k()) {
                FolderMetadata folderMetadataH = kj3VarA.h();
                if (folderMetadataH == null) {
                    f6.g(xs1.i(kj3VarA.d(), "Unable to read existing metadata at "));
                    return null;
                }
                FolderMetadata folderMetadataCopy$default = FolderMetadata.copy$default(folderMetadataH, folderItem2, null, null, 6, null);
                if (!folderMetadataH.equals(folderMetadataCopy$default)) {
                    vr6.i$default(vr6Var, kk3Var.b, "Updating folder setup locally...", null, 4, null);
                    folderMetadataCopy$default.writeToFile(kj3VarA.d());
                }
                pz4.g.l(folderMetadataCopy$default);
            }
            FolderMetadata folderMetadata = (FolderMetadata) sf1.g.d(folderItem2.getId());
            if (folderMetadata != null) {
                FolderMetadata folderMetadataCopy$default2 = FolderMetadata.copy$default(folderMetadata, folderItem2, null, null, 6, null);
                if (!folderMetadata.equals(folderMetadataCopy$default2)) {
                    vr6.i$default(vr6Var, kk3Var.b, "Updating folder setup in cloud...", null, 4, null);
                    try {
                        if (!folderMetadataCopy$default2.writeToFirebaseNode().a) {
                            throw new IllegalStateException("Check failed.");
                        }
                    } catch (Exception e) {
                        vr6.e$default(vr6.INSTANCE, kk3Var.b, "Failed to update folder metadata on firebase", e, null, 8, null);
                    }
                }
            }
        }
        return be8.a;
    }
}
