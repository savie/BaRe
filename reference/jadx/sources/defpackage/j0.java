package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class j0 extends q1 {
    public final byte[] a;

    public j0(byte[] bArr) {
        if (bArr.length < 4) {
            c6.f("GeneralizedTime string too short");
            throw null;
        }
        this.a = bArr;
        if (x(0) && x(1) && x(2) && x(3)) {
            return;
        }
        c6.f("illegal characters in GeneralizedTime string");
        throw null;
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return ms8.x(this.a);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (!(q1Var instanceof j0)) {
            return false;
        }
        return Arrays.equals(this.a, ((j0) q1Var).a);
    }

    @Override // defpackage.q1
    public void l(m1 m1Var, boolean z) {
        m1Var.k(24, z, this.a);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return false;
    }

    @Override // defpackage.q1
    public int p(boolean z) {
        return m1.d(this.a.length, z);
    }

    @Override // defpackage.q1
    public q1 u() {
        return new k82(this.a);
    }

    public final boolean x(int i) {
        byte b;
        byte[] bArr = this.a;
        return bArr.length > i && (b = bArr[i]) >= 48 && b <= 57;
    }
}
