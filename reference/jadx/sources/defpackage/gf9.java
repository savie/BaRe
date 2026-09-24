package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gf9 extends se9 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final ef9 e;
    public final ff9 f;

    public gf9(int i, int i2, int i3, int i4, ef9 ef9Var, ff9 ff9Var) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = ef9Var;
        this.f = ff9Var;
    }

    public static fm1 b() {
        fm1 fm1Var = new fm1();
        fm1Var.b = null;
        fm1Var.c = null;
        fm1Var.d = null;
        fm1Var.e = null;
        fm1Var.a = null;
        fm1Var.f = ef9.e;
        return fm1Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.e != ef9.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof gf9)) {
            return false;
        }
        gf9 gf9Var = (gf9) obj;
        return gf9Var.a == this.a && gf9Var.b == this.b && gf9Var.c == this.c && gf9Var.d == this.d && gf9Var.e == this.e && gf9Var.f == this.f;
    }

    public final int hashCode() {
        return Objects.hash(gf9.class, Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.d), this.e, this.f);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("AesCtrHmacAead Parameters (variant: ", String.valueOf(this.e), ", hashType: ", String.valueOf(this.f), ", ");
        xs1.s(sbP, this.c, "-byte IV, and ", this.d, "-byte tags, and ");
        sbP.append(this.a);
        sbP.append("-byte AES key, and ");
        sbP.append(this.b);
        sbP.append("-byte HMAC key)");
        return sbP.toString();
    }
}
