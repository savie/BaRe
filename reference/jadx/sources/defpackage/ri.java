package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ri implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ri(Object obj, int i, int i2, Object obj2) {
        this.a = i2;
        this.c = obj;
        this.d = obj2;
        this.b = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        int i2 = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                pi piVar = (pi) obj;
                qt3 qt3Var = ((wi) obj2).e;
                if (qt3Var != null) {
                    qt3Var.invoke(piVar, Integer.valueOf(i2));
                }
                break;
            case 1:
                k30 k30Var = (k30) obj;
                qt3 qt3Var2 = ((i30) obj2).j;
                if (qt3Var2 != null) {
                    qt3Var2.invoke(k30Var, Integer.valueOf(i2));
                }
                break;
            case 2:
                rz0 rz0Var = (rz0) obj;
                qt3 qt3Var3 = ((q01) obj2).j;
                if (qt3Var3 != null) {
                    qt3Var3.invoke(rz0Var, Integer.valueOf(i2));
                }
                break;
            default:
                zc6 zc6Var = (zc6) obj2;
                dd6 dd6Var = (dd6) obj;
                if (zc6Var.f) {
                    mp6 mp6Var = mp6.a;
                    if (!mp6.f()) {
                        Const.N(dd6Var.l);
                    }
                }
                qt3 qt3Var4 = dd6Var.j;
                if (qt3Var4 != null) {
                    qt3Var4.invoke(zc6.q(zc6Var, false, false, 3583), Integer.valueOf(i2));
                }
                break;
        }
    }
}
