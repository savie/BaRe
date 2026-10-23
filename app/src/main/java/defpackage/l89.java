package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l89 {
    public static final l89 f = new l89(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d = -1;
    public boolean e;

    public l89(int i, int[] iArr, Object[] objArr, boolean z) {
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public static l89 e() {
        return new l89(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int iT;
        int iR;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iH = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2];
            int i4 = i3 >>> 3;
            int i5 = i3 & 7;
            if (i5 != 0) {
                if (i5 == 1) {
                    ((Long) this.c[i2]).getClass();
                    iH = u48.h(i4 << 3, 8, iH);
                } else if (i5 == 2) {
                    iH = c79.n(i4, (t69) this.c[i2]) + iH;
                } else if (i5 == 3) {
                    iT = c79.s(i4) << 1;
                    iR = ((l89) this.c[i2]).a();
                } else {
                    if (i5 != 5) {
                        throw new IllegalStateException(p79.a());
                    }
                    ((Integer) this.c[i2]).getClass();
                    iH = u48.h(i4 << 3, 4, iH);
                }
            } else {
                long jLongValue = ((Long) this.c[i2]).longValue();
                iT = c79.t(i4 << 3);
                iR = c79.r(jLongValue);
            }
            iH = iR + iT + iH;
        }
        this.d = iH;
        return iH;
    }

    public final void b(int i) {
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

    public final void c(int i, Object obj) {
        if (!this.e) {
            x5.e();
            return;
        }
        b(this.a + 1);
        int[] iArr = this.b;
        int i2 = this.a;
        iArr[i2] = i;
        this.c[i2] = obj;
        this.a = i2 + 1;
    }

    public final void d(jq6 jq6Var) {
        if (this.a == 0) {
            return;
        }
        for (int i = 0; i < this.a; i++) {
            int i2 = this.b[i];
            Object obj = this.c[i];
            c79 c79Var = (c79) jq6Var.b;
            int i3 = i2 >>> 3;
            int i4 = i2 & 7;
            if (i4 == 0) {
                c79Var.l(i3, ((Long) obj).longValue());
            } else if (i4 == 1) {
                c79Var.d(i3, ((Long) obj).longValue());
            } else if (i4 == 2) {
                c79Var.f(i3, (t69) obj);
            } else if (i4 == 3) {
                c79Var.p(i3, 3);
                ((l89) obj).d(jq6Var);
                c79Var.p(i3, 4);
            } else {
                if (i4 != 5) {
                    y5.k(p79.a());
                    return;
                }
                c79Var.c(i3, ((Integer) obj).intValue());
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof l89)) {
            return false;
        }
        l89 l89Var = (l89) obj;
        int i = this.a;
        if (i == l89Var.a) {
            int[] iArr = this.b;
            int[] iArr2 = l89Var.b;
            for (int i2 = 0; i2 < i; i2++) {
                if (iArr[i2] == iArr2[i2]) {
                }
            }
            Object[] objArr = this.c;
            Object[] objArr2 = l89Var.c;
            int i3 = this.a;
            for (int i4 = 0; i4 < i3; i4++) {
                if (objArr[i4].equals(objArr2[i4])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.a;
        int i2 = (i + 527) * 31;
        int[] iArr = this.b;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = (i2 + i3) * 31;
        Object[] objArr = this.c;
        int i6 = this.a;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }
}
