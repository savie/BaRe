package defpackage;

import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class w10 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ Object c;

    public /* synthetic */ w10(boolean z, kj3 kj3Var) {
        this.a = 1;
        this.b = z;
        this.c = kj3Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        String str;
        int i = this.a;
        be8 be8Var = be8.a;
        boolean z = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AppsBatchActivity) obj).r0.a(new py7(z));
                return be8Var;
            case 1:
                kj3 kj3Var = (kj3) obj;
                if (z) {
                    String str2 = ry5.u;
                    str = qy5.f(false, null).t;
                } else {
                    String str3 = ry5.u;
                    str = qy5.f(false, null).s;
                }
                return new q63(str, xs1.j("Folder-", kj3Var.a), 2);
            default:
                MessagesBackupRestoreActivity messagesBackupRestoreActivity = (MessagesBackupRestoreActivity) obj;
                int i2 = MessagesBackupRestoreActivity.c0;
                if (!messagesBackupRestoreActivity.isFinishing()) {
                    messagesBackupRestoreActivity.Y().setRefreshing(z);
                }
                return be8Var;
        }
    }

    public /* synthetic */ w10(sa1 sa1Var, boolean z, int i) {
        this.a = i;
        this.c = sa1Var;
        this.b = z;
    }
}
