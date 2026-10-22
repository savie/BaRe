package defpackage;

import java.io.IOException;
import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class pq4 extends gq4 {
    public int A;
    public final bf6 m;
    public final aq4 n;
    public final oq4 o;
    public final mq4 p;
    public final mq4 q;
    public final int r;
    public int s;
    public int t;
    public final int u;
    public final int[][] v;
    public final int[][] w;
    public final int[] x;
    public int y;
    public int z;

    public pq4(bf6 bf6Var, aq4 aq4Var, int i, int i2, int i3, int i4, int i5) {
        super(i3);
        this.s = 0;
        this.t = 0;
        Class cls = Integer.TYPE;
        this.w = (int[][]) Array.newInstance((Class<?>) cls, 4, 128);
        this.x = new int[16];
        this.y = 0;
        this.z = -1;
        this.A = 0;
        this.m = bf6Var;
        this.n = aq4Var;
        this.r = i5;
        this.o = new oq4(this, i, i2);
        this.p = new mq4(this, i3, i5);
        this.q = new mq4(this, i3, i5);
        int iE = e(i4 - 1) + 1;
        this.u = iE;
        this.v = (int[][]) Array.newInstance((Class<?>) cls, 4, iE);
        a();
    }

    public static int e(int i) {
        if (i <= 4 && i >= 0) {
            return i;
        }
        int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i);
        return ((31 - iNumberOfLeadingZeros) << 1) + ((i >>> (30 - iNumberOfLeadingZeros)) & 1);
    }

    public static pq4 f(bf6 bf6Var, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, v40 v40Var) {
        aq4 g24Var;
        if (i4 != 1) {
            if (i4 == 2) {
                return new rq4(bf6Var, i, i2, i3, i5, i6, i7, i8, i9, v40Var);
            }
            c6.b();
            return null;
        }
        int iMax = Math.max(i6, 1);
        if (i8 == 4) {
            g24Var = new g24(i5, iMax, 272, i7, i9, v40Var);
        } else {
            if (i8 != 20) {
                c6.b();
                return null;
            }
            g24Var = new qj0(i5, iMax, 272, i7, i9, v40Var);
        }
        qq4 qq4Var = new qq4(bf6Var, g24Var, i, i2, i3, i5, i7);
        qq4Var.B = null;
        return qq4Var;
    }

    @Override // defpackage.gq4
    public void a() {
        super.a();
        int i = 0;
        while (true) {
            nq4[] nq4VarArr = this.o.c;
            if (i >= nq4VarArr.length) {
                this.p.d();
                this.q.d();
                this.s = 0;
                this.t = 0;
                this.A = this.z + 1 + this.A;
                this.z = -1;
                return;
            }
            y13.o((short[]) nq4VarArr[i].b);
            i++;
        }
    }

    public final boolean b() {
        try {
            if ((this.n.g != -1) || c()) {
                while (this.A <= 2096879 && this.m.V() <= 65510) {
                    if (!d()) {
                    }
                }
                return true;
            }
            return false;
        } catch (IOException unused) {
            throw new Error();
        }
    }

    public final boolean c() {
        aq4 aq4Var = this.n;
        if (aq4Var.g >= aq4Var.h) {
            return false;
        }
        l(1);
        this.m.R(this.d[this.c.a], 0, 0);
        this.o.c[0].H();
        this.z--;
        this.A++;
        return true;
    }

    public final boolean d() {
        int i;
        int[] iArr;
        int i2 = this.z + 1;
        aq4 aq4Var = this.n;
        int i3 = 0;
        if (aq4Var.g - i2 >= aq4Var.h) {
            return false;
        }
        int iK = k();
        int i4 = (aq4Var.g - this.z) & this.a;
        int i5 = this.y;
        dm7 dm7Var = this.c;
        int i6 = dm7Var.a;
        int i7 = -1;
        short[][] sArr = this.d;
        bf6 bf6Var = this.m;
        if (i5 == -1) {
            bf6Var.R(sArr[i6], i4, 0);
            oq4 oq4Var = this.o;
            pq4 pq4Var = oq4Var.d;
            aq4 aq4Var2 = pq4Var.n;
            oq4Var.c[oq4Var.a(aq4Var2.b(pq4Var.z + 1), aq4Var2.g - pq4Var.z)].H();
        } else {
            bf6Var.R(sArr[i6], i4, 1);
            int i8 = this.y;
            int i9 = dm7Var.a;
            int[] iArr2 = this.b;
            short[] sArr2 = this.e;
            if (i8 < 4) {
                bf6Var.R(sArr2, i9, 1);
                int i10 = this.y;
                short[] sArr3 = this.f;
                if (i10 == 0) {
                    bf6Var.R(sArr3, dm7Var.a, 0);
                    bf6Var.R(this.i[dm7Var.a], i4, iK != 1 ? 1 : 0);
                } else {
                    int i11 = iArr2[i10];
                    bf6Var.R(sArr3, dm7Var.a, 1);
                    int i12 = dm7Var.a;
                    short[] sArr4 = this.g;
                    if (i10 == 1) {
                        bf6Var.R(sArr4, i12, 0);
                    } else {
                        bf6Var.R(sArr4, i12, 1);
                        bf6Var.R(this.h, dm7Var.a, i10 - 2);
                        if (i10 == 3) {
                            iArr2[3] = iArr2[2];
                        }
                        iArr2[2] = iArr2[1];
                    }
                    iArr2[1] = iArr2[0];
                    iArr2[0] = i11;
                }
                if (iK == 1) {
                    dm7Var.a = dm7Var.a < 7 ? 9 : 11;
                } else {
                    this.q.f(iK, i4);
                    dm7Var.b();
                }
            } else {
                bf6Var.R(sArr2, i9, 0);
                int i13 = this.y - 4;
                dm7Var.c();
                this.p.f(iK, i4);
                int iE = e(i13);
                bf6Var.S(iE, this.j[iK < 6 ? iK - 2 : 3]);
                if (iE >= 4) {
                    int i14 = iE >>> 1;
                    int i15 = i13 - (((iE & 1) | 2) << (i14 - 1));
                    if (iE < 14) {
                        short[] sArr5 = this.k[iE - 4];
                        int length = sArr5.length | i15;
                        int i16 = 1;
                        do {
                            int i17 = length & 1;
                            length >>>= 1;
                            bf6Var.R(sArr5, i16, i17);
                            i16 = (i16 << 1) | i17;
                        } while (length != 1);
                        i = 0;
                        iArr = iArr2;
                    } else {
                        int i18 = i15 >>> 4;
                        int i19 = i14 - 5;
                        while (true) {
                            int i20 = bf6Var.i >>> 1;
                            bf6Var.i = i20;
                            i19 += i7;
                            i = i3;
                            iArr = iArr2;
                            bf6Var.h += (long) (i20 & (0 - ((i18 >>> i19) & 1)));
                            if (((-16777216) & i20) == 0) {
                                bf6Var.i = i20 << 8;
                                bf6Var.W();
                            }
                            if (i19 == 0) {
                                break;
                            }
                            iArr2 = iArr;
                            i3 = i;
                            i7 = -1;
                        }
                        short[] sArr6 = this.l;
                        int length2 = (i15 & 15) | sArr6.length;
                        int i21 = 1;
                        do {
                            int i22 = length2 & 1;
                            length2 >>>= 1;
                            bf6Var.R(sArr6, i21, i22);
                            i21 = (i21 << 1) | i22;
                        } while (length2 != 1);
                        this.t--;
                    }
                } else {
                    i = 0;
                    iArr = iArr2;
                }
                iArr[3] = iArr[2];
                iArr[2] = iArr[1];
                iArr[1] = iArr[i];
                iArr[i] = i13;
                this.s--;
            }
        }
        this.z -= iK;
        this.A += iK;
        return true;
    }

    public final int g(int i, dm7 dm7Var, int i2) {
        return this.q.f[i2][i - 2] + h(bf6.T(this.e[dm7Var.a], 1) + bf6.T(this.d[dm7Var.a][i2], 1), 0, dm7Var, i2);
    }

    public final int h(int i, int i2, dm7 dm7Var, int i3) {
        short[] sArr = this.f;
        if (i2 == 0) {
            return bf6.T(this.i[dm7Var.a][i3], 1) + bf6.T(sArr[dm7Var.a], 0) + i;
        }
        int iT = bf6.T(sArr[dm7Var.a], 1) + i;
        short[] sArr2 = this.g;
        if (i2 == 1) {
            return bf6.T(sArr2[dm7Var.a], 0) + iT;
        }
        return bf6.T(this.h[dm7Var.a], i2 - 2) + bf6.T(sArr2[dm7Var.a], 1) + iT;
    }

    public final int i(int i, int i2, int i3, int i4) {
        int i5 = i3 - 2;
        int i6 = this.p.f[i4][i5] + i;
        if (i3 >= 6) {
            i5 = 3;
        }
        if (i2 < 128) {
            return i6 + this.w[i5][i2];
        }
        return this.v[i5][e(i2)] + this.x[i2 & 15] + i6;
    }

    public final nn1 j() {
        this.z++;
        return this.n.d();
    }

    public abstract int k();

    public final void l(int i) {
        this.z += i;
        this.n.i(i);
    }
}
