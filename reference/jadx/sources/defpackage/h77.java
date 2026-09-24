package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class h77 extends nc8 {
    public static me3 A0(f77 f77Var, mt3 mt3Var) {
        return new me3(new q98(f77Var, mt3Var), false, new hc1(6));
    }

    public static f77 B0(f77 f77Var, int i) {
        if (i < 0) {
            f6.g(xs1.h(i, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i == 0) {
            return rv2.a;
        }
        return f77Var instanceof iq2 ? ((iq2) f77Var).a(i) : new eq2(f77Var, i, 1);
    }

    public static List C0(f77 f77Var) {
        f77Var.getClass();
        Iterator it = f77Var.iterator();
        if (!it.hasNext()) {
            return ov2.a;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return nc8.I(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static mn2 x0(f77 f77Var) {
        return new mn2(f77Var, new hi(8));
    }

    public static f77 y0(Exception exc, mt3 mt3Var) {
        return exc == null ? rv2.a : new ev3(new u14(exc, 10), mt3Var);
    }

    public static String z0(f77 f77Var, String str) {
        f77Var.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i = 0;
        for (Object obj : f77Var) {
            i++;
            if (i > 1) {
                sb.append((CharSequence) str);
            }
            wx3.a(sb, obj, null);
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }
}
