package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cv6 {
    public static final l15 b = o15.b(cv6.class);
    public ju7 a;

    public final void a(AutoCloseable autoCloseable) {
        zr7 zr7Var = (zr7) this.a.d;
        zq7 zq7Var = (zq7) zr7Var.d;
        try {
            Class<?> cls = autoCloseable.getClass();
            if (zq7Var.contains(cls)) {
                return;
            }
            xr7[] xr7VarArrA = zr7Var.a(autoCloseable);
            int i = 0;
            if (xr7VarArrA != null) {
                int length = xr7VarArrA.length;
                while (i < length) {
                    xr7VarArrA[i].a(autoCloseable);
                    i++;
                }
                return;
            }
            ArrayList arrayList = ((km5) zr7Var.a).n(cls).a;
            nd5[] nd5VarArr = (nd5[]) arrayList.toArray(new nd5[arrayList.size()]);
            int length2 = nd5VarArr.length;
            if (length2 == 0) {
                zq7Var.add(cls);
                return;
            }
            xr7[] xr7VarArr = new xr7[length2];
            while (i < length2) {
                nd5 nd5Var = nd5VarArr[i];
                us2 us2Var = (us2) zr7Var.e;
                ix0 ix0Var = (ix0) zr7Var.k;
                us2Var.getClass();
                xr7VarArr[i] = us2.y(ix0Var, nd5Var);
                i++;
            }
            zr7Var.b(autoCloseable, xr7VarArr);
        } catch (Exception e) {
            y5.k(e);
        }
    }
}
