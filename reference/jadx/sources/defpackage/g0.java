package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class g0 extends q1 {
    public static final g0[] b = new g0[12];
    public final byte[] a;

    public g0(byte[] bArr, boolean z) {
        if (t0.E(bArr)) {
            c6.f("malformed enumerated");
            throw null;
        }
        int i = 0;
        if ((bArr[0] & 128) != 0) {
            c6.f("enumerated must be non-negative");
            throw null;
        }
        this.a = z ? ms8.k(bArr) : bArr;
        int length = bArr.length - 1;
        while (i < length) {
            byte b2 = bArr[i];
            i++;
            if (b2 != (bArr[i] >> 7)) {
                return;
            }
        }
    }

    public static g0 x(byte[] bArr, boolean z) {
        if (bArr.length > 1) {
            return new g0(bArr, z);
        }
        if (bArr.length == 0) {
            c6.f("ENUMERATED has zero length");
            return null;
        }
        int i = bArr[0] & 255;
        if (i >= 12) {
            return new g0(bArr, z);
        }
        g0[] g0VarArr = b;
        g0 g0Var = g0VarArr[i];
        if (g0Var != null) {
            return g0Var;
        }
        g0 g0Var2 = new g0(bArr, z);
        g0VarArr[i] = g0Var2;
        return g0Var2;
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return ms8.x(this.a);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (q1Var instanceof g0) {
            return Arrays.equals(this.a, ((g0) q1Var).a);
        }
        return false;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) {
        m1Var.k(10, z, this.a);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return false;
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        return m1.d(this.a.length, z);
    }
}
