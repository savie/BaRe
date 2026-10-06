package defpackage;

import java.io.File;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ey5 implements Comparable {
    public static final String b;
    public final hy0 a;

    static {
        String str = File.separator;
        str.getClass();
        b = str;
    }

    public ey5(hy0 hy0Var) {
        hy0Var.getClass();
        this.a = hy0Var;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        int iA = c.a(this);
        hy0 hy0Var = this.a;
        if (iA == -1) {
            iA = 0;
        } else if (iA < hy0Var.d() && hy0Var.i(iA) == 92) {
            iA++;
        }
        int iD = hy0Var.d();
        int i = iA;
        while (iA < iD) {
            if (hy0Var.i(iA) == 47 || hy0Var.i(iA) == 92) {
                arrayList.add(hy0Var.r(i, iA));
                i = iA + 1;
            }
            iA++;
        }
        if (i < hy0Var.d()) {
            arrayList.add(hy0Var.r(i, hy0Var.d()));
        }
        return arrayList;
    }

    public final ey5 b(String str) {
        str.getClass();
        nw0 nw0Var = new nw0();
        nw0Var.Z(str);
        return c.b(this, c.d(nw0Var, false), false);
    }

    public final Character c() {
        hy0 hy0Var = c.a;
        hy0 hy0Var2 = this.a;
        if (hy0.g(hy0Var2, hy0Var) != -1 || hy0Var2.d() < 2 || hy0Var2.i(1) != 58) {
            return null;
        }
        char cI = (char) hy0Var2.i(0);
        if (('a' > cI || cI >= '{') && ('A' > cI || cI >= '[')) {
            return null;
        }
        return Character.valueOf(cI);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ey5 ey5Var = (ey5) obj;
        ey5Var.getClass();
        return this.a.compareTo(ey5Var.a);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ey5) && pe4.d(((ey5) obj).a, this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.w();
    }
}
