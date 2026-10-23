package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class pl2 extends ei0 {
    public final byte[] c;
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] k;
    public final byte[] n;
    public final byte[] p;

    public pl2(ol2 ol2Var, byte[] bArr, ql2 ql2Var) {
        int i;
        char c;
        int i2;
        super((Object) ol2Var, true);
        int i3 = ol2Var.a;
        new lr6(256);
        int i4 = 96;
        if (i3 != 2) {
            i = 5;
            if (i3 == 3) {
                i2 = 6;
                i4 = 128;
            } else {
                if (i3 != 5) {
                    c6.f(xs1.h(i3, "The mode ", "is not supported by Crystals Dilithium!"));
                    throw null;
                }
                i2 = 8;
                i = 7;
            }
            c = 0;
        } else {
            i = 4;
            c = 0;
            i2 = 4;
        }
        new lr6(128);
        new lr6(256);
        if (c != 0 && c != 0) {
            g84.h("Wrong Dilithium Gamma1!");
            throw null;
        }
        this.c = ms8.t(bArr, 0, 32);
        this.d = ms8.t(bArr, 32, 64);
        this.e = ms8.t(bArr, 64, 128);
        int i5 = (i * i4) + 128;
        this.f = ms8.t(bArr, 128, i5);
        int i6 = (i4 * i2) + i5;
        this.k = ms8.t(bArr, i5, i6);
        this.n = ms8.t(bArr, i6, (i2 * 416) + i6);
        if (ql2Var != null) {
            this.p = ms8.k(ql2Var.d);
        } else {
            this.p = null;
        }
    }

    public pl2(ol2 ol2Var, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        super((Object) ol2Var, true);
        this.c = ms8.k(bArr);
        this.d = ms8.k(bArr2);
        this.e = ms8.k(bArr3);
        this.f = ms8.k(bArr4);
        this.k = ms8.k(bArr5);
        this.n = ms8.k(bArr6);
        this.p = ms8.k(bArr7);
    }
}
