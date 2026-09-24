package defpackage;

import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r2 extends z0 implements Iterable {
    public final z0 b;
    public byte[] c;
    public final nh4 d;
    public final boolean e;

    public r2(m2 m2Var, z0 z0Var, boolean z) {
        super(z ? m2Var.a(d0.CONSTRUCTED) : m2Var.a(z0Var.a.d));
        this.b = z0Var;
        this.e = z;
        this.c = null;
    }

    public final z0 d() {
        z0 z0Var = this.b;
        if (z0Var != null) {
            return z0Var;
        }
        try {
            p0 p0Var = new p0(this.d, this.c);
            try {
                z0 z0VarG = p0Var.g();
                p0Var.close();
                return z0VarG;
            } catch (Throwable th) {
                try {
                    p0Var.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            throw new o1(e, "Could not parse the inputstream", new Object[0]);
        } catch (o1 e2) {
            throw new o1(e2, "Unable to parse the explicit Tagged Object with %s, it might be implicit", this.a);
        }
    }

    public final z0 e(m2 m2Var) {
        z0 z0Var = this.b;
        if (z0Var != null && z0Var.a.equals(m2Var)) {
            return z0Var;
        }
        if (z0Var != null || this.c == null) {
            throw new o1("Unable to parse the implicit Tagged Object with %s, it is explicit", m2Var);
        }
        return m2Var.c(this.d).C(m2Var, this.c);
    }

    @Override // defpackage.z0
    public final Object getValue() {
        return d();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return ((w1) e(m2.m)).iterator();
    }

    @Override // defpackage.z0
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(r2.class.getSimpleName());
        sb.append("[");
        sb.append(this.a);
        z0 z0Var = this.b;
        if (z0Var != null) {
            sb.append(",");
            sb.append(z0Var);
        } else {
            sb.append(",<unknown>");
        }
        sb.append("]");
        return sb.toString();
    }

    public r2(m2 m2Var, byte[] bArr, nh4 nh4Var) {
        super(m2Var);
        this.e = true;
        this.c = bArr;
        this.d = nh4Var;
        this.b = null;
    }
}
