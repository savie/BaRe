package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sj9 extends bk9 {
    public final char[] e;

    public sj9(pj9 pj9Var) {
        super(pj9Var, (Character) null);
        this.e = new char[512];
        char[] cArr = pj9Var.b;
        if (cArr.length != 16) {
            c6.b();
            throw null;
        }
        for (int i = 0; i < 256; i++) {
            char[] cArr2 = this.e;
            cArr2[i] = cArr[i >>> 4];
            cArr2[i | 256] = cArr[i & 15];
        }
    }

    @Override // defpackage.bk9
    public final void a(StringBuilder sb, byte[] bArr, int i) {
        y13.P(0, i, bArr.length);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = bArr[i2] & 255;
            char[] cArr = this.e;
            sb.append(cArr[i3]);
            sb.append(cArr[i3 | 256]);
        }
    }
}
