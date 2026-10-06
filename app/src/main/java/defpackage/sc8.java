package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class sc8 extends rc8 {
    public final mc8 a;
    public final kp0 b;

    public sc8(mc8 mc8Var, kp0 kp0Var) {
        this.a = mc8Var;
        this.b = kp0Var;
    }

    @Override // defpackage.rc8
    public String b() {
        return null;
    }

    @Override // defpackage.rc8
    public nw8 e(fk4 fk4Var, nw8 nw8Var) throws dp7 {
        if (nw8Var.c == null) {
            Object obj = nw8Var.a;
            Class cls = nw8Var.b;
            mc8 mc8Var = this.a;
            nw8Var.c = cls == null ? mc8Var.b(obj) : mc8Var.c(cls, obj);
        }
        if (nw8Var.c != null) {
            fk4Var.g0(nw8Var);
            return nw8Var;
        }
        mm4 mm4Var = nw8Var.f;
        nw8Var.g = false;
        if (mm4Var == mm4.START_OBJECT) {
            fk4Var.Y(nw8Var.a);
            return nw8Var;
        }
        if (mm4Var == mm4.START_ARRAY) {
            fk4Var.S(nw8Var.a);
        }
        return nw8Var;
    }

    @Override // defpackage.rc8
    public nw8 f(fk4 fk4Var, nw8 nw8Var) {
        if (nw8Var != null) {
            fk4Var.h0(nw8Var);
            return nw8Var;
        }
        mm4 mm4Var = nw8Var.f;
        if (mm4Var == mm4.START_OBJECT) {
            fk4Var.q();
            return nw8Var;
        }
        if (mm4Var == mm4.START_ARRAY) {
            fk4Var.n();
        }
        return nw8Var;
    }
}
