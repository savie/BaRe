package defpackage;

import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class na5 {
    public final BigInteger a;
    public final BigInteger b;
    public final int c;

    public na5(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        this.a = bigInteger;
        this.b = bigInteger2;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof na5)) {
            return false;
        }
        na5 na5Var = (na5) obj;
        return this.a.equals(na5Var.a) && this.b.equals(na5Var.b) && this.c == na5Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MegaRsaPrivateKey(modulus=");
        sb.append(this.a);
        sb.append(", privateExponent=");
        sb.append(this.b);
        sb.append(", plaintextBytes=");
        return xs1.m(sb, this.c, ")");
    }
}
