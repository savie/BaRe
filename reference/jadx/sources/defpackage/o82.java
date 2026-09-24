package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class o82 extends q1 {
    public final byte[] a;

    public o82(byte[] bArr) {
        this.a = bArr;
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return ms8.x(this.a);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (q1Var instanceof o82) {
            return Arrays.equals(this.a, ((o82) q1Var).a);
        }
        return false;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) {
        m1Var.k(18, z, this.a);
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
