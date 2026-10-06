package defpackage;

import java.math.BigInteger;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes.dex */
public final class pe6 extends y0 {
    public BigInteger a;
    public BigInteger b;

    public static pe6 k(Object obj) {
        if (obj instanceof pe6) {
            return (pe6) obj;
        }
        if (obj != null) {
            v1 v1VarB = v1.B(obj);
            pe6 pe6Var = new pe6();
            if (v1VarB.size() == 2) {
                Enumeration enumerationE = v1VarB.E();
                t0 t0VarX = t0.x(enumerationE.nextElement());
                t0VarX.getClass();
                pe6Var.a = new BigInteger(1, t0VarX.a);
                t0 t0VarX2 = t0.x(enumerationE.nextElement());
                t0VarX2.getClass();
                pe6Var.b = new BigInteger(1, t0VarX2.a);
                return pe6Var;
            }
            z5.c(v1VarB.size(), "Bad sequence size: ");
        }
        return null;
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        return new t82(new t0(this.a), new t0(this.b));
    }
}
