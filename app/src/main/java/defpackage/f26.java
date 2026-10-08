package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class f26 implements b55 {
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public final byte[] a = new byte[1];
    public final byte[] o = new byte[16];
    public int p = 0;

    public static final long d(int i, int i2) {
        return (((long) i) & 4294967295L) * ((long) i2);
    }

    @Override // defpackage.b55
    public final void a(byte b) {
        byte[] bArr = this.a;
        bArr[0] = b;
        update(bArr, 0, 1);
    }

    @Override // defpackage.b55
    public final int b() {
        return 16;
    }

    @Override // defpackage.b55
    public final void c(z61 z61Var) {
        byte[] bArr = ((oo4) z61Var).a;
        if (bArr.length != 32) {
            c6.f("Poly1305 key must be 256 bits.");
            return;
        }
        int iR = xx3.r(bArr, 0);
        int iR2 = xx3.r(bArr, 4);
        int iR3 = xx3.r(bArr, 8);
        int iR4 = xx3.r(bArr, 12);
        this.b = 67108863 & iR;
        int i = ((iR >>> 26) | (iR2 << 6)) & 67108611;
        this.c = i;
        int i2 = ((iR2 >>> 20) | (iR3 << 12)) & 67092735;
        this.d = i2;
        int i3 = ((iR3 >>> 14) | (iR4 << 18)) & 66076671;
        this.e = i3;
        int i4 = (iR4 >>> 8) & 1048575;
        this.f = i4;
        this.g = i * 5;
        this.h = i2 * 5;
        this.i = i3 * 5;
        this.j = i4 * 5;
        this.k = xx3.r(bArr, 16);
        this.l = xx3.r(bArr, 20);
        this.m = xx3.r(bArr, 24);
        this.n = xx3.r(bArr, 28);
        this.p = 0;
        this.u = 0;
        this.t = 0;
        this.s = 0;
        this.r = 0;
        this.q = 0;
    }

    @Override // defpackage.b55
    public final int doFinal(byte[] bArr, int i) {
        if (i + 16 > bArr.length) {
            throw new dv5("Output buffer is too short.");
        }
        if (this.p > 0) {
            e();
        }
        int i2 = this.r;
        int i3 = this.q;
        int i4 = i2 + (i3 >>> 26);
        int i5 = this.s + (i4 >>> 26);
        int i6 = this.t + (i5 >>> 26);
        int i7 = i5 & 67108863;
        int i8 = this.u + (i6 >>> 26);
        int i9 = i6 & 67108863;
        int i10 = ((i8 >>> 26) * 5) + (i3 & 67108863);
        int i11 = i8 & 67108863;
        int i12 = (i4 & 67108863) + (i10 >>> 26);
        int i13 = i10 & 67108863;
        int i14 = i13 + 5;
        int i15 = (i14 >>> 26) + i12;
        int i16 = (i15 >>> 26) + i7;
        int i17 = (i16 >>> 26) + i9;
        int i18 = 67108863 & i17;
        int i19 = ((i17 >>> 26) + i11) - 67108864;
        int i20 = (i19 >>> 31) - 1;
        int i21 = ~i20;
        int i22 = (i13 & i21) | (i14 & 67108863 & i20);
        this.q = i22;
        int i23 = (i12 & i21) | (i15 & 67108863 & i20);
        this.r = i23;
        int i24 = (i7 & i21) | (i16 & 67108863 & i20);
        this.s = i24;
        int i25 = (i18 & i20) | (i9 & i21);
        this.t = i25;
        int i26 = (i11 & i21) | (i19 & i20);
        this.u = i26;
        long j = (((long) ((i23 << 26) | i22)) & 4294967295L) + (((long) this.k) & 4294967295L);
        long j2 = (((long) ((i23 >>> 6) | (i24 << 20))) & 4294967295L) + (((long) this.l) & 4294967295L);
        long j3 = (((long) ((i24 >>> 12) | (i25 << 14))) & 4294967295L) + (((long) this.m) & 4294967295L);
        long j4 = (((long) ((i25 >>> 18) | (i26 << 8))) & 4294967295L) + (((long) this.n) & 4294967295L);
        xx3.o(bArr, (int) j, i);
        long j5 = j2 + (j >>> 32);
        xx3.o(bArr, (int) j5, i + 4);
        long j6 = j3 + (j5 >>> 32);
        xx3.o(bArr, (int) j6, i + 8);
        xx3.o(bArr, (int) (j4 + (j6 >>> 32)), i + 12);
        this.p = 0;
        this.u = 0;
        this.t = 0;
        this.s = 0;
        this.r = 0;
        this.q = 0;
        return 16;
    }

    public final void e() {
        int i = this.p;
        byte[] bArr = this.o;
        if (i < 16) {
            bArr[i] = 1;
            for (int i2 = i + 1; i2 < 16; i2++) {
                bArr[i2] = 0;
            }
        }
        long jR = xx3.r(bArr, 0);
        long j = jR & 4294967295L;
        long jR2 = ((long) xx3.r(bArr, 4)) & 4294967295L;
        long jR3 = ((long) xx3.r(bArr, 8)) & 4294967295L;
        long jR4 = 4294967295L & ((long) xx3.r(bArr, 12));
        int i3 = (int) (((long) this.q) + (jR & 67108863));
        this.q = i3;
        this.r = (int) (((long) this.r) + ((((jR2 << 32) | j) >>> 26) & 67108863));
        this.s = (int) (((long) this.s) + ((((jR3 << 32) | jR2) >>> 20) & 67108863));
        this.t = (int) (((long) this.t) + ((((jR4 << 32) | jR3) >>> 14) & 67108863));
        int i4 = (int) (((long) this.u) + (jR4 >>> 8));
        this.u = i4;
        if (this.p == 16) {
            this.u = i4 + 16777216;
        }
        long jD = d(this.u, this.g) + d(this.t, this.h) + d(this.s, this.i) + d(this.r, this.j) + d(i3, this.b);
        long jD2 = d(this.u, this.h) + d(this.t, this.i) + d(this.s, this.j) + d(this.r, this.b) + d(this.q, this.c);
        long jD3 = d(this.u, this.i) + d(this.t, this.j) + d(this.s, this.b) + d(this.r, this.c) + d(this.q, this.d);
        long jD4 = d(this.u, this.j) + d(this.t, this.b) + d(this.s, this.c) + d(this.r, this.d) + d(this.q, this.e);
        long jD5 = d(this.u, this.b) + d(this.t, this.c) + d(this.s, this.d) + d(this.r, this.e) + d(this.q, this.f);
        long j2 = jD2 + (jD >>> 26);
        long j3 = jD3 + (j2 >>> 26);
        this.s = ((int) j3) & 67108863;
        long j4 = jD4 + (j3 >>> 26);
        this.t = ((int) j4) & 67108863;
        long j5 = jD5 + (j4 >>> 26);
        this.u = ((int) j5) & 67108863;
        int i5 = (((int) (j5 >>> 26)) * 5) + (((int) jD) & 67108863);
        this.r = (((int) j2) & 67108863) + (i5 >>> 26);
        this.q = i5 & 67108863;
    }

    @Override // defpackage.b55
    public final void update(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i2 > i3) {
            if (this.p == 16) {
                e();
                this.p = 0;
            }
            int iMin = Math.min(i2 - i3, 16 - this.p);
            System.arraycopy(bArr, i3 + i, this.o, this.p, iMin);
            i3 += iMin;
            this.p += iMin;
        }
    }
}
