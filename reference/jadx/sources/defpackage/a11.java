package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a11 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a11(Object obj, Object obj2, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return new a11((b11) this.b, (rz0) obj2, jv1Var, 0);
            case 1:
                return new a11((CsActivity) this.b, (tn2) obj2, jv1Var, 1);
            case 2:
                a11 a11Var = new a11((xt4) obj2, jv1Var);
                a11Var.b = obj;
                return a11Var;
            default:
                return new a11((uo8) this.b, (String) obj2, jv1Var, 3);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) throws IOException {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((a11) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            case 1:
                ((a11) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            case 2:
                ((a11) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((a11) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws IOException {
        int i = this.a;
        Integer num = null;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                lg7.H(obj);
                b11 b11Var = (b11) this.b;
                b11Var.h(R.string.preparing);
                String strV = ((rz0) obj2).getLocalFile().v();
                ArrayList arrayListI = d01.i(new q63(strV, 1));
                b11Var.f();
                b11Var.c(z11.class, new z11(strV, arrayListI));
                break;
            case 1:
                lg7.H(obj);
                CloudCredentials.Companion.getClass();
                a.a(((CsActivity) this.b).a0().g, (tn2) obj2);
                break;
            case 2:
                lg7.H(obj);
                xx1 xx1Var = (xx1) this.b;
                xt4 xt4Var = (xt4) obj2;
                hu4 hu4Var = xt4Var.a;
                if (hu4Var.d.compareTo(st4.b) >= 0) {
                    hu4Var.a(xt4Var);
                } else {
                    oh4 oh4Var = (oh4) xx1Var.d().get(nh4.b);
                    if (oh4Var != null) {
                        oh4Var.cancel(null);
                    }
                }
                break;
            default:
                lg7.H(obj);
                String str = ry5.u;
                String[] list = new q63(qy5.f(false, null).q, 1).n().getFile().list();
                if (list != null) {
                    ArrayList arrayList = new ArrayList();
                    for (String str2 : list) {
                        if (uq7.O(str2, "wal", false)) {
                            arrayList.add(str2);
                        }
                    }
                    num = new Integer(arrayList.size());
                }
                zn4 zn4Var = zn4.a;
                zn4.e(new yi0(4, (uo8) this.b, num, (String) obj2));
                break;
        }
        return be8Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a11(xt4 xt4Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = 2;
        this.c = xt4Var;
    }
}
