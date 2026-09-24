package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ya extends y0 {
    public f1 a;
    public b0 b;

    public ya(f1 f1Var, y0 y0Var) {
        this.a = f1Var;
        this.b = y0Var;
    }

    public static ya k(Object obj) {
        f1 f1Var;
        if (obj instanceof ya) {
            return (ya) obj;
        }
        if (obj != null) {
            v1 v1VarB = v1.B(obj);
            ya yaVar = new ya();
            if (v1VarB.size() >= 1 && v1VarB.size() <= 2) {
                b0 b0VarC = v1VarB.C(0);
                ConcurrentHashMap concurrentHashMap = f1.c;
                if (b0VarC == null || (b0VarC instanceof f1)) {
                    f1Var = (f1) b0VarC;
                } else {
                    q1 q1VarD = b0VarC.d();
                    if (!(q1VarD instanceof f1)) {
                        c6.f("illegal object in getInstance: ".concat(b0VarC.getClass().getName()));
                        return null;
                    }
                    f1Var = (f1) q1VarD;
                }
                yaVar.a = f1Var;
                if (v1VarB.size() == 2) {
                    yaVar.b = v1VarB.C(1);
                    return yaVar;
                }
                yaVar.b = null;
                return yaVar;
            }
            z5.c(v1VarB.size(), "Bad sequence size: ");
        }
        return null;
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        c0 c0Var = new c0(2);
        c0Var.a(this.a);
        b0 b0Var = this.b;
        if (b0Var != null) {
            c0Var.a(b0Var);
        }
        t82 t82Var = new t82(c0Var);
        t82Var.c = -1;
        return t82Var;
    }

    public ya(f1 f1Var) {
        this.a = f1Var;
    }
}
