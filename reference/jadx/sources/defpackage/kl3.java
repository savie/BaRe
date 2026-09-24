package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kl3 {
    public final FolderDetailActivity a;
    public final jl3 b;
    public final dm3 c;

    public kl3(FolderDetailActivity folderDetailActivity, jl3 jl3Var, dm3 dm3Var) {
        dm3Var.getClass();
        this.a = folderDetailActivity;
        this.b = jl3Var;
        this.c = dm3Var;
        jl3Var.q.setText(folderDetailActivity.getString(R.string.cloud_backups));
    }
}
