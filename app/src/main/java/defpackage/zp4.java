package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zp4 {
    public final byte[] a;
    public final int b;
    public int c = 0;
    public int d = 0;
    public int e = 0;
    public int f = 0;
    public int g = 0;
    public int h = 0;

    public zp4(int i, v40 v40Var) {
        this.b = i;
        byte[] bArrA = v40Var.a(i);
        this.a = bArrA;
        bArrA[i - 1] = 0;
    }

    public final void a(int i, int i2) throws cy1 {
        int i3;
        if (i < 0 || i >= this.e) {
            throw new cy1();
        }
        int iMin = Math.min(this.f - this.d, i2);
        this.g = i2 - iMin;
        this.h = i;
        int i4 = (this.d - i) - 1;
        byte[] bArr = this.a;
        if (i4 < 0) {
            int i5 = this.b;
            int i6 = i4 + i5;
            int iMin2 = Math.min(i5 - i6, iMin);
            System.arraycopy(bArr, i6, bArr, this.d, iMin2);
            this.d += iMin2;
            iMin -= iMin2;
            if (iMin == 0) {
                return;
            } else {
                i4 = 0;
            }
        }
        do {
            int iMin3 = Math.min(iMin, this.d - i4);
            System.arraycopy(bArr, i4, bArr, this.d, iMin3);
            i3 = this.d + iMin3;
            this.d = i3;
            iMin -= iMin3;
        } while (iMin > 0);
        if (this.e < i3) {
            this.e = i3;
        }
    }
}
