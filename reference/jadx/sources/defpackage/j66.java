package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j66 extends l66 {
    public final zt2 d;
    public final byte[] e;

    public j66(zt2 zt2Var, byte[] bArr) {
        super(zt2Var.a);
        this.d = zt2Var;
        this.e = Arrays.copyOf(bArr, bArr.length);
    }

    @Override // javax.security.auth.Destroyable
    public final void destroy() {
        Arrays.fill(this.e, (byte) 0);
        this.b = true;
    }

    public final String toString() {
        return "PrivateKeyValues.Ec{curve=" + this.d.name() + ", bitLength=" + this.a + ", destroyed=" + this.b + '}';
    }
}
