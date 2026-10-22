package defpackage;

import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.PrivateKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n06 extends p06 {
    public final MessageDigest c;

    public n06(vz0 vz0Var, String str) {
        super(vz0Var);
        this.c = MessageDigest.getInstance(str);
    }

    @Override // defpackage.p06
    public final byte[] a() {
        return this.c.digest();
    }

    @Override // defpackage.p06
    public final void b(byte b) {
        this.c.update(b);
    }

    @Override // defpackage.p06
    public final void c(byte[] bArr, int i, int i2) {
        this.c.update(bArr, i, i2);
    }

    @Override // defpackage.p06, java.security.SignatureSpi
    public final void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        super.engineInitSign(privateKey);
        this.c.reset();
    }
}
