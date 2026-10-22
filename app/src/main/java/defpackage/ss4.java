package defpackage;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class ss4 extends v1 {
    public byte[] c;

    @Override // defpackage.v1
    public final b0 C(int i) {
        K();
        return this.a[i];
    }

    @Override // defpackage.v1
    public final Enumeration E() {
        byte[] bArr;
        synchronized (this) {
            bArr = this.c;
        }
        if (bArr == null) {
            return new u1(this);
        }
        rs4 rs4Var = new rs4();
        rs4Var.a = new o0(bArr);
        rs4Var.b = rs4Var.a();
        return rs4Var;
    }

    @Override // defpackage.v1
    public final u F() {
        return ((v1) w()).F();
    }

    @Override // defpackage.v1
    public final j1 H() {
        return ((v1) w()).H();
    }

    @Override // defpackage.v1
    public final x1 I() {
        return ((v1) w()).I();
    }

    public final synchronized void K() {
        c0 c0Var;
        if (this.c != null) {
            o0 o0Var = new o0(this.c);
            try {
                q1 q1VarM = o0Var.m();
                if (q1VarM == null) {
                    c0Var = new c0(0);
                } else {
                    c0 c0Var2 = new c0();
                    do {
                        c0Var2.a(q1VarM);
                        q1VarM = o0Var.m();
                    } while (q1VarM != null);
                    c0Var = c0Var2;
                }
                o0Var.close();
                this.a = c0Var.c();
                this.c = null;
            } catch (IOException e) {
                throw new p1("malformed ASN.1: " + e, e);
            }
        }
    }

    @Override // defpackage.v1, defpackage.q1, defpackage.y0
    public final int hashCode() {
        K();
        return super.hashCode();
    }

    @Override // defpackage.v1, java.lang.Iterable
    public final Iterator iterator() {
        K();
        return super.iterator();
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) {
        byte[] bArr;
        synchronized (this) {
            bArr = this.c;
        }
        if (bArr != null) {
            m1Var.k(48, z, bArr);
        } else {
            super.w().l(m1Var, z);
        }
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        byte[] bArr;
        synchronized (this) {
            bArr = this.c;
        }
        return bArr != null ? m1.d(bArr.length, z) : super.w().p(z);
    }

    @Override // defpackage.v1
    public final int size() {
        K();
        return this.a.length;
    }

    @Override // defpackage.v1, defpackage.q1
    public final q1 u() {
        K();
        return super.u();
    }

    @Override // defpackage.v1, defpackage.q1
    public final q1 w() {
        K();
        return super.w();
    }
}
