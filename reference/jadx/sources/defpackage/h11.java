package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h11 extends cu3 implements qt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h11(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                View view = (View) obj;
                rz0 rz0Var = (rz0) obj2;
                view.getClass();
                rz0Var.getClass();
                ((CallsDashActivity) this.receiver).W(view, rz0Var);
                return be8Var;
            case 1:
                View view2 = (View) obj;
                vd5 vd5Var = (vd5) obj2;
                view2.getClass();
                vd5Var.getClass();
                ((MessagesBackupsActivity) this.receiver).W(view2, vd5Var);
                return be8Var;
            default:
                return nc8.m((eo6) this.receiver, (mt3) obj, (jv1) obj2);
        }
    }
}
