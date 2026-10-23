package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class x24 {
    public static final int[] i = new int[256];
    public final int a;
    public final int[] b;
    public final int[] c;
    public final int[] d;
    public final int e;
    public int f = 0;
    public int g = 0;
    public int h = 0;

    static {
        for (int i2 = 0; i2 < 256; i2++) {
            int i3 = i2;
            for (int i4 = 0; i4 < 8; i4++) {
                i3 = (i3 & 1) != 0 ? (i3 >>> 1) ^ (-306674912) : i3 >>> 1;
            }
            i[i2] = i3;
        }
    }

    public x24(int i2, v40 v40Var) {
        this.b = v40Var.b(1024, true);
        this.c = v40Var.b(65536, true);
        int i3 = i2 - 1;
        int i4 = i3 | (i3 >>> 1);
        int i5 = i4 | (i4 >>> 2);
        int i6 = i5 | (i5 >>> 4);
        int i7 = ((i6 | (i6 >>> 8)) >>> 1) | 65535;
        i7 = i7 > 16777216 ? i7 >>> 1 : i7;
        int i8 = i7 + 1;
        this.e = i8;
        this.d = v40Var.b(i8, true);
        this.a = i7;
    }

    public final void a(byte[] bArr, int i2) {
        int i3 = bArr[i2] & 255;
        int[] iArr = i;
        int i4 = iArr[i3] ^ (bArr[i2 + 1] & 255);
        this.f = i4 & 1023;
        int i5 = i4 ^ ((bArr[i2 + 2] & 255) << 8);
        this.g = 65535 & i5;
        this.h = ((iArr[bArr[i2 + 3] & 255] << 5) ^ i5) & this.a;
    }

    public final void b(int i2) {
        this.b[this.f] = i2;
        this.c[this.g] = i2;
        this.d[this.h] = i2;
    }
}
