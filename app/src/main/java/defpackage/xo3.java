package defpackage;

import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xo3 extends mg7 {
    public final /* synthetic */ FoldersDashActivity a;

    public xo3(FoldersDashActivity foldersDashActivity) {
        this.a = foldersDashActivity;
    }

    @Override // defpackage.mg7, defpackage.xv7
    public final void b(cw7 cw7Var) {
        cw7Var.getClass();
        kp3 kp3VarU = FoldersDashActivity.U(this.a);
        if (kp3VarU != null) {
            kp3VarU.k().i0(0);
        }
    }

    @Override // defpackage.mg7, defpackage.xv7
    public final void c(cw7 cw7Var) {
        int i = FoldersDashActivity.U;
        FoldersDashActivity foldersDashActivity = this.a;
        foldersDashActivity.A(!(foldersDashActivity.V().d.getCurrentItem() == 0));
    }
}
