package defpackage;

import com.nimbusds.jose.crypto.impl.XC20P;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class q2 extends q1 implements cb4 {
    public final int a;
    public final int b;
    public final int c;
    public final b0 d;

    public q2(int i, int i2, int i3, b0 b0Var) {
        if (b0Var == null) {
            f6.n("'obj' cannot be null");
            throw null;
        }
        if (i2 == 0 || (i2 & XC20P.IV_BIT_LENGTH) != i2) {
            c6.f(fz5.j(i2, "invalid tag class: "));
            throw null;
        }
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = b0Var;
    }

    public static q2 x(Object obj) {
        if (obj == null || (obj instanceof q2)) {
            return (q2) obj;
        }
        if (obj instanceof b0) {
            q1 q1VarD = ((b0) obj).d();
            if (q1VarD instanceof q2) {
                return (q2) q1VarD;
            }
        } else if (obj instanceof byte[]) {
            try {
                q1 q1VarT = q1.t((byte[]) obj);
                if (q1VarT instanceof q2) {
                    return (q2) q1VarT;
                }
                throw new IllegalStateException("unexpected object: ".concat(q1VarT.getClass().getName()));
            } catch (IOException e) {
                b6.e(e.getMessage(), "failed to construct tagged object from byte[]: ");
                return null;
            }
        }
        c6.f("unknown object in getInstance: ".concat(obj.getClass().getName()));
        return null;
    }

    public abstract v1 B(q1 q1Var);

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return this.d.d().hashCode() ^ (((this.b * 7919) ^ this.c) ^ (y() ? 15 : 240));
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (!(q1Var instanceof q2)) {
            return false;
        }
        q2 q2Var = (q2) q1Var;
        if (this.c != q2Var.c || this.b != q2Var.b) {
            return false;
        }
        if (this.a != q2Var.a && y() != q2Var.y()) {
            return false;
        }
        q1 q1VarD = this.d.d();
        q1 q1VarD2 = q2Var.d.d();
        if (q1VarD == q1VarD2) {
            return true;
        }
        if (y()) {
            return q1VarD.k(q1VarD2);
        }
        try {
            return Arrays.equals(getEncoded(), q2Var.getEncoded());
        } catch (IOException unused) {
            return false;
        }
    }

    public final String toString() {
        return vm4.q(this.b, this.c) + this.d;
    }

    @Override // defpackage.q1
    public q1 u() {
        return new w82(this.a, this.b, this.c, this.d);
    }

    @Override // defpackage.q1
    public q1 w() {
        return new bi0(this.a, this.b, this.c, this.d, 1);
    }

    public final boolean y() {
        int i = this.a;
        return i == 1 || i == 3;
    }

    @Override // defpackage.cb4
    public final q1 g() {
        return this;
    }

    public q2(boolean z, int i, b0 b0Var) {
        this(z ? 1 : 2, 128, i, b0Var);
    }
}
