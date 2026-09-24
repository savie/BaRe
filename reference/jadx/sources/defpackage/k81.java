package defpackage;

import java.io.EOFException;
import java.lang.reflect.InvocationTargetException;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k81 extends qi4 {
    public static final i81 d = new i81(0);
    public final bb9 a;
    public final j81[] b;
    public final l39 c;

    public k81(bb9 bb9Var, TreeMap treeMap) {
        this.a = bb9Var;
        this.b = (j81[]) treeMap.values().toArray(new j81[treeMap.size()]);
        this.c = l39.i((String[]) treeMap.keySet().toArray(new String[treeMap.size()]));
    }

    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) throws EOFException, tj4 {
        try {
            Object objD = this.a.D();
            try {
                bn4Var.b();
                while (bn4Var.u()) {
                    int iB0 = bn4Var.b0(this.c);
                    if (iB0 == -1) {
                        bn4Var.g0();
                        bn4Var.k0();
                    } else {
                        j81 j81Var = this.b[iB0];
                        j81Var.b.set(objD, j81Var.c.a(bn4Var));
                    }
                }
                bn4Var.m();
                return objD;
            } catch (IllegalAccessException unused) {
                d6.n();
                return null;
            }
        } catch (IllegalAccessException unused2) {
            d6.n();
            return null;
        } catch (InstantiationException e) {
            y5.k(e);
            return null;
        } catch (InvocationTargetException e2) {
            yh8.h(e2);
            throw null;
        }
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        try {
            dn4Var.g();
            for (j81 j81Var : this.b) {
                dn4Var.m(j81Var.a);
                j81Var.c.e(dn4Var, j81Var.b.get(obj));
            }
            dn4Var.e = false;
            dn4Var.h(3, 5, '}');
        } catch (IllegalAccessException unused) {
            d6.n();
        }
    }

    public final String toString() {
        return "JsonAdapter(" + this.a + ")";
    }
}
