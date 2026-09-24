package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mu9 extends cr9 {
    public final int a;
    public final int b;
    public final ku9 c;
    public final lu9 d;

    public mu9(int i, int i2, ku9 ku9Var, lu9 lu9Var) {
        this.a = i;
        this.b = i2;
        this.c = ku9Var;
        this.d = lu9Var;
    }

    public static kc b() {
        kc kcVar = new kc(7);
        kcVar.b = null;
        kcVar.c = null;
        kcVar.d = null;
        kcVar.e = ku9.e;
        return kcVar;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.c != ku9.e;
    }

    public final int c() {
        ku9 ku9Var = ku9.e;
        int i = this.b;
        ku9 ku9Var2 = this.c;
        if (ku9Var2 == ku9Var) {
            return i;
        }
        if (ku9Var2 == ku9.b) {
            return i + 5;
        }
        if (ku9Var2 == ku9.c) {
            return i + 5;
        }
        if (ku9Var2 == ku9.d) {
            return i + 5;
        }
        l0.e("Unknown variant");
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof mu9)) {
            return false;
        }
        mu9 mu9Var = (mu9) obj;
        return mu9Var.a == this.a && mu9Var.c() == c() && mu9Var.c == this.c && mu9Var.d == this.d;
    }

    public final int hashCode() {
        return Objects.hash(mu9.class, Integer.valueOf(this.a), Integer.valueOf(this.b), this.c, this.d);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("HMAC Parameters (variant: ", String.valueOf(this.c), ", hashType: ", String.valueOf(this.d), ", ");
        sbP.append(this.b);
        sbP.append("-byte tags, and ");
        sbP.append(this.a);
        sbP.append("-byte key)");
        return sbP.toString();
    }
}
