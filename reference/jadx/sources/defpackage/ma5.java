package defpackage;

import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ma5 {
    public final BigInteger a;
    public final int b;

    public ma5(int i, BigInteger bigInteger) {
        this.a = bigInteger;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ma5)) {
            return false;
        }
        ma5 ma5Var = (ma5) obj;
        return this.a.equals(ma5Var.a) && this.b == ma5Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "MegaMpi(value=" + this.a + ", nextOffset=" + this.b + ")";
    }
}
