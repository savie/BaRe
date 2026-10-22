package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kl implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ kl(ml mlVar, vl vlVar, wl wlVar, h86 h86Var) {
        this.a = 0;
        this.b = mlVar;
        this.c = wlVar;
        this.d = h86Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.d;
        Object obj3 = this.c;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                Long l = (Long) obj;
                long jLongValue = l.longValue();
                ((ml) obj4).invoke(l);
                ((wl) obj3).d();
                ((h86) obj2).a(jLongValue);
                break;
            case 1:
                b21 b21Var = (b21) obj4;
                dy7 dy7Var = (dy7) obj3;
                z11 z11Var = (z11) obj2;
                gz7 gz7Var = (gz7) obj;
                if (b21Var.a.L) {
                    gz7Var = gz7.COMPLETE;
                }
                if (gz7Var != null) {
                    dy7Var.c(!gz7Var.isComplete());
                    if (gz7Var.isComplete()) {
                        b21Var.f.w();
                        z11Var.o(null);
                    }
                }
                break;
            default:
                tp3 tp3Var = (tp3) obj4;
                dy7 dy7Var2 = (dy7) obj3;
                qp3 qp3Var = (qp3) obj2;
                gz7 gz7Var2 = (gz7) obj;
                TaskActivity taskActivity = tp3Var.a;
                if (taskActivity.L) {
                    gz7Var2 = gz7.COMPLETE;
                }
                if (gz7Var2 != null) {
                    dy7Var2.c(!gz7Var2.isComplete());
                    if (gz7Var2.isComplete()) {
                        qp3Var.o(null);
                    }
                    if (gz7Var2.isComplete() && qp3Var.g()) {
                        tp3Var.e.setText(taskActivity.getString(R.string.x_folders, String.valueOf(qp3Var.m.size())));
                    }
                    if (gz7Var2.isComplete()) {
                        tp3Var.g.w();
                        sz8.X(tp3Var.h);
                        sz8.X(tp3Var.i);
                    }
                }
                break;
        }
        return be8Var;
    }

    public /* synthetic */ kl(Object obj, dy7 dy7Var, pw6 pw6Var, int i) {
        this.a = i;
        this.b = obj;
        this.c = dy7Var;
        this.d = pw6Var;
    }
}
