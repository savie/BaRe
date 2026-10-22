package defpackage;

import com.nimbusds.jose.JWEObject;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wj0 extends pp1 {
    public int b;
    public int c;
    public int d;
    public final dz0 e;
    public int f;
    public int k;
    public int n;
    public int p;
    public int q;
    public final int r;
    public vj0 t;
    public ft0 x;

    public wj0(OutputStream outputStream, int i) throws IOException {
        super(outputStream);
        dz0 dz0Var = new dz0();
        this.e = dz0Var;
        this.n = -1;
        if (i < 1) {
            c6.f(xs1.h(i, "blockSize(", ") < 1"));
            throw null;
        }
        if (i > 9) {
            c6.f(xs1.h(i, "blockSize(", ") > 9"));
            throw null;
        }
        this.r = (JWEObject.MAX_COMPRESSED_CIPHER_TEXT_LENGTH * i) - 20;
        b(66);
        b(90);
        this.t = new vj0(i);
        this.x = new ft0(this.t);
        b(104);
        b(i + 48);
        this.q = 0;
        dz0Var.a = -1;
        this.b = -1;
        boolean[] zArr = this.t.a;
        int i2 = 256;
        while (true) {
            i2--;
            if (i2 < 0) {
                return;
            } else {
                zArr[i2] = false;
            }
        }
    }

    public final void a(int i) throws IOException {
        g(8, (i >> 24) & 255);
        g(8, (i >> 16) & 255);
        g(8, (i >> 8) & 255);
        g(8, i & 255);
    }

    public final void b(int i) throws IOException {
        g(8, i);
    }

    @Override // defpackage.pp1, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        AtomicBoolean atomicBoolean = this.a;
        if (atomicBoolean.get()) {
            return;
        }
        try {
            if (!atomicBoolean.get()) {
                try {
                    if (this.p > 0) {
                        n();
                    }
                    this.n = -1;
                    h();
                    j();
                    this.x = null;
                    this.t = null;
                } catch (Throwable th) {
                    this.x = null;
                    this.t = null;
                    throw th;
                }
            }
            super.close();
        } catch (Throwable th2) {
            super.close();
            throw th2;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        if (((FilterOutputStream) this).out != null) {
            super.flush();
        }
    }

    public final void g(int i, int i2) throws IOException {
        OutputStream outputStream = ((FilterOutputStream) this).out;
        int i3 = this.d;
        int i4 = this.c;
        while (i3 >= 8) {
            outputStream.write(i4 >> 24);
            i4 <<= 8;
            i3 -= 8;
        }
        this.c = (i2 << ((32 - i3) - i)) | i4;
        this.d = i3 + i;
    }

    /* JADX WARN: Code duplicated, block: B:448:0x0998 A[LOOP:29: B:432:0x0922->B:448:0x0998, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:449:0x09a4 A[LOOP:28: B:420:0x08e6->B:449:0x09a4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:624:0x0912 A[EDGE_INSN: B:624:0x0912->B:431:0x0912 BREAK  A[LOOP:28: B:420:0x08e6->B:449:0x09a4], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:626:0x094c A[EDGE_INSN: B:626:0x094c->B:443:0x094c BREAK  A[LOOP:29: B:432:0x0922->B:448:0x0998], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:71:0x01d7  */
    public final void h() throws IOException {
        int i;
        int i2;
        int i3;
        int[] iArr;
        char[] cArr;
        int[] iArr2;
        byte[] bArr;
        int i4;
        boolean z;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int[] iArr3;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        byte[] bArr2;
        int i27 = ~this.e.a;
        int i28 = this.q;
        this.q = ((i28 >>> 31) | (i28 << 1)) ^ i27;
        int i29 = this.b;
        if (i29 == -1) {
            return;
        }
        ft0 ft0Var = this.x;
        vj0 vj0Var = this.t;
        int i30 = i29 * 30;
        ft0Var.b = i30;
        ft0Var.a = 0;
        ft0Var.c = true;
        int i31 = i29 + 1;
        int i32 = 8;
        if (i31 < 10000) {
            ft0Var.a(vj0Var, i29);
            i2 = -1;
            i3 = 0;
            i = 3;
        } else {
            int[] iArr4 = ft0Var.g;
            i = 3;
            int[] iArr5 = ft0Var.h;
            boolean[] zArr = ft0Var.i;
            i2 = -1;
            int[] iArr6 = ft0Var.j;
            int i33 = 2;
            byte[] bArr3 = vj0Var.q;
            int[] iArr7 = vj0Var.r;
            char[] cArr2 = ft0Var.k;
            Arrays.fill(iArr6, 0);
            i3 = 0;
            for (int i34 = 0; i34 < 20; i34++) {
                bArr3[i29 + i34 + 2] = bArr3[(i34 % i31) + 1];
            }
            int i35 = i29 + 21;
            while (true) {
                i35--;
                if (i35 < 0) {
                    break;
                } else {
                    cArr2[i35] = 0;
                }
            }
            byte b = bArr3[i31];
            bArr3[0] = b;
            int i36 = b & 255;
            int i37 = 0;
            while (i37 <= i29) {
                i37++;
                int[] iArr8 = iArr6;
                int i38 = bArr3[i37] & 255;
                int i39 = (i36 << 8) + i38;
                iArr8[i39] = iArr8[i39] + 1;
                i36 = i38;
                iArr6 = iArr8;
            }
            int[] iArr9 = iArr6;
            for (int i40 = 1; i40 <= 65536; i40++) {
                iArr9[i40] = iArr9[i40] + iArr9[i40 - 1];
            }
            int i41 = bArr3[1] & 255;
            for (int i42 = 0; i42 < i29; i42++) {
                int i43 = i41;
                i41 = bArr3[i42 + 2] & 255;
                int i44 = (i43 << 8) + i41;
                int i45 = iArr9[i44] - 1;
                iArr9[i44] = i45;
                iArr7[i45] = i42;
            }
            int i46 = ((bArr3[i31] & 255) << 8) + (bArr3[1] & 255);
            int i47 = iArr9[i46] - 1;
            iArr9[i46] = i47;
            iArr7[i47] = i29;
            int i48 = 256;
            while (true) {
                i48--;
                if (i48 < 0) {
                    break;
                }
                zArr[i48] = false;
                iArr4[i48] = i48;
            }
            int i49 = 364;
            for (int i50 = 1; i49 != i50; i50 = 1) {
                i49 /= 3;
                int i51 = i49;
                while (i51 <= 255) {
                    int i52 = iArr4[i51];
                    int i53 = i49;
                    int i54 = iArr9[(i52 + 1) << 8] - iArr9[i52 << 8];
                    int i55 = i51;
                    int i56 = i53 - 1;
                    int i57 = iArr4[i55 - i53];
                    int i58 = i55;
                    while (true) {
                        iArr3 = iArr7;
                        if (iArr9[(i57 + 1) << 8] - iArr9[i57 << 8] <= i54) {
                            break;
                        }
                        iArr4[i58] = i57;
                        int i59 = i58 - i53;
                        if (i59 <= i56) {
                            i58 = i59;
                            break;
                        } else {
                            i57 = iArr4[i59 - i53];
                            i58 = i59;
                            iArr7 = iArr3;
                        }
                    }
                    iArr4[i58] = i52;
                    i51 = i55 + 1;
                    i49 = i53;
                    iArr7 = iArr3;
                }
            }
            int[] iArr10 = iArr7;
            int i60 = 0;
            loop71: while (true) {
                int i61 = 255;
                if (i60 > 255) {
                    break;
                }
                int i62 = iArr4[i60];
                int i63 = 0;
                while (i63 <= i61) {
                    int i64 = (i62 << 8) + i63;
                    int i65 = iArr9[i64];
                    if ((i65 & 2097152) != 2097152) {
                        int i66 = i65 & (-2097153);
                        int i67 = (iArr9[i64 + 1] & (-2097153)) - 1;
                        if (i67 > i66) {
                            int[] iArr11 = ft0Var.d;
                            int[] iArr12 = ft0Var.e;
                            int[] iArr13 = ft0Var.f;
                            byte[] bArr4 = vj0Var.q;
                            iArr11[0] = i66;
                            iArr12[0] = i67;
                            iArr13[0] = i33;
                            int i68 = 1;
                            while (true) {
                                int i69 = i68 - 1;
                                if (i69 < 0) {
                                    iArr = iArr4;
                                    cArr = cArr2;
                                    iArr2 = iArr5;
                                    bArr = bArr3;
                                    i4 = i63;
                                    break;
                                }
                                int i70 = iArr11[i69];
                                byte[] bArr5 = bArr4;
                                int i71 = iArr12[i69];
                                int i72 = i68;
                                int i73 = iArr13[i69];
                                iArr = iArr4;
                                int i74 = i71 - i70;
                                cArr = cArr2;
                                if (i74 < 20 || i73 > 10) {
                                    iArr2 = iArr5;
                                    bArr = bArr3;
                                    i4 = i63;
                                    int[] iArr14 = ft0.n;
                                    int i75 = i74 + 1;
                                    if (i75 < i33) {
                                        if (ft0Var.c && ft0Var.a > ft0Var.b) {
                                            break;
                                        }
                                    } else {
                                        int i76 = 0;
                                        while (iArr14[i76] < i75) {
                                            i76++;
                                        }
                                        boolean z2 = ft0Var.c;
                                        int i77 = ft0Var.b;
                                        int i78 = ft0Var.a;
                                        while (true) {
                                            i76--;
                                            if (i76 < 0) {
                                                z = z2;
                                                break;
                                            }
                                            int i79 = iArr14[i76];
                                            int i80 = i70 + i79;
                                            int[] iArr15 = iArr14;
                                            int i81 = i80 - 1;
                                            z = z2;
                                            int i82 = i80;
                                            while (i82 <= i71) {
                                                int i83 = 3;
                                                while (i82 <= i71) {
                                                    i83--;
                                                    if (i83 < 0) {
                                                        break;
                                                    }
                                                    int i84 = iArr10[i82];
                                                    int i85 = i84 + i73;
                                                    int i86 = i82;
                                                    boolean z3 = false;
                                                    int i87 = 0;
                                                    while (true) {
                                                        if (z3) {
                                                            iArr10[i86] = i87;
                                                            i76 = i76;
                                                            i7 = i86 - i79;
                                                            if (i7 <= i81) {
                                                                i6 = i81;
                                                                i5 = i79;
                                                                break;
                                                            }
                                                            i86 = i7;
                                                        } else {
                                                            i76 = i76;
                                                            z3 = true;
                                                        }
                                                        int i88 = iArr10[i86 - i79];
                                                        int i89 = i88 + i73;
                                                        i6 = i81;
                                                        int i90 = bArr5[i89 + 1];
                                                        int i91 = bArr5[i85 + 1];
                                                        if (i90 == i91) {
                                                            int i92 = bArr5[i89 + 2];
                                                            int i93 = bArr5[i85 + 2];
                                                            if (i92 == i93) {
                                                                int i94 = bArr5[i89 + 3];
                                                                int i95 = bArr5[i85 + 3];
                                                                if (i94 == i95) {
                                                                    int i96 = bArr5[i89 + 4];
                                                                    int i97 = bArr5[i85 + 4];
                                                                    if (i96 == i97) {
                                                                        int i98 = bArr5[i89 + 5];
                                                                        int i99 = bArr5[i85 + 5];
                                                                        if (i98 == i99) {
                                                                            int i100 = i89 + 6;
                                                                            int i101 = bArr5[i100];
                                                                            int i102 = i85 + 6;
                                                                            int i103 = bArr5[i102];
                                                                            if (i101 == i103) {
                                                                                int i104 = i29;
                                                                                while (true) {
                                                                                    if (i104 > 0) {
                                                                                        int i105 = i104 - 4;
                                                                                        int i106 = i100 + 1;
                                                                                        int i107 = bArr5[i106];
                                                                                        int i108 = i8 + 1;
                                                                                        int i109 = i8;
                                                                                        int i110 = bArr5[i108];
                                                                                        if (i107 == i110) {
                                                                                            char c = cArr[i100];
                                                                                            char c2 = cArr[i109];
                                                                                            if (c == c2) {
                                                                                                int i111 = i100 + 2;
                                                                                                int i112 = bArr5[i111];
                                                                                                int i113 = i109 + 2;
                                                                                                int i114 = bArr5[i113];
                                                                                                if (i112 == i114) {
                                                                                                    char c3 = cArr[i106];
                                                                                                    char c4 = cArr[i108];
                                                                                                    if (c3 == c4) {
                                                                                                        int i115 = i100 + 3;
                                                                                                        int i116 = bArr5[i115];
                                                                                                        int i117 = i109 + 3;
                                                                                                        int i118 = bArr5[i117];
                                                                                                        if (i116 == i118) {
                                                                                                            char c5 = cArr[i111];
                                                                                                            char c6 = cArr[i113];
                                                                                                            if (c5 == c6) {
                                                                                                                int i119 = i100 + 4;
                                                                                                                int i120 = bArr5[i119];
                                                                                                                i9 = i78;
                                                                                                                int i121 = i109 + 4;
                                                                                                                i5 = i79;
                                                                                                                int i122 = bArr5[i121];
                                                                                                                if (i120 == i122) {
                                                                                                                    char c7 = cArr[i115];
                                                                                                                    char c8 = cArr[i117];
                                                                                                                    if (c7 == c8) {
                                                                                                                        if (i119 >= i31) {
                                                                                                                            i119 -= i31;
                                                                                                                        }
                                                                                                                        if (i121 >= i31) {
                                                                                                                            i121 -= i31;
                                                                                                                        }
                                                                                                                        i8 = i121;
                                                                                                                        i78 = i9 + 1;
                                                                                                                        i100 = i119;
                                                                                                                        i104 = i105;
                                                                                                                        i79 = i5;
                                                                                                                    } else {
                                                                                                                        if (c7 <= c8) {
                                                                                                                            i8 = i102;
                                                                                                                        }
                                                                                                                        i8 = i102;
                                                                                                                        i78 = i9;
                                                                                                                        i81 = i6;
                                                                                                                        i87 = i88;
                                                                                                                        i79 = i5;
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    i8 = i102;
                                                                                                                    if ((i120 & 255) <= (i122 & 255)) {
                                                                                                                    }
                                                                                                                    i8 = i102;
                                                                                                                    i78 = i9;
                                                                                                                    i81 = i6;
                                                                                                                    i87 = i88;
                                                                                                                    i79 = i5;
                                                                                                                }
                                                                                                            } else {
                                                                                                                i8 = i102;
                                                                                                                i9 = i78;
                                                                                                                i5 = i79;
                                                                                                                if (c5 <= c6) {
                                                                                                                }
                                                                                                                i8 = i102;
                                                                                                                i78 = i9;
                                                                                                                i81 = i6;
                                                                                                                i87 = i88;
                                                                                                                i79 = i5;
                                                                                                            }
                                                                                                        } else {
                                                                                                            i8 = i102;
                                                                                                            i9 = i78;
                                                                                                            i5 = i79;
                                                                                                            if ((i116 & 255) <= (i118 & 255)) {
                                                                                                            }
                                                                                                            i8 = i102;
                                                                                                            i78 = i9;
                                                                                                            i81 = i6;
                                                                                                            i87 = i88;
                                                                                                            i79 = i5;
                                                                                                        }
                                                                                                    } else {
                                                                                                        i8 = i102;
                                                                                                        i9 = i78;
                                                                                                        i5 = i79;
                                                                                                        if (c3 <= c4) {
                                                                                                        }
                                                                                                        i8 = i102;
                                                                                                        i78 = i9;
                                                                                                        i81 = i6;
                                                                                                        i87 = i88;
                                                                                                        i79 = i5;
                                                                                                    }
                                                                                                } else {
                                                                                                    i8 = i102;
                                                                                                    i9 = i78;
                                                                                                    i5 = i79;
                                                                                                    if ((i112 & 255) <= (i114 & 255)) {
                                                                                                    }
                                                                                                    i8 = i102;
                                                                                                    i78 = i9;
                                                                                                    i81 = i6;
                                                                                                    i87 = i88;
                                                                                                    i79 = i5;
                                                                                                }
                                                                                            } else {
                                                                                                i8 = i102;
                                                                                                i9 = i78;
                                                                                                i5 = i79;
                                                                                                if (c <= c2) {
                                                                                                }
                                                                                                i8 = i102;
                                                                                                i78 = i9;
                                                                                                i81 = i6;
                                                                                                i87 = i88;
                                                                                                i79 = i5;
                                                                                            }
                                                                                        } else {
                                                                                            i8 = i102;
                                                                                            i9 = i78;
                                                                                            i5 = i79;
                                                                                            if ((i107 & 255) <= (i110 & 255)) {
                                                                                            }
                                                                                            i8 = i102;
                                                                                            i78 = i9;
                                                                                            i81 = i6;
                                                                                            i87 = i88;
                                                                                            i79 = i5;
                                                                                        }
                                                                                    } else {
                                                                                        i8 = i102;
                                                                                        i9 = i78;
                                                                                        i5 = i79;
                                                                                    }
                                                                                    i7 = i86;
                                                                                    i78 = i9;
                                                                                    break;
                                                                                }
                                                                            }
                                                                            i5 = i79;
                                                                            if ((i101 & 255) <= (i103 & 255)) {
                                                                                i7 = i86;
                                                                                break;
                                                                            }
                                                                            i81 = i6;
                                                                            i87 = i88;
                                                                            i79 = i5;
                                                                        } else {
                                                                            i5 = i79;
                                                                            if ((i98 & 255) <= (i99 & 255)) {
                                                                                i7 = i86;
                                                                                break;
                                                                                break;
                                                                            }
                                                                            i81 = i6;
                                                                            i87 = i88;
                                                                            i79 = i5;
                                                                        }
                                                                    } else {
                                                                        i5 = i79;
                                                                        if ((i96 & 255) <= (i97 & 255)) {
                                                                            i7 = i86;
                                                                            break;
                                                                            break;
                                                                        }
                                                                        i81 = i6;
                                                                        i87 = i88;
                                                                        i79 = i5;
                                                                    }
                                                                } else {
                                                                    i5 = i79;
                                                                    if ((i94 & 255) <= (i95 & 255)) {
                                                                        i7 = i86;
                                                                        break;
                                                                        break;
                                                                    }
                                                                    i81 = i6;
                                                                    i87 = i88;
                                                                    i79 = i5;
                                                                }
                                                            } else {
                                                                i5 = i79;
                                                                if ((i92 & 255) <= (i93 & 255)) {
                                                                    i7 = i86;
                                                                    break;
                                                                    break;
                                                                }
                                                                i81 = i6;
                                                                i87 = i88;
                                                                i79 = i5;
                                                            }
                                                        } else {
                                                            i5 = i79;
                                                            if ((i90 & 255) <= (i91 & 255)) {
                                                                i7 = i86;
                                                                break;
                                                                break;
                                                            }
                                                            i81 = i6;
                                                            i87 = i88;
                                                            i79 = i5;
                                                        }
                                                    }
                                                    iArr10[i7] = i84;
                                                    i82++;
                                                    i76 = i76;
                                                    i81 = i6;
                                                    i79 = i5;
                                                }
                                                int i123 = i81;
                                                int i124 = i76;
                                                int i125 = i79;
                                                if (z && i82 <= i71 && i78 > i77) {
                                                    break;
                                                }
                                                i76 = i124;
                                                i81 = i123;
                                                i79 = i125;
                                            }
                                            z2 = z;
                                            iArr14 = iArr15;
                                        }
                                        ft0Var.a = i78;
                                        if (z && i78 > i77) {
                                            break;
                                        }
                                    }
                                } else {
                                    int i126 = i73 + 1;
                                    int i127 = bArr5[iArr10[i70] + i126] & 255;
                                    int i128 = bArr5[iArr10[i71] + i126] & 255;
                                    iArr2 = iArr5;
                                    int i129 = bArr5[iArr10[(i70 + i71) >>> 1] + i126] & 255;
                                    if (i127 < i128) {
                                        if (i128 >= i129) {
                                            if (i127 < i129) {
                                                i128 = i129;
                                            } else {
                                                i128 = i127;
                                            }
                                        }
                                    } else if (i128 <= i129) {
                                        if (i127 > i129) {
                                            i128 = i129;
                                        } else {
                                            i128 = i127;
                                        }
                                    }
                                    int i130 = i71;
                                    int i131 = i130;
                                    int i132 = i70;
                                    int i133 = i132;
                                    while (true) {
                                        if (i132 <= i130) {
                                            int i134 = iArr10[i132];
                                            i10 = i130;
                                            i11 = i128;
                                            int i135 = (bArr5[i134 + i126] & 255) - i11;
                                            if (i135 == 0) {
                                                iArr10[i132] = iArr10[i133];
                                                iArr10[i133] = i134;
                                                i133++;
                                                i132++;
                                            } else if (i135 < 0) {
                                                i132++;
                                            }
                                            i128 = i11;
                                            i130 = i10;
                                        } else {
                                            i10 = i130;
                                            i11 = i128;
                                        }
                                        i12 = i131;
                                        i13 = i10;
                                        while (true) {
                                            if (i132 > i13) {
                                                bArr = bArr3;
                                                i4 = i63;
                                                break;
                                            }
                                            int i136 = iArr10[i13];
                                            bArr = bArr3;
                                            i4 = i63;
                                            int i137 = (bArr5[i136 + i126] & 255) - i11;
                                            if (i137 == 0) {
                                                iArr10[i13] = iArr10[i12];
                                                iArr10[i12] = i136;
                                                i12--;
                                                i13--;
                                            } else if (i137 <= 0) {
                                                break;
                                            } else {
                                                i13--;
                                            }
                                            i63 = i4;
                                            bArr3 = bArr;
                                        }
                                        if (i132 > i13) {
                                            break;
                                        }
                                        int i138 = i132;
                                        int i139 = iArr10[i138];
                                        int i140 = i138 + 1;
                                        iArr10[i138] = iArr10[i13];
                                        iArr10[i13] = i139;
                                        i131 = i12;
                                        i132 = i140;
                                        i130 = i13 - 1;
                                        i63 = i4;
                                        i128 = i11;
                                        bArr3 = bArr;
                                    }
                                    if (i12 < i133) {
                                        iArr11[i69] = i70;
                                        iArr12[i69] = i71;
                                        iArr13[i69] = i126;
                                    } else {
                                        int iMin = Math.min(i133 - i70, i132 - i133);
                                        int i141 = i132 - iMin;
                                        int i142 = iMin + i70;
                                        int i143 = i132;
                                        for (int i144 = i70; i144 < i142; i144++) {
                                            int i145 = iArr10[i144];
                                            iArr10[i144] = iArr10[i141];
                                            iArr10[i141] = i145;
                                            i141++;
                                        }
                                        int i146 = i71 - i12;
                                        int i147 = i12 - i13;
                                        int iMin2 = Math.min(i146, i147);
                                        int i148 = (i71 - iMin2) + 1;
                                        int i149 = iMin2 + i143;
                                        for (int i150 = i143; i150 < i149; i150++) {
                                            int i151 = iArr10[i150];
                                            iArr10[i150] = iArr10[i148];
                                            iArr10[i148] = i151;
                                            i148++;
                                        }
                                        int i152 = (i70 + i143) - i133;
                                        int i153 = i71 - i147;
                                        iArr11[i69] = i70;
                                        iArr12[i69] = i152 - 1;
                                        iArr13[i69] = i73;
                                        iArr11[i72] = i152;
                                        iArr12[i72] = i153;
                                        iArr13[i72] = i126;
                                        i69 = i72 + 1;
                                        iArr11[i69] = i153 + 1;
                                        iArr12[i69] = i71;
                                        iArr13[i69] = i73;
                                    }
                                    i69++;
                                }
                                i68 = i69;
                                bArr4 = bArr5;
                                iArr4 = iArr;
                                cArr2 = cArr;
                                iArr5 = iArr2;
                                i63 = i4;
                                bArr3 = bArr;
                                i33 = 2;
                            }
                            if (ft0Var.a > i30) {
                                break loop71;
                            }
                        } else {
                            iArr = iArr4;
                            cArr = cArr2;
                            iArr2 = iArr5;
                            bArr = bArr3;
                            i4 = i63;
                        }
                        iArr9[i64] = i65 | 2097152;
                    } else {
                        iArr = iArr4;
                        cArr = cArr2;
                        iArr2 = iArr5;
                        bArr = bArr3;
                        i4 = i63;
                    }
                    i63 = i4 + 1;
                    iArr4 = iArr;
                    cArr2 = cArr;
                    iArr5 = iArr2;
                    bArr3 = bArr;
                    i61 = 255;
                    i33 = 2;
                }
                int[] iArr16 = iArr4;
                char[] cArr3 = cArr2;
                int[] iArr17 = iArr5;
                byte[] bArr6 = bArr3;
                int i154 = 0;
                for (int i155 = i61; i154 <= i155; i155 = 255) {
                    iArr17[i154] = iArr9[(i154 << 8) + i62] & (-2097153);
                    i154++;
                }
                int i156 = i62 << 8;
                int i157 = (i62 + 1) << 8;
                int i158 = iArr9[i157] & (-2097153);
                for (int i159 = iArr9[i156] & (-2097153); i159 < i158; i159++) {
                    int i160 = iArr10[i159];
                    int i161 = bArr6[i160] & 255;
                    if (!zArr[i161]) {
                        iArr10[iArr17[i161]] = i160 == 0 ? i29 : i160 - 1;
                        iArr17[i161] = iArr17[i161] + 1;
                    }
                }
                int i162 = 256;
                while (true) {
                    i162--;
                    if (i162 < 0) {
                        break;
                    }
                    int i163 = (i162 << 8) + i62;
                    iArr9[i163] = iArr9[i163] | 2097152;
                }
                zArr[i62] = true;
                if (i60 < 255) {
                    int i164 = iArr9[i156] & (-2097153);
                    int i165 = (iArr9[i157] & (-2097153)) - i164;
                    int i166 = 0;
                    while ((i165 >> i166) > 65534) {
                        i166++;
                    }
                    for (int i167 = 0; i167 < i165; i167++) {
                        int i168 = iArr10[i164 + i167];
                        char c9 = (char) (i167 >> i166);
                        cArr3[i168] = c9;
                        if (i168 < 20) {
                            cArr3[i168 + i29 + 1] = c9;
                        }
                    }
                }
                i60++;
                iArr4 = iArr16;
                cArr2 = cArr3;
                iArr5 = iArr17;
                bArr3 = bArr6;
                i33 = 2;
            }
            if (ft0Var.c && ft0Var.a > ft0Var.b) {
                ft0Var.a(vj0Var, i29);
            }
        }
        int[] iArr18 = vj0Var.r;
        vj0Var.t = i2;
        for (int i169 = i3; i169 <= i29; i169++) {
            if (iArr18[i169] == 0) {
                vj0Var.t = i169;
                break;
            }
        }
        b(49);
        b(65);
        b(89);
        b(38);
        b(83);
        b(89);
        a(i27);
        g(1, i3);
        g(24, this.t.t);
        int i170 = this.b;
        vj0 vj0Var2 = this.t;
        boolean[] zArr2 = vj0Var2.a;
        byte[] bArr7 = vj0Var2.q;
        int[] iArr19 = vj0Var2.r;
        char[] cArr4 = vj0Var2.s;
        int[] iArr20 = vj0Var2.c;
        byte[] bArr8 = vj0Var2.b;
        byte[] bArr9 = vj0Var2.f;
        int i171 = 0;
        for (int i172 = 0; i172 < 256; i172++) {
            if (zArr2[i172]) {
                bArr8[i172] = (byte) i171;
                i171++;
            }
        }
        this.f = i171;
        int i173 = i171 + 1;
        Arrays.fill(iArr20, 0, i171 + 2, 0);
        while (true) {
            i171--;
            if (i171 < 0) {
                break;
            } else {
                bArr9[i171] = (byte) i171;
            }
        }
        int i174 = 0;
        int i175 = 0;
        for (int i176 = 0; i176 <= i170; i176++) {
            byte b2 = bArr8[bArr7[iArr19[i176]] & 255];
            byte b3 = bArr9[0];
            int i177 = 0;
            while (b2 != b3) {
                i177++;
                byte b4 = bArr9[i177];
                bArr9[i177] = b3;
                b3 = b4;
            }
            bArr9[0] = b3;
            if (i177 == 0) {
                i174++;
            } else {
                if (i174 > 0) {
                    int i178 = i174 - 1;
                    while (true) {
                        if ((i178 & 1) == 0) {
                            cArr4[i175] = 0;
                            i175++;
                            iArr20[0] = iArr20[0] + 1;
                        } else {
                            cArr4[i175] = 1;
                            i175++;
                            iArr20[1] = iArr20[1] + 1;
                        }
                        if (i178 < 2) {
                            break;
                        } else {
                            i178 = (i178 - 2) >> 1;
                        }
                    }
                    i174 = 0;
                }
                int i179 = i177 + 1;
                cArr4[i175] = (char) i179;
                i175++;
                iArr20[i179] = iArr20[i179] + 1;
            }
        }
        if (i174 > 0) {
            int i180 = i174 - 1;
            while (true) {
                if ((i180 & 1) == 0) {
                    cArr4[i175] = 0;
                    i175++;
                    iArr20[0] = iArr20[0] + 1;
                } else {
                    cArr4[i175] = 1;
                    i175++;
                    iArr20[1] = iArr20[1] + 1;
                }
                if (i180 < 2) {
                    break;
                } else {
                    i180 = (i180 - 2) >> 1;
                }
            }
        }
        cArr4[i175] = (char) i173;
        iArr20[i173] = iArr20[i173] + 1;
        this.k = i175 + 1;
        byte[][] bArr10 = this.t.g;
        int i181 = this.f;
        int i182 = i181 + 2;
        int i183 = 6;
        while (true) {
            i183--;
            if (i183 < 0) {
                break;
            }
            byte[] bArr11 = bArr10[i183];
            int i184 = i182;
            while (true) {
                i184--;
                if (i184 >= 0) {
                    bArr11[i184] = 15;
                }
            }
        }
        int i185 = this.k;
        int i186 = 4;
        if (i185 < 200) {
            i14 = 2;
        } else if (i185 < 600) {
            i14 = i;
        } else if (i185 < 1200) {
            i14 = 4;
        } else {
            i14 = i185 < 2400 ? 5 : 6;
        }
        vj0 vj0Var3 = this.t;
        byte[][] bArr12 = vj0Var3.g;
        int[] iArr21 = vj0Var3.c;
        int i187 = 0;
        for (int i188 = i14; i188 > 0; i188--) {
            int i189 = i185 / i188;
            int i190 = i187 - 1;
            int i191 = i181 + 1;
            int i192 = 0;
            while (i192 < i189 && i190 < i191) {
                i190++;
                i192 += iArr21[i190];
            }
            if (i190 > i187 && i188 != i14 && i188 != 1 && ((i14 - i188) & 1) != 0) {
                i192 -= iArr21[i190];
                i190--;
            }
            byte[] bArr13 = bArr12[i188 - 1];
            int i193 = i182;
            while (true) {
                i193--;
                if (i193 >= 0) {
                    if (i193 < i187 || i193 > i190) {
                        bArr13[i193] = 15;
                    } else {
                        bArr13[i193] = 0;
                    }
                }
            }
            i187 = i190 + 1;
            i185 -= i192;
        }
        vj0 vj0Var4 = this.t;
        int[][] iArr22 = vj0Var4.h;
        int[] iArr23 = vj0Var4.i;
        short[] sArr = vj0Var4.j;
        char[] cArr5 = vj0Var4.s;
        byte[] bArr14 = vj0Var4.d;
        byte[][] bArr15 = vj0Var4.g;
        byte[] bArr16 = bArr15[0];
        byte[] bArr17 = bArr15[1];
        byte[] bArr18 = bArr15[2];
        byte[] bArr19 = bArr15[i];
        byte[] bArr20 = bArr15[4];
        byte[] bArr21 = bArr15[5];
        int i194 = this.k;
        int i195 = 0;
        int i196 = 0;
        while (i195 < i186) {
            int i197 = i14;
            while (true) {
                int i198 = i197 - 1;
                if (i198 < 0) {
                    break;
                }
                int i199 = 0;
                iArr23[i198] = 0;
                int[] iArr24 = iArr22[i198];
                int i200 = i182;
                while (true) {
                    int i201 = i200 - 1;
                    if (i201 >= 0) {
                        iArr24[i201] = i199;
                        i200 = i201;
                        i199 = 0;
                    }
                }
                i197 = i198;
            }
            byte[][] bArr22 = bArr15;
            int i202 = i186;
            int i203 = 0;
            i196 = 0;
            while (i203 < this.k) {
                int[][] iArr25 = iArr22;
                int iMin3 = Math.min(i203 + 49, i194 - 1);
                if (i14 == 6) {
                    short s = 0;
                    short s2 = 0;
                    short s3 = 0;
                    short s4 = 0;
                    short s5 = 0;
                    short s6 = 0;
                    for (int i204 = i203; i204 <= iMin3; i204++) {
                        char c10 = cArr5[i204];
                        s = (short) (s + bArr16[c10]);
                        s2 = (short) (s2 + bArr17[c10]);
                        s3 = (short) (s3 + bArr18[c10]);
                        s4 = (short) (s4 + bArr19[c10]);
                        s5 = (short) (s5 + bArr20[c10]);
                        s6 = (short) (s6 + bArr21[c10]);
                    }
                    sArr[0] = s;
                    sArr[1] = s2;
                    sArr[2] = s3;
                    sArr[i] = s4;
                    sArr[i202] = s5;
                    sArr[5] = s6;
                } else {
                    int i205 = i14;
                    while (true) {
                        i205--;
                        if (i205 < 0) {
                            break;
                        } else {
                            sArr[i205] = 0;
                        }
                    }
                    int i206 = i203;
                    while (i206 <= iMin3) {
                        char c11 = cArr5[i206];
                        int i207 = i14;
                        while (true) {
                            i207--;
                            if (i207 >= 0) {
                                sArr[i207] = (short) (sArr[i207] + bArr22[i207][c11]);
                                i206 = i206;
                            }
                        }
                        i206++;
                    }
                }
                short s7 = 999999999;
                int i208 = i195;
                int i209 = i14;
                int i210 = -1;
                while (true) {
                    int i211 = i209 - 1;
                    if (i211 < 0) {
                        break;
                    }
                    int[] iArr26 = iArr23;
                    short s8 = sArr[i211];
                    if (s8 < s7) {
                        s7 = s8;
                        i210 = i211;
                    }
                    iArr23 = iArr26;
                    i209 = i211;
                }
                int[] iArr27 = iArr23;
                iArr27[i210] = iArr27[i210] + 1;
                bArr14[i196] = (byte) i210;
                i196++;
                int[] iArr28 = iArr25[i210];
                while (i203 <= iMin3) {
                    char c12 = cArr5[i203];
                    iArr28[c12] = iArr28[c12] + 1;
                    i203++;
                }
                i203 = iMin3 + 1;
                i195 = i208;
                iArr22 = iArr25;
                iArr23 = iArr27;
            }
            int[][] iArr29 = iArr22;
            int i212 = i195;
            int[] iArr30 = iArr23;
            int i213 = 0;
            while (i213 < i14) {
                byte[] bArr23 = bArr22[i213];
                int[] iArr31 = iArr29[i213];
                vj0 vj0Var5 = this.t;
                int[] iArr32 = vj0Var5.n;
                int i214 = i213;
                int[] iArr33 = vj0Var5.o;
                int[] iArr34 = vj0Var5.p;
                int i215 = i182;
                while (true) {
                    int i216 = i215 - 1;
                    if (i216 < 0) {
                        break;
                    }
                    int i217 = iArr31[i216];
                    if (i217 == 0) {
                        i217 = 1;
                    }
                    iArr33[i215] = i217 << 8;
                    i215 = i216;
                }
                boolean z4 = true;
                while (z4) {
                    iArr32[0] = 0;
                    iArr33[0] = 0;
                    iArr34[0] = -2;
                    int i218 = 1;
                    int i219 = 0;
                    while (i218 <= i182) {
                        iArr34[i218] = -1;
                        i219++;
                        iArr32[i219] = i218;
                        int[] iArr35 = iArr33;
                        int i220 = i219;
                        while (true) {
                            int i221 = iArr35[i218];
                            int i222 = i220 >> 1;
                            int i223 = iArr32[i222];
                            bArr2 = bArr23;
                            if (i221 < iArr35[i223]) {
                                iArr32[i220] = i223;
                                i220 = i222;
                                bArr23 = bArr2;
                            }
                        }
                        iArr32[i220] = i218;
                        i218++;
                        iArr33 = iArr35;
                        bArr23 = bArr2;
                    }
                    int[] iArr36 = iArr33;
                    byte[] bArr24 = bArr23;
                    int i224 = i182;
                    int i225 = i219;
                    while (i225 > 1) {
                        int i226 = iArr32[1];
                        int i227 = iArr32[i225];
                        iArr32[1] = i227;
                        int i228 = i225 - 1;
                        int i229 = 1;
                        while (true) {
                            i15 = i225;
                            int i230 = i229 << 1;
                            if (i230 > i228) {
                                i16 = i224;
                                break;
                            }
                            if (i230 < i228) {
                                i24 = i230 + 1;
                                i23 = i230;
                                i16 = i224;
                                if (iArr36[iArr32[i24]] >= iArr36[iArr32[i23]]) {
                                }
                                i25 = iArr36[i227];
                                i26 = iArr32[i24];
                                if (i25 < iArr36[i26]) {
                                    break;
                                }
                                iArr32[i229] = i26;
                                i225 = i15;
                                i229 = i24;
                                i224 = i16;
                            } else {
                                i23 = i230;
                                i16 = i224;
                            }
                            i24 = i23;
                            i25 = iArr36[i227];
                            i26 = iArr32[i24];
                            if (i25 < iArr36[i26]) {
                                break;
                                break;
                            }
                            iArr32[i229] = i26;
                            i225 = i15;
                            i229 = i24;
                            i224 = i16;
                        }
                        iArr32[i229] = i227;
                        int i231 = iArr32[1];
                        int i232 = iArr32[i228];
                        iArr32[1] = i232;
                        int i233 = i15 - 2;
                        int i234 = 1;
                        while (true) {
                            i17 = i232;
                            int i235 = i234 << 1;
                            if (i235 > i233) {
                                break;
                            }
                            if (i235 < i233) {
                                i20 = i235 + 1;
                                i19 = i233;
                                if (iArr36[iArr32[i20]] >= iArr36[iArr32[i235]]) {
                                }
                                i21 = iArr36[i17];
                                i22 = iArr32[i20];
                                if (i21 < iArr36[i22]) {
                                    break;
                                }
                                iArr32[i234] = i22;
                                i234 = i20;
                                i232 = i17;
                                i233 = i19;
                            } else {
                                i19 = i233;
                            }
                            i20 = i235;
                            i21 = iArr36[i17];
                            i22 = iArr32[i20];
                            if (i21 < iArr36[i22]) {
                                break;
                                break;
                            }
                            iArr32[i234] = i22;
                            i234 = i20;
                            i232 = i17;
                            i233 = i19;
                        }
                        iArr32[i234] = i17;
                        int i236 = i16 + 1;
                        iArr34[i231] = i236;
                        iArr34[i226] = i236;
                        int i237 = iArr36[i226];
                        int i238 = iArr36[i231];
                        iArr36[i236] = ((i237 & (-256)) + (i238 & (-256))) | (Math.max(i237 & 255, i238 & 255) + 1);
                        iArr34[i236] = -1;
                        iArr32[i228] = i236;
                        int i239 = iArr36[i236];
                        int i240 = i228;
                        while (true) {
                            int i241 = i240 >> 1;
                            int i242 = iArr32[i241];
                            i18 = i240;
                            if (i239 < iArr36[i242]) {
                                iArr32[i18] = i242;
                                i240 = i241;
                            }
                        }
                        iArr32[i18] = i236;
                        i224 = i236;
                        i225 = i228;
                    }
                    int i243 = 1;
                    z4 = false;
                    while (i243 <= i182) {
                        int i244 = i243;
                        int i245 = 0;
                        while (true) {
                            i244 = iArr34[i244];
                            if (i244 < 0) {
                                break;
                            } else {
                                i245++;
                            }
                        }
                        int i246 = i243;
                        bArr24[i243 - 1] = (byte) i245;
                        if (i245 > 20) {
                            z4 = true;
                        }
                        i243 = i246 + 1;
                    }
                    if (z4) {
                        for (int i247 = 1; i247 < i182; i247++) {
                            iArr36[i247] = ((iArr36[i247] >> 9) + 1) << 8;
                        }
                    }
                    iArr33 = iArr36;
                    bArr23 = bArr24;
                }
                i213 = i214 + 1;
            }
            i195 = i212 + 1;
            i186 = i202;
            bArr15 = bArr22;
            iArr22 = iArr29;
            iArr23 = iArr30;
        }
        vj0 vj0Var6 = this.t;
        byte[] bArr25 = vj0Var6.l;
        int i248 = i14;
        while (true) {
            i248--;
            if (i248 < 0) {
                break;
            } else {
                bArr25[i248] = (byte) i248;
            }
        }
        int i249 = i196;
        for (int i250 = 0; i250 < i249; i250++) {
            byte b5 = vj0Var6.d[i250];
            byte b6 = bArr25[0];
            int i251 = 0;
            while (b5 != b6) {
                i251++;
                byte b7 = bArr25[i251];
                bArr25[i251] = b6;
                b6 = b7;
            }
            bArr25[0] = b6;
            vj0Var6.e[i250] = (byte) i251;
        }
        vj0 vj0Var7 = this.t;
        int[][] iArr37 = vj0Var7.k;
        byte[][] bArr26 = vj0Var7.g;
        for (int i252 = 0; i252 < i14; i252++) {
            byte[] bArr27 = bArr26[i252];
            int i253 = 32;
            int i254 = i182;
            int i255 = 0;
            while (true) {
                i254--;
                if (i254 < 0) {
                    break;
                }
                int i256 = bArr27[i254] & 255;
                if (i256 > i255) {
                    i255 = i256;
                }
                if (i256 < i253) {
                    i253 = i256;
                }
            }
            int[] iArr38 = iArr37[i252];
            byte[] bArr28 = bArr26[i252];
            int i257 = 0;
            while (i253 <= i255) {
                for (int i258 = 0; i258 < i182; i258++) {
                    if ((bArr28[i258] & 255) == i253) {
                        iArr38[i258] = i257;
                        i257++;
                    }
                }
                i257 <<= 1;
                i253++;
            }
        }
        vj0 vj0Var8 = this.t;
        boolean[] zArr3 = vj0Var8.a;
        boolean[] zArr4 = vj0Var8.m;
        int i259 = 16;
        while (true) {
            i259--;
            if (i259 < 0) {
                break;
            }
            zArr4[i259] = false;
            int i260 = i259 * 16;
            int i261 = 16;
            while (true) {
                i261--;
                if (i261 >= 0) {
                    if (zArr3[i260 + i261]) {
                        zArr4[i259] = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        for (int i262 = 0; i262 < 16; i262++) {
            g(1, zArr4[i262] ? 1 : 0);
        }
        OutputStream outputStream = ((FilterOutputStream) this).out;
        int i263 = this.d;
        int i264 = this.c;
        int i265 = i263;
        int i266 = 0;
        while (i266 < 16) {
            if (zArr4[i266]) {
                int i267 = i266 * 16;
                int i268 = i264;
                int i269 = i265;
                int i270 = 0;
                while (i270 < 16) {
                    for (int i271 = i32; i269 >= i271; i271 = 8) {
                        outputStream.write(i268 >> 24);
                        i268 <<= 8;
                        i269 -= 8;
                    }
                    if (zArr3[i267 + i270]) {
                        i268 |= 1 << (31 - i269);
                    }
                    i269++;
                    i270++;
                    i32 = 8;
                }
                i265 = i269;
                i264 = i268;
            }
            i266++;
            i32 = 8;
        }
        this.c = i264;
        this.d = i265;
        g(i, i14);
        g(15, i249);
        OutputStream outputStream2 = ((FilterOutputStream) this).out;
        byte[] bArr29 = this.t.e;
        int i272 = this.d;
        int i273 = this.c;
        int i274 = i272;
        int i275 = 0;
        while (i275 < i249) {
            int i276 = bArr29[i275] & 255;
            int i277 = i273;
            int i278 = i274;
            for (int i279 = 0; i279 < i276; i279++) {
                while (i278 >= 8) {
                    outputStream2.write(i277 >> 24);
                    i277 <<= 8;
                    i278 -= 8;
                }
                i277 |= 1 << (31 - i278);
                i278++;
            }
            while (i278 >= 8) {
                outputStream2.write(i277 >> 24);
                i277 <<= 8;
                i278 -= 8;
            }
            i274 = i278 + 1;
            i275++;
            i273 = i277;
        }
        this.c = i273;
        this.d = i274;
        byte[][] bArr30 = this.t.g;
        OutputStream outputStream3 = ((FilterOutputStream) this).out;
        int i280 = 0;
        while (i280 < i14) {
            byte[] bArr31 = bArr30[i280];
            int i281 = bArr31[0] & 255;
            while (i274 >= 8) {
                outputStream3.write(i273 >> 24);
                i273 <<= 8;
                i274 -= 8;
            }
            int i282 = i281;
            int i283 = i273 | (i281 << (27 - i274));
            int i284 = i274 + 5;
            for (int i285 = 0; i285 < i182; i285++) {
                int i286 = bArr31[i285] & 255;
                while (i282 < i286) {
                    while (i284 >= 8) {
                        outputStream3.write(i283 >> 24);
                        i283 <<= 8;
                        i284 -= 8;
                    }
                    i283 |= 2 << (30 - i284);
                    i284 += 2;
                    i282++;
                }
                while (i282 > i286) {
                    while (i284 >= 8) {
                        outputStream3.write(i283 >> 24);
                        i283 <<= 8;
                        i284 -= 8;
                    }
                    i283 |= 3 << (30 - i284);
                    i284 += 2;
                    i282--;
                }
                while (i284 >= 8) {
                    outputStream3.write(i283 >> 24);
                    i283 <<= 8;
                    i284 -= 8;
                }
                i284++;
            }
            i280++;
            i274 = i284;
            i273 = i283;
        }
        int i287 = 0;
        this.c = i273;
        this.d = i274;
        vj0 vj0Var9 = this.t;
        byte[][] bArr32 = vj0Var9.g;
        int[][] iArr39 = vj0Var9.k;
        OutputStream outputStream4 = ((FilterOutputStream) this).out;
        byte[] bArr33 = vj0Var9.d;
        char[] cArr6 = vj0Var9.s;
        int i288 = this.k;
        int i289 = i273;
        int i290 = 0;
        while (i290 < i288) {
            int iMin4 = Math.min(i290 + 49, i288 - 1);
            int i291 = bArr33[i287] & 255;
            int[] iArr40 = iArr39[i291];
            byte[] bArr34 = bArr32[i291];
            while (i290 <= iMin4) {
                char c13 = cArr6[i290];
                while (i274 >= 8) {
                    outputStream4.write(i289 >> 24);
                    i289 <<= 8;
                    i274 -= 8;
                }
                int i292 = bArr34[c13] & 255;
                i289 |= iArr40[c13] << ((32 - i274) - i292);
                i274 += i292;
                i290++;
            }
            i290 = iMin4 + 1;
            i287++;
        }
        this.c = i289;
        this.d = i274;
    }

    public final void j() throws IOException {
        b(23);
        b(114);
        b(69);
        b(56);
        b(80);
        b(144);
        a(this.q);
        while (this.d > 0) {
            ((FilterOutputStream) this).out.write(this.c >> 24);
            this.c <<= 8;
            this.d -= 8;
        }
    }

    public final void m(int i) throws IOException {
        int i2 = this.n;
        if (i2 == -1) {
            this.n = i & 255;
            this.p++;
            return;
        }
        int i3 = i & 255;
        if (i2 != i3) {
            n();
            this.p = 1;
            this.n = i3;
            return;
        }
        int i4 = this.p + 1;
        this.p = i4;
        if (i4 > 254) {
            n();
            this.n = -1;
            this.p = 0;
        }
    }

    public final void n() throws IOException {
        int i = this.b;
        int i2 = this.r;
        dz0 dz0Var = this.e;
        if (i < i2) {
            int i3 = this.n;
            vj0 vj0Var = this.t;
            boolean[] zArr = vj0Var.a;
            byte[] bArr = vj0Var.q;
            zArr[i3] = true;
            byte b = (byte) i3;
            int i4 = this.p;
            int i5 = dz0Var.a;
            int i6 = i4;
            while (true) {
                int i7 = i6 - 1;
                if (i6 <= 0) {
                    break;
                }
                int i8 = (i5 >> 24) ^ i3;
                int i9 = i5 << 8;
                if (i8 < 0) {
                    i8 += 256;
                }
                i5 = i9 ^ dz0.b[i8];
                i6 = i7;
            }
            dz0Var.a = i5;
            if (i4 == 1) {
                bArr[i + 2] = b;
                this.b = i + 1;
                return;
            }
            if (i4 == 2) {
                int i10 = i + 2;
                bArr[i10] = b;
                bArr[i + 3] = b;
                this.b = i10;
                return;
            }
            if (i4 == 3) {
                bArr[i + 2] = b;
                int i11 = i + 3;
                bArr[i11] = b;
                bArr[i + 4] = b;
                this.b = i11;
                return;
            }
            int i12 = i4 - 4;
            vj0Var.a[i12] = true;
            bArr[i + 2] = b;
            bArr[i + 3] = b;
            bArr[i + 4] = b;
            int i13 = i + 5;
            bArr[i13] = b;
            bArr[i + 6] = (byte) i12;
            this.b = i13;
            return;
        }
        h();
        dz0Var.a = -1;
        this.b = -1;
        boolean[] zArr2 = this.t.a;
        int i14 = 256;
        while (true) {
            i14--;
            if (i14 < 0) {
                n();
                return;
            }
            zArr2[i14] = false;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0) {
            a6.d(xs1.h(i, "offs(", ") < 0."));
            return;
        }
        if (i2 < 0) {
            a6.d(xs1.h(i2, "len(", ") < 0."));
            return;
        }
        int i3 = i + i2;
        if (i3 > bArr.length) {
            a6.d(xs1.m(xs1.n("offs(", i, ") + len(", ") > buf.length(", i2), bArr.length, ")."));
            return;
        }
        if (this.a.get()) {
            y5.m("Stream closed");
            return;
        }
        while (i < i3) {
            m(bArr[i]);
            i++;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        if (!this.a.get()) {
            m(i);
        } else {
            y5.m("Stream closed");
        }
    }
}
