package defpackage;

import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vn3 {
    public final FolderItem a;
    public final kj3 b;
    public final un3 c;

    public vn3(do3 do3Var, qp3 qp3Var, nn3 nn3Var) {
        this.a = do3Var.a;
        kj3 kj3Var = do3Var.b;
        if (kj3Var == null) {
            c6.f("localBackup is null!!");
            throw null;
        }
        this.b = kj3Var;
        this.c = new un3(this);
        FolderMetadata folderMetadata = do3Var.c;
        if (folderMetadata == null || folderMetadata != null) {
            return;
        }
        c6.f("props.cloudBackup null despite this being a cloud restore task");
        throw null;
    }
}
