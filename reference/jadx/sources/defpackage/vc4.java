package defpackage;

import android.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vc4 {
    public static final vc4 e = new vc4(0, 0, 0, 0);
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public vc4(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public static vc4 a(vc4 vc4Var, vc4 vc4Var2) {
        return c(Math.max(vc4Var.a, vc4Var2.a), Math.max(vc4Var.b, vc4Var2.b), Math.max(vc4Var.c, vc4Var2.c), Math.max(vc4Var.d, vc4Var2.d));
    }

    public static vc4 b(vc4 vc4Var, vc4 vc4Var2) {
        return c(Math.min(vc4Var.a, vc4Var2.a), Math.min(vc4Var.b, vc4Var2.b), Math.min(vc4Var.c, vc4Var2.c), Math.min(vc4Var.d, vc4Var2.d));
    }

    public static vc4 c(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? e : new vc4(i, i2, i3, i4);
    }

    public static vc4 d(Insets insets) {
        return c(insets.left, insets.top, insets.right, insets.bottom);
    }

    public final Insets e() {
        return du.g(this.a, this.b, this.c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || vc4.class != obj.getClass()) {
            return false;
        }
        vc4 vc4Var = (vc4) obj;
        return this.d == vc4Var.d && this.a == vc4Var.a && this.c == vc4Var.c && this.b == vc4Var.b;
    }

    public final int hashCode() {
        return (((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Insets{left=");
        sb.append(this.a);
        sb.append(", top=");
        sb.append(this.b);
        sb.append(", right=");
        sb.append(this.c);
        sb.append(", bottom=");
        return eq3.m(sb, this.d, '}');
    }
}
