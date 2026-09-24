package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class gu3 extends sz8 {
    @Override // defpackage.sz8
    public final short C(short s) {
        short sD = D(z0(s), s);
        short sD2 = D(z0(z0(sD)), sD);
        return z0(D(z0(D(z0(z0(D(z0(z0(z0(z0(sD2)))), sD2))), sD)), s));
    }

    @Override // defpackage.sz8
    public final short D(short s, short s2) {
        int i = (s2 & 1) * s;
        for (int i2 = 1; i2 < 12; i2++) {
            i ^= ((1 << i2) & s2) * s;
        }
        return y0(i);
    }

    public final short y0(int i) {
        int i2 = (2093056 & i) >>> 9;
        int i3 = (14680064 & i) >>> 18;
        return (short) (((((i & 4095) ^ (i >>> 12)) ^ i2) ^ i3) ^ (i >>> 21));
    }

    public final short z0(short s) {
        return y0(lg7.k(s));
    }
}
