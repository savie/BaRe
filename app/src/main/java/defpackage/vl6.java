package defpackage;

import java.io.EOFException;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vl6 extends fa3 {
    public static final ey5 e;
    public final ClassLoader b;
    public final fa3 c;
    public final gv7 d;

    static {
        String str = ey5.b;
        e = ma2.r("/");
    }

    public vl6(ClassLoader classLoader) {
        pn4 pn4Var = fa3.a;
        pn4Var.getClass();
        this.b = classLoader;
        this.c = pn4Var;
        this.d = new gv7(new xq4(this, 10));
    }

    @Override // defpackage.fa3
    public final on4 a(ey5 ey5Var) throws EOFException, FileNotFoundException {
        ey5 ey5Var2 = ey5Var;
        if (!us2.s(ey5Var2)) {
            m0.l(ey5Var2, "file not found: ");
            return null;
        }
        ey5 ey5Var3 = e;
        ey5Var3.getClass();
        ey5 ey5VarB = c.b(ey5Var3, ey5Var2, true);
        hy0 hy0Var = ey5VarB.a;
        hy0 hy0Var2 = ey5Var3.a;
        int iA = c.a(ey5VarB);
        ey5 ey5Var4 = iA == -1 ? null : new ey5(hy0Var.r(0, iA));
        int iA2 = c.a(ey5Var3);
        if (!pe4.d(ey5Var4, iA2 == -1 ? null : new ey5(hy0Var2.r(0, iA2)))) {
            q.f("Paths of different roots cannot be relative to each other: ", ey5VarB, " and ", ey5Var3);
            return null;
        }
        ArrayList arrayListA = ey5VarB.a();
        ArrayList arrayListA2 = ey5Var3.a();
        int iMin = Math.min(arrayListA.size(), arrayListA2.size());
        int i = 0;
        while (i < iMin && pe4.d(arrayListA.get(i), arrayListA2.get(i))) {
            i++;
        }
        if (i == iMin && hy0Var.d() == hy0Var2.d()) {
            ey5VarB = ma2.r(".");
        } else {
            if (arrayListA2.subList(i, arrayListA2.size()).indexOf(c.e) != -1) {
                q.f("Impossible relative path to resolve: ", ey5VarB, " and ", ey5Var3);
                return null;
            }
            if (!pe4.d(hy0Var2, c.d)) {
                nw0 nw0Var = new nw0();
                hy0 hy0VarC = c.c(ey5Var3);
                if (hy0VarC == null && (hy0VarC = c.c(ey5VarB)) == null) {
                    hy0VarC = c.f(ey5.b);
                }
                int size = arrayListA2.size();
                for (int i2 = i; i2 < size; i2++) {
                    nw0Var.D(c.e);
                    nw0Var.D(hy0VarC);
                }
                int size2 = arrayListA.size();
                while (i < size2) {
                    nw0Var.D((hy0) arrayListA.get(i));
                    nw0Var.D(hy0VarC);
                    i++;
                }
                ey5VarB = c.d(nw0Var, false);
            }
        }
        String strW = ey5VarB.a.w();
        for (pw5 pw5Var : (List) this.d.getValue()) {
            try {
                return ((fa3) pw5Var.a).a(((ey5) pw5Var.b).b(strW));
            } catch (FileNotFoundException unused) {
            }
        }
        m0.l(ey5Var2, "file not found: ");
        return null;
    }
}
