package defpackage;

import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a2a {
    public final z1a a;
    public final int b;
    public final byte[] c = new byte[0];
    public final byte[] d = new byte[0];

    public a2a(z1a z1aVar, int i) throws InvalidAlgorithmParameterException {
        this.a = z1aVar;
        this.b = i;
        if (i < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        z1aVar.a(new byte[0], i);
    }

    public final byte[] a(byte[] bArr) {
        byte[] bArr2 = this.d;
        int length = bArr2.length;
        int i = this.b;
        z1a z1aVar = this.a;
        byte[] bArr3 = this.c;
        return length > 0 ? z85.N(bArr3, z1aVar.a(z85.N(bArr, bArr2), i)) : z85.N(bArr3, z1aVar.a(bArr, i));
    }
}
