package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wj9 extends bk9 {
    /* JADX WARN: Illegal instructions before constructor call */
    public wj9(String str, String str2) {
        char[] charArray = str2.toCharArray();
        super(new pj9(str, charArray), (Character) '=');
        if (charArray.length == 64) {
            return;
        }
        c6.b();
        throw null;
    }

    @Override // defpackage.bk9
    public final void a(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        y13.P(0, i, bArr.length);
        for (int i3 = i; i3 >= 3; i3 -= 3) {
            int i4 = ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2] & 255) << 16) | (bArr[i2 + 2] & 255);
            pj9 pj9Var = this.a;
            char[] cArr = pj9Var.b;
            char[] cArr2 = pj9Var.b;
            sb.append(cArr[i4 >>> 18]);
            sb.append(cArr2[(i4 >>> 12) & 63]);
            sb.append(cArr2[(i4 >>> 6) & 63]);
            sb.append(cArr2[i4 & 63]);
            i2 += 3;
        }
        if (i2 < i) {
            b(sb, bArr, i2, i - i2);
        }
    }
}
