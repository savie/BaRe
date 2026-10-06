package defpackage;

import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h0 extends r1 {
    public final BigInteger c;

    public h0(BigInteger bigInteger) {
        super(m2.k);
        this.c = bigInteger;
    }

    @Override // defpackage.z0
    public final Object getValue() {
        return this.c;
    }

    public h0(BigInteger bigInteger, byte[] bArr) {
        super(m2.k, bArr);
        this.c = bigInteger;
    }
}
