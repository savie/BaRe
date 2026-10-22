package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pw8 extends gk4 {
    public static final char[] N = a51.a(true);
    public static final char[] O = a51.a(false);
    public final q67 G;
    public final char H;
    public char[] I;
    public int J;
    public int K;
    public final int L;
    public char[] M;

    public pw8(c84 c84Var, int i, q67 q67Var, char c) {
        int[] iArrCopyOf;
        super(i, c84Var);
        this.G = q67Var;
        if (c84Var.f != null) {
            l0.e("Trying to call same allocXxx() method second time");
            throw null;
        }
        qw0 qw0Var = c84Var.b;
        qw0Var.getClass();
        int i2 = qw0.d[1];
        i2 = i2 <= 0 ? 0 : i2;
        char[] cArr = (char[]) qw0Var.b.getAndSet(1, null);
        cArr = (cArr == null || cArr.length < i2) ? new char[i2] : cArr;
        c84Var.f = cArr;
        this.I = cArr;
        this.L = cArr.length;
        this.H = c;
        boolean zH = h(mn4.ESCAPE_FORWARD_SLASHES.a);
        if (c != '\"' || zH) {
            if (c == '\"') {
                iArrCopyOf = zH ? a51.g : a51.f;
            } else {
                z41 z41Var = z41.c;
                int[][] iArr = z41Var.a;
                int[][] iArr2 = z41Var.b;
                if (zH) {
                    iArrCopyOf = iArr2[c];
                    if (iArrCopyOf == null) {
                        iArrCopyOf = iArr[c];
                        if (iArrCopyOf == null) {
                            iArrCopyOf = Arrays.copyOf(a51.f, 128);
                            if (iArrCopyOf[c] == 0) {
                                iArrCopyOf[c] = -1;
                            }
                            iArr[c] = iArrCopyOf;
                        }
                        iArrCopyOf[47] = 47;
                        iArr2[c] = iArrCopyOf;
                    }
                } else {
                    iArrCopyOf = iArr[c];
                    if (iArrCopyOf == null) {
                        iArrCopyOf = Arrays.copyOf(a51.f, 128);
                        if (iArrCopyOf[c] == 0) {
                            iArrCopyOf[c] = -1;
                        }
                        iArr[c] = iArrCopyOf;
                    }
                }
            }
            this.p = iArrCopyOf;
        }
    }

    public static int x0(px0 px0Var, byte[] bArr, int i, int i2, int i3) {
        int i4;
        int i5 = 0;
        while (i < i2) {
            bArr[i5] = bArr[i];
            i5++;
            i++;
        }
        int iMin = Math.min(i3, bArr.length);
        do {
            int i6 = iMin - i5;
            if (i6 == 0 || (i4 = px0Var.read(bArr, i5, i6)) < 0) {
                return i5;
            }
            i5 += i4;
        } while (i5 < 3);
        return i5;
    }

    @Override // defpackage.fk4
    public final void A(float f) {
        if (!this.d) {
            String str = up5.a;
            if (Float.isFinite(f) || !h(ek4.QUOTE_NON_NUMERIC_NUMBERS)) {
                l0("write a number");
                O(up5.h(f, h(ek4.USE_FAST_DOUBLE_WRITER)));
                return;
            }
        }
        b0(up5.h(f, h(ek4.USE_FAST_DOUBLE_WRITER)));
    }

    public final void A0() {
        if (this.K + 4 >= this.L) {
            u0();
        }
        int i = this.K;
        char[] cArr = this.I;
        cArr[i] = 'n';
        cArr[i + 1] = 'u';
        cArr[i + 2] = 'l';
        cArr[i + 3] = 'l';
        this.K = i + 4;
    }

    public final void B0(String str) {
        int i = this.K;
        int i2 = this.L;
        if (i >= i2) {
            u0();
        }
        char[] cArr = this.I;
        int i3 = this.K;
        this.K = i3 + 1;
        char c = this.H;
        cArr[i3] = c;
        O(str);
        if (this.K >= i2) {
            u0();
        }
        char[] cArr2 = this.I;
        int i4 = this.K;
        this.K = i4 + 1;
        cArr2[i4] = c;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x004b A[PHI: r16
      0x004b: PHI (r16v3 int) = (r16v0 int), (r16v4 int) binds: [B:18:0x0046, B:16:0x0043] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:28:0x0068 A[LOOP:2: B:13:0x0039->B:28:0x0068, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:90:0x004f A[EDGE_INSN: B:90:0x004f->B:22:0x004f BREAK  A[LOOP:2: B:13:0x0039->B:28:0x0068], SYNTHETIC] */
    public final void C0(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        char[] cArr;
        char c;
        char[] cArr2;
        int i6;
        char c2;
        int length = str.length();
        q67 q67Var = this.G;
        int i7 = this.L;
        if (length <= i7) {
            if (this.K + length > i7) {
                u0();
            }
            str.getChars(0, length, this.I, this.K);
            int i8 = this.q;
            int i9 = this.K;
            int[] iArr = this.p;
            if (i8 == 0) {
                int i10 = i9 + length;
                int length2 = iArr.length;
                while (this.K < i10) {
                    do {
                        char[] cArr3 = this.I;
                        int i11 = this.K;
                        char c3 = cArr3[i11];
                        if (c3 >= length2 || iArr[c3] == 0) {
                            i = i11 + 1;
                            this.K = i;
                        } else {
                            int i12 = this.J;
                            int i13 = i11 - i12;
                            if (i13 > 0) {
                                q67Var.write(cArr3, i12, i13);
                            }
                            char[] cArr4 = this.I;
                            int i14 = this.K;
                            this.K = i14 + 1;
                            char c4 = cArr4[i14];
                            w0(c4, iArr[c4]);
                        }
                    } while (i < i10);
                    return;
                }
                return;
            }
            int i15 = i9 + length;
            int iMin = Math.min(iArr.length, i8 + 1);
            while (this.K < i15) {
                do {
                    char[] cArr5 = this.I;
                    int i16 = this.K;
                    char c5 = cArr5[i16];
                    if (c5 < iMin) {
                        i2 = iArr[c5];
                        if (i2 != 0) {
                            i3 = this.J;
                            i4 = i16 - i3;
                            if (i4 > 0) {
                                q67Var.write(cArr5, i3, i4);
                            }
                            this.K++;
                            w0(c5, i2);
                        }
                        i5 = i16 + 1;
                        this.K = i5;
                    } else {
                        if (c5 > i8) {
                            i2 = -1;
                            i3 = this.J;
                            i4 = i16 - i3;
                            if (i4 > 0) {
                                q67Var.write(cArr5, i3, i4);
                            }
                            this.K++;
                            w0(c5, i2);
                        }
                        i5 = i16 + 1;
                        this.K = i5;
                    }
                } while (i5 < i15);
                return;
            }
            return;
        }
        u0();
        int length3 = str.length();
        int i17 = 0;
        while (true) {
            int i18 = i17 + i7 > length3 ? length3 - i17 : i7;
            int i19 = i17 + i18;
            str.getChars(i17, i19, this.I, 0);
            int i20 = this.q;
            int[] iArr2 = this.p;
            if (i20 != 0) {
                int iMin2 = Math.min(iArr2.length, i20 + 1);
                int i21 = 0;
                int iV0 = 0;
                int i22 = 0;
                while (i21 < i18) {
                    while (true) {
                        cArr2 = this.I;
                        i6 = i22;
                        c2 = cArr2[i21];
                        if (c2 < iMin2) {
                            i6 = iArr2[c2];
                            if (i6 != 0) {
                                break;
                            }
                            i21++;
                            if (i21 >= i18) {
                                break;
                            } else {
                                i22 = i6;
                            }
                        } else {
                            if (c2 > i20) {
                                i6 = -1;
                                break;
                            }
                            i21++;
                            if (i21 >= i18) {
                                break;
                                break;
                            }
                            i22 = i6;
                        }
                    }
                    int i23 = i21 - iV0;
                    if (i23 > 0) {
                        q67Var.write(cArr2, iV0, i23);
                        if (i21 >= i18) {
                            break;
                        }
                    }
                    int i24 = i21 + 1;
                    int i25 = i6;
                    iV0 = v0(this.I, i24, i18, c2, i25);
                    i21 = i24;
                    i22 = i25;
                }
            } else {
                int length4 = iArr2.length;
                int i26 = 0;
                int iV1 = 0;
                while (i26 < i18) {
                    do {
                        cArr = this.I;
                        c = cArr[i26];
                        if (c < length4 && iArr2[c] != 0) {
                            break;
                        } else {
                            i26++;
                        }
                    } while (i26 < i18);
                    int i27 = i26 - iV1;
                    if (i27 > 0) {
                        q67Var.write(cArr, iV1, i27);
                        if (i26 >= i18) {
                            break;
                        }
                    }
                    int i28 = i26 + 1;
                    iV1 = v0(this.I, i28, i18, c, iArr2[c]);
                    i26 = i28;
                }
            }
            if (i19 >= length3) {
                return;
            } else {
                i17 = i19;
            }
        }
    }

    @Override // defpackage.fk4
    public final void D(int i) {
        l0("write a number");
        boolean z = this.d;
        int i2 = this.L;
        if (!z) {
            if (this.K + 11 >= i2) {
                u0();
            }
            this.K = up5.e(this.I, i, this.K);
            return;
        }
        if (this.K + 13 >= i2) {
            u0();
        }
        char[] cArr = this.I;
        int i3 = this.K;
        int i4 = i3 + 1;
        this.K = i4;
        char c = this.H;
        cArr[i3] = c;
        int iE = up5.e(cArr, i, i4);
        char[] cArr2 = this.I;
        this.K = iE + 1;
        cArr2[iE] = c;
    }

    public final void D0(char[] cArr, int i) {
        int length = cArr.length;
        if (((length - i) | i) < 0) {
            a(String.format("Invalid 'offset' (%d) and/or 'len' (%d) arguments for `char[]` of length %d", 0, Integer.valueOf(i), Integer.valueOf(length)));
            throw null;
        }
        if (i >= 32) {
            u0();
            this.G.write(cArr, 0, i);
        } else {
            if (i > this.L - this.K) {
                u0();
            }
            System.arraycopy(cArr, 0, this.I, this.K, i);
            this.K += i;
        }
    }

    @Override // defpackage.fk4
    public final void G(long j) {
        l0("write a number");
        boolean z = this.d;
        int i = this.L;
        if (!z) {
            if (this.K + 21 >= i) {
                u0();
            }
            this.K = up5.f(j, this.I, this.K);
            return;
        }
        if (this.K + 23 >= i) {
            u0();
        }
        char[] cArr = this.I;
        int i2 = this.K;
        int i3 = i2 + 1;
        this.K = i3;
        char c = this.H;
        cArr[i2] = c;
        int iF = up5.f(j, cArr, i3);
        char[] cArr2 = this.I;
        this.K = iF + 1;
        cArr2[iF] = c;
    }

    @Override // defpackage.fk4
    public final void J(char c) {
        if (this.K >= this.L) {
            u0();
        }
        char[] cArr = this.I;
        int i = this.K;
        this.K = i + 1;
        cArr[i] = c;
    }

    @Override // defpackage.fk4
    public final void O(String str) {
        int length = str.length();
        int i = this.K;
        int i2 = this.L;
        int i3 = i2 - i;
        if (i3 == 0) {
            u0();
            i3 = i2 - this.K;
        }
        if (i3 >= length) {
            str.getChars(0, length, this.I, this.K);
            this.K += length;
            return;
        }
        int i4 = this.K;
        int i5 = i2 - i4;
        str.getChars(0, i5, this.I, i4);
        this.K += i5;
        u0();
        int length2 = str.length() - i5;
        while (true) {
            char[] cArr = this.I;
            if (length2 <= i2) {
                str.getChars(i5, i5 + length2, cArr, 0);
                this.J = 0;
                this.K = length2;
                return;
            } else {
                int i6 = i5 + i2;
                str.getChars(i5, i6, cArr, 0);
                this.J = 0;
                this.K = i2;
                u0();
                length2 -= i2;
                i5 = i6;
            }
        }
    }

    @Override // defpackage.fk4
    public final void S(Object obj) throws dp7 {
        l0("start an array");
        v08 v08Var = this.e;
        v08 v08Var2 = (v08) v08Var.i;
        if (v08Var2 == null) {
            f41 f41Var = (f41) v08Var.h;
            v08Var2 = new v08(1, v08Var, f41Var != null ? new f41((cv3) f41Var.a) : null, obj);
            v08Var.i = v08Var2;
        } else {
            v08Var2.b = 1;
            v08Var2.c = -1;
            v08Var2.e = null;
            v08Var2.f = false;
            v08Var2.j = obj;
            f41 f41Var2 = (f41) v08Var2.h;
            if (f41Var2 != null) {
                f41Var2.b = null;
                f41Var2.c = null;
                f41Var2.d = null;
            }
        }
        this.e = v08Var2;
        int i = v08Var2.d;
        this.n.getClass();
        mp7.a(i);
        r56 r56Var = this.a;
        if (r56Var != null) {
            ((kf2) r56Var).a(this);
            return;
        }
        if (this.K >= this.L) {
            u0();
        }
        char[] cArr = this.I;
        int i2 = this.K;
        this.K = i2 + 1;
        cArr[i2] = '[';
    }

    @Override // defpackage.fk4
    public final void U(Object obj) throws dp7 {
        l0("start an array");
        v08 v08Var = this.e;
        v08 v08Var2 = (v08) v08Var.i;
        if (v08Var2 == null) {
            f41 f41Var = (f41) v08Var.h;
            v08Var2 = new v08(1, v08Var, f41Var != null ? new f41((cv3) f41Var.a) : null, obj);
            v08Var.i = v08Var2;
        } else {
            v08Var2.b = 1;
            v08Var2.c = -1;
            v08Var2.e = null;
            v08Var2.f = false;
            v08Var2.j = obj;
            f41 f41Var2 = (f41) v08Var2.h;
            if (f41Var2 != null) {
                f41Var2.b = null;
                f41Var2.c = null;
                f41Var2.d = null;
            }
        }
        this.e = v08Var2;
        int i = v08Var2.d;
        this.n.getClass();
        mp7.a(i);
        r56 r56Var = this.a;
        if (r56Var != null) {
            ((kf2) r56Var).a(this);
            return;
        }
        if (this.K >= this.L) {
            u0();
        }
        char[] cArr = this.I;
        int i2 = this.K;
        this.K = i2 + 1;
        cArr[i2] = '[';
    }

    @Override // defpackage.fk4
    public final void W() throws dp7 {
        l0("start an object");
        v08 v08Var = this.e;
        v08 v08Var2 = (v08) v08Var.i;
        if (v08Var2 == null) {
            f41 f41Var = (f41) v08Var.h;
            v08Var2 = new v08(2, v08Var, f41Var != null ? new f41((cv3) f41Var.a) : null);
            v08Var.i = v08Var2;
        } else {
            v08Var2.b = 2;
            v08Var2.c = -1;
            v08Var2.e = null;
            v08Var2.f = false;
            f41 f41Var2 = (f41) v08Var2.h;
            if (f41Var2 != null) {
                f41Var2.b = null;
                f41Var2.c = null;
                f41Var2.d = null;
            }
        }
        this.e = v08Var2;
        int i = v08Var2.d;
        this.n.getClass();
        mp7.a(i);
        r56 r56Var = this.a;
        if (r56Var != null) {
            kf2 kf2Var = (kf2) r56Var;
            J('{');
            if (kf2Var.b.b0()) {
                return;
            }
            kf2Var.d++;
            return;
        }
        if (this.K >= this.L) {
            u0();
        }
        char[] cArr = this.I;
        int i2 = this.K;
        this.K = i2 + 1;
        cArr[i2] = '{';
    }

    @Override // defpackage.fk4
    public final void Y(Object obj) throws dp7 {
        l0("start an object");
        v08 v08Var = this.e;
        v08 v08Var2 = (v08) v08Var.i;
        if (v08Var2 == null) {
            f41 f41Var = (f41) v08Var.h;
            v08Var2 = new v08(2, v08Var, f41Var != null ? new f41((cv3) f41Var.a) : null, obj);
            v08Var.i = v08Var2;
        } else {
            v08Var2.b = 2;
            v08Var2.c = -1;
            v08Var2.e = null;
            v08Var2.f = false;
            v08Var2.j = obj;
            f41 f41Var2 = (f41) v08Var2.h;
            if (f41Var2 != null) {
                f41Var2.b = null;
                f41Var2.c = null;
                f41Var2.d = null;
            }
        }
        int i = v08Var.d;
        this.n.getClass();
        mp7.a(i);
        this.e = v08Var2;
        r56 r56Var = this.a;
        if (r56Var != null) {
            kf2 kf2Var = (kf2) r56Var;
            J('{');
            if (kf2Var.b.b0()) {
                return;
            }
            kf2Var.d++;
            return;
        }
        if (this.K >= this.L) {
            u0();
        }
        char[] cArr = this.I;
        int i2 = this.K;
        this.K = i2 + 1;
        cArr[i2] = '{';
    }

    @Override // defpackage.fk4
    public final void Z(z77 z77Var) {
        char c = this.H;
        l0("write a string");
        int i = this.K;
        int i2 = this.L;
        if (i >= i2) {
            u0();
        }
        char[] cArr = this.I;
        int i3 = this.K;
        int i4 = i3 + 1;
        this.K = i4;
        cArr[i3] = c;
        char[] cArrA = z77Var.b;
        if (cArrA == null) {
            hm4 hm4Var = z77.c;
            String str = z77Var.a;
            hm4Var.getClass();
            cArrA = hm4.a(str);
            z77Var.b = cArrA;
        }
        int length = cArrA.length;
        if (i4 + length > cArr.length) {
            length = -1;
        } else {
            System.arraycopy(cArrA, 0, cArr, i4, length);
        }
        if (length >= 0) {
            int i5 = this.K + length;
            this.K = i5;
            if (i5 >= i2) {
                u0();
            }
            char[] cArr2 = this.I;
            int i6 = this.K;
            this.K = i6 + 1;
            cArr2[i6] = c;
            return;
        }
        char[] cArrA2 = z77Var.a();
        int length2 = cArrA2.length;
        if (length2 < 32) {
            if (length2 > i2 - this.K) {
                u0();
            }
            System.arraycopy(cArrA2, 0, this.I, this.K, length2);
            this.K += length2;
        } else {
            u0();
            this.G.write(cArrA2, 0, length2);
        }
        if (this.K >= i2) {
            u0();
        }
        char[] cArr3 = this.I;
        int i7 = this.K;
        this.K = i7 + 1;
        cArr3[i7] = c;
    }

    @Override // defpackage.fk4
    public final void b0(String str) {
        l0("write a string");
        if (str == null) {
            A0();
            return;
        }
        int i = this.K;
        int i2 = this.L;
        if (i >= i2) {
            u0();
        }
        char[] cArr = this.I;
        int i3 = this.K;
        this.K = i3 + 1;
        char c = this.H;
        cArr[i3] = c;
        C0(str);
        if (this.K >= i2) {
            u0();
        }
        char[] cArr2 = this.I;
        int i4 = this.K;
        this.K = i4 + 1;
        cArr2[i4] = c;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0045 A[PHI: r11
      0x0045: PHI (r11v6 int) = (r11v3 int), (r11v7 int) binds: [B:15:0x0041, B:13:0x003e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.fk4
    public final void c0(char[] cArr, int i, int i2) {
        char c;
        l0("write a string");
        int i3 = this.K;
        int i4 = this.L;
        if (i3 >= i4) {
            u0();
        }
        char[] cArr2 = this.I;
        int i5 = this.K;
        this.K = i5 + 1;
        char c2 = this.H;
        cArr2[i5] = c2;
        int i6 = this.q;
        int[] iArr = this.p;
        q67 q67Var = this.G;
        int i7 = 32;
        if (i6 != 0) {
            int i8 = i2 + i;
            int iMin = Math.min(iArr.length, i6 + 1);
            int i9 = 0;
            int i10 = i;
            while (i10 < i8) {
                int i11 = i10;
                do {
                    c = cArr[i11];
                    if (c < iMin) {
                        i9 = iArr[c];
                        if (i9 != 0) {
                            break;
                        } else {
                            i11++;
                        }
                    } else {
                        if (c > i6) {
                            i9 = -1;
                            break;
                        }
                        i11++;
                    }
                } while (i11 < i8);
                int i12 = i11 - i10;
                if (i12 < i7) {
                    if (this.K + i12 > i4) {
                        u0();
                    }
                    if (i12 > 0) {
                        System.arraycopy(cArr, i10, this.I, this.K, i12);
                        this.K += i12;
                    }
                } else {
                    u0();
                    q67Var.write(cArr, i10, i12);
                }
                if (i11 >= i8) {
                    break;
                }
                i10 = i11 + 1;
                t0(c, i9);
                i7 = 32;
            }
        } else {
            int i13 = i2 + i;
            int length = iArr.length;
            int i14 = i;
            while (i14 < i13) {
                int i15 = i14;
                do {
                    char c3 = cArr[i15];
                    if (c3 < length && iArr[c3] != 0) {
                        break;
                    } else {
                        i15++;
                    }
                } while (i15 < i13);
                int i16 = i15 - i14;
                if (i16 < 32) {
                    if (this.K + i16 > i4) {
                        u0();
                    }
                    if (i16 > 0) {
                        System.arraycopy(cArr, i14, this.I, this.K, i16);
                        this.K += i16;
                    }
                } else {
                    u0();
                    q67Var.write(cArr, i14, i16);
                }
                if (i15 >= i13) {
                    break;
                }
                i14 = i15 + 1;
                char c4 = cArr[i15];
                t0(c4, iArr[c4]);
            }
        }
        if (this.K >= i4) {
            u0();
        }
        char[] cArr3 = this.I;
        int i17 = this.K;
        this.K = i17 + 1;
        cArr3[i17] = c2;
    }

    @Override // defpackage.cv3, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        super.close();
        try {
            if (this.I != null && h(ek4.AUTO_CLOSE_JSON_CONTENT)) {
                while (true) {
                    int i = this.e.b;
                    if (!(i == 1)) {
                        if (!(i == 2)) {
                            break;
                        } else {
                            q();
                        }
                    } else {
                        n();
                    }
                }
            }
            u0();
            e = null;
        } catch (IOException e) {
            e = e;
        }
        this.J = 0;
        this.K = 0;
        if (this.G != null) {
            try {
                if (!h(ek4.AUTO_CLOSE_TARGET)) {
                    h(ek4.FLUSH_PASSED_TO_STREAM);
                }
            } catch (IOException | RuntimeException e2) {
                if (e != null) {
                    e2.addSuppressed(e);
                }
                throw e2;
            }
        }
        char[] cArr = this.I;
        if (cArr != null) {
            this.I = null;
            c84 c84Var = this.c;
            char[] cArr2 = c84Var.f;
            if (cArr != cArr2 && cArr.length < cArr2.length) {
                c6.f("Trying to release buffer smaller than original");
                return;
            }
            c84Var.f = null;
            AtomicReferenceArray atomicReferenceArray = c84Var.b.b;
            char[] cArr3 = (char[]) atomicReferenceArray.get(1);
            if (cArr3 == null || cArr.length > cArr3.length) {
                atomicReferenceArray.set(1, cArr);
            }
        }
        if (e != null) {
            throw e;
        }
    }

    @Override // java.io.Flushable
    public final void flush() {
        u0();
        if (this.G != null) {
            h(ek4.FLUSH_PASSED_TO_STREAM);
        }
    }

    @Override // defpackage.fk4
    public final void j(bl0 bl0Var, byte[] bArr, int i, int i2) {
        int iA;
        if (bArr == null) {
            a("Invalid `byte[]` argument: `null`");
            throw null;
        }
        int length = bArr.length;
        int i3 = i + i2;
        if ((i | i2 | i3 | (length - i3)) < 0) {
            a(String.format("Invalid 'offset' (%d) and/or 'len' (%d) arguments for `byte[]` of length %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(length)));
            throw null;
        }
        l0("write a binary value");
        int i4 = this.K;
        int i5 = this.L;
        if (i4 >= i5) {
            u0();
        }
        char[] cArr = this.I;
        int i6 = this.K;
        this.K = i6 + 1;
        char c = this.H;
        cArr[i6] = c;
        int i7 = i3 - 3;
        int i8 = i5 - 6;
        int i9 = bl0Var.f;
        loop0: while (true) {
            int i10 = i9 >> 2;
            do {
                if (i > i7) {
                    break loop0;
                }
                if (this.K > i8) {
                    u0();
                }
                int i11 = i + 2;
                int i12 = ((bArr[i + 1] & 255) | (bArr[i] << 8)) << 8;
                i += 3;
                iA = bl0Var.a(this.I, i12 | (bArr[i11] & 255), this.K);
                this.K = iA;
                i10--;
            } while (i10 > 0);
            char[] cArr2 = this.I;
            int i13 = iA + 1;
            this.K = i13;
            cArr2[iA] = '\\';
            this.K = iA + 2;
            cArr2[i13] = 'n';
            i9 = bl0Var.f;
        }
        int i14 = i3 - i;
        if (i14 > 0) {
            if (this.K > i8) {
                u0();
            }
            int i15 = i + 1;
            int i16 = bArr[i] << 16;
            if (i14 == 2) {
                i16 |= (bArr[i15] & 255) << 8;
            }
            this.K = bl0Var.b(i16, i14, this.I, this.K);
        }
        if (this.K >= i5) {
            u0();
        }
        char[] cArr3 = this.I;
        int i17 = this.K;
        this.K = i17 + 1;
        cArr3[i17] = c;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    @Override // defpackage.cv3
    public final void l0(String str) {
        char c;
        char c2;
        v08 v08Var = this.e;
        int i = v08Var.b;
        if (i != 2) {
            int i2 = v08Var.c;
            if (i == 1) {
                v08Var.c = i2 + 1;
                if (i2 < 0) {
                    c = 0;
                } else {
                    c = 1;
                }
            } else {
                int i3 = i2 + 1;
                v08Var.c = i3;
                if (i3 == 0) {
                    c = 0;
                } else {
                    c = 3;
                }
            }
        } else if (v08Var.f) {
            v08Var.f = false;
            v08Var.c++;
            c = 2;
        } else {
            c = 5;
        }
        r56 r56Var = this.a;
        if (r56Var == null) {
            if (c == 1) {
                c2 = ',';
            } else {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 5) {
                            return;
                        }
                        m0(str);
                        throw null;
                    }
                    z77 z77Var = this.r;
                    if (z77Var != null) {
                        O(z77Var.a);
                        return;
                    }
                    return;
                }
                c2 = ':';
            }
            if (this.K >= this.L) {
                u0();
            }
            char[] cArr = this.I;
            int i4 = this.K;
            this.K = i4 + 1;
            cArr[i4] = c2;
            return;
        }
        if (c == 0) {
            if (i == 1) {
                kf2 kf2Var = (kf2) r56Var;
                kf2Var.a.f0(this, kf2Var.d);
                return;
            } else {
                if (i == 2) {
                    kf2 kf2Var2 = (kf2) r56Var;
                    kf2Var2.b.f0(this, kf2Var2.d);
                    return;
                }
                return;
            }
        }
        if (c == 1) {
            kf2 kf2Var3 = (kf2) r56Var;
            O(kf2Var3.n);
            kf2Var3.a.f0(this, kf2Var3.d);
            return;
        }
        if (c == 2) {
            O(((kf2) r56Var).e);
            return;
        }
        if (c != 3) {
            if (c == 5) {
                m0(str);
                throw null;
            }
            int i5 = yj8.a;
            g84.h("Internal error: this code path should never get executed");
            return;
        }
        z77 z77Var2 = ((kf2) r56Var).c;
        if (z77Var2 != null) {
            String str2 = z77Var2.a;
            char[] cArr2 = this.I;
            int i6 = this.K;
            int length = str2.length();
            if (i6 + length > cArr2.length) {
                length = -1;
            } else {
                str2.getChars(0, length, cArr2, i6);
            }
            if (length < 0) {
                O(str2);
            } else {
                this.K += length;
            }
        }
    }

    @Override // defpackage.fk4
    public final void m(boolean z) {
        int i;
        l0("write a boolean value");
        if (this.K + 5 >= this.L) {
            u0();
        }
        int i2 = this.K;
        char[] cArr = this.I;
        if (z) {
            cArr[i2] = 't';
            cArr[i2 + 1] = 'r';
            cArr[i2 + 2] = 'u';
            i = i2 + 3;
            cArr[i] = 'e';
        } else {
            cArr[i2] = 'f';
            cArr[i2 + 1] = 'a';
            cArr[i2 + 2] = 'l';
            cArr[i2 + 3] = 's';
            i = i2 + 4;
            cArr[i] = 'e';
        }
        this.K = i + 1;
    }

    @Override // defpackage.fk4
    public final void n() {
        v08 v08Var = this.e;
        if (v08Var.b != 1) {
            a("Current context not Array but ".concat(v08Var.h()));
            throw null;
        }
        r56 r56Var = this.a;
        if (r56Var != null) {
            int i = v08Var.c + 1;
            kf2 kf2Var = (kf2) r56Var;
            as5 as5Var = kf2Var.a;
            if (!as5Var.b0()) {
                kf2Var.d--;
            }
            if (i > 0) {
                as5Var.f0(this, kf2Var.d);
            } else {
                O(kf2Var.p);
            }
            J(']');
        } else {
            if (this.K >= this.L) {
                u0();
            }
            char[] cArr = this.I;
            int i2 = this.K;
            this.K = i2 + 1;
            cArr[i2] = ']';
        }
        this.e = (v08) this.e.g;
    }

    @Override // defpackage.fk4
    public final void q() {
        v08 v08Var = this.e;
        if (v08Var.b != 2) {
            a("Current context not Object but ".concat(v08Var.h()));
            throw null;
        }
        r56 r56Var = this.a;
        if (r56Var != null) {
            int i = v08Var.c + 1;
            kf2 kf2Var = (kf2) r56Var;
            as5 as5Var = kf2Var.b;
            if (!as5Var.b0()) {
                kf2Var.d--;
            }
            if (i > 0) {
                as5Var.f0(this, kf2Var.d);
            } else {
                O(kf2Var.k);
            }
            J('}');
        } else {
            if (this.K >= this.L) {
                u0();
            }
            char[] cArr = this.I;
            int i2 = this.K;
            this.K = i2 + 1;
            cArr[i2] = '}';
        }
        this.e = (v08) this.e.g;
    }

    @Override // defpackage.fk4
    public final void r(z77 z77Var) throws dk4 {
        int iJ = this.e.j(z77Var.a);
        if (iJ == 4) {
            a("Can not write a field name, expecting a value");
            throw null;
        }
        boolean z = iJ == 1;
        int i = this.L;
        char c = this.H;
        r56 r56Var = this.a;
        if (r56Var != null) {
            if (z) {
                kf2 kf2Var = (kf2) r56Var;
                O(kf2Var.f);
                kf2Var.b.f0(this, kf2Var.d);
            } else {
                kf2 kf2Var2 = (kf2) r56Var;
                kf2Var2.b.f0(this, kf2Var2.d);
            }
            char[] cArrA = z77Var.a();
            if (this.t) {
                D0(cArrA, cArrA.length);
                return;
            }
            if (this.K >= i) {
                u0();
            }
            char[] cArr = this.I;
            int i2 = this.K;
            this.K = i2 + 1;
            cArr[i2] = c;
            D0(cArrA, cArrA.length);
            if (this.K >= i) {
                u0();
            }
            char[] cArr2 = this.I;
            int i3 = this.K;
            this.K = i3 + 1;
            cArr2[i3] = c;
            return;
        }
        if (this.K + 1 >= i) {
            u0();
        }
        if (z) {
            char[] cArr3 = this.I;
            int i4 = this.K;
            this.K = i4 + 1;
            cArr3[i4] = ',';
        }
        if (this.t) {
            char[] cArrA2 = z77Var.a();
            D0(cArrA2, cArrA2.length);
            return;
        }
        char[] cArr4 = this.I;
        int i5 = this.K;
        int i6 = i5 + 1;
        this.K = i6;
        cArr4[i5] = c;
        char[] cArrA3 = z77Var.b;
        if (cArrA3 == null) {
            hm4 hm4Var = z77.c;
            String str = z77Var.a;
            hm4Var.getClass();
            cArrA3 = hm4.a(str);
            z77Var.b = cArrA3;
        }
        int length = cArrA3.length;
        if (i6 + length > cArr4.length) {
            length = -1;
        } else {
            System.arraycopy(cArrA3, 0, cArr4, i6, length);
        }
        if (length < 0) {
            char[] cArrA4 = z77Var.a();
            D0(cArrA4, cArrA4.length);
            if (this.K >= i) {
                u0();
            }
            char[] cArr5 = this.I;
            int i7 = this.K;
            this.K = i7 + 1;
            cArr5[i7] = c;
            return;
        }
        int i8 = this.K + length;
        this.K = i8;
        if (i8 >= i) {
            u0();
        }
        char[] cArr6 = this.I;
        int i9 = this.K;
        this.K = i9 + 1;
        cArr6[i9] = c;
    }

    public final char[] s0() {
        char[] cArr = {'\\', 0, '\\', 'u', '0', '0', 0, 0, '\\', 'u', 0, 0, 0, 0};
        this.M = cArr;
        return cArr;
    }

    public final void t0(char c, int i) {
        int i2;
        int i3 = this.L;
        if (i >= 0) {
            if (this.K + 2 > i3) {
                u0();
            }
            char[] cArr = this.I;
            int i4 = this.K;
            int i5 = i4 + 1;
            this.K = i5;
            cArr[i4] = '\\';
            this.K = i4 + 2;
            cArr[i5] = (char) i;
            return;
        }
        if (i == -2) {
            throw null;
        }
        if (this.K + 5 >= i3) {
            u0();
        }
        int i6 = this.K;
        char[] cArr2 = this.I;
        char[] cArr3 = this.x ? N : O;
        cArr2[i6] = '\\';
        int i7 = i6 + 2;
        cArr2[i6 + 1] = 'u';
        if (c > 255) {
            int i8 = c >> '\b';
            int i9 = i6 + 3;
            cArr2[i7] = cArr3[(i8 & 255) >> 4];
            i2 = i6 + 4;
            cArr2[i9] = cArr3[i8 & 15];
            c = (char) (c & 255);
        } else {
            int i10 = i6 + 3;
            cArr2[i7] = '0';
            i2 = i6 + 4;
            cArr2[i10] = '0';
        }
        cArr2[i2] = cArr3[c >> 4];
        cArr2[i2 + 1] = cArr3[c & 15];
        this.K = i2 + 2;
    }

    @Override // defpackage.fk4
    public final void u(String str) throws dk4 {
        int iJ = this.e.j(str);
        if (iJ == 4) {
            a("Can not write a field name, expecting a value");
            throw null;
        }
        boolean z = iJ == 1;
        r56 r56Var = this.a;
        int i = this.L;
        char c = this.H;
        if (r56Var == null) {
            if (this.K + 1 >= i) {
                u0();
            }
            if (z) {
                char[] cArr = this.I;
                int i2 = this.K;
                this.K = i2 + 1;
                cArr[i2] = ',';
            }
            if (this.t) {
                C0(str);
                return;
            }
            char[] cArr2 = this.I;
            int i3 = this.K;
            this.K = i3 + 1;
            cArr2[i3] = c;
            C0(str);
            if (this.K >= i) {
                u0();
            }
            char[] cArr3 = this.I;
            int i4 = this.K;
            this.K = i4 + 1;
            cArr3[i4] = c;
            return;
        }
        if (z) {
            kf2 kf2Var = (kf2) r56Var;
            O(kf2Var.f);
            kf2Var.b.f0(this, kf2Var.d);
        } else {
            kf2 kf2Var2 = (kf2) r56Var;
            kf2Var2.b.f0(this, kf2Var2.d);
        }
        if (this.t) {
            C0(str);
            return;
        }
        if (this.K >= i) {
            u0();
        }
        char[] cArr4 = this.I;
        int i5 = this.K;
        this.K = i5 + 1;
        cArr4[i5] = c;
        C0(str);
        if (this.K >= i) {
            u0();
        }
        char[] cArr5 = this.I;
        int i6 = this.K;
        this.K = i6 + 1;
        cArr5[i6] = c;
    }

    public final void u0() {
        int i = this.K;
        int i2 = this.J;
        int i3 = i - i2;
        if (i3 > 0) {
            this.J = 0;
            this.K = 0;
            this.G.write(this.I, i2, i3);
        }
    }

    @Override // defpackage.fk4
    public final void v() {
        l0("write a null");
        A0();
    }

    public final int v0(char[] cArr, int i, int i2, char c, int i3) {
        int i4;
        q67 q67Var = this.G;
        if (i3 >= 0) {
            if (i > 1 && i < i2) {
                int i5 = i - 2;
                cArr[i5] = '\\';
                cArr[i - 1] = (char) i3;
                return i5;
            }
            char[] cArrS0 = this.M;
            if (cArrS0 == null) {
                cArrS0 = s0();
            }
            cArrS0[1] = (char) i3;
            q67Var.write(cArrS0, 0, 2);
            return i;
        }
        if (i3 == -2) {
            throw null;
        }
        char[] cArr2 = this.x ? N : O;
        if (i <= 5 || i >= i2) {
            char[] cArrS1 = this.M;
            if (cArrS1 == null) {
                cArrS1 = s0();
            }
            this.J = this.K;
            if (c <= 255) {
                cArrS1[6] = cArr2[c >> 4];
                cArrS1[7] = cArr2[c & 15];
                q67Var.write(cArrS1, 2, 6);
                return i;
            }
            int i6 = c >> '\b';
            cArrS1[10] = cArr2[(i6 & 255) >> 4];
            cArrS1[11] = cArr2[i6 & 15];
            cArrS1[12] = cArr2[(c & 255) >> 4];
            cArrS1[13] = cArr2[c & 15];
            q67Var.write(cArrS1, 8, 6);
            return i;
        }
        cArr[i - 6] = '\\';
        int i7 = i - 4;
        cArr[i - 5] = 'u';
        if (c > 255) {
            int i8 = c >> '\b';
            int i9 = i - 3;
            cArr[i7] = cArr2[(i8 & 255) >> 4];
            i4 = i - 2;
            cArr[i9] = cArr2[i8 & 15];
            c = (char) (c & 255);
        } else {
            int i10 = i - 3;
            cArr[i7] = '0';
            i4 = i - 2;
            cArr[i10] = '0';
        }
        cArr[i4] = cArr2[c >> 4];
        cArr[i4 + 1] = cArr2[c & 15];
        return i4 - 4;
    }

    public final void w0(char c, int i) {
        int i2;
        q67 q67Var = this.G;
        if (i >= 0) {
            int i3 = this.K;
            if (i3 >= 2) {
                int i4 = i3 - 2;
                this.J = i4;
                char[] cArr = this.I;
                cArr[i4] = '\\';
                cArr[i3 - 1] = (char) i;
                return;
            }
            char[] cArrS0 = this.M;
            if (cArrS0 == null) {
                cArrS0 = s0();
            }
            this.J = this.K;
            cArrS0[1] = (char) i;
            q67Var.write(cArrS0, 0, 2);
            return;
        }
        if (i == -2) {
            throw null;
        }
        char[] cArr2 = this.x ? N : O;
        int i5 = this.K;
        if (i5 < 6) {
            char[] cArrS1 = this.M;
            if (cArrS1 == null) {
                cArrS1 = s0();
            }
            this.J = this.K;
            if (c <= 255) {
                cArrS1[6] = cArr2[c >> 4];
                cArrS1[7] = cArr2[c & 15];
                q67Var.write(cArrS1, 2, 6);
                return;
            } else {
                int i6 = c >> '\b';
                cArrS1[10] = cArr2[(i6 & 255) >> 4];
                cArrS1[11] = cArr2[i6 & 15];
                cArrS1[12] = cArr2[(c & 255) >> 4];
                cArrS1[13] = cArr2[c & 15];
                q67Var.write(cArrS1, 8, 6);
                return;
            }
        }
        char[] cArr3 = this.I;
        int i7 = i5 - 6;
        this.J = i7;
        cArr3[i7] = '\\';
        cArr3[i5 - 5] = 'u';
        if (c > 255) {
            int i8 = c >> '\b';
            cArr3[i5 - 4] = cArr2[(i8 & 255) >> 4];
            i2 = i5 - 3;
            cArr3[i2] = cArr2[i8 & 15];
            c = (char) (c & 255);
        } else {
            cArr3[i5 - 4] = '0';
            i2 = i5 - 3;
            cArr3[i2] = '0';
        }
        cArr3[i2 + 1] = cArr2[c >> 4];
        cArr3[i2 + 2] = cArr2[c & 15];
    }

    public final int y0(bl0 bl0Var, px0 px0Var, byte[] bArr) {
        int i = this.L - 6;
        int i2 = 2;
        int i3 = bl0Var.f >> 2;
        int i4 = -3;
        int i5 = 0;
        int iX0 = 0;
        int i6 = 0;
        while (true) {
            if (i5 > i4) {
                iX0 = x0(px0Var, bArr, i5, iX0, bArr.length);
                if (iX0 < 3) {
                    break;
                }
                i4 = iX0 - 3;
                i5 = 0;
            }
            if (this.K > i) {
                u0();
            }
            int i7 = i5 + 2;
            int i8 = ((bArr[i5 + 1] & 255) | (bArr[i5] << 8)) << 8;
            i5 += 3;
            i6 += 3;
            int iA = bl0Var.a(this.I, (bArr[i7] & 255) | i8, this.K);
            this.K = iA;
            i3--;
            if (i3 <= 0) {
                char[] cArr = this.I;
                int i9 = iA + 1;
                this.K = i9;
                cArr[iA] = '\\';
                this.K = iA + 2;
                cArr[i9] = 'n';
                i3 = bl0Var.f >> 2;
            }
        }
        if (iX0 <= 0) {
            return i6;
        }
        if (this.K > i) {
            u0();
        }
        int i10 = bArr[0] << 16;
        if (1 < iX0) {
            i10 |= (bArr[1] & 255) << 8;
        } else {
            i2 = 1;
        }
        int i11 = i6 + i2;
        this.K = bl0Var.b(i10, i2, this.I, this.K);
        return i11;
    }

    @Override // defpackage.fk4
    public final void z(double d) {
        if (!this.d) {
            String str = up5.a;
            if (Double.isFinite(d) || !h(ek4.QUOTE_NON_NUMERIC_NUMBERS)) {
                l0("write a number");
                O(up5.g(d, h(ek4.USE_FAST_DOUBLE_WRITER)));
                return;
            }
        }
        b0(up5.g(d, h(ek4.USE_FAST_DOUBLE_WRITER)));
    }

    public final int z0(bl0 bl0Var, px0 px0Var, byte[] bArr, int i) {
        int iX0;
        int i2 = this.L - 6;
        int i3 = 2;
        int i4 = bl0Var.f >> 2;
        int i5 = -3;
        int i6 = 0;
        int iX1 = 0;
        while (i > 2) {
            if (i6 > i5) {
                iX1 = x0(px0Var, bArr, i6, iX1, i);
                if (iX1 < 3) {
                    i6 = 0;
                    break;
                }
                i5 = iX1 - 3;
                i6 = 0;
            }
            if (this.K > i2) {
                u0();
            }
            int i7 = i6 + 2;
            int i8 = ((bArr[i6 + 1] & 255) | (bArr[i6] << 8)) << 8;
            i6 += 3;
            i -= 3;
            int iA = bl0Var.a(this.I, (bArr[i7] & 255) | i8, this.K);
            this.K = iA;
            i4--;
            if (i4 <= 0) {
                char[] cArr = this.I;
                int i9 = iA + 1;
                this.K = i9;
                cArr[iA] = '\\';
                this.K = iA + 2;
                cArr[i9] = 'n';
                i4 = bl0Var.f >> 2;
            }
        }
        if (i <= 0 || (iX0 = x0(px0Var, bArr, i6, iX1, i)) <= 0) {
            return i;
        }
        if (this.K > i2) {
            u0();
        }
        int i10 = bArr[0] << 16;
        if (1 < iX0) {
            i10 |= (bArr[1] & 255) << 8;
        } else {
            i3 = 1;
        }
        this.K = bl0Var.b(i10, i3, this.I, this.K);
        return i - i3;
    }
}
