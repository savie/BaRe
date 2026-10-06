package defpackage;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public final class c92 implements z61 {
    public BigInteger a;
    public BigInteger b;
    public BigInteger c;

    public final boolean equals(Object obj) {
        if (!(obj instanceof c92)) {
            return false;
        }
        c92 c92Var = (c92) obj;
        BigInteger bigInteger = this.c;
        BigInteger bigInteger2 = c92Var.c;
        if (bigInteger != null) {
            if (!bigInteger.equals(bigInteger2)) {
                return false;
            }
        } else if (bigInteger2 != null) {
            return false;
        }
        return c92Var.b.equals(this.b) && c92Var.a.equals(this.a);
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() ^ this.a.hashCode();
        BigInteger bigInteger = this.c;
        return (bigInteger != null ? bigInteger.hashCode() : 0) ^ iHashCode;
    }
}
