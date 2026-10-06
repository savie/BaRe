package defpackage;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class d26 implements p77, jz0 {
    public final String a;
    public final bv3 b;
    public final int c;
    public int d = -1;
    public final String[] e;
    public final List[] f;
    public final boolean[] g;
    public Map h;
    public final os4 i;
    public final os4 j;
    public final os4 k;

    public d26(String str, bv3 bv3Var, int i) {
        this.a = str;
        this.b = bv3Var;
        this.c = i;
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            strArr[i2] = "[UNINITIALIZED]";
        }
        this.e = strArr;
        int i3 = this.c;
        this.f = new List[i3];
        this.g = new boolean[i3];
        this.h = pv2.a;
        int i4 = 2;
        to5 to5Var = new to5(this, i4);
        ys4 ys4Var = ys4.b;
        this.i = jd4.x(ys4Var, to5Var);
        this.j = jd4.x(ys4Var, new pu(this, 12));
        this.k = jd4.x(ys4Var, new us5(this, i4));
    }

    @Override // defpackage.p77
    public final String a() {
        return this.a;
    }

    @Override // defpackage.jz0
    public final Set b() {
        return this.h.keySet();
    }

    @Override // defpackage.p77
    public final boolean c() {
        return false;
    }

    @Override // defpackage.p77
    public final int d(String str) {
        str.getClass();
        Integer num = (Integer) this.h.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // defpackage.p77
    public final zh8 e() {
        return dr7.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d26) {
            p77 p77Var = (p77) obj;
            if (this.a.equals(p77Var.a()) && Arrays.equals((p77[]) this.j.getValue(), (p77[]) ((d26) obj).j.getValue())) {
                int iF = p77Var.f();
                int i = this.c;
                if (i == iF) {
                    for (int i2 = 0; i2 < i; i2++) {
                        if (pe4.d(i(i2).a(), p77Var.i(i2).a()) && pe4.d(i(i2).e(), p77Var.i(i2).e())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.p77
    public final int f() {
        return this.c;
    }

    @Override // defpackage.p77
    public final String g(int i) {
        return this.e[i];
    }

    @Override // defpackage.p77
    public final List getAnnotations() {
        return ov2.a;
    }

    @Override // defpackage.p77
    public final List h(int i) {
        List list = this.f[i];
        return list == null ? ov2.a : list;
    }

    public int hashCode() {
        return ((Number) this.k.getValue()).intValue();
    }

    @Override // defpackage.p77
    public final p77 i(int i) {
        return ((do4[]) this.i.getValue())[i].d();
    }

    @Override // defpackage.p77
    public boolean isInline() {
        return false;
    }

    @Override // defpackage.p77
    public final boolean j(int i) {
        return this.g[i];
    }

    public final void k(String str, boolean z) {
        int i = this.d + 1;
        this.d = i;
        String[] strArr = this.e;
        strArr[i] = str;
        this.g[i] = z;
        this.f[i] = null;
        if (i == this.c - 1) {
            HashMap map = new HashMap();
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                map.put(strArr[i2], Integer.valueOf(i2));
            }
            this.h = map;
        }
    }

    public final String toString() {
        return el1.Y0(l73.F(0, this.c), ", ", this.a.concat("("), ")", new c7(this, 25), 24);
    }
}
