package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class l82 extends q1 {
    public final byte[] a;

    static {
        new k0(0, l82.class);
    }

    public l82(byte[] bArr) {
        if (bArr != null) {
            this.a = bArr;
        } else {
            f6.n("'contents' cannot be null");
            throw null;
        }
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return ms8.x(this.a);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (q1Var instanceof l82) {
            return Arrays.equals(this.a, ((l82) q1Var).a);
        }
        return false;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) {
        m1Var.k(25, z, this.a);
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
