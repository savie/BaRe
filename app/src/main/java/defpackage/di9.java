package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class di9 extends se9 {
    public final ci9 a;
    public final String b;
    public final bi9 c;
    public final se9 d;

    public di9(ci9 ci9Var, String str, bi9 bi9Var, se9 se9Var) {
        this.a = ci9Var;
        this.b = str;
        this.c = bi9Var;
        this.d = se9Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.a != ci9.d;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof di9) {
            di9 di9Var = (di9) obj;
            return di9Var.c == this.c && di9Var.d.equals(this.d) && di9Var.b.equals(this.b) && di9Var.a == this.a;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(di9.class, this.b, this.c, this.d, this.a);
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.c);
        return eq3.o(u48.p("LegacyKmsEnvelopeAead Parameters (kekUri: ", this.b, ", dekParsingStrategy: ", strValueOf, ", dekParametersForNewKeys: "), String.valueOf(this.d), ", variant: ", String.valueOf(this.a), ")");
    }
}
