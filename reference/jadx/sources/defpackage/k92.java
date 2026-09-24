package defpackage;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public final class k92 implements z61 {
    public final BigInteger a;
    public final BigInteger b;
    public final BigInteger c;
    public final l92 d;

    public k92(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, l92 l92Var) {
        this.a = bigInteger3;
        this.c = bigInteger;
        this.b = bigInteger2;
        this.d = l92Var;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof k92)) {
            return false;
        }
        k92 k92Var = (k92) obj;
        return k92Var.c.equals(this.c) && k92Var.b.equals(this.b) && k92Var.a.equals(this.a);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ (this.c.hashCode() ^ this.b.hashCode());
    }
}
