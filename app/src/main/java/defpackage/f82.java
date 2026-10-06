package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class f82 extends u {
    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        byte[] bArr = this.a;
        int i = bArr[0] & 255;
        int length = bArr.length;
        int i2 = length - 1;
        byte b = bArr[i2];
        byte b2 = (byte) ((255 << i) & b);
        if (b == b2) {
            m1Var.k(3, z, bArr);
            return;
        }
        m1Var.n(3, z);
        m1Var.i(length);
        m1Var.g(bArr, 0, i2);
        m1Var.f(b2);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return false;
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        return m1.d(this.a.length, z);
    }

    @Override // defpackage.u, defpackage.q1
    public final q1 u() {
        return this;
    }

    @Override // defpackage.u, defpackage.q1
    public final q1 w() {
        return this;
    }
}
