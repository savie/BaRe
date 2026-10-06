package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class q1 extends y0 {
    public static q1 t(byte[] bArr) throws IOException {
        o0 o0Var = new o0(new ByteArrayInputStream(bArr), bArr.length, false);
        try {
            q1 q1VarM = o0Var.m();
            if (o0Var.available() == 0) {
                return q1VarM;
            }
            throw new IOException("Extra data detected in stream");
        } catch (ClassCastException unused) {
            y5.m("cannot recognise object in stream");
            return null;
        }
    }

    @Override // defpackage.y0
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b0) && k(((b0) obj).d());
    }

    @Override // defpackage.y0
    public abstract int hashCode();

    public abstract boolean k(q1 q1Var);

    public abstract void l(m1 m1Var, boolean z);

    public abstract boolean o();

    public abstract int p(boolean z);

    public final boolean s(q1 q1Var) {
        return this == q1Var || k(q1Var);
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        return this;
    }

    public q1 u() {
        return this;
    }

    public q1 w() {
        return this;
    }
}
