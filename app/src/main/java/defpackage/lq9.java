package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lq9 extends cr9 {
    public final jq9 a;
    public final hq9 b;
    public final gq9 c;
    public final iq9 d;

    public lq9(jq9 jq9Var, hq9 hq9Var, gq9 gq9Var, iq9 iq9Var) {
        this.a = jq9Var;
        this.b = hq9Var;
        this.c = gq9Var;
        this.d = iq9Var;
    }

    public static l40 b() {
        l40 l40Var = new l40(4);
        l40Var.b = null;
        l40Var.c = null;
        l40Var.d = null;
        l40Var.e = iq9.d;
        return l40Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.d != iq9.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof lq9)) {
            return false;
        }
        lq9 lq9Var = (lq9) obj;
        return this.a == lq9Var.a && this.b == lq9Var.b && this.c == lq9Var.c && this.d == lq9Var.d;
    }

    public final int hashCode() {
        return Objects.hash(lq9.class, this.a, this.b, this.c, this.d);
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.d);
        String strValueOf2 = String.valueOf(this.a);
        return eq3.o(u48.p("HPKE Parameters (Variant: ", strValueOf, ", KemId: ", strValueOf2, ", KdfId: "), String.valueOf(this.b), ", AeadId: ", String.valueOf(this.c), ")");
    }
}
