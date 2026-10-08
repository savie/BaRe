package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eu9 extends cr9 {
    public final int a;
    public final int b;
    public final du9 c;

    public eu9(int i, int i2, du9 du9Var) {
        this.a = i;
        this.b = i2;
        this.c = du9Var;
    }

    public static l22 b() {
        l22 l22Var = new l22((byte) 0, 10);
        l22Var.b = null;
        l22Var.c = null;
        l22Var.d = du9.f;
        return l22Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.c != du9.f;
    }

    public final int c() {
        du9 du9Var = du9.f;
        int i = this.b;
        du9 du9Var2 = this.c;
        if (du9Var2 == du9Var) {
            return i;
        }
        if (du9Var2 == du9.c) {
            return i + 5;
        }
        if (du9Var2 == du9.d) {
            return i + 5;
        }
        if (du9Var2 == du9.e) {
            return i + 5;
        }
        l0.e("Unknown variant");
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof eu9)) {
            return false;
        }
        eu9 eu9Var = (eu9) obj;
        return eu9Var.a == this.a && eu9Var.c() == c() && eu9Var.c == this.c;
    }

    public final int hashCode() {
        return Objects.hash(eu9.class, Integer.valueOf(this.a), Integer.valueOf(this.b), this.c);
    }

    public final String toString() {
        return xs1.m(dj7.v("AES-CMAC Parameters (variant: ", String.valueOf(this.c), ", ", this.b, "-byte tags, and "), this.a, "-byte key)");
    }
}
