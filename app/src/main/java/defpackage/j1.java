package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class j1 extends q1 implements l1 {
    public static final k0 b = new k0(1, j1.class);
    public static final byte[] c = new byte[0];
    public final byte[] a;

    public j1(byte[] bArr) {
        if (bArr != null) {
            this.a = bArr;
        } else {
            f6.n("'string' cannot be null");
            throw null;
        }
    }

    public static j1 x(Object obj) {
        if (obj == null || (obj instanceof j1)) {
            return (j1) obj;
        }
        if (obj instanceof b0) {
            q1 q1VarD = ((b0) obj).d();
            if (q1VarD instanceof j1) {
                return (j1) q1VarD;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (j1) b.l((byte[]) obj);
            } catch (IOException e) {
                b6.e(e.getMessage(), "failed to construct OCTET STRING from byte[]: ");
                return null;
            }
        }
        c6.f("illegal object in getInstance: ".concat(obj.getClass().getName()));
        return null;
    }

    @Override // defpackage.l1
    public final InputStream c() {
        return new ByteArrayInputStream(this.a);
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return ms8.x(this.a);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (q1Var instanceof j1) {
            return Arrays.equals(this.a, ((j1) q1Var).a);
        }
        return false;
    }

    public final String toString() {
        f44 f44Var = e44.a;
        byte[] bArr = this.a;
        return "#".concat(lq7.a(e44.b(bArr, bArr.length)));
    }

    @Override // defpackage.q1
    public q1 u() {
        return new p82(this.a);
    }

    @Override // defpackage.q1
    public q1 w() {
        return new p82(this.a);
    }

    @Override // defpackage.cb4
    public final q1 g() {
        return this;
    }
}
