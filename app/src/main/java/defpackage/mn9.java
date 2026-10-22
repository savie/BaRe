package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mn9 {
    public static final mn9 f = new mn9(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d = -1;
    public boolean e;

    public mn9(int i, int[] iArr, Object[] objArr, boolean z) {
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public static mn9 b() {
        return new mn9(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int iN;
        int iO;
        int iN2;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.a; i3++) {
            int i4 = this.b[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 != 1) {
                    if (i6 == 2) {
                        int i7 = i5 << 3;
                        dh9 dh9Var = (dh9) this.c[i3];
                        int iN3 = nh9.n(i7);
                        int iF = dh9Var.f();
                        i2 = u48.i(iF, iF, iN3, i2);
                    } else if (i6 == 3) {
                        int iN4 = nh9.n(i5 << 3);
                        iN = iN4 + iN4;
                        iO = ((mn9) this.c[i3]).a();
                    } else {
                        if (i6 != 5) {
                            throw new IllegalStateException(new qj9());
                        }
                        ((Integer) this.c[i3]).getClass();
                        iN2 = nh9.n(i5 << 3) + 4;
                    }
                } else {
                    ((Long) this.c[i3]).getClass();
                    iN2 = nh9.n(i5 << 3) + 8;
                }
                i2 = iN2 + i2;
            } else {
                int i8 = i5 << 3;
                long jLongValue = ((Long) this.c[i3]).longValue();
                iN = nh9.n(i8);
                iO = nh9.o(jLongValue);
            }
            i2 = iO + iN + i2;
        }
        this.d = i2;
        return i2;
    }

    public final void c(int i, Object obj) {
        if (!this.e) {
            x5.e();
            return;
        }
        e(this.a + 1);
        int[] iArr = this.b;
        int i2 = this.a;
        iArr[i2] = i;
        this.c[i2] = obj;
        this.a = i2 + 1;
    }

    public final void d(om5 om5Var) throws uh9 {
        nh9 nh9Var = (nh9) om5Var.a;
        if (this.a != 0) {
            for (int i = 0; i < this.a; i++) {
                int i2 = this.b[i];
                Object obj = this.c[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    nh9Var.l(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    nh9Var.e(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    dh9 dh9Var = (dh9) obj;
                    nh9Var.k((i4 << 3) | 2);
                    nh9Var.k(dh9Var.f());
                    dh9Var.i(nh9Var);
                } else if (i3 == 3) {
                    nh9Var.i(i4, 3);
                    ((mn9) obj).d(om5Var);
                    nh9Var.i(i4, 4);
                } else {
                    if (i3 != 5) {
                        y5.k(new qj9());
                        return;
                    }
                    nh9Var.c(i4, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final void e(int i) {
        int[] iArr = this.b;
        if (i > iArr.length) {
            int i2 = this.a;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.b = Arrays.copyOf(iArr, i);
            this.c = Arrays.copyOf(this.c, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof mn9)) {
            mn9 mn9Var = (mn9) obj;
            int i = this.a;
            if (i == mn9Var.a) {
                int[] iArr = this.b;
                int[] iArr2 = mn9Var.b;
                for (int i2 = 0; i2 < i; i2++) {
                    if (iArr[i2] == iArr2[i2]) {
                    }
                }
                Object[] objArr = this.c;
                Object[] objArr2 = mn9Var.c;
                int i3 = this.a;
                for (int i4 = 0; i4 < i3; i4++) {
                    if (objArr[i4].equals(objArr2[i4])) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.a;
        int i2 = i + 527;
        int[] iArr = this.b;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = ((i2 * 31) + i3) * 31;
        Object[] objArr = this.c;
        int i6 = this.a;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }
}
