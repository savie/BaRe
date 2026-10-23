package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class of0 implements y61 {
    public ke6 a;

    @Override // defpackage.y61
    public final int a(int i, byte[] bArr, byte[] bArr2) {
        ke6 ke6Var = this.a;
        if (i > bArr.length) {
            throw new ua2("input buffer too short");
        }
        if (i > bArr2.length) {
            throw new dv5("output buffer too short");
        }
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = (ke6Var.b + 1) & 255;
            ke6Var.b = i3;
            byte[] bArr3 = ke6Var.a;
            byte b = bArr3[i3];
            int i4 = (ke6Var.c + b) & 255;
            ke6Var.c = i4;
            bArr3[i3] = bArr3[i4];
            bArr3[i4] = b;
            bArr2[i2] = (byte) (bArr3[(bArr3[i3] + b) & 255] ^ bArr[i2]);
        }
        return i;
    }

    @Override // defpackage.y61
    public final int doFinal(byte[] bArr, int i) {
        ke6 ke6Var = this.a;
        ke6Var.a(ke6Var.d);
        return 0;
    }

    @Override // defpackage.y61
    public final void init(byte[] bArr) {
        ke6 ke6Var = this.a;
        byte[] bArr2 = new oo4(bArr, bArr.length).a;
        ke6Var.d = bArr2;
        ke6Var.a(bArr2);
        ((d42) e42.a.get()).getClass();
    }
}
