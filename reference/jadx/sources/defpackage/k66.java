package defpackage;

import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k66 extends l66 {
    public final BigInteger d;
    public final BigInteger e;
    public BigInteger f;
    public BigInteger k;
    public BigInteger n;
    public BigInteger p;
    public BigInteger q;

    public k66(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7) {
        super(bigInteger.bitLength());
        this.d = bigInteger;
        this.e = bigInteger2;
        this.f = bigInteger3;
        this.k = bigInteger4;
        this.n = bigInteger5;
        this.p = bigInteger6;
        this.q = bigInteger7;
        if (bigInteger5 == null || bigInteger6 == null || bigInteger7 == null) {
            if (bigInteger5 == null && bigInteger6 == null && bigInteger7 == null) {
                return;
            }
            c6.f("All CRT values must either be present or omitted");
            throw null;
        }
    }

    @Override // javax.security.auth.Destroyable
    public final void destroy() {
        BigInteger bigInteger = BigInteger.ZERO;
        this.f = bigInteger;
        this.k = bigInteger;
        this.n = null;
        this.p = null;
        this.q = null;
        this.b = true;
    }

    public final String toString() {
        return "PrivateKeyValues.Rsa{modulus=" + this.d + ", publicExponent=" + this.e + ", bitLength=" + this.a + ", hasCrtValues=" + (this.q != null) + ", destroyed=" + this.b + '}';
    }
}
