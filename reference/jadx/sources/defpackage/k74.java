package defpackage;

import com.jcraft.jsch.Argon2;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k74 implements Closeable {
    public static final short[] f = {96, 128, 160, 192, 224, 256, 288, 320, 353, 417, 481, 545, 610, 738, 866, 994, 1123, 1379, 1635, 1891, 2148, 2660, 3172, 3684, 4197, 5221, 6245, 7269, 112};
    public static final int[] k = {16, 32, 48, 64, 81, 113, 146, 210, 275, 403, 532, 788, 1045, 1557, 2070, 3094, 4119, 6167, 8216, 12312, 16409, 24601, 32794, 49178, 65563, 98331, 131100, 196636, 262173, 393245, 524318, 786462};
    public static final int[] n = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
    public static final int[] p;
    public static final int[] q;
    public boolean a;
    public gr0 c;
    public final InputStream d;
    public final b3 e = new b3();
    public od2 b = new i74();

    static {
        int[] iArr = new int[288];
        p = iArr;
        Arrays.fill(iArr, 0, 144, 8);
        Arrays.fill(iArr, 144, 256, 9);
        Arrays.fill(iArr, 256, 280, 7);
        Arrays.fill(iArr, 280, 288, 8);
        int[] iArr2 = new int[32];
        Arrays.fill(iArr2, 5);
        q = iArr2;
    }

    public k74(InputStream inputStream) {
        this.c = new gr0(inputStream, ByteOrder.LITTLE_ENDIAN);
        this.d = inputStream;
    }

    public static g74 a(int[] iArr) {
        int[] iArr2 = new int[65];
        int iMax = 0;
        for (int i : iArr) {
            if (i < 0 || i > 64) {
                c6.f(xs1.h(i, "Invalid code ", " in literal table"));
                return null;
            }
            iMax = Math.max(iMax, i);
            iArr2[i] = iArr2[i] + 1;
        }
        int i2 = iMax + 1;
        int[] iArrCopyOf = Arrays.copyOf(iArr2, i2);
        int[] iArr3 = new int[i2];
        int i3 = 0;
        for (int i4 = 0; i4 <= iMax; i4++) {
            i3 = (i3 + iArrCopyOf[i4]) << 1;
            iArr3[i4] = i3;
        }
        g74 g74Var = new g74(0);
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = iArr[i5];
            if (i6 != 0) {
                int i7 = i6 - 1;
                int i8 = iArr3[i7];
                g74 g74Var2 = g74Var;
                int i9 = i7;
                while (true) {
                    int i10 = g74Var2.a;
                    if (i9 < 0) {
                        g74Var2.b = i5;
                        g74Var2.c = null;
                        g74Var2.d = null;
                        iArr3[i7] = iArr3[i7] + 1;
                        break;
                    }
                    if (((1 << i9) & i8) == 0) {
                        if (g74Var2.c == null && g74Var2.b == -1) {
                            g74Var2.c = new g74(i10 + 1);
                        }
                        g74Var2 = g74Var2.c;
                    } else {
                        if (g74Var2.d == null && g74Var2.b == -1) {
                            g74Var2.d = new g74(i10 + 1);
                        }
                        g74Var2 = g74Var2.d;
                    }
                    if (g74Var2 == null) {
                        l0.e("node doesn't exist in Huffman tree");
                        return null;
                    }
                    i9--;
                }
            }
        }
        return g74Var;
    }

    public static int g(gr0 gr0Var, g74 g74Var) {
        while (g74Var != null && g74Var.b == -1) {
            g74Var = h(gr0Var, 1) == 0 ? g74Var.c : g74Var.d;
        }
        if (g74Var != null) {
            return g74Var.b;
        }
        return -1;
    }

    public static long h(gr0 gr0Var, int i) throws IOException {
        long jA = gr0Var.a(i);
        if (jA != -1) {
            return jA;
        }
        throw new EOFException("Truncated Deflate64 Stream");
    }

    public final int b(byte[] bArr, int i, int i2) throws IOException {
        int iH;
        long jH;
        while (true) {
            if (this.a && !this.b.n()) {
                return -1;
            }
            boolean z = true;
            if (this.b.y() == 1) {
                this.a = h(this.c, 1) == 1;
                int i3 = 2;
                int iH2 = (int) h(this.c, 2);
                if (iH2 == 0) {
                    gr0 gr0Var = this.c;
                    int i4 = gr0Var.d % 8;
                    if (i4 > 0) {
                        gr0Var.b(i4);
                    }
                    long jH2 = h(this.c, 16);
                    if ((65535 & (jH2 ^ 65535)) != h(this.c, 16)) {
                        l0.e("Illegal LEN / NLEN values");
                        return 0;
                    }
                    this.b = new j74(this, jH2);
                } else if (iH2 == 1) {
                    this.b = new h74(this, 4, p, q);
                } else {
                    if (iH2 != 2) {
                        l0.e(fz5.j(iH2, "Unsupported compression: "));
                        return 0;
                    }
                    int[][] iArr = {new int[(int) (h(this.c, 5) + 257)], new int[(int) (h(this.c, 5) + 1)]};
                    gr0 gr0Var2 = this.c;
                    int[] iArr2 = iArr[0];
                    int[] iArr3 = iArr[1];
                    int iH3 = (int) (h(gr0Var2, 4) + 4);
                    int[] iArr4 = new int[19];
                    int i5 = 0;
                    while (i5 < iH3) {
                        iArr4[n[i5]] = (int) h(gr0Var2, 3);
                        i5++;
                        z = z;
                    }
                    boolean z2 = z;
                    g74 g74VarA = a(iArr4);
                    int length = iArr2.length + iArr3.length;
                    int[] iArr5 = new int[length];
                    int i6 = 0;
                    int i7 = 0;
                    int i8 = -1;
                    while (i6 < length) {
                        if (i7 > 0) {
                            iArr5[i6] = i8;
                            i7--;
                            i6++;
                        } else {
                            int iG = g(gr0Var2, g74VarA);
                            if (iG >= 16) {
                                long j = 3;
                                switch (iG) {
                                    case Argon2.V10 /* 16 */:
                                        iH = (int) (h(gr0Var2, i3) + 3);
                                        break;
                                    case 17:
                                        jH = h(gr0Var2, 3);
                                        i7 = (int) (jH + j);
                                        i8 = 0;
                                        iH = i7;
                                        break;
                                    case 18:
                                        jH = h(gr0Var2, 7);
                                        j = 11;
                                        i7 = (int) (jH + j);
                                        i8 = 0;
                                        iH = i7;
                                        break;
                                    default:
                                        iH = i7;
                                        break;
                                }
                            } else {
                                iArr5[i6] = iG;
                                iH = i7;
                                i6++;
                                i8 = iG;
                            }
                            i7 = iH;
                            gr0Var2 = gr0Var2;
                            i3 = 2;
                        }
                    }
                    System.arraycopy(iArr5, 0, iArr2, 0, iArr2.length);
                    System.arraycopy(iArr5, iArr2.length, iArr3, 0, iArr3.length);
                    this.b = new h74(this, 3, iArr[0], iArr[z2 ? 1 : 0]);
                }
            } else {
                int iV = this.b.v(bArr, i, i2);
                if (iV != 0) {
                    return iV;
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.b = new i74();
        this.c = null;
    }
}
