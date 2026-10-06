package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dp9 extends bd9 {
    public final int a;
    public final cp9 b;

    public dp9(int i, cp9 cp9Var) {
        this.a = i;
        this.b = cp9Var;
    }

    public static wc9 b() {
        wc9 wc9Var = new wc9(11);
        wc9Var.b = null;
        wc9Var.c = cp9.d;
        return wc9Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.b != cp9.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof dp9)) {
            return false;
        }
        dp9 dp9Var = (dp9) obj;
        return dp9Var.a == this.a && dp9Var.b == this.b;
    }

    public final int hashCode() {
        return Objects.hash(dp9.class, Integer.valueOf(this.a), this.b);
    }

    public final String toString() {
        return u48.m("AesSiv Parameters (variant: ", String.valueOf(this.b), ", ", this.a, "-byte key)");
    }
}
