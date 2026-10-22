package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sf9 extends se9 {
    public final int a;
    public final int b;
    public final int c;
    public final rf9 d;

    public sf9(int i, int i2, int i3, rf9 rf9Var) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = rf9Var;
    }

    public static ju7 b() {
        ju7 ju7Var = new ju7();
        ju7Var.b = null;
        ju7Var.c = null;
        ju7Var.d = null;
        ju7Var.e = rf9.e;
        return ju7Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.d != rf9.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof sf9)) {
            return false;
        }
        sf9 sf9Var = (sf9) obj;
        return sf9Var.a == this.a && sf9Var.b == this.b && sf9Var.c == this.c && sf9Var.d == this.d;
    }

    public final int hashCode() {
        return Objects.hash(sf9.class, Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c), this.d);
    }

    public final String toString() {
        StringBuilder sbV = dj7.v("AesEax Parameters (variant: ", String.valueOf(this.d), ", ", this.b, "-byte IV, ");
        sbV.append(this.c);
        sbV.append("-byte tag, and ");
        sbV.append(this.a);
        sbV.append("-byte key)");
        return sbV.toString();
    }
}
