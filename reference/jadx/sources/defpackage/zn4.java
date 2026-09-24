package defpackage;

import android.os.Looper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zn4 {
    public static final zn4 a = new zn4();
    public static final r24 b;
    public static final se2 c;
    public static final gv7 d;
    public static final gv7 e;

    static {
        rf2 rf2Var = cn2.a;
        b = i55.a;
        c = se2.c;
        int i = 9;
        d = new gv7(new fl(i));
        e = new gv7(new q9(i));
    }

    public static List a(int i, ArrayList arrayList, boolean z) {
        return (List) l73.B(lv2.a, new xn4(z, i, arrayList, null));
    }

    public static bl7 b(qh4 qh4Var, qt3 qt3Var) {
        ox1 ox1Var = c;
        if (qh4Var != null) {
            ox1Var.getClass();
            ox1 ox1VarS = iz1.s(ox1Var, qh4Var);
            if (ox1VarS != null) {
                ox1Var = ox1VarS;
            }
        }
        return l73.v(zy3.a, ox1Var, qt3Var, 2);
    }

    public static void c(bt3 bt3Var) {
        if (!pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            bt3Var.invoke();
        } else {
            b(null, new vs(bt3Var, null, 1));
        }
    }

    public static void d(bt3 bt3Var) {
        Object value = e.getValue();
        value.getClass();
        ((Executor) value).execute(new a9(bt3Var, 6));
    }

    public static void e(bt3 bt3Var) {
        bt3Var.getClass();
        un4 un4Var = (un4) d.getValue();
        in0 in0Var = new in0(bt3Var, 3);
        un4Var.getClass();
        un4Var.a.post(in0Var);
    }

    public static void f(long j, bt3 bt3Var) {
        b(null, new yn4(j, bt3Var, null));
    }

    public static Object g(bt3 bt3Var, jv1 jv1Var) throws Throwable {
        Object objG = l73.G(b, new mj(bt3Var, null, 1), jv1Var);
        return objG == yx1.a ? objG : be8.a;
    }
}
