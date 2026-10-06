package defpackage;

import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pb6 extends qb6 {
    public final BigInteger c;
    public final BigInteger d;

    public pb6(BigInteger bigInteger, BigInteger bigInteger2) {
        super(bigInteger.bitLength());
        this.c = bigInteger;
        this.d = bigInteger2;
    }

    @Override // defpackage.qb6
    public final PublicKey h() {
        return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(this.c, this.d));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PublicKeyValues.Rsa{modulus=");
        sb.append(this.c);
        sb.append(", publicExponent=");
        sb.append(this.d);
        sb.append(", bitLength=");
        return eq3.m(sb, this.a, '}');
    }
}
