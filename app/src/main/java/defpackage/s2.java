package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class s2 extends q1 {
    public final byte[] a;

    public s2(byte[] bArr) {
        byte b;
        byte b2;
        if (bArr.length < 2) {
            c6.f("UTCTime string too short");
            throw null;
        }
        this.a = bArr;
        if (bArr.length <= 0 || (b = bArr[0]) < 48 || b > 57 || bArr.length <= 1 || (b2 = bArr[1]) < 48 || b2 > 57) {
            c6.f("illegal characters in UTCTime string");
            throw null;
        }
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return ms8.x(this.a);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (!(q1Var instanceof s2)) {
            return false;
        }
        return Arrays.equals(this.a, ((s2) q1Var).a);
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) {
        m1Var.k(23, z, this.a);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return false;
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        return m1.d(this.a.length, z);
    }

    public final String toString() {
        return lq7.a(this.a);
    }
}
