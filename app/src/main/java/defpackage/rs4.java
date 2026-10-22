package defpackage;

import java.io.IOException;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes.dex */
public final class rs4 implements Enumeration {
    public o0 a;
    public q1 b;

    public final q1 a() {
        try {
            return this.a.m();
        } catch (IOException e) {
            throw new p1("malformed ASN.1: " + e, e);
        }
    }

    @Override // java.util.Enumeration
    public final boolean hasMoreElements() {
        return this.b != null;
    }

    @Override // java.util.Enumeration
    public final Object nextElement() {
        q1 q1Var = this.b;
        if (q1Var != null) {
            this.b = a();
            return q1Var;
        }
        m0.d();
        return null;
    }
}
