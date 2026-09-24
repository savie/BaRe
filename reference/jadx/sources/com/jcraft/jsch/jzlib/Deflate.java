package com.jcraft.jsch.jzlib;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class Deflate implements Cloneable {
    public static final Config[] w0 = {new Config(0, 0, 0, 0, 0), new Config(4, 4, 8, 4, 1), new Config(4, 5, 16, 8, 1), new Config(4, 6, 32, 32, 1), new Config(4, 4, 16, 16, 2), new Config(8, 16, 32, 32, 2), new Config(8, 16, 128, 128, 2), new Config(8, 32, 128, 256, 2), new Config(32, 128, 258, 1024, 2), new Config(32, 258, 258, 4096, 2)};
    public static final String[] x0 = {"need dictionary", "stream end", "", "file error", "stream error", "data error", "insufficient memory", "buffer error", "incompatible version", ""};
    public short[] G;
    public short[] H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int X;
    public int Y;
    public final ZStream a;
    public int b;
    public byte[] c;
    public int d;
    public int e;
    public int f;
    public int i0;
    public int j0;
    public byte[] l0;
    public int m0;
    public byte n;
    public int n0;
    public int o0;
    public int p;
    public int p0;
    public int q;
    public int q0;
    public int r;
    public int r0;
    public int s0;
    public int t;
    public short t0;
    public int u0;
    public byte[] x;
    public int y;
    public int k = 1;
    public final Tree c0 = new Tree();
    public final Tree d0 = new Tree();
    public final Tree e0 = new Tree();
    public short[] f0 = new short[16];
    public short[] g0 = new short[16];
    public int[] h0 = new int[573];
    public byte[] k0 = new byte[573];
    public GZIPHeader v0 = null;
    public short[] Z = new short[1146];
    public short[] a0 = new short[122];
    public short[] b0 = new short[78];

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class Config {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;

        public Config(int i, int i2, int i3, int i4, int i5) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
        }
    }

    public Deflate(ZStream zStream) {
        this.a = zStream;
    }

    public static short[] e(short[] sArr) {
        int length = sArr.length;
        short[] sArr2 = new short[length];
        System.arraycopy(sArr, 0, sArr2, 0, length);
        return sArr2;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0088  */
    /* JADX WARN: Code duplicated, block: B:26:0x0090 A[RETURN] */
    public final boolean a(int i, int i2) {
        byte[] bArr = this.c;
        int i3 = this.o0;
        int i4 = this.n0;
        int i5 = (i4 * 2) + i3;
        bArr[i5] = (byte) (i >>> 8);
        bArr[i5 + 1] = (byte) i;
        this.l0[i4] = (byte) i2;
        int i6 = i4 + 1;
        this.n0 = i6;
        if (i == 0) {
            short[] sArr = this.Z;
            int i7 = i2 * 2;
            sArr[i7] = (short) (sArr[i7] + 1);
        } else {
            this.r0++;
            int i8 = i - 1;
            short[] sArr2 = this.Z;
            int i9 = (Tree.i[i2] + 257) * 2;
            sArr2[i9] = (short) (sArr2[i9] + 1);
            short[] sArr3 = this.a0;
            byte[] bArr2 = Tree.h;
            int i10 = (i8 < 256 ? bArr2[i8] : bArr2[(i8 >>> 7) + 256]) * 2;
            sArr3[i10] = (short) (sArr3[i10] + 1);
        }
        if ((i6 & 8191) == 0 && this.W > 2) {
            int i11 = i6 * 8;
            int i12 = this.Q - this.M;
            for (int i13 = 0; i13 < 30; i13++) {
                i11 += (Tree.e[i13] + 5) * this.a0[i13 * 2];
            }
            int i14 = i11 >>> 3;
            if (this.r0 >= this.n0 / 2 || i14 >= i12 / 2) {
                if (this.n0 == this.m0 - 1) {
                    return false;
                }
            }
        } else if (this.n0 == this.m0 - 1) {
            return false;
        }
        return true;
    }

    public final void b() {
        int i = this.u0;
        if (i == 16) {
            p(this.t0);
            this.t0 = (short) 0;
            this.u0 = 0;
        } else if (i >= 8) {
            n((byte) this.t0);
            this.t0 = (short) (this.t0 >>> 8);
            this.u0 -= 8;
        }
    }

    public final void c(short[] sArr, short[] sArr2) {
        if (this.n0 != 0) {
            int i = 0;
            do {
                byte[] bArr = this.c;
                int i2 = (i * 2) + this.o0;
                int i3 = (bArr[i2 + 1] & 255) | ((bArr[i2] << 8) & 65280);
                int i4 = this.l0[i] & 255;
                i++;
                if (i3 == 0) {
                    s(i4, sArr);
                } else {
                    byte b = Tree.i[i4];
                    s(b + 257, sArr);
                    int i5 = Tree.d[b];
                    if (i5 != 0) {
                        r(i4 - Tree.j[b], i5);
                    }
                    int i6 = i3 - 1;
                    byte[] bArr2 = Tree.h;
                    byte b2 = i6 < 256 ? bArr2[i6] : bArr2[(i6 >>> 7) + 256];
                    s(b2, sArr2);
                    int i7 = Tree.e[b2];
                    if (i7 != 0) {
                        r(i6 - Tree.k[b2], i7);
                    }
                }
            } while (i < this.n0);
        }
        s(256, sArr);
        this.s0 = sArr[513];
    }

    public final Object clone() throws CloneNotSupportedException {
        Deflate deflate = (Deflate) super.clone();
        byte[] bArr = deflate.c;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        deflate.c = bArr2;
        byte[] bArr3 = deflate.l0;
        int length2 = bArr3.length;
        byte[] bArr4 = new byte[length2];
        System.arraycopy(bArr3, 0, bArr4, 0, length2);
        deflate.l0 = bArr4;
        byte[] bArr5 = deflate.x;
        int length3 = bArr5.length;
        byte[] bArr6 = new byte[length3];
        System.arraycopy(bArr5, 0, bArr6, 0, length3);
        deflate.x = bArr6;
        deflate.G = e(deflate.G);
        deflate.H = e(deflate.H);
        short[] sArr = deflate.Z;
        int length4 = sArr.length;
        short[] sArr2 = new short[length4];
        System.arraycopy(sArr, 0, sArr2, 0, length4);
        deflate.Z = sArr2;
        short[] sArr3 = deflate.a0;
        int length5 = sArr3.length;
        short[] sArr4 = new short[length5];
        System.arraycopy(sArr3, 0, sArr4, 0, length5);
        deflate.a0 = sArr4;
        short[] sArr5 = deflate.b0;
        int length6 = sArr5.length;
        short[] sArr6 = new short[length6];
        System.arraycopy(sArr5, 0, sArr6, 0, length6);
        deflate.b0 = sArr6;
        short[] sArr7 = deflate.f0;
        int length7 = sArr7.length;
        short[] sArr8 = new short[length7];
        System.arraycopy(sArr7, 0, sArr8, 0, length7);
        deflate.f0 = sArr8;
        short[] sArr9 = deflate.g0;
        int length8 = sArr9.length;
        short[] sArr10 = new short[length8];
        System.arraycopy(sArr9, 0, sArr10, 0, length8);
        deflate.g0 = sArr10;
        int[] iArr = deflate.h0;
        int length9 = iArr.length;
        int[] iArr2 = new int[length9];
        System.arraycopy(iArr, 0, iArr2, 0, length9);
        deflate.h0 = iArr2;
        byte[] bArr7 = deflate.k0;
        int length10 = bArr7.length;
        byte[] bArr8 = new byte[length10];
        System.arraycopy(bArr7, 0, bArr8, 0, length10);
        deflate.k0 = bArr8;
        deflate.c0.a = deflate.Z;
        deflate.d0.a = deflate.a0;
        deflate.e0.a = deflate.b0;
        GZIPHeader gZIPHeader = deflate.v0;
        if (gZIPHeader != null) {
            deflate.v0 = (GZIPHeader) gZIPHeader.clone();
        }
        return deflate;
    }

    public final int d(int i, int i2, int i3) {
        int i4;
        ZStream zStream = this.a;
        zStream.i = null;
        if (i == -1) {
            i = 6;
        }
        if (i2 < 0) {
            i2 = -i2;
            i4 = 0;
        } else if (i2 > 15) {
            i2 -= 16;
            zStream.l = new CRC32();
            i4 = 2;
        } else {
            i4 = 1;
        }
        if (i3 < 1 || i3 > 9 || i2 < 9 || i2 > 15 || i < 0 || i > 9) {
            return -2;
        }
        zStream.j = this;
        this.k = i4;
        this.r = i2;
        int i5 = 1 << i2;
        this.q = i5;
        this.t = i5 - 1;
        int i6 = 1 << (i3 + 7);
        this.J = i6;
        this.K = i6 - 1;
        this.L = (i3 + 9) / 3;
        this.x = new byte[i5 * 2];
        this.G = new short[i5];
        this.H = new short[i6];
        int i7 = 1 << (i3 + 6);
        this.m0 = i7;
        int i8 = i7 * 3;
        this.c = new byte[i8];
        this.d = i8;
        this.o0 = i7;
        this.l0 = new byte[i7];
        this.W = i;
        zStream.h = 0L;
        zStream.d = 0L;
        zStream.i = null;
        this.f = 0;
        this.e = 0;
        this.b = i4 == 0 ? 113 : 42;
        zStream.l.reset();
        this.p = 0;
        short[] sArr = this.Z;
        Tree tree = this.c0;
        tree.a = sArr;
        tree.c = StaticTree.h;
        short[] sArr2 = this.a0;
        Tree tree2 = this.d0;
        tree2.a = sArr2;
        tree2.c = StaticTree.i;
        short[] sArr3 = this.b0;
        Tree tree3 = this.e0;
        tree3.a = sArr3;
        tree3.c = StaticTree.j;
        this.t0 = (short) 0;
        this.u0 = 0;
        this.s0 = 8;
        j();
        this.y = this.q * 2;
        this.H[this.J - 1] = 0;
        for (int i9 = 0; i9 < this.J - 1; i9++) {
            this.H[i9] = 0;
        }
        Config config = w0[this.W];
        this.V = config.b;
        this.X = config.a;
        this.Y = config.c;
        this.U = config.d;
        this.Q = 0;
        this.M = 0;
        this.S = 0;
        this.T = 2;
        this.N = 2;
        this.P = 0;
        this.I = 0;
        return 0;
    }

    public final void f() {
        int i;
        int i2;
        ZStream zStream;
        do {
            int i3 = this.y;
            int i4 = this.S;
            int i5 = this.Q;
            int i6 = (i3 - i4) - i5;
            int i7 = 0;
            if (i6 == 0 && i5 == 0 && i4 == 0) {
                i6 = this.q;
            } else if (i6 == -1) {
                i6--;
            } else {
                int i8 = this.q;
                if (i5 >= (i8 + i8) - 262) {
                    byte[] bArr = this.x;
                    System.arraycopy(bArr, i8, bArr, 0, i8);
                    int i9 = this.R;
                    int i10 = this.q;
                    this.R = i9 - i10;
                    this.Q -= i10;
                    this.M -= i10;
                    int i11 = this.J;
                    int i12 = i11;
                    do {
                        short[] sArr = this.H;
                        i11--;
                        int i13 = sArr[i11] & 65535;
                        i = this.q;
                        sArr[i11] = i13 >= i ? (short) (i13 - i) : (short) 0;
                        i12--;
                    } while (i12 != 0);
                    int i14 = i;
                    do {
                        short[] sArr2 = this.G;
                        i--;
                        int i15 = sArr2[i] & 65535;
                        i2 = this.q;
                        sArr2[i] = i15 >= i2 ? (short) (i15 - i2) : (short) 0;
                        i14--;
                    } while (i14 != 0);
                    i6 += i2;
                }
            }
            zStream = this.a;
            int i16 = zStream.c;
            if (i16 == 0) {
                return;
            }
            byte[] bArr2 = this.x;
            int i17 = this.Q + this.S;
            if (i16 <= i6) {
                i6 = i16;
            }
            if (i6 != 0) {
                zStream.c = i16 - i6;
                if (zStream.j.k != 0) {
                    zStream.l.update(zStream.a, zStream.b, i6);
                }
                System.arraycopy(zStream.a, zStream.b, bArr2, i17, i6);
                zStream.b += i6;
                zStream.d += (long) i6;
                i7 = i6;
            }
            int i18 = this.S + i7;
            this.S = i18;
            if (i18 >= 3) {
                byte[] bArr3 = this.x;
                int i19 = this.Q;
                int i20 = bArr3[i19] & 255;
                this.I = i20;
                this.I = ((bArr3[i19 + 1] & 255) ^ (i20 << this.L)) & this.K;
            }
            if (i18 >= 262) {
                return;
            }
        } while (zStream.c != 0);
    }

    public final void h(boolean z) {
        int i;
        int i2;
        int i3;
        int i4 = this.M;
        int i5 = i4 >= 0 ? i4 : -1;
        int i6 = this.Q - i4;
        int i7 = this.W;
        byte[] bArr = Tree.g;
        Tree tree = this.d0;
        Tree tree2 = this.c0;
        if (i7 > 0) {
            if (this.n == 2) {
                int i8 = 0;
                int i9 = 0;
                while (i8 < 7) {
                    i9 += this.Z[i8 * 2];
                    i8++;
                }
                int i10 = 0;
                while (i8 < 128) {
                    i10 += this.Z[i8 * 2];
                    i8++;
                }
                while (i8 < 256) {
                    i9 += this.Z[i8 * 2];
                    i8++;
                }
                this.n = (byte) (i9 > (i10 >>> 2) ? 0 : 1);
            }
            tree2.a(this);
            tree.a(this);
            q(tree2.b, this.Z);
            q(tree.b, this.a0);
            this.e0.a(this);
            i2 = 18;
            while (i2 >= 3 && this.b0[(bArr[i2] * 2) + 1] == 0) {
                i2--;
            }
            int i11 = ((i2 + 1) * 3) + 14 + this.p0;
            this.p0 = i11;
            i = (i11 + 10) >>> 3;
            i3 = (this.q0 + 10) >>> 3;
            if (i3 <= i) {
                i = i3;
            }
        } else {
            i = i6 + 5;
            i2 = 0;
            i3 = i;
        }
        if (i6 + 4 <= i && i5 != -1) {
            r(z ? 1 : 0, 3);
            int i12 = this.u0;
            if (i12 > 8) {
                p(this.t0);
            } else if (i12 > 0) {
                n((byte) this.t0);
            }
            this.t0 = (short) 0;
            this.u0 = 0;
            this.s0 = 8;
            p((short) i6);
            p((short) (~i6));
            o(this.x, i5, i6);
        } else if (i3 == i) {
            r((z ? 1 : 0) + 2, 3);
            c(StaticTree.f, StaticTree.g);
        } else {
            r((z ? 1 : 0) + 4, 3);
            int i13 = tree2.b;
            int i14 = tree.b;
            int i15 = i2 + 1;
            r(i13 - 256, 5);
            r(i14, 5);
            r(i2 - 3, 4);
            for (int i16 = 0; i16 < i15; i16++) {
                r(this.b0[(bArr[i16] * 2) + 1], 3);
            }
            t(i13, this.Z);
            t(i14, this.a0);
            c(this.Z, this.a0);
        }
        j();
        if (z) {
            int i17 = this.u0;
            if (i17 > 8) {
                p(this.t0);
            } else if (i17 > 0) {
                n((byte) this.t0);
            }
            this.t0 = (short) 0;
            this.u0 = 0;
        }
        this.M = this.Q;
        this.a.a();
    }

    public final synchronized GZIPHeader i() {
        try {
            if (this.v0 == null) {
                this.v0 = new GZIPHeader();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.v0;
    }

    public final void j() {
        for (int i = 0; i < 286; i++) {
            this.Z[i * 2] = 0;
        }
        for (int i2 = 0; i2 < 30; i2++) {
            this.a0[i2 * 2] = 0;
        }
        for (int i3 = 0; i3 < 19; i3++) {
            this.b0[i3 * 2] = 0;
        }
        this.Z[512] = 1;
        this.q0 = 0;
        this.p0 = 0;
        this.r0 = 0;
        this.n0 = 0;
    }

    public final int k(int i) {
        int i2;
        int i3;
        byte[] bArr;
        int i4;
        int i5 = this.U;
        int i6 = this.Q;
        int i7 = this.T;
        int i8 = this.q;
        int i9 = i6 > i8 + (-262) ? i6 - (i8 - 262) : 0;
        int i10 = this.Y;
        int i11 = this.t;
        int i12 = i6 + 258;
        byte[] bArr2 = this.x;
        int i13 = i6 + i7;
        byte b = bArr2[i13 - 1];
        byte b2 = bArr2[i13];
        if (i7 >= this.X) {
            i5 >>= 2;
        }
        int i14 = this.S;
        int i15 = i6;
        if (i10 <= i14) {
            i14 = i10;
        }
        int i16 = i7;
        int i17 = i5;
        int i18 = i;
        while (true) {
            byte[] bArr3 = this.x;
            int i19 = i18 + i16;
            if (bArr3[i19] == b2 && bArr3[i19 - 1] == b && bArr3[i18] == bArr3[i15] && bArr3[i18 + 1] == bArr3[i15 + 1]) {
                int i20 = i15 + 2;
                int i21 = i18 + 2;
                while (true) {
                    bArr = this.x;
                    i4 = i20 + 1;
                    i2 = i6;
                    if (bArr[i4] != bArr[i21 + 1]) {
                        break;
                    }
                    i4 = i20 + 2;
                    if (bArr[i4] != bArr[i21 + 2]) {
                        break;
                    }
                    i4 = i20 + 3;
                    if (bArr[i4] != bArr[i21 + 3]) {
                        break;
                    }
                    i4 = i20 + 4;
                    if (bArr[i4] != bArr[i21 + 4]) {
                        break;
                    }
                    i4 = i20 + 5;
                    if (bArr[i4] != bArr[i21 + 5]) {
                        break;
                    }
                    i4 = i20 + 6;
                    if (bArr[i4] != bArr[i21 + 6]) {
                        break;
                    }
                    i4 = i20 + 7;
                    if (bArr[i4] != bArr[i21 + 7]) {
                        break;
                    }
                    i20 += 8;
                    i21 += 8;
                    if (bArr[i20] != bArr[i21] || i20 >= i12) {
                        i4 = i20;
                        break;
                    }
                    i6 = i2;
                }
                i3 = 258 - (i12 - i4);
                if (i3 > i16) {
                    this.R = i18;
                    if (i3 >= i14) {
                        break;
                    }
                    int i22 = i2 + i3;
                    b = bArr[i22 - 1];
                    i15 = i2;
                    b2 = bArr[i22];
                    i16 = i3;
                } else {
                    i15 = i2;
                }
            } else {
                i2 = i6;
            }
            i18 = this.G[i18 & i11] & 65535;
            if (i18 <= i9 || (i17 = i17 - 1) == 0) {
                i3 = i16;
                break;
            }
            i6 = i2;
        }
        int i23 = this.S;
        return i3 <= i23 ? i3 : i23;
    }

    public final void l(int i, short[] sArr) {
        int i2 = this.h0[i];
        int i3 = i << 1;
        while (true) {
            int i4 = this.i0;
            if (i3 > i4) {
                break;
            }
            if (i3 < i4) {
                int[] iArr = this.h0;
                int i5 = i3 + 1;
                int i6 = iArr[i5];
                int i7 = iArr[i3];
                byte[] bArr = this.k0;
                short s = sArr[i6 * 2];
                short s2 = sArr[i7 * 2];
                if (s < s2 || (s == s2 && bArr[i6] <= bArr[i7])) {
                    i3 = i5;
                }
            }
            int[] iArr2 = this.h0;
            int i8 = iArr2[i3];
            byte[] bArr2 = this.k0;
            short s3 = sArr[i2 * 2];
            short s4 = sArr[i8 * 2];
            if (s3 < s4 || (s3 == s4 && bArr2[i2] <= bArr2[i8])) {
                break;
            }
            iArr2[i] = i8;
            int i9 = i3;
            i3 <<= 1;
            i = i9;
        }
        this.h0[i] = i2;
    }

    public final void m(int i) {
        n((byte) (i >> 8));
        n((byte) i);
    }

    public final void n(byte b) {
        byte[] bArr = this.c;
        int i = this.f;
        this.f = i + 1;
        bArr[i] = b;
    }

    public final void o(byte[] bArr, int i, int i2) {
        System.arraycopy(bArr, i, this.c, this.f, i2);
        this.f += i2;
    }

    public final void p(int i) {
        n((byte) i);
        n((byte) (i >>> 8));
    }

    public final void q(int i, short[] sArr) {
        int i2;
        int i3;
        short s = sArr[1];
        if (s == 0) {
            i2 = 138;
            i3 = 3;
        } else {
            i2 = 7;
            i3 = 4;
        }
        s = -1;
        sArr[((i + 1) * 2) + 1] = -1;
        int i4 = 0;
        int i5 = 0;
        while (i4 <= i) {
            i4++;
            short s2 = sArr[(i4 * 2) + 1];
            i5++;
            if (i5 >= i2 || s != s2) {
                if (i5 < i3) {
                    short[] sArr2 = this.b0;
                    int i6 = s * 2;
                    sArr2[i6] = (short) (sArr2[i6] + ((short) i5));
                } else if (s != 0) {
                    if (s != s) {
                        short[] sArr3 = this.b0;
                        int i7 = s * 2;
                        sArr3[i7] = (short) (sArr3[i7] + 1);
                    }
                    short[] sArr4 = this.b0;
                    sArr4[32] = (short) (sArr4[32] + 1);
                } else {
                    short[] sArr5 = this.b0;
                    if (i5 <= 10) {
                        sArr5[34] = (short) (sArr5[34] + 1);
                    } else {
                        sArr5[36] = (short) (sArr5[36] + 1);
                    }
                }
                if (s2 == 0) {
                    i2 = 138;
                } else {
                    if (s == s2) {
                        i2 = 6;
                    } else {
                        s = s;
                        i2 = 7;
                        i3 = 4;
                    }
                    i5 = 0;
                }
                i3 = 3;
                i5 = 0;
            }
            s = s2;
        }
    }

    public final void r(int i, int i2) {
        int i3 = this.u0;
        int i4 = 16 - i2;
        short s = this.t0;
        if (i3 <= i4) {
            this.t0 = (short) (((short) ((i << i3) & 65535)) | s);
            this.u0 = i3 + i2;
            return;
        }
        short s2 = (short) (((short) ((i << i3) & 65535)) | s);
        this.t0 = s2;
        p(s2);
        int i5 = this.u0;
        this.t0 = (short) (i >>> (16 - i5));
        this.u0 = (i2 - 16) + i5;
    }

    public final void s(int i, short[] sArr) {
        int i2 = i * 2;
        r(sArr[i2] & 65535, sArr[i2 + 1] & 65535);
    }

    public final void t(int i, short[] sArr) {
        int i2;
        int i3;
        int i4 = 1;
        short s = sArr[1];
        if (s == 0) {
            i2 = 138;
            i3 = 3;
        } else {
            i2 = 7;
            i3 = 4;
        }
        s = -1;
        int i5 = 0;
        int i6 = 0;
        while (i5 <= i) {
            i5++;
            short s2 = sArr[(i5 * 2) + i4];
            int i7 = i6 + 1;
            if (i7 >= i2 || s != s2) {
                if (i7 < i3) {
                    do {
                        s(s, this.b0);
                        i7--;
                    } while (i7 != 0);
                } else if (s != 0) {
                    if (s != s) {
                        s(s, this.b0);
                    } else {
                        i6 = i7;
                    }
                    s(16, this.b0);
                    r(i6 - 3, 2);
                } else {
                    short[] sArr2 = this.b0;
                    if (i7 <= 10) {
                        s(17, sArr2);
                        r(i6 - 2, 3);
                    } else {
                        s(18, sArr2);
                        r(i6 - 10, 7);
                    }
                }
                if (s2 == 0) {
                    i2 = 138;
                } else {
                    if (s == s2) {
                        i2 = 6;
                    } else {
                        s = s;
                        i2 = 7;
                        i3 = 4;
                    }
                    i6 = 0;
                }
                i3 = 3;
                i6 = 0;
            } else {
                i6 = i7;
            }
            s = s2;
            i4 = 1;
        }
    }
}
