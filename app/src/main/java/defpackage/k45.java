package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class k45 {
    public final l45 a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final ai5 h;

    public k45(int i) {
        this.b = i;
        if (i == 2) {
            this.d = 3;
        } else {
            if (i != 3 && i != 4) {
                c6.f(xs1.h(i, "K: ", " is not supported for Crystals Kyber"));
                throw null;
            }
            this.d = 2;
        }
        int i2 = i * 384;
        this.c = i2;
        int i3 = i2 + 32;
        this.e = i3;
        this.f = i2;
        this.g = i3;
        this.h = new ai5(6);
        this.a = new l45(this);
    }

    public final boolean a(byte[] bArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.b; i2++) {
            int i3 = i2 * 384;
            int i4 = -1;
            for (int i5 = 0; i5 < 128; i5++) {
                int i6 = (i5 * 3) + i3;
                int i7 = bArr[i6] & 255;
                int i8 = bArr[i6 + 1] & 255;
                i4 = i4 & (((short) ((i7 | (i8 << 8)) & 4095)) - 3329) & (((short) ((((bArr[i6 + 2] & 255) << 4) | (i8 >> 4)) & 4095)) - 3329);
            }
            i &= i4;
        }
        return i < 0;
    }
}
