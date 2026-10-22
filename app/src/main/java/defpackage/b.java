package defpackage;

import java.io.EOFException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static final byte[] a;
    public static final long[] b;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(f51.a);
        bytes.getClass();
        a = bytes;
        b = new long[]{-1, 9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, 9999999999L, 99999999999L, 999999999999L, 9999999999999L, 99999999999999L, 999999999999999L, 9999999999999999L, 99999999999999999L, 999999999999999999L, Long.MAX_VALUE};
    }

    public static final long a(nw0 nw0Var, hy0 hy0Var, long j, long j2, int i) {
        m67 m67Var;
        long j3 = j;
        long j4 = j2;
        hy0Var.getClass();
        long j5 = i;
        k55.c(hy0Var.d(), 0L, j5);
        if (i <= 0) {
            c6.f("byteCount == 0");
            return 0L;
        }
        if (j3 < 0) {
            f6.g(u48.l(j3, "fromIndex < 0: "));
            return 0L;
        }
        if (j3 > j4) {
            StringBuilder sbT = dj7.t("fromIndex > toIndex: ", " > ", j3);
            sbT.append(j4);
            throw new IllegalArgumentException(sbT.toString().toString());
        }
        long j6 = nw0Var.b;
        if (j4 > j6) {
            j4 = j6;
        }
        if (j3 == j4 || (m67Var = nw0Var.a) == null) {
            return -1L;
        }
        long j7 = 0;
        if (j6 - j3 < j3) {
            while (j6 > j3) {
                m67Var = m67Var.g;
                m67Var.getClass();
                j6 -= (long) (m67Var.c - m67Var.b);
            }
            byte[] bArrH = hy0Var.h();
            byte b2 = bArrH[0];
            long jMin = Math.min(j4, (nw0Var.b - j5) + 1);
            while (j6 < jMin) {
                byte[] bArr = m67Var.a;
                int iMin = (int) Math.min(m67Var.c, (((long) m67Var.b) + jMin) - j6);
                for (int i2 = (int) ((((long) m67Var.b) + j3) - j6); i2 < iMin; i2++) {
                    if (bArr[i2] == b2 && b(m67Var, i2 + 1, bArrH, 1, i)) {
                        return ((long) (i2 - m67Var.b)) + j6;
                    }
                }
                j6 += (long) (m67Var.c - m67Var.b);
                m67Var = m67Var.f;
                m67Var.getClass();
                j3 = j6;
            }
            return -1L;
        }
        while (true) {
            long j8 = j7 + ((long) (m67Var.c - m67Var.b));
            if (j8 > j3) {
                break;
            }
            m67Var = m67Var.f;
            m67Var.getClass();
            j7 = j8;
        }
        byte[] bArrH2 = hy0Var.h();
        byte b3 = bArrH2[0];
        long jMin2 = Math.min(j4, (nw0Var.b - j5) + 1);
        while (j7 < jMin2) {
            byte[] bArr2 = m67Var.a;
            int iMin2 = (int) Math.min(m67Var.c, (((long) m67Var.b) + jMin2) - j7);
            for (int i3 = (int) ((((long) m67Var.b) + j3) - j7); i3 < iMin2; i3++) {
                if (bArr2[i3] == b3 && b(m67Var, i3 + 1, bArrH2, 1, i)) {
                    return ((long) (i3 - m67Var.b)) + j7;
                }
            }
            j7 += (long) (m67Var.c - m67Var.b);
            m67Var = m67Var.f;
            m67Var.getClass();
            j3 = j7;
        }
        return -1L;
    }

    public static final boolean b(m67 m67Var, int i, byte[] bArr, int i2, int i3) {
        int i4 = m67Var.c;
        byte[] bArr2 = m67Var.a;
        while (i2 < i3) {
            if (i == i4) {
                m67Var = m67Var.f;
                m67Var.getClass();
                byte[] bArr3 = m67Var.a;
                bArr2 = bArr3;
                i = m67Var.b;
                i4 = m67Var.c;
            }
            if (bArr2[i] != bArr[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static final String c(nw0 nw0Var, long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (nw0Var.h(j2) == 13) {
                String strU = nw0Var.u(j2, f51.a);
                nw0Var.skip(2L);
                return strU;
            }
        }
        String strU2 = nw0Var.u(j, f51.a);
        nw0Var.skip(1L);
        return strU2;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00a1 A[LOOP:0: B:8:0x001c->B:49:0x00a1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x00a0 A[SYNTHETIC] */
    public static final int d(nw0 nw0Var, nu5 nu5Var, boolean z) {
        int i;
        int i2;
        int i3;
        m67 m67Var;
        int i4;
        nu5Var.getClass();
        m67 m67Var2 = nw0Var.a;
        if (m67Var2 == null) {
            return z ? -2 : -1;
        }
        byte[] bArr = m67Var2.a;
        int i5 = m67Var2.b;
        int i6 = m67Var2.c;
        int[] iArr = nu5Var.b;
        m67 m67Var3 = m67Var2;
        int i7 = -1;
        int i8 = 0;
        loop0: while (true) {
            int i9 = i8 + 1;
            int i10 = iArr[i8];
            int i11 = i8 + 2;
            int i12 = iArr[i9];
            if (i12 != -1) {
                i7 = i12;
            }
            if (m67Var3 == null) {
                break;
            }
            if (i10 >= 0) {
                int i13 = i5 + 1;
                int i14 = bArr[i5] & 255;
                int i15 = i11 + i10;
                while (i11 != i15) {
                    if (i14 == iArr[i11]) {
                        i = iArr[i11 + i10];
                        if (i13 == i6) {
                            m67Var3 = m67Var3.f;
                            m67Var3.getClass();
                            int i16 = m67Var3.b;
                            byte[] bArr2 = m67Var3.a;
                            i2 = m67Var3.c;
                            if (m67Var3 == m67Var2) {
                                i3 = i16;
                                bArr = bArr2;
                                m67Var3 = null;
                            } else {
                                i3 = i16;
                                bArr = bArr2;
                            }
                        } else {
                            i2 = i6;
                            i3 = i13;
                        }
                        if (i >= 0) {
                            return i;
                        }
                        int i17 = i2;
                        i8 = -i;
                        i5 = i3;
                        i6 = i17;
                    } else {
                        i11++;
                    }
                }
                return i7;
            }
            int i18 = (i10 * (-1)) + i11;
            while (true) {
                int i19 = i5 + 1;
                int i20 = i11 + 1;
                if ((bArr[i5] & 255) == iArr[i11]) {
                    boolean z2 = i20 == i18;
                    if (i19 == i6) {
                        m67Var3.getClass();
                        m67 m67Var4 = m67Var3.f;
                        m67Var4.getClass();
                        i3 = m67Var4.b;
                        byte[] bArr3 = m67Var4.a;
                        i4 = m67Var4.c;
                        if (m67Var4 != m67Var2) {
                            m67Var = m67Var4;
                            bArr = bArr3;
                        } else {
                            if (!z2) {
                                break loop0;
                            }
                            bArr = bArr3;
                            m67Var = null;
                        }
                    } else {
                        m67Var = m67Var3;
                        i4 = i6;
                        i3 = i19;
                    }
                    if (z2) {
                        i = iArr[i20];
                        int i21 = i4;
                        m67Var3 = m67Var;
                        i2 = i21;
                        break;
                    }
                    i5 = i3;
                    i6 = i4;
                    m67Var3 = m67Var;
                    i11 = i20;
                }
                return i7;
            }
            if (i >= 0) {
                return i;
            }
            int i110 = i2;
            i8 = -i;
            i5 = i3;
            i6 = i110;
        }
        if (z) {
            return -2;
        }
        return i7;
    }
}
