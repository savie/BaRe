package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mf0 implements y61 {
    public sw0 a;

    @Override // defpackage.y61
    public final int a(int i, byte[] bArr, byte[] bArr2) {
        return this.a.f(bArr, 0, i, bArr2, 0);
    }

    @Override // defpackage.y61
    public final int doFinal(byte[] bArr, int i) throws h67 {
        try {
            return this.a.a(bArr, i);
        } catch (yf4 e) {
            throw new h67(e);
        }
    }

    @Override // defpackage.y61
    public final void init(byte[] bArr) {
        sw0 sw0Var = this.a;
        b92 b92Var = new b92(bArr, bArr.length);
        if (b92.a(bArr, 0)) {
            c6.f("attempt to create weak DES key");
            return;
        }
        int length = bArr.length;
        for (int i = 0; i < length; i += 8) {
            if (b92.a(bArr, i)) {
                c6.f("attempt to create weak DESede key");
                return;
            }
        }
        sw0Var.d(true, b92Var);
    }
}
