package defpackage;

import java.math.BigInteger;
import java.security.interfaces.RSAKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i16 extends j16 implements RSAKey {
    public final BigInteger e;

    public i16(vh7 vh7Var, vo4 vo4Var, BigInteger bigInteger, char[] cArr) {
        super(vh7Var, vo4Var, cArr);
        this.e = bigInteger;
    }

    @Override // java.security.interfaces.RSAKey
    public final BigInteger getModulus() {
        return this.e;
    }
}
