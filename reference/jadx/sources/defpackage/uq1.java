package defpackage;

import android.content.DialogInterface;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class uq1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ uq1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.b;
        switch (i2) {
            case 0:
                int i3 = ConfigListActivity.R;
                ((jh6) obj).a = i;
                break;
            case 1:
                bt3 bt3Var = (bt3) obj;
                if (bt3Var != null) {
                    bt3Var.invoke();
                }
                break;
            case 2:
                int i4 = FilenSignInActivity.N;
                ec3 ec3VarV = ((FilenSignInActivity) obj).V();
                ex6 ex6Var = ec3VarV.e;
                if (pe4.d(ex6Var.d(), bc3.a)) {
                    ec3VarV.j = "";
                    ex6Var.k(ac3.a);
                }
                break;
            default:
                int i5 = MessagesBackupRestoreActivity.c0;
                ((MessagesBackupRestoreActivity) obj).f0();
                break;
        }
    }
}
