package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class z extends q1 {
    public static final z b = new z((byte) 0);
    public static final z c = new z((byte) -1);
    public final byte a;

    public z(byte b2) {
        this.a = b2;
    }

    public static z x(byte[] bArr) {
        if (bArr.length != 1) {
            c6.f("BOOLEAN value should have 1 byte in it");
            return null;
        }
        byte b2 = bArr[0];
        if (b2 != -1) {
            return b2 != 0 ? new z(b2) : b;
        }
        return c;
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return this.a != 0 ? 1 : 0;
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (q1Var instanceof z) {
            if ((this.a != 0) == (((z) q1Var).a != 0)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        m1Var.n(1, z);
        m1Var.i(1);
        m1Var.f(this.a);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return false;
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        return m1.d(1, z);
    }

    public final String toString() {
        return this.a != 0 ? "TRUE" : "FALSE";
    }

    @Override // defpackage.q1
    public final q1 u() {
        return this.a != 0 ? c : b;
    }
}
