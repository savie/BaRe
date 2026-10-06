package defpackage;

import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class js4 {
    public final List a;
    public final e25 b;
    public final String c;
    public final long d;
    public final int e;
    public final long f;
    public final String g;
    public final List h;
    public final mc i;
    public final int j;
    public final int k;
    public final int l;
    public final float m;
    public final float n;
    public final int o;
    public final int p;
    public final jc q;
    public final kc r;
    public final bc s;
    public final List t;
    public final int u;
    public final boolean v;
    public final z28 w;
    public final nz4 x;

    public js4(List list, e25 e25Var, String str, long j, int i, long j2, String str2, List list2, mc mcVar, int i2, int i3, int i4, float f, float f2, int i5, int i6, jc jcVar, kc kcVar, List list3, int i7, bc bcVar, boolean z, z28 z28Var, nz4 nz4Var) {
        this.a = list;
        this.b = e25Var;
        this.c = str;
        this.d = j;
        this.e = i;
        this.f = j2;
        this.g = str2;
        this.h = list2;
        this.i = mcVar;
        this.j = i2;
        this.k = i3;
        this.l = i4;
        this.m = f;
        this.n = f2;
        this.o = i5;
        this.p = i6;
        this.q = jcVar;
        this.r = kcVar;
        this.t = list3;
        this.u = i7;
        this.s = bcVar;
        this.v = z;
        this.w = z28Var;
        this.x = nz4Var;
    }

    public final String a(String str) {
        int i;
        StringBuilder sbS = dj7.s(str);
        sbS.append(this.c);
        sbS.append("\n");
        long j = this.f;
        e25 e25Var = this.b;
        js4 js4Var = (js4) e25Var.h.b(j);
        if (js4Var != null) {
            sbS.append("\t\tParents: ");
            sbS.append(js4Var.c);
            for (js4 js4Var2 = (js4) e25Var.h.b(js4Var.f); js4Var2 != null; js4Var2 = (js4) e25Var.h.b(js4Var2.f)) {
                sbS.append("->");
                sbS.append(js4Var2.c);
            }
            sbS.append(str);
            sbS.append("\n");
        }
        List list = this.h;
        if (!list.isEmpty()) {
            sbS.append(str);
            sbS.append("\tMasks: ");
            sbS.append(list.size());
            sbS.append("\n");
        }
        int i2 = this.j;
        if (i2 != 0 && (i = this.k) != 0) {
            sbS.append(str);
            sbS.append("\tBackground: ");
            sbS.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(i2), Integer.valueOf(i), Integer.valueOf(this.l)));
        }
        List list2 = this.a;
        if (!list2.isEmpty()) {
            sbS.append(str);
            sbS.append("\tShapes:\n");
            for (Object obj : list2) {
                sbS.append(str);
                sbS.append("\t\t");
                sbS.append(obj);
                sbS.append("\n");
            }
        }
        return sbS.toString();
    }

    public final String toString() {
        return a("");
    }
}
