package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class g30 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ g30(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        int i2 = 1;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                j30 j30Var = (j30) obj3;
                il0 il0Var = j30Var.Q;
                k30 k30Var = (k30) obj;
                ((Integer) obj2).getClass();
                k30Var.getClass();
                if (pe4.d(k30Var.a, "Premium")) {
                    int i3 = PremiumActivity.V;
                    rs9.u(il0Var);
                } else {
                    il0Var.getClass();
                    il0Var.G().e().k(new lo0(k30Var));
                }
                ((s20) j30Var.K).a.postDelayed(new o10(j30Var, i2), ((long) il0Var.getResources().getInteger(R.integer.activity_transition_time)) + 500);
                return be8Var;
            case 1:
                vq4 vq4Var = (vq4) obj;
                ((Integer) obj2).getClass();
                int i4 = LabelsActivity.Z;
                vq4Var.getClass();
                ((LabelsActivity) obj3).S(vq4Var);
                return be8Var;
            case 2:
                vd5 vd5Var = (vd5) obj;
                ((Integer) obj2).getClass();
                int i5 = MessagesDashActivity.T;
                vd5Var.getClass();
                ((MessagesDashActivity) obj3).V(vd5Var);
                return be8Var;
            case 3:
                wq5 wq5Var = (wq5) obj3;
                Long l = (Long) obj;
                l.getClass();
                ((Long) obj2).getClass();
                if (wq5Var.c.isRunning()) {
                    ag8.g(wq5Var, l);
                }
                return be8Var;
            default:
                CharSequence charSequence = (CharSequence) obj;
                int iIntValue = ((Integer) obj2).intValue();
                charSequence.getClass();
                int iI0 = nq7.i0(charSequence, (char[]) obj3, iIntValue, false);
                if (iI0 < 0) {
                    return null;
                }
                return new pw5(Integer.valueOf(iI0), 1);
        }
    }
}
