package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vv4 implements p77 {
    public final p77 a;
    public final p77 b;

    public vv4(p77 p77Var, p77 p77Var2) {
        p77Var.getClass();
        p77Var2.getClass();
        this.a = p77Var;
        this.b = p77Var2;
    }

    @Override // defpackage.p77
    public final String a() {
        return "kotlin.collections.LinkedHashMap";
    }

    @Override // defpackage.p77
    public final boolean c() {
        return false;
    }

    @Override // defpackage.p77
    public final int d(String str) {
        str.getClass();
        Integer numW = uq7.W(10, str);
        if (numW != null) {
            return numW.intValue();
        }
        c6.f(str.concat(" is not a valid map index"));
        return 0;
    }

    @Override // defpackage.p77
    public final zh8 e() {
        return fr7.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vv4)) {
            return false;
        }
        vv4 vv4Var = (vv4) obj;
        return pe4.d(this.a, vv4Var.a) && pe4.d(this.b, vv4Var.b);
    }

    @Override // defpackage.p77
    public final int f() {
        return 2;
    }

    @Override // defpackage.p77
    public final String g(int i) {
        return String.valueOf(i);
    }

    @Override // defpackage.p77
    public final List getAnnotations() {
        return ov2.a;
    }

    @Override // defpackage.p77
    public final List h(int i) {
        if (i >= 0) {
            return ov2.a;
        }
        f6.g(xs1.h(i, "Illegal index ", ", kotlin.collections.LinkedHashMap expects only non-negative indices"));
        return null;
    }

    public final int hashCode() {
        return this.b.hashCode() + ((this.a.hashCode() + 710441009) * 31);
    }

    @Override // defpackage.p77
    public final p77 i(int i) {
        if (i < 0) {
            f6.g(xs1.h(i, "Illegal index ", ", kotlin.collections.LinkedHashMap expects only non-negative indices"));
            return null;
        }
        int i2 = i % 2;
        if (i2 == 0) {
            return this.a;
        }
        if (i2 == 1) {
            return this.b;
        }
        l0.e("Unreached");
        return null;
    }

    @Override // defpackage.p77
    public final boolean isInline() {
        return false;
    }

    @Override // defpackage.p77
    public final boolean j(int i) {
        if (i >= 0) {
            return false;
        }
        f6.g(xs1.h(i, "Illegal index ", ", kotlin.collections.LinkedHashMap expects only non-negative indices"));
        return false;
    }

    public final String toString() {
        return "kotlin.collections.LinkedHashMap(" + this.a + ", " + this.b + ')';
    }
}
